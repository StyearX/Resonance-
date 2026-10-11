local Intro = {}

function Intro.Play()
    local gui
    local watchdog
    local tweens = {}
    local closed = false

    local function close()
        if closed then return end
        closed = true
        for _, tween in ipairs(tweens) do
            pcall(function() tween:Cancel() end)
        end
        if gui then pcall(function() gui:Destroy() end) end
    end

    local ok, message = xpcall(function()
        local TweenService = game:GetService("TweenService")
        local Players = game:GetService("Players")
        gui = Instance.new("ScreenGui")
        gui.Name = "ResonanceIntro"
        gui.ResetOnSpawn = false
        gui.IgnoreGuiInset = true
        gui.DisplayOrder = 2147483000
        gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
        pcall(function() gui.ScreenInsets = Enum.ScreenInsets.None end)

        local protect = protect_gui or protectgui or (syn and syn.protect_gui)
        if type(protect) == "function" then pcall(protect, gui) end
        local parented = false
        local getRoot = gethui or get_hidden_gui
        if type(getRoot) == "function" then
            parented = pcall(function()
                local parent = getRoot()
                assert(parent, "GUI root unavailable")
                gui.Parent = parent
            end)
        end
        if not parented then
            parented = pcall(function() gui.Parent = game:GetService("CoreGui") end)
        end
        if not parented then
            local player = Players.LocalPlayer
            local parent = player and player:WaitForChild("PlayerGui", 3)
            assert(parent, "Intro GUI parent unavailable")
            gui.Parent = parent
        end

        watchdog = task.delay(20, function()
            watchdog = nil
            close()
        end)

        local shade = Instance.new("Frame")
        shade.Name = "Shade"
        shade.Size = UDim2.fromScale(1, 1)
        shade.BackgroundColor3 = Color3.fromRGB(3, 4, 10)
        shade.BackgroundTransparency = 1
        shade.BorderSizePixel = 0
        shade.Active = true
        shade.Parent = gui

        local center = Instance.new("Frame")
        center.Name = "Title"
        center.AnchorPoint = Vector2.new(0.5, 0.5)
        center.Position = UDim2.new(0.5, 0, 0.5, 18)
        center.Size = UDim2.new(0.9, 0, 0.2, 0)
        center.BackgroundTransparency = 1
        center.Parent = shade
        local bounds = Instance.new("UISizeConstraint")
        bounds.MaxSize = Vector2.new(1100, 150)
        bounds.Parent = center

        local function animate(object, duration, properties)
            if closed then return end
            local tween = TweenService:Create(object, TweenInfo.new(duration, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), properties)
            tweens[#tweens + 1] = tween
            tween:Play()
        end

        local function label(name, zindex)
            local text = Instance.new("TextLabel")
            text.Name = name
            text.Size = UDim2.fromScale(1, 1)
            text.BackgroundTransparency = 1
            text.Text = "nigger"
            text.Font = Enum.Font.GothamBold
            text.TextScaled = true
            text.TextWrapped = true
            text.TextColor3 = Color3.fromRGB(255, 255, 255)
            text.TextTransparency = 1
            text.TextStrokeTransparency = 1
            text.ZIndex = zindex
            text.Parent = center
            local limit = Instance.new("UITextSizeConstraint")
            limit.MinTextSize = 16
            limit.MaxTextSize = 40
            limit.Parent = text
            return text
        end

        local strokes = {}
        local softGlow = {0.995, 0.985, 0.97, 0.945, 0.905, 0.84, 0.73, 0.48, 0.2}
        local brightGlow = {0.987, 0.975, 0.955, 0.925, 0.87, 0.78, 0.64, 0.36, 0.08}
        for i, width in ipairs({30, 24, 19, 15, 11, 8, 5, 3, 1}) do
            local glow = label("Glow" .. i, i)
            local stroke = Instance.new("UIStroke")
            stroke.Color = Color3.fromRGB(100 + i * 13, 122 + i * 14, 255)
            stroke.Thickness = width
            stroke.Transparency = 1
            stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Contextual
            stroke.Parent = glow
            strokes[#strokes + 1] = stroke
        end
        local title = label("Text", 12)
        local gradient = Instance.new("UIGradient")
        gradient.Color = ColorSequence.new({
            ColorSequenceKeypoint.new(0, Color3.fromRGB(156, 217, 255)),
            ColorSequenceKeypoint.new(0.5, Color3.fromRGB(255, 255, 255)),
            ColorSequenceKeypoint.new(1, Color3.fromRGB(186, 164, 255)),
        })
        gradient.Parent = title

        animate(shade, 1.6, {BackgroundTransparency = 0.05})
        task.wait(0.6)
        if closed then return end
        animate(title, 1.8, {TextTransparency = 0})
        animate(center, 2.4, {Position = UDim2.fromScale(0.5, 0.5)})
        for i, stroke in ipairs(strokes) do
            animate(stroke, 1.8, {Transparency = softGlow[i]})
        end
        task.wait(1.8)
        if closed then return end
        for _ = 1, 2 do
            for i, stroke in ipairs(strokes) do
                animate(stroke, 1.2, {Transparency = brightGlow[i]})
            end
            task.wait(1.2)
            if closed then return end
            for i, stroke in ipairs(strokes) do
                animate(stroke, 1.2, {Transparency = softGlow[i]})
            end
            task.wait(1.2)
            if closed then return end
        end
        animate(title, 1.4, {TextTransparency = 1})
        animate(center, 1.8, {Position = UDim2.new(0.5, 0, 0.5, -6)})
        for _, stroke in ipairs(strokes) do animate(stroke, 1.4, {Transparency = 1}) end
        task.wait(0.8)
        if closed then return end
        animate(shade, 1.4, {BackgroundTransparency = 1})
        task.wait(1.4)
    end, function(err) return tostring(err) end)

    if watchdog then pcall(task.cancel, watchdog) end
    close()
    return ok, message
end

return Intro
