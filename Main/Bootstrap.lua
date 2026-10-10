local sources = ...
local env = getgenv and getgenv() or _G
if env.ResonanceRunning or env.ResonanceStarting then
    warn("Resonance is already running or starting")
    return
end
assert(type(loadstring) == "function", "This executor does not support loadstring")
assert(type(getgenv) == "function", "This executor does not support getgenv")
env.ResonanceStarting = true
local cleanup
local function registerCleanup(fn) cleanup = fn end
local cache = {}
local loading = {}
local function requireModule(name)
    if cache[name] then return cache[name] end
    assert(not loading[name], "Circular module dependency: " .. tostring(name))
    assert(type(sources[name]) == "string", "Missing module: " .. tostring(name))
    loading[name] = true
    local chunk, message = loadstring(sources[name], "@Resonance/" .. name)
    assert(chunk, message)
    local ok, result = pcall(chunk, requireModule)
    loading[name] = nil
    assert(ok, result)
    assert(type(result) == "table", "Invalid module: " .. name)
    cache[name] = result
    return result
end
local reloadPath
local ok, result = xpcall(function()
    local introOk, introError = pcall(function()
        local played, message = requireModule("Intro").Play()
        assert(played, message)
    end)
    if not introOk then warn("Resonance intro: " .. tostring(introError)) end
    if type(writefile) == "function" and type(readfile) == "function" then
        local success = pcall(function()
            local lines = {"local sources = {}"}
            for _, name in ipairs({"Intro", "Library", "ThemeManager", "SaveManager", "Icons", "Main", "Bootstrap", "Notices"}) do
                lines[#lines + 1] = string.format("sources[%q] = %q", name, sources[name])
            end
            lines[#lines + 1] = 'local run, message = loadstring(sources.Bootstrap, "@Resonance/Bootstrap"); assert(run, message); return run(sources)'
            writefile("ResonanceRestored.lua", table.concat(lines, "\n"))
            assert(type(readfile("ResonanceRestored.lua")) == "string")
        end)
        if success then reloadPath = "ResonanceRestored.lua" end
    end
    local chunk, message = loadstring(sources.Main, "@Resonance/Main")
    assert(chunk, message)
    return chunk(requireModule, reloadPath, registerCleanup)
end, function(message)
    if debug and debug.traceback then return debug.traceback(tostring(message), 2) end
    return tostring(message)
end)
env.ResonanceStarting = false
if not ok then
    if cleanup then pcall(cleanup) end
    env.ResonanceRunning = false
    warn("Resonance initialization failed: " .. tostring(result))
    return nil, result
end
return result
