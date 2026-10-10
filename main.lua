local repo = "https://raw.githubusercontent.com/StyearX/Resonance-/refs/heads/main/Library/"
local mainRepo = "https://raw.githubusercontent.com/StyearX/Resonance-/refs/heads/main/Main/"

local function fetch(url)
    local ok, result = pcall(game.HttpGet, game, url)
    assert(ok and type(result) == "string" and #result > 0, "Failed to fetch " .. url)
    return result
end

local sources = {}
sources.Library = fetch(repo .. "Library.lua")
sources.ThemeManager = fetch(repo .. "ThemeManager.lua")
sources.SaveManager = fetch(repo .. "SaveManager.lua")
sources.Icons = fetch(repo .. "Icons.lua")
sources.Intro = fetch(mainRepo .. "Intro.lua")
sources.Bootstrap = fetch(mainRepo .. "Bootstrap.lua")
sources.Main = [====[
local requireModule, reloadPath, registerCleanup = ...
local cloneref = cloneref or clonereference or function(value) return value end
local gethui = gethui or get_hidden_gui or function() return game:GetService("CoreGui") end
do
	local StarterGui, fn17, flag11, lib, lib2, lib3, options, toggles, Players, Lighting
	local UserInputService, ReplicatedStorage, RunService, PhysicsService, HttpService, terrain, map, alwaysHereTweenedObjects, localPlayer, currentCamera
	local fieldOfView, cFrame, mouse, v17, v18, parent, screenGui, part2, textButton, part3
	local tbl6, n34, n35, tbl7, fn18, tbl8, tbl9, fn19, tbl10, tbl11
	local tbl12, fn20, tbl13, tbl14, v19, tbl15

	do
		local placeId, now2, scriptKey, fallenPartsDestroyHeight, TextChatService, ContextActionService, GuiService, Stats2, Debris, TeleportService
		local jobId, playerGui, isHeld, inPlot, inOwnedPlot, rbxGeneral, v20, highlight, v21

		do
			local train, v22, selectionBox, particleEmitter

			do
				local bodyVelocity, bodyGyro, v23

				do
					local str5, TweenService, VirtualInputManager, waypoints, tween

					do
						do
							do
								repeat
									task.wait()
								until game:IsLoaded()

								copyright = "Copyright (c) 2026 Project Resonance. All rights reserved."

								StarterGui = game:GetService("StarterGui")

								fn17 = function(arg, arg2, arg3)
									StarterGui:SetCore("SendNotification", {
										Title = arg or "Resonance",
										Text = arg2 or "Notification",
										Duration = arg3 or 5,
										Icon = "rbxassetid://79685990879972",
									})
								end

								placeId = game.PlaceId
								if placeId ~= 6961824067 then
									fn17("Resonance", "This game is not supported; couldn't start the script", 3)
									return
								end

								if getgenv().ResonanceRunning then
									fn17("Resonance", "You can't execute the script two times! Unload if you want to restart the script.", 3)
									return
								end
								getgenv().ResonanceRunning = true

								if not getgenv().LoadTime then
									getgenv().LoadTime = tick()
								end

								now2 = tick()
								str5 = "3b71c54a13dfe058e74520a6a802a820c0e9f1cb821b5900a9473111bb622c7e"
								scriptKey = nil
								flag11 = false
								fallenPartsDestroyHeight = (0/0)

								do
									local v24 = string.gsub([[

    _____________________ _________________    _______      _____    _______  _________ ___________
    \______   \_   _____//   _____/\_____  \   \      \    /  _  \   \      \ \_   ___ \\_   _____/
    |       _/|    __)_ \_____  \  /   |   \  /   |   \  /  /_\  \  /   |   \/    \  \/ |    __)_
    |    |   \|        \/        \/    |    \/    |    \/    |    \/    |    \     \____|        \
    |____|_  /_______  /_______  /\_______  /\____|__  /\____|__  /\____|__  /\______  /_______  /
            \/        \/        \/         \/         \/         \/         \/        \/        \/   ver

    ]], "ver", "v2.9")

									warn(v24)
								end
							end

							getgenv().ResonanceOriginalFallenHeight = workspace.FallenPartsDestroyHeight
                            pcall(function() workspace.FallenPartsDestroyHeight = fallenPartsDestroyHeight end)

                        registerCleanup(function()
                            flag11 = true
                            if lib then pcall(lib.Unload, lib) end
                            if screenGui then pcall(screenGui.Destroy, screenGui) end
                            pcall(function() workspace.FallenPartsDestroyHeight = getgenv().ResonanceOriginalFallenHeight end)
                        end)
                        lib = requireModule("Library")
                        lib2 = requireModule("ThemeManager")
                        lib3 = requireModule("SaveManager")

						end

						if not lib3 then
							fn17("Resonance", "Failed to load the UI Library! GitHub might be down/blocked by your ISP. Try using a VPN!", 5)
							getgenv().ResonanceRunning = false
							return
						end

						options = lib.Options
						toggles = lib.Toggles
						Players = game:GetService("Players")
						Lighting = game:GetService("Lighting")
						UserInputService = game:GetService("UserInputService")
						ReplicatedStorage = game:GetService("ReplicatedStorage")
						RunService = game:GetService("RunService")
						TextChatService = game:GetService("TextChatService")
						PhysicsService = game:GetService("PhysicsService")
						ContextActionService = game:GetService("ContextActionService")
						GuiService = game:GetService("GuiService")
						Stats2 = game:GetService("Stats")
						Debris = game:GetService("Debris")
						TweenService = game:GetService("TweenService")

						do
							local CoreGui = game:GetService("CoreGui")
							VirtualInputManager = game:GetService("VirtualInputManager")
							TeleportService = game:GetService("TeleportService")
							HttpService = game:GetService("HttpService")
							terrain = workspace.Terrain
							map = workspace:WaitForChild("Map")
							alwaysHereTweenedObjects = map:WaitForChild("AlwaysHereTweenedObjects")
							train = alwaysHereTweenedObjects:WaitForChild("Train")
							waypoints = workspace:WaitForChild("Waypoints")
							jobId = game.JobId
							localPlayer = Players.LocalPlayer
							currentCamera = workspace.CurrentCamera
							fieldOfView = currentCamera.FieldOfView
							tween = nil
							cFrame = nil
							mouse = localPlayer:GetMouse()
							v17 = workspace:WaitForChild(localPlayer.Name .. "SpawnedInToys")
							playerGui = localPlayer:WaitForChild("PlayerGui")
							isHeld = localPlayer:WaitForChild("IsHeld")
							inPlot = localPlayer:WaitForChild("InPlot")
							inOwnedPlot = localPlayer:WaitForChild("InOwnedPlot")
							local robloxPromptGui = CoreGui:WaitForChild("RobloxPromptGui", 1)

							if robloxPromptGui then
								robloxPromptGui:WaitForChild("promptOverlay", 1)
							end
						end
					end

					local remoteEvent

					do
						do
							local channels = TextChatService:FindFirstChild("TextChannels")
                        rbxGeneral = channels and channels:FindFirstChild("RBXGeneral")
							v20 = nil
							v18 = nil
							remoteEvent = nil
							v22 = nil
							parent = nil
							CFrame.new((0/0), (0/0), (0/0))
							Vector3.new((0/0), (0/0), (0/0))
							screenGui = Instance.new("ScreenGui")
							screenGui.Name = "RSC"
							screenGui.ResetOnSpawn = false
							screenGui.IgnoreGuiInset = true
							screenGui.Parent = gethui()
							highlight = Instance.new("Highlight")
							highlight.Enabled = false
							highlight.FillColor = Color3.fromRGB(255, 0, 0)
							highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
							highlight.FillTransparency = 0
							highlight.OutlineTransparency = 0
							highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
							selectionBox = Instance.new("SelectionBox")
							selectionBox.LineThickness = 0.04
							selectionBox.Transparency = 0
							selectionBox.SurfaceTransparency = 0.5
							selectionBox.Color3 = Color3.new(0, 0, 0)
							selectionBox.Visible = false
							part2 = Instance.new("Part")
							part2.Name = "partcieslyes"
							part2.Transparency = 1
							part2.CanCollide = false
							part2.CanQuery = false
							part2.CanTouch = false
							part2.Anchored = true
							part2.Parent = workspace
							particleEmitter = Instance.new("ParticleEmitter")
							particleEmitter.Enabled = false
							particleEmitter.Parent = part2
							particleEmitter.Shape = Enum.ParticleEmitterShape.Box
							particleEmitter.ShapeStyle = Enum.ParticleEmitterShapeStyle.Volume
							particleEmitter.LightEmission = 0
							particleEmitter.LightInfluence = 0
							particleEmitter.ZOffset = 0
							textButton = Instance.new("TextButton")
							textButton.BackgroundTransparency = 1
							textButton.Modal = false
							textButton.Size = UDim2.fromScale(0, 0)
							textButton.AnchorPoint = Vector2.zero
							textButton.Text = ""
							textButton.ZIndex = -999
							textButton.Parent = Instance.new("ScreenGui", localPlayer.PlayerGui)
							part3 = Instance.new("Part")
							part3.Name = "Safe Platform"
							part3.Size = Vector3.new(250, 5, 250)

							do
								local random = math.random
								part3.Position = Vector3.new(math.random(-25000, 25000), -500, random(-25000, 25000))
							end
						end

						part3.Anchored = true
						part3.CanCollide = true
						part3.Material = Enum.Material.Neon
						part3.Parent = workspace
						tbl6 = { Gui = Instance.new("ScreenGui") }
						tbl6.Gui.Name = "FOV"
						tbl6.Gui.IgnoreGuiInset = true
						tbl6.Gui.Parent = screenGui
						tbl6.Frame = Instance.new("Frame")
						tbl6.Frame.Name = "Circle"
						tbl6.Frame.BackgroundColor3 = Color3.new(1, 1, 1)
						tbl6.Frame.BackgroundTransparency = 1
						tbl6.Frame.BorderSizePixel = 0
						tbl6.Frame.Visible = false
						tbl6.Frame.Position = UDim2.new(0.5, 0, 0.5, 0)
						tbl6.Frame.AnchorPoint = Vector2.new(0.5, 0.5)
						tbl6.Frame.Parent = tbl6.Gui
						tbl6.Stroke = Instance.new("UIStroke")
						tbl6.Stroke.Color = Color3.new(1, 1, 1)
						tbl6.Stroke.Thickness = 1
						tbl6.Stroke.Transparency = 0.15
						tbl6.Stroke.Parent = tbl6.Frame
						tbl6.Corner = Instance.new("UICorner")
						tbl6.Corner.CornerRadius = UDim.new(1, 0)
						tbl6.Corner.Parent = tbl6.Frame
						v21 = nil
						n34 = 97643101798871
						n35 = 1
						tbl7 = nil

						fn18 = function(arg, arg2, arg3, arg4, arg5)
							if flag11 or not arg5 and tbl7 and not tbl7.NotificationSettings.Enabled then
								return
							end

							lib:Notify({
								Title = arg2 or "Resonance",
								Description = arg,
								Time = arg4 or 5,
								SoundId = arg3 or n34,
								BigIcon = "rbxassetid://79685990879972",
								Volume = n35,
								IconColor = Color3.new(1, 1, 1),
							})
						end

						task.delay(5, function()
							local n36 = math.floor(Stats2.Network.ServerStatsItem["Data Ping"]:GetValue())

							if n36 > 300 and not flag11 then
								fn18("You have high ping, so you might have issues while using the script! Your current ping: " .. n36 .. "ms")
							end
						end)

						tbl8 = {
							WalkSpeed = false,
							JumpPower = false,
							InfJump = false,
							Noclip = false,
							Flight = false,
							MoreLineExtend = false,
							SuperStrength = false,
							Desync = false,
							JerkOff = false,
							LoopTpLocation = false,
							AutoSeatBlobman = false,
							FreezeBlobman = false,
							NetworkOwnerInKick = false,
							DeleteShurInBlobK = true,
							AntiGrab = false,
							GucciAntiGrab = false,
							AntiBurn = false,
							AntiExplosion = false,
							AntiKick = false,
							AntiKick2 = false,
							AntiPaint = false,
							AntiBlobman = false,
							AutoAntiLag = true,
							AntiInputLag = false,
							AntiSticky = false,
							AntiShurikenLag = false,
							AntiBanana = false,
							AntiSnowball = false,
							AntiVoid = false,
							AutoReset = true,
							AutoLeave = true,
							LoopTP = false,
							CounterAttack = false,
							DestroyVoid = false,
							LoopApplyMethod = false,
							LoopApplyMethodServer = false,
							LoopApplyMethodT = false,
							LoopApplyMethodTServer = false,
							RagdollInNK = true,
							RagdollInRG = false,
							DeleteShurInNK = true,
							EKI = false,
							AutoHouse = false,
							Invisibility = false,
							GradientLine = false,
							AutoSlot = false,
							ControllingSomeone = false,
							AutoClicker = false,
							RagdollInAC = true,
							IndependentACPoses = false,
							CustomACPoseCenter = false,
							PlayerESP = false,
							PCLDESP = false,
							SmoothPCLD = true,
							StickyESP = false,
							BlackholeESP = false,
							Shaders = false,
							ChinaHat = false,
							Zoom = false,
							SmoothClickTP = true,
							CustomLine = false,
							CustomCrosshair = false,
							CameraNoclip = false,
							ForcefieldChar = false,
							CustomBlackHole = false,
							CustomBlackholeSound = false,
							BlackholeStaying = false,
							GOI = false,
							NonSwimmableWater = false,
							Grab = false,
							Aura = false,
							ExcludeTarget = true,
							ToyAuras = false,
							AuraVisualizer = false,
							ToyAuraVisualizer = false,
							SilentAim = false,
							SilentAimFOV = false,
							SilentAimIgnoreWhitelist = true,
							SilentAimTargetsOnly = false,
							PositionPrediction = false,
							DirectGrab = false,
							LagServer = false,
							PacketLagServer = false,
							AutoExplodeTarget = false,
							CoconutForms = false,
							BreakAllHoldables = false,
							HighlightBrokenParts = false,
							LoopApplyMethodEFServer = false,
							LoopApplyMethodEF = false,
							AutoClaimPlot = false,
							SoundSpam = false,
							FasterEscape = false,
							AutoServerHop = false,
							ServerHopIncludeFull = false,
							AutoRejoin = false,
							RejoinWithAntiLag = true,
							RejoinWithScript = false,
							OnlyAssignedKeybinds = false,
							WhitelistedBypass = false,
							AutoWhitelistFriends = false,
							ImmunityAntiGrab = false,
							ImmunityAntiKick = false,
							ImmunityAntiExplosion = false,
						}

						tbl9 = {
							WalkSpeed = 16,
							JumpPower = 24,
							FlightSpeed = 1,
							SpinSpeed = 15,
							LineDistance = 0,
							IncreaseLineDistance = 1,
							SuperStrength = 400,
							CounterMethod = "Kill",
							ExplosionMethod = "BombMissile",
							MissilesToFire = 1,
							TargetedLimbAura = "All",
							TargetedLimbCA = "All",
							TargetedLimbTE = "All",
							SAIMHitbox = 10,
							SAIMRadius = 250,
							AutoClickerOffset = CFrame.new(0, 0, -5),
							AutoClickerTransparency = 0,
							SelectedACPose = "Default",
							CustomACPresetName = "",
							AntiLagSens = 3,
							InputLgDelay = 0.05,
							GucciType = "CreatureBlobman",
							AKType = "Shuriken",
							AntiInputType = "FoodHamburger",
							FasterEscape = 3,
							AGType = "Normal",
							AILTransparency = 1,
							UnstickGrab = "All Toys Near",
							BlobMethod = "Kick",
							BKMethod = 1,
							NKOffset = 15,
							NKDelayMode = "Normal",
							KickServerMethod = "Circle + Lag",
							KickFlags = 0,
							AuraDistance = 25,
							ToyAuraDistance = 31,
							CustomLine = "Chain 2",
							CustomCrosshairSize = 32,
							CustomCrosshairColor = Color3.new(1, 1, 1),
							CustomBlackhole = "rbxassetid://9920612764",
							CustomBHColor = Color3.new(1, 1, 1),
							CursorIconSize = 20,
							CursorIconColor = Color3.new(1, 1, 1),
							ChinaHatColor = Color3.fromRGB(255, 170, 70),
							ForcefieldColor = Color3.new(1, 1, 1),
							ZoomFOV = 20,
							ZoomMinFOV = 10,
							ZoomMaxFOV = 120,
							ZoomStep = 5,
							ZoomCameraSmoothness = 9,
							WaterYOffset = -4,
							AspectRatio = 1,
							TeleportLocation = workspace.Waypoints.BlueHouse,
							SoundsExternalDelay = 0.1,
							CustomNotificationSound = "97643101798871",
							ShiftLockKey = "LeftAlt",
							IsBarrierBroken = false,
							LagLines = 11,
							BlackHoles = 0,
							Packets = 0.35,
							PacketPrefix = "RSC | ",
							PacketDelay = 0.1,
							LoboStrength = 166.6,
							AutoServerHopTime = 30,
							ServerHopMinPlayers = 0,
							ServerHopMaxPlayers = Players.MaxPlayers,
							ServerHopSort = "Closest Datacenter",
							ServerHopRegion = "Automatic",
						}

						tbl7 = {
							Whitelisted = {},
							SelectedPlayers = {},
							SelectedPlayersBlob = {},
							SelectedPlayersExp = {},
							SelectedPlayersAC = {},
							SelectedPlayersEffect = {},
							SelectedTeleportPlayers = {},
							SelectedToysAuraPlayers = {},
							SelectedSilentAimPlayers = {},
							AdminImmune = {},
							PlayerDropdowns = {},
							PlayerList = Players:GetPlayers(),
							LineTypes = {
								Laser = "rbxassetid://8922958725",
								Chain = "rbxassetid://81358145120405",
								["Chain 2"] = "rbxassetid://132910145874066",
								["Chain 3"] = "rbxassetid://128466395060514",
								["Chain 4"] = "rbxassetid://73368670987191",
								Pulse = "rbxassetid://82163767314193",
								Rope = "rbxassetid://78999022056924",
								Dots = "rbxassetid://9169659357",
								Bubbles = "rbxassetid://1249690853",
								Spring = "rbxassetid://18837732116",
								Gamepass = "rbxassetid://8933355899",
								["Non-Gamepass"] = "rbxassetid://8933346550",
							},
							AutoClicker = {},
							AutoClickerTargetPoses = {},
							SelectedACPoseCenters = {},
							CustomACPresets = {},
							ACOffset = {
								["Right Leg"] = Vector3.new(0, 1, 0),
								["Left Leg"] = Vector3.new(0, 1, 0),
								["Right Arm"] = Vector3.new(1, 0.5, 0),
								["Left Arm"] = Vector3.new(-1, 0.5, 0),
								Head = Vector3.new(0, 1, 0),
							},
							ACRotation = {
								["Right Arm"] = Vector3.zero,
								["Left Arm"] = Vector3.zero,
								["Right Leg"] = Vector3.zero,
								["Left Leg"] = Vector3.zero,
								Head = Vector3.zero,
								Torso = Vector3.zero,
							},
							AutoClickerPoses = {
								Default = {
									["Right Arm"] = { 0, 0, 0 },
									["Left Arm"] = { 0, 0, 0 },
									["Right Leg"] = { 0, 0, 0 },
									["Left Leg"] = { 0, 0, 0 },
									Head = { 0, 0, 0 },
									Torso = { 0, 0, 0 },
									BodyPos = { 0, 0, -5 },
								},
								["Shoulder-Sitting"] = {
									["Right Arm"] = { 30, 0, -40 },
									["Left Arm"] = { 30, 0, 40 },
									["Right Leg"] = { 76, 7, 29 },
									["Left Leg"] = { 76, 7, -29 },
									Head = { -20, 0, 0 },
									Torso = { 8, 0, 0 },
									BodyPos = { 0, 2.3, 1 },
								},
								["JoJo Stand"] = {
									["Right Arm"] = { -16, 0.3, -6.7 },
									["Left Arm"] = { -2, 0, 0 },
									["Right Leg"] = { -16, 22.5, -1 },
									["Left Leg"] = { -18.4, 40, -2 },
									Head = { -21.9, 17.8, 0 },
									Torso = { 9.6, 27.1, 0 },
									BodyPos = { -2.8, 1.3, 2.75 },
								},
								Blowjob = {
									["Right Arm"] = { 90, 0, 0 },
									["Left Arm"] = { 90, 0, 0 },
									["Right Leg"] = { -95, 0, 15 },
									["Left Leg"] = { -95, 0, -15 },
									Head = { -25, 0, 0 },
									Torso = { 0, 0, 0 },
									BodyPos = { 0, -2.1, -1.4 },
								},
								["Standing Sex"] = {
									["Right Arm"] = { 110, 0, -30 },
									["Left Arm"] = { 110, 0, 30 },
									["Right Leg"] = { 75, 0, 20 },
									["Left Leg"] = { 75, 0, -20 },
									Head = { -10, 0, 0 },
									Torso = { 0, 0, 0 },
									BodyPos = { 0, 0, -1.2 },
								},
								["Doggy-Pose Sex"] = {
									["Right Arm"] = { 100, 0, 0 },
									["Left Arm"] = { 100, 0, 0 },
									["Right Leg"] = { 90, 0, 40 },
									["Left Leg"] = { 90, 0, -40 },
									Head = { 90, 0, 0 },
									Torso = { 100, -180, 0 },
									BodyPos = { 0, -1.4, -1.4 },
								},
								["Missionary Sex"] = {
									["Right Arm"] = { 0, 0, 0 },
									["Left Arm"] = { 0, 0, 0 },
									["Right Leg"] = { 0, 0, 45 },
									["Left Leg"] = { 0, 0, -45 },
									Head = { -45, 0, 0 },
									Torso = { 90, 0, 0 },
									BodyPos = { 0, -1.4, -1.4 },
								},
							},
							KickLogs = {},
							KickServerCooldowns = setmetatable({}, { __mode = "k" }),
							KickServerState = { Running = false },
							Anchored = {},
							ObjectGroups = {},
							ObjectStates = {},
							AnchorSettings = {
								FillColor = Color3.fromRGB(182, 38, 186),
								OutlineColor = Color3.new(1, 1, 1),
								Physics = PhysicalProperties.new(100, 2, 0, 100, 100),
							},
							TeleportLocations = {},
							Inventories = {},
							TargetMethods = {},
							PCLD = {},
							PCLDParts = {},
							PCLDTracker = {
								PartStates = {},
								Players = {},
								Positions = {},
								Confirmations = 3,
								MaxDistance = 6,
								MinMargin = 0.75,
							},
							ParticleSettings = {
								Enabled = false,
								BoxSize = 500,
								Texture = "rbxassetid://242109931",
								Color = Color3.fromRGB(255, 255, 255),
								Transparency = 0,
								ParticleSize = 1,
								Count = 2500,
								SpeedMin = 0.5,
								SpeedMax = 2,
								LifeTime = 10,
							},
							ToysAuraSettings = {
								Enabled = false,
								LimitEnabled = false,
								Limit = 100,
								OwnInventoryOnly = false,
								AutoRotate = false,
								AutoMove = false,
								Bob = false,
								RotationSpeed = 1.5,
								MoveSpeed = 5,
								BobSpeed = 2,
								BobHeight = 3,
								Rotation = Vector3.zero,
								Offset = CFrame.new(0, 10, 0),
								Collisions = false,
								Models = {},
								Shape = "Circle",
								Center = CFrame.new(0, 50, 0),
								CustomPos = CFrame.new(0, 50, 0),
								Spacing = 1,
								Radius = 20,
								Height = 20,
								Rows = 5,
								Rotations = 3,
								Responsiveness = 55,
								FaceCenter = true,
								OwnType = "Aura",
								PosType = "You",
							},
							ToyAuras = {},
							ToyAuraReserved = setmetatable({}, { __mode = "k" }),
							ToyAuraRoots = setmetatable({}, { __mode = "k" }),
							AuraVisualSettings = {
								AuraColor = Color3.fromRGB(255, 80, 80),
								ToyAuraColor = Color3.fromRGB(80, 180, 255),
							},
							AimSettings = {
								AimbotEnabled = false,
								AlwaysOn = lib.IsMobile,
								TriggerbotEnabled = false,
								AimDebounce = false,
								TriggerBotDebounce = false,
								AimKey = Enum.KeyCode.X,
								Smoothness = 0.15,
								SADist = 40,
								TriggerDist = 20,
								TargetPart = "Head",
								TriggerDelay = 0.05,
								TriggerCooldown = 0.4,
								TriggerVersion = 0,
								TriggerTricks = false,
								TriggerTrick = "360 Spin",
								TriggerTrickSpeed = 1,
								FOVEnabled = false,
								FOVRadius = 150,
							},
							AimRaycastFilter = {},
							Gradients = {
		Color1 = Color3.fromRGB(255, 0, 0),
		Color2 = Color3.fromRGB(255, 165, 0),
		Color3 = Color3.fromRGB(255, 255, 0),
		Color4 = Color3.fromRGB(0, 255, 0),
		Color5 = Color3.fromRGB(0, 255, 255),
		Color6 = Color3.fromRGB(0, 0, 255),
		Color7 = Color3.fromRGB(170, 0, 255),
		Color8 = Color3.fromRGB(255, 255, 255),
		DotColor = Color3.fromRGB(255, 255, 255),
							},
							BreakParts = {
								InnerUFO = function()
									local object = alwaysHereTweenedObjects.InnerUFO.Object
									return object and object.ObjectModel
								end,
								OuterUFO = function()
									local object = alwaysHereTweenedObjects.OuterUFO.Object
									return object and object.ObjectModel
								end,
								CaveCart = function()
									local object = alwaysHereTweenedObjects.CaveCart.Object
									return object and object.ObjectModel
								end,
								Train = function()
									local object = alwaysHereTweenedObjects.Train.Object
									return object and object.ObjectModel
								end,
								["Flying Rock 1"] = function()
									local object = alwaysHereTweenedObjects.SmlDebris.Object
									return object and object.ObjectModel
								end,
								["Flying Rock 2"] = function()
									local object = alwaysHereTweenedObjects.SmlDebris2.Object
									return object and object.ObjectModel
								end,
								["Flying Rock 3"] = function()
									local object = alwaysHereTweenedObjects.LrgDebris.Object
									return object and object.ObjectModel
								end,
								["Flying Rock 4"] = function()
									local object = alwaysHereTweenedObjects.LrgDebris2.Object
									return object and object.ObjectModel
								end,
							},
							ESPFonts = {
								"Gotham",
								"Arial",
								"SourceSans",
								"Code",
								"Highway",
								"SciFi",
								"Arcade",
								"Fantasy",
								"Cartoon",
								"Antique",
								"Garamond",
								"Bodoni",
								"Roboto",
								"RobotoMono",
								"Ubuntu",
							},
							ESPConfig = {
								Player = {
									Objects = {},
									HighlightEnabled = true,
									FillColor = Color3.new(1, 0, 0),
									OutlineColor = Color3.new(1, 1, 1),
									FillTransparency = 0,
									OutlineTransparency = 0,
									NameEnabled = true,
									NameFont = "Arial|Bold",
									NameSize = 11,
									NameTransparency = 0,
									NameOutlineTransparency = 0,
									NameColor = Color3.new(1, 1, 1),
									NameOutlineColor = Color3.new(0, 0, 0),
									NameShowIcon = true,
									NameIconSize = 32,
									NameYOffset = 2.5,
								},
								Server = {
									Objects = {},
									FillColor = Color3.fromRGB(197, 0, 204),
									OutlineColor = Color3.new(0, 0, 0),
									OutlineThickness = 0.04,
									FillTransparency = 0.5,
									OutlineTransparency = 0,
									NameEnabled = true,
									NameDistance = 25,
									NameYOffset = 0,
									NameSize = 12,
									NameFont = "Arial",
									NameColor = Color3.new(1, 1, 1),
									NameOutlineColor = Color3.new(0, 0, 0),
									NameTransparency = 0,
									NameOutlineTransparency = 0,
								},
								Sticky = {
									Objects = {},
									FillColor = Color3.new(1, 0, 0),
									OutlineColor = Color3.new(0, 0, 0),
									FillTransparency = 0,
									OutlineTransparency = 0,
									OutlineThickness = 2,
								},
								Blackhole = {
									Objects = {},
									FillColor = Color3.new(0, 1, 1),
									OutlineColor = Color3.new(1, 1, 1),
									FillTransparency = 0,
									OutlineTransparency = 0,
									NameEnabled = true,
									NameFont = "Arial",
									NameYOffset = 5,
									NameSize = 13,
									NameColor = Color3.new(0, 0, 0),
									NameOutlineColor = Color3.new(1, 1, 1),
									NameTransparency = 0,
									NameOutlineTransparency = 0,
								},
							},
							Sounds = {},
							Auras = {},
							Grabs = {},
							GrabbableParts = {},
							ToyEffects = {},
							FailedToys = {},
							BrokenPlots = {},
							BrokenParts = setmetatable({}, { __mode = "k" }),
							BrokenPartHighlight = {
								FillColor = Color3.fromRGB(0, 170, 255),
								OutlineColor = Color3.new(1, 1, 1),
								FillTransparency = 0.7,
								OutlineTransparency = 0.3,
							},
							BreakPartWelds = setmetatable({}, { __mode = "k" }),
							ShurikenLagWelds = setmetatable({}, { __mode = "k" }),
							PartOwnerCache = setmetatable({}, { __mode = "k" }),
							CharacterHighlightAffects = {
								Character = true,
								["Coconut Forms"] = true,
								["China Hat"] = true,
								["Anti Kick"] = true,
							},
							CharacterHighlightParts = setmetatable({}, { __mode = "k" }),
							CoconutForms = {
								Selected = {},
								Order = {},
								Offsets = {},
								Models = {},
								Parts = {},
								WingRipple = {},
								Acquiring = {},
								Names = { "Boobs", "Ass", "Penis", "Wings", "Cape", "67" },
								Counts = {
									Boobs = 2,
									Ass = 2,
									Penis = 7,
									Wings = 12,
									Cape = 12,
									["67"] = 13,
								},
								Points67 = {
									Vector2.new(-1.75, 1.6499999761581421),
									Vector2.new(-0.64999997615814209, 1.6499999761581421),
									Vector2.new(-1.75, 0.55000001192092896),
									Vector2.new(-1.75, -0.55000001192092896),
									Vector2.new(-0.64999997615814209, -0.55000001192092896),
									Vector2.new(-1.75, -1.6499999761581421),
									Vector2.new(-0.64999997615814209, -1.6499999761581421),
									Vector2.new(0.5, 1.6499999761581421),
									Vector2.new(1.6000000238418579, 1.6499999761581421),
									Vector2.new(2.7000000476837158, 1.6499999761581421),
									Vector2.new(2.1500000953674316, 0.55000001192092896),
									Vector2.new(1.6000000238418579, -0.55000001192092896),
									Vector2.new(1.0499999523162842, -1.6499999761581421),
								},
								Limit = 13,
								ShaftLength = 5,
								ShaftSpacing = 0.9,
								WingSpacing = 1.1,
								Transparency = 0.5,
								Spacing67 = 0.4,
								Display67 = "Show to Back",
								CapeMode = "4x3",
								WingPhase = 0,
								WingSpeed = 1.4,
								CapePhase = 0,
								CapeSpeed = 0,
								CapeWind = Vector3.zero,
								Spawning = false,
								Generation = 0,
							},
							AnimationWhitelist = { ["180426354"] = true, ["168268306"] = true },
							States = {},
							SpawnQueue = {},
							SpawnOrder = 0,
							RuntimeGates = {},
							RuntimeConnections = {},
							AutoRejoinBusy = false,
							CustomAssets = { Files = {}, Requests = {} },
							RegisteredKeybinds = {},
							KeybindNames = {},
							KeybindMenuDefaults = setmetatable({}, { __mode = "k" }),
							ToggleStates = {},
							ActiveDraggableButtons = {},
							CustomCrosshair = { Hidden = {} },
							NotificationSettings = {
								Enabled = true,
								Events = {
									["Kicked Player"] = true,
									["Player Left"] = true,
									["Player Rejoined"] = true,
								},
								Templates = {
									["Kicked Player"] = "%kickedPlayer% has been kicked.",
									["Player Left"] = "%leftPlayer% left and was removed from %listCount% list(s).",
									["Player Rejoined"] = "%rejoinedPlayer% rejoined and was restored to %listCount% list(s).",
								},
							},
							ImmunePlayers = {},
							ImmuneShurikens = {},
							AntiKickSettings = {
								Highlight = false,
								HighlightFill = Color3.new(1, 0, 0),
								HighlightOutl = Color3.new(1, 1, 1),
								HighlightFT = 0.5,
								HighlightOT = 0,
								Transparency = 0.9,
							},
							WaterPartStates = {},
							WaterParts = {},
							WaterRegions = {},
							WaterSettings = {
								WaterColor = terrain.WaterColor,
								WaterWaveSize = terrain.WaterWaveSize,
								WaterWaveSpeed = terrain.WaterWaveSpeed,
								WaterTransparency = terrain.WaterTransparency,
								WaterReflectance = terrain.WaterReflectance,
							},
							ServerHop = {
								CachePath = "ResonanceServerHop_" .. tostring(placeId) .. ".json",
								Busy = false,
								Token = 0,
								AutoToken = 0,
								LastFetchError = nil,
								LastCacheError = nil,
								Rejected = {},
								CachedRegions = {},
								Regions = {},
								RegionNames = {
									"Automatic",
									"EU",
									"North America",
									"South America",
									"Asia",
									"Oceania",
								},
								AutomaticCountry = nil,
								PlayerCoordinates = nil,
								ResolvedRegions = {},
								ContinentCountries = {
									EU = " AD AL AT AX BA BE BG BY CH CY CZ DE DK EE ES FI FO FR GB GG GI GR HR HU IE IM IS IT JE LI LT LU LV MC MD ME MK MT NL NO PL PT RO RS RU SE SI SJ SK SM TR UA VA XK ",
									["North America"] = " AG AI AW BB BL BM BQ BS BZ CA CR CU CW DM DO GD GL GP GT HN HT JM KN KY LC MF MQ MS MX NI PA PM PR SV SX TC TT US VC VG VI ",
									["South America"] = " AR BO BR CL CO EC FK GF GY PE PY SR UY VE ",
									Asia = " AE AF AM AZ BD BH BN BT CN GE HK ID IL IN IQ IR JO JP KG KH KP KR KW KZ LA LB LK MM MN MO MV MY NP OM PH PK PS QA SA SG SY TH TJ TL TM TW UZ VN YE ",
									Oceania = " AS AU CC CK CX FJ FM GU KI MH MP NC NF NR NU NZ PF PG PN PW SB TK TO TV UM VU WF WS ",
								},
								CountryCoordinates = {
									AX = Vector2.new(60.180000305175781, 19.920000076293945),
									BQ = Vector2.new(12.180000305175781, -68.239997863769531),
									CW = Vector2.new(12.170000076293945, -68.989997863769531),
									BL = Vector2.new(17.899999618530273, -62.830001831054688),
									MF = Vector2.new(18.069999694824219, -63.049999237060547),
									SX = Vector2.new(18.040000915527344, -63.049999237060547),
									SS = Vector2.new(6.880000114440918, 31.309999465942383),
								},
							},
							LimbOffsetsRL = {
								Head = CFrame.new(0, 1.5, 0),
								["Left Arm"] = CFrame.new(-1.5, 0, 0),
								["Right Arm"] = CFrame.new(1.5, 0, 0),
								["Left Leg"] = CFrame.new(-0.5, -2, 0),
								["Right Leg"] = CFrame.new(0.5, -2, 0),
								Torso = CFrame.new(),
							},
							PacketData = {},
							LineData = {},
							FlingState = { Method = "PalletLightBrown" },
						}

					end

					do
						tbl10 = { Workers = {}, Generations = {}, LoopTokens = {}, Epoch = 0 }

						do
							local obj = setmetatable({}, { __mode = "k" })

							Players.PlayerAdded:Connect(function(player)
								tbl7.PlayerList[#tbl7.PlayerList + 1] = player
							end)

							Players.PlayerRemoving:Connect(function(player)
								local v24 = table.find(tbl7.PlayerList, player)

								if v24 then
									table.remove(tbl7.PlayerList, v24)
								end

								tbl7.AdminImmune[player] = nil
							end)

							local function fn21(arg, arg2, arg3)
								local v24 = ReplicatedStorage
								local waitForChild = v24.WaitForChild
								local str6

								if arg3 then
									str6 = ""
								else
									str6 = "Events"
								end

								local v25 = waitForChild(v24, arg .. str6, 0.5)
								return v25 and v25:WaitForChild(arg2, 0.5)
							end

							tbl11 = {
								SetNetworkOwner = fn21("Grab", "SetNetworkOwner"),
								CreateGrabLine = fn21("Grab", "CreateGrabLine"),
								DestroyGrabLine = fn21("Grab", "DestroyGrabLine"),
								StickyPartEvent = fn21("Player", "StickyPartEvent"),
								SpawnToy = fn21("MenuToys", "SpawnToyRemoteFunction", true),
								DestroyToy = fn21("MenuToys", "DestroyToy", true),
								Struggle = fn21("Character", "Struggle"),
								RagdollRemote = fn21("Character", "RagdollRemote"),
								UseFood = fn21("Hold", "Use"),
								Explode = fn21("Bomb", "BombExplode"),
								Packet = fn21("Grab", "ExtendGrabLine"),
							}

							if waypoints then
								for _, child in ipairs(waypoints:GetChildren()) do
									if child.Name ~= "CharacterWaypoint" then
										table.insert(tbl7.TeleportLocations, child)
									end
								end
							end

							if getconnections then
								for _, v24 in pairs(getconnections(localPlayer.Idled)) do
									if v24.Disable then
										v24:Disable()
									elseif v24.Disconnect then
										v24:Disconnect()
									end
								end
							else
								do
									local v24 = cloneref(game:GetService("VirtualUser"))

									localPlayer.Idled:Connect(function()
										v24:CaptureController()
										v24:ClickButton2(Vector2.new())
									end)
								end
							end

							table.insert(tbl7.TeleportLocations, workspace.SpawnLocation)
							table.insert(tbl7.TeleportLocations, part3)
							tbl12 = {}

							copyright = "Copyright (c) 2026 Project Resonance. All rights reserved."

							tbl12.NotifyEvent = function(arg, arg2, arg3)
								local notificationSettings = tbl7.NotificationSettings
								if not notificationSettings.Enabled or not notificationSettings.Events[arg] then
									return
								end
								local str6 = notificationSettings.Templates[arg]
								if type(str6) ~= "string" then
									return
								end

								for k, v24 in pairs(arg2) do
									str6 = str6:gsub("%%" .. k .. "%%", function()
										return tostring(v24)
									end)
								end

								fn18(str6, arg3 or arg)
							end

							fn20 = function(arg)
								local n36 = arg or 0
								local heartbeat2 = RunService.Heartbeat
								local now3 = tick()

								repeat
									heartbeat2:Wait()
								until n36 <= tick() - now3

								return true
							end

							tbl12.GetRuntimeGate = function(arg)
								local v24 = tbl7.RuntimeGates[arg]
								if v24 then
									return v24
								end
								local bindableEvent = Instance.new("BindableEvent")
								tbl7.RuntimeGates[arg] = bindableEvent
								return bindableEvent
							end

							tbl12.SetRuntimeToggle = function(arg, arg2)
								tbl8[arg] = arg2
								local v24 = tbl7.RuntimeGates[arg]

								if v24 then
									v24:Fire()
								end
							end

							tbl12.WaitForRuntimeToggle = function(arg)
								if tbl8[arg] then
									return true
								end
								local v24 = tbl12.GetRuntimeGate(arg)

								while true do
									v24.Event:Wait()
									if not (flag11 or tbl8[arg]) then
										continue
									end
									break
								end

								return not flag11
							end

							tbl12.WakeRuntimeGates = function()
								for _, runtimeGate in pairs(tbl7.RuntimeGates) do
									runtimeGate:Fire()
								end
							end

							tbl12.WakeRuntimeGate = function(arg)
								local v24 = tbl7.RuntimeGates[arg]

								if v24 then
									v24:Fire()
								end
							end

							tbl12.WaitForRuntimeCondition = function(arg, arg2)
								if arg2() then
									return true
								end
								local v24 = tbl12.GetRuntimeGate(arg)

								while true do
									v24.Event:Wait()
									local v25 = flag11
									local v26

									if flag11 then
										v26 = v25
									else
										v26 = arg2()
									end

									if not v26 then
										continue
									end
									break
								end

								return not flag11
							end

							tbl12.IsMovementPhysicsEnabled = function()
								return tbl8.JumpPower or tbl8.Noclip
							end

							tbl12.IsToyAuraEffectsEnabled = function()
								local toysAuraSettings = tbl7.ToysAuraSettings
								return toysAuraSettings.Enabled and toysAuraSettings.OwnType == "Aura" or tbl8.ToyAuras and next(tbl7.ToyAuras) ~= nil
							end

							tbl12.SetRuntimeConnection = function(arg, arg2, arg3, arg4)
								local v24 = tbl7.RuntimeConnections[arg]

								if not arg3 then
									if v24 then
										v24:Disconnect()
									end

									tbl7.RuntimeConnections[arg] = nil
									return
								end

								if v24 and v24.Connected then
									return
								end
								tbl7.RuntimeConnections[arg] = arg2:Connect(arg4)
							end

							tbl12.DisconnectRuntimeConnections = function()
								for k, runtimeConnection in pairs(tbl7.RuntimeConnections) do
									runtimeConnection:Disconnect()
									tbl7.RuntimeConnections[k] = nil
								end
							end

							tbl12.UpdateKeybindMenu = function()
								local onlyAssignedKeybinds = not lib.IsMobile and tbl8.OnlyAssignedKeybinds

								for _, v24 in options, nil, nil do
									if not (v24.Type ~= "KeyPicker" or not v24.SetMenuVisibility) then
										local v25 = tbl7.KeybindMenuDefaults[v24]

										if v25 == nil then
											local flag12 = v24.MenuVisible ~= false
											tbl7.KeybindMenuDefaults[v24] = flag12
											v25 = flag12
										end

										v24:SetMenuVisibility(v25 and (not onlyAssignedKeybinds or v24.Value ~= "None"))
									end
								end
							end

							if listfiles and delfile then
								local ok, result = pcall(listfiles, ".")

								if not (ok and type(result) == "table") then
									result = {}
								end

								for _, v24 in result, nil, nil do
									local match, flag12

									do
										local v25
										match, v25 = (v24:match("[^/\\]+$") or v24):match("^(%w+)_(%x+)%.[%w]+$")
										flag12 = match and #v25 == 32
									end

									local match2

									if flag12 then
										match2 = match:match("^Resonance") or match == "AdminSound"
									else
										match2 = flag12
									end

									if match2 then
										pcall(delfile, v24)
									end
								end
							end

							tbl12.LoadCustomAsset = function(arg, arg2, arg3)
								if type(arg) ~= "string" or arg == "" then
									return nil, "Empty URL"
								end

								if not (writefile and getcustomasset) then
									return nil, "Custom assets are not supported"
								end
								local str6 = (arg2 or "ResonanceAsset") .. "_" .. HttpService:GenerateGUID(false):gsub("%-", "") .. (arg3 or "")
								local ok, result = pcall(game.HttpGet, game, arg)
								if not ok or type(result) ~= "string" or result == "" then
									return nil, "Download failed"
								end

								if not pcall(writefile, str6, result) then
									if delfile then
										pcall(delfile, str6)
									end

									return nil, "File write failed"
								end

								tbl7.CustomAssets.Files[str6] = str6
								local ok2, result2 = pcall(getcustomasset, str6)
								if not ok2 or not result2 then
									tbl12.ClearCustomAsset(str6)
									return nil, "Custom asset registration failed"
								end
								task.delay(2, tbl12.ClearCustomAsset, str6)
								return result2, str6
							end

							tbl12.ClearCustomAsset = function(arg)
								local v24 = tbl7.CustomAssets.Files[arg]

								if v24 and delfile then
									pcall(delfile, v24)
								end

								tbl7.CustomAssets.Files[arg] = nil
							end

							tbl12.ClearCustomAssets = function()
								for k in pairs(tbl7.CustomAssets.Requests) do
									local requests = tbl7.CustomAssets.Requests
									requests[k] = requests[k] + 1
								end

								for k in pairs(tbl7.CustomAssets.Files) do
									tbl12.ClearCustomAsset(k)
								end
							end

							tbl12.SetCursorIconColor = function(cursorIconColor)
								tbl9.CursorIconColor = cursorIconColor
								local cursorIconImage = tbl7.CursorIconImage

								if not (cursorIconImage and cursorIconImage.Parent) then
									for _, v24 in lib.ScreenGui:QueryDescendants("ImageLabel") do
										local parent2 = v24.Parent

										if v24.ZIndex == 3 and parent2 and parent2:IsA("GuiObject") and parent2.ZIndex == 11000 then
											tbl7.CursorIconImage = v24
											cursorIconImage = v24
											break
										end
									end
								end

								if cursorIconImage then
									cursorIconImage.ImageColor3 = cursorIconColor
								end
							end

							tbl12.ResolveAssetInput = function(arg, arg2, arg3, arg4, arg5, arg6)
								local match = tostring(arg or ""):match("^%s*(.-)%s*$")
								local customAssets = tbl7.CustomAssets
								customAssets.Requests[arg2] = (customAssets.Requests[arg2] or 0) + 1
								local v24 = customAssets.Requests[arg2]

								if match == "" then
									tbl12.ClearCustomAsset(arg2)
									arg4(arg5)
									return
								end

								local str6 = match:lower()
								local match2 = match:match("^%d+$") or str6:match("^rbxassetid://(%d+)$")

								if not match2 and str6:find("roblox.com", 1, true) then
									match2 = str6:match("[?&]id=(%d+)") or str6:match("/asset/(%d+)") or str6:match("/library/(%d+)")
								end

								if match2 then
									tbl12.ClearCustomAsset(arg2)
									local num

									if arg6 then
										num = tonumber(match2)
									else
										num = "rbxassetid://" .. match2
									end

									arg4(num, false)
									return
								end

								local str7

								if arg3 == "sound" then
									str7 = ".mp3"
								else
									str7 = "image"
								end

								if not str6:match("^https?://") or arg3 == "sound" and not str6:match("%.mp3[?#]?.*$") then
									local v25 = fn18
									local str8 = ("Enter a Roblox %* ID or a direct %* link."):format(arg3, str7)
									v25(str8)
									return
								end

								local str8 = ".mp3"

								if arg3 ~= "sound" then
									local match3 = (str6:match("^[^?#]+") or str6):match("%.([%w]+)$")

									if match3 ~= "png" and match3 ~= "jpg" and match3 ~= "jpeg" and match3 ~= "webp" then
										match3 = "png"
									end

									str8 = "." .. match3
								end

								task.spawn(function()
									local v25, v26 = tbl12.LoadCustomAsset(match, "Resonance" .. arg2, str8)

									if v24 ~= customAssets.Requests[arg2] or flag11 then
										v25 = v25 and v26

										if v25 then
											tbl12.ClearCustomAsset(v26)
										end

										return
									end

									if not v25 then
										local str9 = arg2:gsub("(%l)(%u)", "%1 %2")
										local v27 = fn18
										local str10 = ("Couldn't load the %*: %*."):format(str9:lower(), v26)
										v27(str10)
										return
									end

									tbl12.ClearCustomAsset(arg2)
									customAssets.Files[arg2] = v26
									arg4(v25, true)
								end)
							end

							tbl12.Char = function(arg)
								if arg == nil then
									arg = localPlayer
								end

								if arg then
									if obj[arg] then
										local character = obj[arg].Character
										local rootPart = obj[arg].RootPart
										local humanoid = obj[arg].Humanoid
										if character and character.Parent and rootPart and rootPart.Parent and humanoid and humanoid.Parent then
											return character, rootPart, humanoid
										end
										obj[arg] = nil
									end

									local character = arg.Character

									if character then
										local realHrp = character:FindFirstChild("realHrp") or character:FindFirstChild("HumanoidRootPart")
										local humanoid = character:FindFirstChild("Humanoid")
										obj[arg] = { Character = character, RootPart = realHrp, Humanoid = humanoid }
										return character, realHrp, humanoid
									end
								end
							end
						end
					end

					do
						tbl12.ToggleMotor6D = function(arg, enabled, arg2)
							if not arg then
								return
							end
							local humanoid = arg:FindFirstChild("Humanoid")
							local torso = arg:FindFirstChild("Torso")
							humanoid = humanoid and humanoid:FindFirstChild("Ragdolled")
							if not torso or not humanoid then
								return
							end

							if not humanoid.Value then
								for _, v24 in torso:GetChildren() do
									if v24:IsA("Motor6D") then
										v24.Enabled = enabled
									end
								end
							end

							if arg2 and (enabled == false or humanoid.Value) then
								for _, v24 in { "Left Leg", "Right Leg", "Left Arm", "Right Arm", "Head" }, nil, nil do
									local ballSocketConstraint = arg:FindFirstChild(v24)
									ballSocketConstraint = ballSocketConstraint and ballSocketConstraint:FindFirstChild("BallSocketConstraint")

									if ballSocketConstraint then
										ballSocketConstraint.Enabled = enabled
									end
								end
							end
						end

						tbl12.RepositionLimbs = function(arg, arg2)
							local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart")
							local torso = arg:FindFirstChild("Torso")
							if not humanoidRootPart or not torso then
								return
							end
							local neck = torso:FindFirstChild("Neck")
							if neck and neck.Enabled then
								return
							end
							local lookVector = humanoidRootPart.CFrame.LookVector
							local vector = Vector3.new(lookVector.X, 0, lookVector.Z)
							if vector.Magnitude < 0.001 then
								return
							end
							local cframe = CFrame.lookAt(humanoidRootPart.Position, humanoidRootPart.Position + vector.Unit)

							for k, v24 in pairs(tbl7.LimbOffsetsRL) do
								local v25 = arg:FindFirstChild(k)

								if v25 and v25:IsA("BasePart") then
									local cFrame2 = cframe * v24

									if v25.CFrame ~= cFrame2 then
										v25.CFrame = cFrame2
									end

									if arg2 then
										tbl12.ResetVelocity(v25)
									end
								end
							end
						end

						bodyVelocity = nil
						bodyGyro = nil
						v23 = nil

						tbl12.StopFly = function()
							if bodyVelocity then
								bodyVelocity:Destroy()
								bodyVelocity = nil
							end

							if bodyGyro then
								bodyGyro:Destroy()
								bodyGyro = nil
							end

							local v24, v25, v26 = tbl12.Char()

							if v26 then
								v26.PlatformStand = false
							end
						end

						tbl12.StartFly = function(parent2)
							bodyGyro = Instance.new("BodyGyro")
							bodyGyro.P = 90000
							bodyGyro.D = 1000
							bodyGyro.MaxTorque = Vector3.new(9e9, 9e9, 9e9)
							bodyGyro.CFrame = parent2.CFrame
							bodyGyro.Parent = parent2
							bodyVelocity = Instance.new("BodyVelocity")
							bodyVelocity.MaxForce = Vector3.new(9e9, 9e9, 9e9)
							bodyVelocity.Velocity = Vector3.zero
							bodyVelocity.Parent = parent2
						end

						tbl12.LightPhysicalProperties = PhysicalProperties.new(0.01, 0.01, 0.01, 0.01, 0.01)

						tbl12.ToggleCollisions = function(arg, canCollide, arg2, arg3)
							if canCollide == nil then
								canCollide = false
							end

							local lightPhysicalProperties

							if arg3 then
								lightPhysicalProperties = tbl12.LightPhysicalProperties
							else
								lightPhysicalProperties = nil
							end

							for _, child in pairs(arg:GetChildren()) do
								if child:IsA("BasePart") then
									local flag12

									if canCollide then
										flag12 = child.Name == "Torso" or child.Name == "Head"
									else
										flag12 = canCollide
									end

									if flag12 then
										if child.CanCollide ~= canCollide then
											child.CanCollide = canCollide
										end
									elseif not canCollide then
										if child.CanCollide ~= canCollide then
											child.CanCollide = canCollide
										end

										if not arg2 then
											local ragdollLimbPart = child:FindFirstChild("RagdollLimbPart")

											if ragdollLimbPart and ragdollLimbPart.CanCollide then
												ragdollLimbPart.CanCollide = false
											end
										end
									end

									if child.Name ~= "HumanoidRootPart" and child.CustomPhysicalProperties ~= lightPhysicalProperties then
										child.CustomPhysicalProperties = lightPhysicalProperties
									end
								end
							end
						end

						tbl12.CreateAlign = function(parent2, arg)
							local attachment = Instance.new("Attachment")
							attachment.Name = "RSC"
							attachment.Parent = parent2
							local alignPosition = Instance.new("AlignPosition")
							alignPosition.Mode = 0
							alignPosition.Name = "RSC"
							alignPosition.MaxForce = math.huge
							alignPosition.Responsiveness = 200
							alignPosition.Parent = parent2
							alignPosition.Attachment0 = attachment

							alignPosition.Destroying:Once(function()
								if attachment then
									attachment:Destroy()
								end
							end)

							if arg then
								local alignOrientation = Instance.new("AlignOrientation")
								alignOrientation.Mode = 0
								alignOrientation.Name = "RSC"
								alignOrientation.MaxTorque = math.huge
								alignOrientation.Responsiveness = 200
								alignOrientation.Parent = parent2
								alignOrientation.Attachment0 = attachment

								alignOrientation.Destroying:Once(function()
									if attachment then
										attachment:Destroy()
									end
								end)

								return alignPosition, alignOrientation
							end

							return alignPosition
						end

						tbl12.ResetVelocity = function(arg)
							if not arg or not arg:IsA("BasePart") then
								return false
							end

							if arg.AssemblyAngularVelocity ~= Vector3.zero then
								arg.AssemblyAngularVelocity = Vector3.zero
							end

							if arg.AssemblyLinearVelocity ~= Vector3.zero then
								arg.AssemblyLinearVelocity = Vector3.zero
							end

							return true
						end

						tbl12.Teleport = function(arg, cFrame2, arg2, arg3)
							if not arg or not arg:IsA("BasePart") or not cFrame2 then
								return false
							end
							local v24 = tbl12.Char()
							local v25 = v24 and arg:IsDescendantOf(v24)

							if typeof(cFrame2) == "CFrame" then
								if arg2 then
									cFrame2 *= arg2
								end
							elseif typeof(cFrame2) == "Vector3" then
								local cframe = CFrame.new

								if arg2 then
									cFrame2 += arg2.Position
								end

								cFrame2 = cframe(cFrame2)
							else
								if not (typeof(cFrame2) == "Instance" and cFrame2:IsA("BasePart")) then
									return false
								end

								if arg2 then
									cFrame2 = cFrame2.CFrame * arg2
								else
									cFrame2 = cFrame2.CFrame
								end
							end

							if v25 and (arg.Name == "HumanoidRootPart" or arg.Name == "Torso") and tbl7.States["Anti Grab"] then
								v22 = cFrame2
							end

							if arg.CFrame ~= cFrame2 then
								arg.CFrame = cFrame2
							end

							if arg3 ~= false then
								tbl12.ResetVelocity(arg)
							end

							return true
						end

						tbl12.PivotTo = function(arg, arg2, arg3, arg4)
							if not arg or not arg:IsA("Model") or typeof(arg2) ~= "CFrame" then
								return false
							end
							local n36 = arg2 * arg:GetPivot():Inverse()
							arg3 = arg3 or arg:QueryDescendants("BasePart")
							arg4 = arg4 or {}
							table.clear(arg4)

							for i, v24 in ipairs(arg3) do
								local assemblyRootPart = v24:IsDescendantOf(arg) and v24.AssemblyRootPart

								if assemblyRootPart and not v24.Anchored and not assemblyRootPart.Anchored then
									arg4[i] = n36 * v24.CFrame
								end
							end

							for k, v24 in pairs(arg4) do
								arg3[k].CFrame = v24
							end

							return true
						end

						tbl12.BPTeleport = function(arg, position)
							local primaryPart

							if arg:IsA("Model") then
								primaryPart = arg.PrimaryPart
							else
								primaryPart = arg
							end

							if not primaryPart then
								return
							end
							local bodyPosition = primaryPart:FindFirstChildOfClass("BodyPosition")

							if bodyPosition then
								bodyPosition:Destroy()
							end

							local bodyPosition2 = Instance.new("BodyPosition")
							bodyPosition2.Position = position
							bodyPosition2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							bodyPosition2.D = 250
							bodyPosition2.Parent = primaryPart
							tbl12.ResetVelocity(arg)

							task.delay(1, function()
								bodyPosition2:Destroy()
							end)
						end

						tbl12.GetMagnitude = function(arg, arg2)
							if not arg or not arg2 then
								return
							end
							return (arg.Position - arg2.Position).Magnitude
						end

						tbl12.GetClosestPlayer = function(arg)
							local huge = math.huge
							local v24 = nil

							for _, v25 in pairs(tbl7.PlayerList) do
								local v26, v27 = tbl12.Char(v25)

								if v27 then
									local magnitude = (v27.Position - arg.Position).Magnitude

									if magnitude < huge then
										huge = magnitude
										v24 = v25
									end
								end
							end

							return v24, huge
						end

						tbl12.OwnedPlot = function(arg)
							local plots = workspace:FindFirstChild("Plots")
							if not plots then
								return
							end

							for _, child in ipairs(plots:GetChildren()) do
								local plotSign = child:FindFirstChild("PlotSign")
								if not plotSign then
									continue
								end
								local thisPlotsOwners = plotSign:FindFirstChild("ThisPlotsOwners")
								if not thisPlotsOwners then
									continue
								end

								for _, child2 in pairs(thisPlotsOwners:GetChildren()) do
									if child2.Value == arg.Name then
										return child
									end
								end
							end
						end

						tbl12.WhichPlot = function(arg)
							local plots = workspace:FindFirstChild("Plots")
							if not plots then
								return
							end

							for _, child in pairs(plots:GetChildren()) do
								local plotArea = child:FindFirstChild("PlotArea")
								if not plotArea then
									continue
								end
								local partsInPart = workspace:GetPartsInPart(plotArea)

								for _, v24 in pairs(partsInPart) do
									if Players:GetPlayerFromCharacter(v24.Parent) == arg then
										local inOwnedPlot2 = arg:FindFirstChild("InOwnedPlot")
										return child, inOwnedPlot2 and inOwnedPlot2.Value
									end
								end
							end
						end

						tbl12.CheckPlot = function(arg)
							local tbl16 = {}
							local plotArea = arg:FindFirstChild("PlotArea")
							if not plotArea then
								return
							end

							for _, v24 in pairs(workspace:GetPartsInPart(plotArea)) do
								local playerFromCharacter = Players:GetPlayerFromCharacter(v24.Parent)

								if playerFromCharacter and not tbl16[playerFromCharacter] and playerFromCharacter:FindFirstChild("InOwnedPlot") and playerFromCharacter.InOwnedPlot.Value == true then
									tbl16[playerFromCharacter] = true
								end
							end

							if not next(tbl16) then
								return nil
							end
							return true, tbl16
						end

						tbl12.BreakPlot = function(arg)
							local inPlot2 = nil

							if arg:IsA("Player") then
								inPlot2 = arg:FindFirstChild("InPlot")
								if not inPlot2 then
									return
								end
								arg = tbl12.WhichPlot(arg)
								if not arg then
									return
								end
							end

							if tbl7.BrokenPlots[arg.Name] then
								return true
							end
							local plotArea = arg:FindFirstChild("PlotArea")
							if not plotArea then
								return
							end
							local NinjaShuriken = tbl12.SpawnToy("NinjaShuriken")
							if not NinjaShuriken then
								return
							end
							local stickyPart = NinjaShuriken and NinjaShuriken:WaitForChild("StickyPart", 0.4)
							local stickyWeld = stickyPart and stickyPart:WaitForChild("StickyWeld", 0.4)
							local cframe = CFrame.new(1099511627776, 1099511627776, 1099511627776)

							if arg.Name == "Plot5" then
								cframe = CFrame.new(2147483648, 2147483648, 2147483648)
							end

							if not stickyWeld or not tbl12.SNO(stickyPart) then
								return
							end
							tbl11.StickyPartEvent:FireServer(stickyPart, plotArea, cframe)
							local now3 = tick()

							while true do
								task.wait()
								if not (stickyWeld.Part1 == plotArea and (not inPlot2 or not inPlot2.Value) or not stickyWeld.Parent or tick() - now3 > 0.8) then
									continue
								end
								break
							end

							if not stickyWeld.Parent or stickyWeld.Part1 ~= plotArea or inPlot2 and inPlot2.Value == true then
								if NinjaShuriken then
									tbl12.DestroyToy(NinjaShuriken)
								end

								return false
							end

							tbl7.BrokenPlots[arg.Name] = NinjaShuriken

							NinjaShuriken.Destroying:Once(function()
								tbl7.BrokenPlots[arg.Name] = nil
							end)

							return NinjaShuriken
						end

						tbl12.DestroyPlot = function(arg)
							local plotItems = workspace:FindFirstChild("PlotItems")
							if not plotItems then
								return
							end
							local v24 = plotItems:FindFirstChild(arg)
							if not v24 or not next(v24:GetChildren()) then
								return
							end
							local YouDecoy = tbl12.SpawnToy("YouDecoy")
							if not YouDecoy then
								return
							end
							YouDecoy.Name = "HouseBreakerRSC"
							local humanoidRootPart = YouDecoy:WaitForChild("HumanoidRootPart", 0.4)
							if not humanoidRootPart or not tbl12.SNO(humanoidRootPart) then
								tbl12.DestroyToy(YouDecoy)
								return false
							end
							tbl12.RNO(humanoidRootPart)
							local bodyVelocity2 = Instance.new("BodyVelocity")
							bodyVelocity2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							bodyVelocity2.Velocity = Vector3.zero
							bodyVelocity2.Parent = humanoidRootPart
							local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
							bodyAngularVelocity.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
							bodyAngularVelocity.AngularVelocity = Vector3.new(500000, 500000, 500000)
							bodyAngularVelocity.Parent = humanoidRootPart

							for _, child in ipairs(v24:GetChildren()) do
								if not (not child:IsA("Model") or not YouDecoy.Parent) then
									local primaryPart = child.PrimaryPart or child:FindFirstChildWhichIsA("BasePart")

									if primaryPart then
										local now3 = tick()

										repeat
											humanoidRootPart.CFrame = primaryPart.CFrame
											task.spawn(tbl12.RepositionLimbs, YouDecoy, true)
											RunService.Heartbeat:Wait()
										until tick() - now3 > 0.25
									end
								end
							end

							bodyVelocity2:Destroy()
							bodyAngularVelocity:Destroy()
							tbl12.DestroyToy(YouDecoy)
						end

						tbl12.ClaimPlot = function(arg)
							local plots = workspace:FindFirstChild("Plots")
							if not plots then
								return
							end

							if tbl12.OwnedPlot(localPlayer) then
								return
							end
							local v24 = plots:FindFirstChild(arg)
							if not v24 then
								return
							end

							if tbl12.CheckPlot(v24) then
								return
							end
							local plotSign = v24:FindFirstChild("PlotSign")
							if not plotSign then
								return
							end
							local sign = plotSign:FindFirstChild("Sign")
							if not sign then
								return
							end
							local plus = sign:FindFirstChild("Plus")
							if not plus then
								return
							end
							local plusGrabPart = plus:FindFirstChild("PlusGrabPart")
							if not plusGrabPart then
								return
							end
							tbl12.SNO(plusGrabPart)
							return plusGrabPart:FindFirstChild("AnchoredPartGrab") and plusGrabPart.AnchoredPartGrab.Value == localPlayer.Name
						end

						tbl12.IsNetworkOwner = function(arg)
							if not (arg and arg:IsA("BasePart")) then
								return
							end
							local assemblyRootPart = arg.AssemblyRootPart or arg
							return not assemblyRootPart.Anchored and assemblyRootPart.ReceiveAge == 0
						end

						tbl12.IsPartOwner = function(arg)
							if not (arg and arg:IsA("BasePart")) then
								return
							end
							local v24 = tbl7.PartOwnerCache[arg]
							if v24 and v24.Parent then
								return v24.Value == localPlayer.Name
							end
							local parent2 = arg.Parent
							local head = arg.Name == "HumanoidRootPart" and parent2 and parent2:FindFirstChild("Head")
							head = head and head:FindFirstChild("PartOwner")
							if head and head.Value == localPlayer.Name then
								tbl7.PartOwnerCache[arg] = head
								return true
							end
							local partOwner = arg:FindFirstChild("PartOwner")
							if partOwner and partOwner.Value == localPlayer.Name then
								tbl7.PartOwnerCache[arg] = partOwner
								return true
							end
							parent2 = parent2 and parent2:FindFirstChild("PartOwner", true)
							if parent2 then
								tbl7.PartOwnerCache[arg] = parent2
								return parent2.Value == localPlayer.Name
							end
							return false
						end

						tbl12.IsProtectedPlayer = function(arg, arg2)
							local flag12 = tbl7.AdminImmune[arg] == true

							if not flag12 then
								flag12 = arg2 == true and tbl8.WhitelistedBypass and tbl7.Whitelisted[arg] == true
							end

							return flag12
						end

						do
							local obj = setmetatable({}, { __mode = "k" })

							tbl12.GetCustomVelocity = function(arg)
								local now3 = os.clock()
								local position = arg.Position
								local v24 = obj[arg]
								if not v24 then
									obj[arg] = { Position = position, Time = now3, Linear = Vector3.zero }
									return Vector3.zero
								end
								local n36 = now3 - v24.Time
								if n36 < 0.001 then
									return v24.Linear
								end
								local n37 = (position - v24.Position) / n36

								if n36 > 0.25 or n37.Magnitude > 300 then
									v24.Linear = Vector3.zero
								else
									v24.Linear = v24.Linear:Lerp(n37, 1 - math.exp(-n36 * 40))

									if v24.Linear.Magnitude < 0.05 then
										v24.Linear = Vector3.zero
									end
								end

								v24.Position = position
								v24.Time = now3
								return v24.Linear
							end
						end
					end

					tbl12.PredictCFrame = function(arg, arg2)
						local cFrame2 = arg2 or arg.CFrame
						if not tbl8.PositionPrediction then
							return cFrame2
						end
						local n36 = math.clamp(localPlayer:GetNetworkPing(), 0, 0.35)
						return cFrame2 + tbl12.GetCustomVelocity(arg) * n36
					end

					tbl12.Grab = function(arg, arg2)
						local v24, v25, v26 = tbl12.Char()
						if not v25 or not v26 or v26.Health == 0 or not arg or not arg.Parent or not arg:IsA("BasePart") then
							return
						end
						local n36 = (arg2 or v25.CFrame) * CFrame.new(0, 1.593, 0)
						local cframe = tbl12.PredictCFrame(arg)

						if not tbl8.DirectGrab then
							cframe = CFrame.new(n36.Position, cframe.Position)
						end

						tbl11.SetNetworkOwner:FireServer(arg, cframe)
					end

					tbl12.SNO = function(arg, arg2, arg3)
						local v24, v25, v26 = tbl12.Char()
						local head = v24 and v24:FindFirstChild("Head")
						local ragdolled = v26 and v26:FindFirstChild("Ragdolled")
						if not (head and ragdolled and v25 and v26 and v26.Health > 0) then
							return false
						end

						if not arg or not arg:IsA("BasePart") or not arg.Parent or tbl12.GetMagnitude(arg, workspace.SpawnLocation) > 10000000 then
							return false
						end

						if tbl12.IsPartOwner(arg) then
							return true
						end

						if tbl7.States.Owning or arg3 and not arg3() then
							return false
						end
						local flag12 = false
						local cframe = CFrame.new()
						local cframe2 = CFrame.new()
						local cframe3 = CFrame.new()
						local connection = nil

						if (v25.Position - arg.Position).Magnitude >= 31 then
							flag12 = true
						end

						local flag13 = arg.Name == "HumanoidRootPart" or arg.Name == "Torso"
						local v27 = nil

						if flag13 then
							local v28 = Players:FindFirstChild(arg.Parent.Name)
							v27 = nil

							if v28 then
								local v29, v30, v31 = tbl12.Char(v28)
								if not v31 or v31.Health == 0 then
									return false
								end
								local inPlot2 = v28:FindFirstChild("InPlot")
								inPlot2 = inPlot2 and inPlot2.Value == true
								v27 = nil

								if inPlot2 then
									v27 = tbl12.BreakPlot(v28)
									if not v27 then
										return false
									end
								end
							end
						end

						tbl7.States.Owning = true

						local function fn21()
							cframe2 = v25.CFrame
							cframe = head.CFrame
							cframe3 = v25.CFrame

							RunService:BindToRenderStep("RSCClient", Enum.RenderPriority.Camera.Value - 1, function()
								v25.CFrame = cframe2
								head.CFrame = cframe
							end)

							connection = RunService.Heartbeat:Connect(function()
								cframe2 = v25.CFrame
								cframe = head.CFrame
								v25.CFrame = cframe3
								head.CFrame = cframe3
							end)
						end

						local function fn22()
							RunService:UnbindFromRenderStep("RSCClient")

							if connection then
								connection:Disconnect()
								connection = nil
							end

							head.CFrame = cframe
							v25.CFrame = cframe2
						end

						local ok, result = pcall(function()
							if flag12 then
								fn21()
							end

							arg2 = arg2 or 0.65
							local now3 = tick()

							while not flag11 and arg.Parent and not tbl12.IsPartOwner(arg) and v26.Health ~= 0 and v25.Parent and (not arg3 or arg3()) and tick() - now3 < arg2 do
								if flag12 then
									cframe3 = tbl12.PredictCFrame(arg) - Vector3.new(0, 22, 0)
								end

								RunService.Heartbeat:Wait()
								local grab = tbl12.Grab
								local v28

								if flag12 then
									v28 = cframe3
								else
									v28 = nil
								end

								grab(arg, v28)
							end
						end)

						if flag12 then
							pcall(fn22)
						end

						if v27 then
							task.delay(1, tbl12.DestroyToy, v27)
						end

						tbl7.States.Owning = false
						if not ok then
							return warn(result)
						end
						return tbl12.IsPartOwner(arg)
					end

					tbl12.RNO = function(arg)
						tbl11.DestroyGrabLine:FireServer(arg)
					end

					tbl12.DisableEndGrabEarly = function()
						local grabEvents = ReplicatedStorage:FindFirstChild("GrabEvents")
						if not grabEvents then
							return
						end
						local endGrabEarly = grabEvents:FindFirstChild("EndGrabEarly")
						if endGrabEarly == remoteEvent then
							return endGrabEarly
						end

						if endGrabEarly then
							endGrabEarly:Destroy()
						end

						remoteEvent = Instance.new("RemoteEvent")
						remoteEvent.Name = "EndGrabEarly"
						remoteEvent.Parent = grabEvents
						return remoteEvent
					end

					do
						local function fn21(arg)
							return #tostring(arg) / 1000000
						end

						tbl12.FormatPlayer = function(arg, arg2, arg3)
							local v24

							if type(arg) ~= "string" then
								v24 = arg
							else
								v24 = Players:FindFirstChild(arg)
							end

							if v24 == nil then
								return "???"
							end

							if v24 == localPlayer and arg3 then
								return "You"
							end
							local str6 = "%*%* (@%*)"
							local format = str6.format
							local displayName = v24.DisplayName
							local str7

							if arg2 then
								str7 = "\n"
							else
								str7 = ""
							end

							return (format(str6, displayName, str7, v24.Name))
						end

						tbl12.PacketHandler = function(arg, arg2, arg3)
							if arg == localPlayer then
								return
							end

							if typeof(arg2) ~= "string" and typeof(arg2) ~= "number" then
								return
							end
							local str6 = tostring(arg2)
							if #str6 < 400 then
								return
							end
							local tbl16 = tbl7.PacketData[arg]

							if not tbl16 then
								tbl16 = {}
								tbl7.PacketData[arg] = tbl16
							end

							local now3 = tick()
							local lastSize = #str6
							local preview = string.sub(str6, 1, 15)
							local v24 = tbl12.FormatPlayer(arg)
							local str7 = string.format("%.2f", fn21(str6))
							local str8

							if arg3 == "CGL" then
								str8 = "Silent"
							else
								str8 = "Normal"
							end

							local method = str8

							if not tbl16.IsLagging then
								tbl16.IsLagging = true
								tbl16.SizeChanged = false
								fn18("Player: " .. v24 .. "\n" .. "Status: Started packet lagging\n" .. "Method: " .. method .. "\n" .. "Packet Size: " .. str7 .. " MB\n" .. "Preview: " .. preview, "Packet Lag Detected", nil, 7)
							end

							if tbl16.LastSize then
								local n36 = math.abs(lastSize - tbl16.LastSize)

								if n36 >= 25000 and not tbl16.SizeChanged then
									tbl16.SizeChanged = true
									fn18("Player: " .. v24 .. "\n" .. "Status: Packet size changed\n" .. "Method: " .. method .. "\n" .. "New Packet Size: " .. str7 .. " MB\n" .. "Difference: " .. math.floor(n36 / 1024) .. " KB\n" .. "Preview: " .. preview, "Packet Size Changed", nil, 6)
								end
							end

							tbl16.LastTime = now3
							tbl16.LastSize = lastSize

							if tbl16.LagCheck then
								task.cancel(tbl16.LagCheck)
							end

							tbl16.LagCheck = task.delay(8, function()
								if not tbl7.PacketData[arg] then
									return
								end
								local lastTime = tbl16.LastTime

								if tick() - lastTime >= 8 then
									tbl16.IsLagging = false
									tbl16.SizeChanged = false
									tbl16.LagCheck = nil
									tbl16.LastSize = nil
									fn18("Player: " .. v24 .. "\n" .. "Status: Stopped packet lagging\n" .. "Method: " .. method, "Packet Lag Ended")
								end
							end)
						end
					end

					tbl12.LineLagHandler = function(arg, lastPart, arg2)
						if typeof(lastPart) ~= "Instance" or typeof(arg2) ~= "CFrame" or arg == localPlayer then
							return
						end
						local tbl16 = tbl7.LineData[arg]

						if not tbl16 then
							tbl16 = {
								Count = 0,
								FirstTime = 0,
								LastPart = nil,
								PartSwitches = 0,
								IsLagging = false,
								LastTime = 0,
								Initialized = false,
								NotificationCooldown = 0,
							}

							tbl7.LineData[arg] = tbl16
						end

						local n36 = 2
						local n37 = 3
						local now3 = tick()
						local v24 = tbl12.FormatPlayer(arg)

						if not tbl16.Initialized then
							tbl16.FirstTime = now3
							tbl16.Initialized = true
							return
						end

						if now3 - tbl16.FirstTime < 1 then
							return
						end
						local position = arg2.Position
						local n38 = math.abs(position.X) + math.abs(position.Y) + math.abs(position.Z)
						local flag12 = lastPart and lastPart:IsA("BasePart") and lastPart.CanQuery == false

						if tbl16.LastPart and tbl16.LastPart ~= lastPart then
							tbl16.PartSwitches = tbl16.PartSwitches + 1
						end

						tbl16.LastPart = lastPart

						if now3 - tbl16.FirstTime > 2 then
							tbl16.FirstTime = now3
							tbl16.Count = 0
							tbl16.PartSwitches = 0
						end

						tbl16.Count = tbl16.Count + 1
						tbl16.LastTime = now3

						if tbl16.Count >= 20 and (n38 > 10000 or tbl16.PartSwitches >= 10 or flag12) and not tbl16.IsLagging and now3 - tbl16.NotificationCooldown >= n37 then
							tbl16.IsLagging = true
							tbl16.NotificationCooldown = now3
							fn18("Player: " .. v24 .. "\nStatus: Line lag started", "Line Lag Detected")
						end

						if tbl16.LagCheck then
							task.cancel(tbl16.LagCheck)
							tbl16.LagCheck = nil
						end

						if tbl16.IsLagging then
							tbl16.LagCheck = task.delay(2, function()
								if not tbl7.LineData[arg] then
									return
								end

								if not tbl16.IsLagging then
									return
								end

								if tick() - (tbl16.LastTime or 0) >= n36 then
									tbl16.IsLagging = false
									tbl16.Count = 0
									tbl16.PartSwitches = 0
									local notificationCooldown = tbl16.NotificationCooldown

									if tick() - notificationCooldown >= n37 then
										tbl16.NotificationCooldown = tick()
										fn18("Player: " .. v24 .. "\nStatus: Line lag stopped", "Line Lag Ended")
									end
								end
							end)
						end
					end

                    tbl12.QueueTeleport = function(antiLag, reload)
                        local queue = queue_on_teleport or queueonteleport or (syn and syn.queue_on_teleport)
                        if type(queue) ~= "function" then
                            if reload then fn18("This executor does not support queue_on_teleport") end
                            return false
                        end
                        if reload and not reloadPath then
                            fn18("Local reload is unavailable: file persistence failed")
                            return false
                        end
                        local source = string.format([[
repeat task.wait() until game:IsLoaded()
local player = game:GetService("Players").LocalPlayer
if not player then return end
local scripts = player:WaitForChild("PlayerScripts", 15)
if scripts then
    for _, name in ipairs({"CharacterAndBeamMove", "StickyPartsTouchDetection"}) do
        local item = scripts:WaitForChild(name, 10)
        if item then item.Enabled = not %s end
    end
end
if %s then
    local env = getgenv and getgenv() or _G
    env.ResonanceRunning = false
    env.ResonanceStarting = false
    local source = assert(readfile, "readfile unavailable")(%q)
    local run, message = loadstring(source, "@Resonance")
    assert(run, message)
    run()
end
]], tostring(antiLag == true), tostring(reload == true), reloadPath or "")
                        local ok, err = pcall(queue, source)
                        if not ok then fn18("Unable to queue teleport: " .. tostring(err)) end
                        return ok
                    end

					tbl12.Rejoin = function(arg, arg2)
						if not jobId or jobId == "" then
							fn18("Job ID not found! This might be because your executor is protecting you from other people joining your server. Couldn't rejoin")
							return
						end
						tbl12.QueueTeleport(arg, arg2)

						if #tbl7.PlayerList <= 1 then
							localPlayer:Kick("\nRejoining...")
							task.wait()
							TeleportService:Teleport(placeId, localPlayer)
						else
							TeleportService:TeleportToPlaceInstance(placeId, jobId, localPlayer)
						end
					end

					tbl10.Compact = function(arg)
						local items = {}
						local tail = 0

						for i = arg.Head, arg.Tail do
							local v24 = arg.Items[i]

							if v24 then
								tail += 1
								items[tail] = v24
							end
						end

						arg.Items = items
						arg.Head = 1
						arg.Tail = tail
					end

					tbl10.Enqueue = function(arg, arg2, arg3, arg4)
						if not (arg and arg2 and arg3) then
							return
						end
						arg4 = arg4 or arg
						local tbl16 = tbl10.Workers[arg]

						if not tbl16 then
							tbl16 = { Items = {}, Pending = {}, Head = 1, Tail = 0, Running = false }
							tbl10.Workers[arg] = tbl16
						end

						local n36 = tbl10.Generations[arg4] or 0
						local v24 = tbl16.Pending[arg3]
						if v24 and v24.Owner == arg4 and v24.Epoch == tbl10.Epoch and v24.Generation == n36 then
							return
						end
						local tbl17 = { Callback = arg2, Player = arg3, Owner = arg4, Epoch = tbl10.Epoch, Generation = n36 }
						tbl16.Tail = tbl16.Tail + 1
						tbl16.Items[tbl16.Tail] = tbl17
						tbl16.Pending[arg3] = tbl17
						if tbl16.Running then
							return
						end
						tbl16.Running = true

						task.spawn(function()
							while not flag11 do
								local v25 = tbl16.Items[tbl16.Head]

								if v25 then
									tbl16.Items[tbl16.Head] = nil
									tbl16.Head = tbl16.Head + 1
									local flag12 = v25.Epoch == tbl10.Epoch

									if flag12 then
										flag12 = v25.Generation == (tbl10.Generations[v25.Owner] or 0)
									end

									if flag12 and v25.Player.Parent then
										local ok, result = pcall(v25.Callback, v25.Player)

										if not ok then
											warn(("[Resonance] %s failed: %s"):format(arg, tostring(result)))
										end

										task.wait()
									end

									if tbl16.Pending[v25.Player] == v25 then
										tbl16.Pending[v25.Player] = nil
									end

									if tbl16.Head > 128 and tbl16.Head > tbl16.Tail / 2 then
										tbl10.Compact(tbl16)
									end

									continue
								end

								break
							end

							tbl16.Items = {}
							tbl16.Pending = {}
							tbl16.Head = 1
							tbl16.Tail = 0
							tbl16.Running = false
						end)
					end

					tbl10.Cancel = function(arg)
						tbl10.Generations[arg] = (tbl10.Generations[arg] or 0) + 1
					end

					tbl10.CancelAll = function()
						tbl10.Epoch = tbl10.Epoch + 1

						for _, worker in pairs(tbl10.Workers) do
							worker.Pending = {}
						end
					end

					tbl12.IsTerminalDisconnect = function()
						local ok, result = pcall(GuiService.GetErrorCode, GuiService)

						if not ok then
							ok, result = pcall(GuiService.GetErrorType, GuiService)
						end

						if not ok then
							return false
						end
						local value

						if typeof(result) == "EnumItem" then
							value = result.Value
						else
							value = tonumber(result)
						end

						return value ~= nil and value >= Enum.ConnectionError.DisconnectErrors.Value and value < Enum.ConnectionError.PlacelaunchErrors.Value
					end

					tbl12.AimRaycastParams = RaycastParams.new()
					tbl12.AimRaycastParams.FilterType = Enum.RaycastFilterType.Exclude

					tbl12.GetAimTarget = function()
						local aimSettings = tbl7.AimSettings
						local character = localPlayer.Character
						local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
						if not humanoidRootPart then
							return nil
						end
						local position = currentCamera.CFrame.Position
						local position2 = humanoidRootPart.Position
						local x = mouse.X
						local y = mouse.Y

						if lib.IsMobile then
							x = currentCamera.ViewportSize.X / 2
							y = currentCamera.ViewportSize.Y / 2
						end

						local worldToViewportPoint

						if lib.IsMobile then
							worldToViewportPoint = currentCamera.WorldToViewportPoint
						else
							worldToViewportPoint = currentCamera.WorldToScreenPoint
						end

						local n36 = aimSettings.FOVRadius * aimSettings.FOVRadius
						local n37 = aimSettings.SADist * aimSettings.SADist
						local aimRaycastFilter = tbl7.AimRaycastFilter
						local aimRaycastParams = tbl12.AimRaycastParams
						local huge = math.huge
						local v24 = nil

						for _, v25 in pairs(tbl7.PlayerList) do
							if v25 ~= localPlayer and v25.Character and not tbl12.IsProtectedPlayer(v25, true) then
								local inPlot2 = v25:FindFirstChild("InPlot")

								if not (inPlot2 and inPlot2.Value) then
									local v26 = v25.Character:FindFirstChild(aimSettings.TargetPart)
									local humanoid = v25.Character:FindFirstChild("Humanoid")

									if v26 and humanoid and humanoid.Health > 0 then
										local v27, v28 = worldToViewportPoint(currentCamera, v26.Position)

										if v28 then
											local n38 = v27.X - x
											local n39 = v27.Y - y

											if n38 * n38 + n39 * n39 <= n36 then
												local character2 = v25.Character
												aimRaycastFilter[1] = character
												aimRaycastFilter[2] = character2
												aimRaycastParams.FilterDescendantsInstances = aimRaycastFilter
												local position3 = v26.Position

												if not workspace:Raycast(position, position3 - position, aimRaycastParams) then
													local n40 = position2 - position3
													local v29 = n40:Dot(n40)

													if v29 < huge and v29 <= n37 then
														huge = v29
														v24 = v25
													end
												end
											end
										end
									end
								end
							end
						end

						return v24
					end

					tbl12.Click = function()
						if not lib.IsMobile then
							if mouse1click then
								return mouse1click()
							end
							mouse1press()
							task.wait()

							if mouse1release then
								mouse1release()
							end

							return
						end

						if pcall(function()
							ContextActionService:CallFunction("Grab", Enum.UserInputState.Begin, game)
						end) then
							return
						end
						local button = ContextActionService:GetButton("Grab")
						if not button or not button.Visible then
							return
						end
						local n36 = button.AbsolutePosition + button.AbsoluteSize / 2
						VirtualInputManager:SendTouchEvent(1, 0, n36.X, n36.Y)
						RunService.RenderStepped:Wait()
						VirtualInputManager:SendTouchEvent(1, 2, n36.X, n36.Y)
					end

					tbl12.TweenFOV = function(arg, arg2)
						if tween then
							tween:Cancel()
							tween = nil
						end

						local n36 = math.clamp(arg, 1, 120)
						tween = TweenService:Create(currentCamera, TweenInfo.new(arg2 or 0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), { FieldOfView = n36 })
						tween:Play()
						return tween
					end
				end

				do
					tbl12.SetFOV = function(arg, arg2)
						if arg2 then
							tbl9.ZoomFOV = math.clamp(arg, tbl9.ZoomMinFOV, tbl9.ZoomMaxFOV)
							return tbl12.TweenFOV(tbl9.ZoomFOV, 0.2)
						end
						fieldOfView = math.clamp(arg, 30, 120)
						if not tbl8.Zoom then
							return tbl12.TweenFOV(fieldOfView, 0.25)
						end
					end

					tbl12.UpdateZoomCamera = function(arg)
						if flag11 then
							pcall(function()
								RunService:UnbindFromRenderStep("RSCZoom")
							end)

							return
						end

						if not tbl8.Zoom or currentCamera.CameraType == Enum.CameraType.Scriptable then
							cFrame = nil
							return
						end
						local cFrame2 = currentCamera.CFrame
						if not cFrame then
							cFrame = cFrame2
							return
						end
						cFrame = cFrame:Lerp(cFrame2, math.clamp(1 - math.exp(-(tbl9.ZoomCameraSmoothness or 14) * (arg or 0.016666666666666666)), 0, 1))
						currentCamera.CFrame = cFrame
					end

					pcall(function()
						RunService:UnbindFromRenderStep("RSCZoom")
					end)

					do
						local v24 = nil
						local v25 = nil
						local v26 = nil
						local v27 = nil
						local v28 = nil
						local v29 = nil

						local function createPart(name)
							local part4 = Instance.new("Part")
							part4.Name = name
							part4.Anchored = true
							part4.CanCollide = false
							part4.CanQuery = false
							part4.CanTouch = false
							local smoothPlastic = Enum.Material.SmoothPlastic
							part4.CastShadow = false
							part4.Transparency = 0.5
							part4.Material = smoothPlastic
							part4.Parent = workspace
							return part4
						end

						local function fn21(arg, arg2, arg3)
							local v30 = createPart(arg)
							v30.Size = Vector3.one * 0.05
							v30.Transparency = 1
							local tbl16 = {}
							local tbl17 = {}

							for i = 1, 3 do
								local tbl18 = {}

								for i2 = 1, 24 do
									local n36 = (i2 - 1) / 24 * 3.1415926535897931 * 2
									local n37 = math.cos(n36) * arg2
									local n38 = math.sin(n36) * arg2
									local attachment = Instance.new("Attachment", v30)
									local vector

									if i == 1 then
										vector = Vector3.new(n37, n38, 0)
									elseif i == 2 then
										vector = Vector3.new(n37, 0, n38)
									else
										vector = Vector3.new(0, n37, n38)
									end

									attachment.Position = vector
									tbl18[i2] = attachment
									tbl16[#tbl16 + 1] = { attachment, i, n36 }
								end

								for i2 = 1, 24 do
									local beam = Instance.new("Beam", v30)
									local v31 = tbl18[i2]
									local v32 = tbl18[i2 % 24 + 1]
									beam.Attachment0 = v31
									beam.Attachment1 = v32
									local colorSequence = ColorSequence.new(arg3)
									local numberSequence = NumberSequence.new(0.5)
									beam.Color = colorSequence
									beam.Transparency = numberSequence
									local wrap = Enum.TextureMode.Wrap
									beam.Texture = tbl7.LineTypes.Dots
									beam.TextureMode = wrap
									beam.TextureLength = 0.75
									beam.Width0 = 0.12
									beam.Width1 = 0.12
									beam.FaceCamera = true
									tbl17[#tbl17 + 1] = beam
								end
							end

							return v30, tbl16, tbl17
						end

						tbl12.UpdateAuraVisuals = function()
							local v30
							v30, v30 = tbl12.Char()
							if not v30 then
								return
							end

							if v24 then
								v24.CFrame = CFrame.new(v30.Position)
							end

							if v25 then
								v25.CFrame = CFrame.new(v30.Position)
							end
						end

						tbl12.UpdateAuraVisualSettings = function()
							local function fn22(arg, arg2, arg3, arg4)
								local v30 = ipairs
								arg2 = arg2 or {}

								for _, v31 in v30(arg2) do
									v31.Color = ColorSequence.new(arg4)
								end

								local v31 = ipairs
								arg = arg or {}

								for _, v32 in v31(arg) do
									local n36 = math.cos(v32[3]) * arg3
									local n37 = math.sin(v32[3]) * arg3
									local v33 = v32[1]
									local vector

									if v32[2] == 1 then
										vector = Vector3.new(n36, n37, 0)
									elseif v32[2] == 2 then
										vector = Vector3.new(n36, 0, n37)
									else
										vector = Vector3.new(0, n36, n37)
									end

									v33.Position = vector
								end
							end

							fn22(v26, v27, tbl9.AuraDistance, tbl7.AuraVisualSettings.AuraColor)
							fn22(v28, v29, tbl9.ToyAuraDistance, tbl7.AuraVisualSettings.ToyAuraColor)
						end

						tbl12.RefreshAuraVisuals = function()
							if v24 then
								v24:Destroy()
								v24 = nil
							end

							if v25 then
								v25:Destroy()
								v25 = nil
							end

							v26 = nil
							v27 = nil
							v28 = nil
							v29 = nil

							if tbl8.AuraVisualizer and tbl8.Aura then
								local AuraRadius, v30, v31 = fn21("AuraRadius", tbl9.AuraDistance, tbl7.AuraVisualSettings.AuraColor)
								v24 = AuraRadius
								v26 = v30
								v27 = v31
							end

							if tbl8.ToyAuraVisualizer and tbl8.ToyAuras then
								local ToyAuraRadius, v30, v31 = fn21("ToyAuraRadius", tbl9.ToyAuraDistance, tbl7.AuraVisualSettings.ToyAuraColor)
								v25 = ToyAuraRadius
								v28 = v30
								v29 = v31
							end

							tbl12.UpdateAuraVisualSettings()
							tbl12.UpdateAuraVisuals()
							local setRuntimeConnection = tbl12.SetRuntimeConnection
							local renderStepped = RunService.RenderStepped
							local v30 = v24
							local v31

							if v24 then
								v31 = v30
							else
								v31 = v25
							end

							setRuntimeConnection("AuraVisuals", renderStepped, v31, tbl12.UpdateAuraVisuals)
						end
					end
				end

				tbl12.ClearAuraVisuals = function()
					local v24 = tbl8
					tbl8.AuraVisualizer = false
					v24.ToyAuraVisualizer = false
					tbl12.RefreshAuraVisuals()
				end

				tbl12.GetTriggerTarget = function()
					local aimSettings = tbl7.AimSettings
					local silentAimState = tbl7.SilentAimState
					if flag11 or not aimSettings.TriggerbotEnabled or UserInputService:GetFocusedTextBox() or workspace:FindFirstChild("GrabParts") then
						return
					end
					local v24, v25, v26 = tbl12.Char()
					if not (v25 and v26 and v26.Health > 0) then
						return
					end
					local instance

					if tbl8.SilentAim and silentAimState.RaycastActive then
						local hit = silentAimState.Hit

						if hit then
							hit = os.clock() - (silentAimState.HitTime or 0) < 0.15
						end

						if hit then
							instance = silentAimState.Hit.Instance
						else
							instance = nil
						end
					else
						instance = tbl12.GetTarget()
					end

					if not (instance and instance.Parent) or (instance.Position - v25.Position).Magnitude > aimSettings.TriggerDist then
						return
					end
					local model = instance:FindFirstAncestorOfClass("Model")
					local playerFromCharacter = model and Players:GetPlayerFromCharacter(model)
					if not playerFromCharacter or playerFromCharacter == localPlayer or tbl12.IsProtectedPlayer(playerFromCharacter, true) or tbl8.SilentAim and not tbl12.IsSilentAimTarget(playerFromCharacter) then
						return
					end
					local v27, v28, v29 = tbl12.Char(playerFromCharacter)
					if v29 and v29.Health > 0 then
						return playerFromCharacter
					end
				end

				tbl12.PlayTriggerTrick = function(arg, arg2)
					local aimSettings = tbl7.AimSettings
					local v24, v25, v26 = tbl12.Char()
					local v27, v28, v29 = tbl12.Char(arg2)
					local currentCamera2 = workspace.CurrentCamera
					local triggerTrick = aimSettings.TriggerTrick
					if not (v25 and v26 and v26.Health > 0 and currentCamera2 and v28 and v29 and v29.Health > 0) then
						return false
					end
					local cFrame2 = currentCamera2.CFrame
					local cameraType = currentCamera2.CameraType
					local n36 = 0
					local position = v25.Position
					local rotation = v25.CFrame.Rotation
					local autoRotate = v26.AutoRotate
					local n37

					if triggerTrick == "720 Spin" then
						n37 = 2
					else
						n37 = 1
					end

					local v30 = n37
					local n38 = 0.175 * v30 / math.clamp(aimSettings.TriggerTrickSpeed, 0.75, 2)

					local ok, result = pcall(function()
						aimSettings.TriggerSpinning = true
						local v31 = v26
						currentCamera2.CameraType = Enum.CameraType.Scriptable
						v31.AutoRotate = false

						repeat
							n36 += RunService.RenderStepped:Wait()
							if flag11 or v26.Health <= 0 or not aimSettings.TriggerbotEnabled or not aimSettings.TriggerTricks or aimSettings.TriggerVersion ~= arg or localPlayer.Character ~= v24 or workspace:FindFirstChild("GrabParts") then
								return false
							end

							if workspace.CurrentCamera ~= currentCamera2 or arg2.Character ~= v27 or not v28.Parent or v29.Health <= 0 then
								return false
							end

							if UserInputService:GetFocusedTextBox() or tbl12.IsProtectedPlayer(arg2, true) or tbl8.SilentAim and not tbl12.IsSilentAimTarget(arg2) or (v28.Position - v25.Position).Magnitude > aimSettings.TriggerDist then
								return false
							end
							local n39 = math.min(n36 / n38, 1)
							local n40 = cFrame2.Position + v25.Position - position
							if (v28.Position - n40).Magnitude < 0.001 then
								return false
							end
							local v32 = cFrame2.Rotation:Lerp(CFrame.lookAt(n40, v28.Position).Rotation, n39)
							local n41

							if triggerTrick == "180 Flick" then
								n41 = math.sin(n39 * 3.1415926535897931) * 3.1415926535897931
							else
								n41 = n39 * 3.1415926535897931 * 2 * v30
							end

							currentCamera2.CFrame = CFrame.new(n40) * CFrame.Angles(0, n41, 0) * v32
							local n42 = currentCamera2.CFrame.LookVector * Vector3.new(1, 0, 1)

							if n42.Magnitude > 0.001 then
								v25.CFrame = CFrame.lookAt(v25.Position, v25.Position + n42)
							end
						until n36 >= n38

						return true
					end)

					aimSettings.TriggerSpinning = false

					if v26.Parent then
						v26.AutoRotate = autoRotate
					end

					if not (ok and result) and v25.Parent then
						v25.CFrame = CFrame.new(v25.Position) * rotation
					end

					if currentCamera2.Parent then
						if not (ok and result) then
							currentCamera2.CFrame = cFrame2 + v25.Position - position
						end

						currentCamera2.CameraType = cameraType
					end

					return ok and result
				end

				tbl12.UpdateTriggerbot = function()
					local aimSettings = tbl7.AimSettings
					if aimSettings.TriggerBotDebounce then
						return
					end
					local v24 = tbl12.GetTriggerTarget()
					if not v24 then
						return
					end
					local character = localPlayer.Character
					local triggerVersion = aimSettings.TriggerVersion
					aimSettings.TriggerBotDebounce = true

					task.spawn(function()
						pcall(function()
							task.wait(aimSettings.TriggerDelay)
							if aimSettings.TriggerVersion ~= triggerVersion or localPlayer.Character ~= character or tbl12.GetTriggerTarget() ~= v24 then
								return
							end

							if aimSettings.TriggerTricks then
								if not tbl12.PlayTriggerTrick(triggerVersion, v24) then
									return
								end
								RunService.Heartbeat:Wait()
							end

							if aimSettings.TriggerVersion ~= triggerVersion or localPlayer.Character ~= character or tbl12.GetTriggerTarget() ~= v24 then
								return
							end
							tbl12.Click()
							task.wait(0.2)

							while not flag11 and aimSettings.TriggerbotEnabled and aimSettings.TriggerVersion == triggerVersion and localPlayer.Character == character and workspace:FindFirstChild("GrabParts") do
								task.wait()
							end

							if not flag11 and aimSettings.TriggerVersion == triggerVersion then
								task.wait(aimSettings.TriggerCooldown)
							end
						end)

						aimSettings.TriggerBotDebounce = false
					end)
				end

				tbl12.UpdateAimAssist = function()
					local aimSettings = tbl7.AimSettings
					local grabParts = workspace:FindFirstChild("GrabParts")
					local viewportSize = currentCamera.ViewportSize
					local vector2 = Vector2.new(viewportSize.X / 2, viewportSize.Y / 2)
					local frame2 = tbl6.Frame

					if aimSettings.FOVEnabled then
						local n36 = aimSettings.FOVRadius * 2
						local udim2 = UDim2.fromOffset(n36, n36)
						local udim22 = UDim2.fromOffset(vector2.X, vector2.Y)

						if not frame2.Visible then
							frame2.Visible = true
						end

						if frame2.Size ~= udim2 then
							frame2.Size = udim2
						end

						if frame2.Position ~= udim22 then
							frame2.Position = udim22
						end
					elseif frame2.Visible then
						frame2.Visible = false
					end

					if grabParts and not aimSettings.AimDebounce then
						local grabPart = grabParts:FindFirstChild("GrabPart")
						grabPart = grabPart and grabPart:FindFirstChild("WeldConstraint")
						grabPart = grabPart and grabPart.Part1

						if grabPart and grabPart.Parent and Players:GetPlayerFromCharacter(grabPart.Parent) then
							aimSettings.AimDebounce = true

							task.spawn(function()
								while true do
									task.wait()
									if not (flag11 or not grabParts.Parent) then
										continue
									end
									break
								end

								task.wait(0.3)
								aimSettings.AimDebounce = false
							end)
						end

						return
					end

					if aimSettings.AimbotEnabled and not aimSettings.AimDebounce and not aimSettings.TriggerSpinning then
						local alwaysOn = aimSettings.AlwaysOn

						if not alwaysOn then
							if typeof(aimSettings.AimKey) == "EnumItem" then
								if aimSettings.AimKey.EnumType == Enum.KeyCode then
									alwaysOn = UserInputService:IsKeyDown(aimSettings.AimKey)
								elseif aimSettings.AimKey.EnumType == Enum.UserInputType then
									alwaysOn = UserInputService:IsMouseButtonPressed(aimSettings.AimKey)
								end
							end
						end

						local v24 = alwaysOn and tbl12.GetAimTarget()

						if v24 and v24.Character and v24.Character:FindFirstChild(aimSettings.TargetPart) then
							local smoothness = aimSettings.Smoothness
							currentCamera.CFrame = currentCamera.CFrame:Lerp(CFrame.new(currentCamera.CFrame.Position, v24.Character[aimSettings.TargetPart].Position), smoothness)
						end
					end

					if aimSettings.TriggerbotEnabled and not grabParts then
						tbl12.UpdateTriggerbot()
					end
				end

				tbl12.UpdateAimConnection = function()
					local aimSettings = tbl7.AimSettings
					local fovEnabled = aimSettings.FOVEnabled or aimSettings.AimbotEnabled or aimSettings.TriggerbotEnabled
					tbl12.SetRuntimeConnection("AimAssist", RunService.RenderStepped, fovEnabled, tbl12.UpdateAimAssist)

					if not fovEnabled and tbl6.Frame.Visible then
						tbl6.Frame.Visible = false
					end
				end

				tbl12.IsSilentAimTarget = function(arg)
					return arg and arg ~= localPlayer and not tbl12.IsProtectedPlayer(arg, tbl8.SilentAimIgnoreWhitelist) and (not tbl8.SilentAimTargetsOnly or tbl7.SelectedSilentAimPlayers[arg])
				end

				tbl12.ApplySilentAimPlayer = function(arg)
					if arg == localPlayer then
						return
					end
					local v24, v25 = tbl12.Char(arg)
					local silentAimState = tbl7.SilentAimState
					local v26 = silentAimState.Players[arg]
					local flag12 = tbl8.SilentAim and not silentAimState.RaycastActive and tbl12.IsSilentAimTarget(arg)

					if v26 and (not flag12 or v26.Root ~= v25) then
						if v26.Root.Parent then
							v26.Root.Size = v26.Size
							v26.Root.CustomPhysicalProperties = v26.Physics
							v26.Root.CanCollide = v26.CanCollide
						end

						silentAimState.Players[arg] = nil
						v26 = nil
					end

					if not v25 or not flag12 then
						return
					end

					if not v26 or v26.Root ~= v25 then
						silentAimState.Players[arg] = {
							Root = v25,
							Size = v25.Size,
							Physics = v25.CustomPhysicalProperties,
							CanCollide = v25.CanCollide,
						}
					end

					local saimHitbox = tbl9.SAIMHitbox

					if silentAimState.Size ~= saimHitbox then
						silentAimState.Size = saimHitbox
						silentAimState.HitboxSize = Vector3.new(saimHitbox, saimHitbox, saimHitbox)
						silentAimState.PhysicalProperties = PhysicalProperties.new(2.8 / saimHitbox ^ 3, 0.3, 0.5, 1, 1)
					end

					v25.Size = silentAimState.HitboxSize
					v25.CustomPhysicalProperties = silentAimState.PhysicalProperties
					v25.CanCollide = false
				end

				tbl12.UpdateSilentAimFOV = function()
					local silentAimState = tbl7.SilentAimState
					silentAimState.Circle.Size = UDim2.fromOffset(tbl9.SAIMRadius * 2, tbl9.SAIMRadius * 2)
					silentAimState.Circle.Visible = not flag11 and tbl8.SilentAim == true and silentAimState.RaycastActive == true and tbl8.SilentAimFOV == true
				end

				tbl12.RefreshSilentAim = function()
					for _, v24 in ipairs(tbl7.PlayerList) do
						tbl12.ApplySilentAimPlayer(v24)
					end

					local flag12 = tbl7.SilentAimState.RaycastActive == true
					local silentAimMethod = lib.Labels and lib.Labels.SilentAimMethod

					if silentAimMethod then
						local v24 = silentAimMethod
						local setText = v24.SetText
						local method

						if flag12 then
							method = "Game Raycast"
						else
							method = "Hitbox (Compatibility)"
						end

						setText(v24, "Method: " .. method)
					end

					if options.SilentAimRadius then
						options.SilentAimRadius:SetVisible(flag12)
					end

					if options.SilentAimSize then
						options.SilentAimSize:SetVisible(not flag12)
					end

					if toggles.SilentAimFOV then
						toggles.SilentAimFOV:SetVisible(flag12)
					end

					tbl12.UpdateSilentAimFOV()
				end

				tbl12.GetSilentAimHit = function(arg, arg2, arg3)
					local currentCamera2 = workspace.CurrentCamera
					if not currentCamera2 or type(arg) ~= "number" or arg <= 0 then
						return
					end
					arg3 = arg3 or currentCamera2.CFrame.Position
					local n36 = currentCamera2.ViewportSize / 2
					local n37 = tbl9.SAIMRadius ^ 2
					local v24 = nil

					for _, v25 in ipairs(tbl7.PlayerList) do
						if tbl12.IsSilentAimTarget(v25) then
							local v26, v27, v28 = tbl12.Char(v25)

							if v27 and v28 and v28.Health > 0 then
								local v29, v30 = currentCamera2:WorldToViewportPoint(v27.Position)

								if v30 then
									local n38 = v29.X - n36.X
									local n39 = v29.Y - n36.Y
									local n40 = n38 * n38 + n39 * n39
									local n41 = v27.Position - arg3
									local magnitude = n41.Magnitude

									if n40 <= n37 and magnitude > 0.001 and magnitude <= arg + v27.Size.Magnitude / 2 then
										local hit = workspace:Raycast(arg3, n41.Unit * math.min(arg, magnitude + v27.Size.Magnitude / 2), arg2)

										if hit and hit.Instance:IsDescendantOf(v26) then
											n37 = n40
											v24 = hit
										end
									end
								end
							end
						end
					end

					return v24
				end

				tbl12.SetSilentAim = function(arg)
					local silentAimState = tbl7.SilentAimState
					arg = arg and not flag11

					if arg then
						silentAimState.Failed = nil
					end

					silentAimState.Hit = nil
					silentAimState.HitTime = nil
					tbl12.SetRuntimeToggle("SilentAim", arg)

					tbl12.SetRuntimeConnection("SilentAimStatus", RunService.Heartbeat, not flag11, function()
						if silentAimState.Dirty then
							silentAimState.Dirty = nil
							tbl12.RefreshSilentAim()
						end
					end)

					if flag11 then
						local patch = silentAimState.Patch

						if patch and getrawmetatable then
							local ok, result = pcall(getrawmetatable, game)

							if ok and result.__namecall == patch.Wrapper then
								pcall(hookmetamethod, game, "__namecall", patch.Original)
							end
						end

						silentAimState.Patch = nil
						silentAimState.Dirty = nil
						silentAimState.Failed = nil
					elseif not silentAimState.Patch and type(hookmetamethod) == "function" and type(getnamecallmethod) == "function" then
						local patch = {}

						local function wrapper(arg2, ...)
							local v24 = table.pack(...)
							if flag11 or not tbl8.SilentAim or not silentAimState.RaycastActive or arg2 ~= workspace or getnamecallmethod() ~= "Raycast" or checkcaller and checkcaller() then
								return patch.Original(arg2, ...)
							end
							local v25 = ...
							local value = select(2, ...)
							local value2 = select(3, ...)
							local currentCamera2 = workspace.CurrentCamera
							if not currentCamera2 or typeof(v25) ~= "Vector3" or typeof(value) ~= "Vector3" or value.Magnitude <= 0 or (v25 - currentCamera2.CFrame.Position).Magnitude >= 0.1 or value.Unit:Dot(currentCamera2.CFrame.LookVector) <= 0.999 then
								return patch.Original(arg2, table.unpack(v24, 1, v24.n))
							end
							local ok, result = pcall(getcallingscript)
							if ok and result and result.Name ~= "GrabbingScript" and result.Name ~= "RaycastModule" then
								return patch.Original(arg2, table.unpack(v24, 1, v24.n))
							end
							local ok2, hit = pcall(tbl12.GetSilentAimHit, value.Magnitude, value2, v25)

							if ok2 and hit then
								local v26 = silentAimState
								local v27 = silentAimState
								local now3 = os.clock()
								v26.Hit = hit
								v27.HitTime = now3
								return hit
							end

							if not ok2 then
								silentAimState.Failed = true
								silentAimState.RaycastActive = false
								silentAimState.Dirty = true
							end

							local v26 = workspace.Raycast(arg2, table.unpack(v24, 1, v24.n))
							local v27 = silentAimState
							local v28 = silentAimState
							local now3 = os.clock()
							v27.Hit = v26
							v28.HitTime = now3
							return v26
						end

						if newcclosure then
							wrapper = newcclosure(wrapper)
						end

						patch.Wrapper = wrapper
						local ok, original = pcall(hookmetamethod, game, "__namecall", patch.Wrapper)

						if ok and type(original) == "function" then
							patch.Original = original
							silentAimState.Patch = patch
						end
					end

					silentAimState.RaycastActive = not flag11 and silentAimState.Patch ~= nil and not silentAimState.Failed
					tbl12.RefreshSilentAim()
				end

				tbl12.TrackSilentAimPlayer = function(arg)
					lib:GiveSignal(arg.CharacterAdded:Connect(function(character)
						local v24 = flag11
						local flag12

						if flag11 then
							flag12 = v24
						else
							flag12 = not tbl8.SilentAim
						end

						if flag12 then
							return
						end

						if not character:WaitForChild("HumanoidRootPart", 5) then
							return
						end

						if not flag11 then
							tbl12.ApplySilentAimPlayer(arg)
						end
					end))
				end

				tbl12.Ragdoll = function(arg)
					if not arg or not arg.Parent or tbl7.States.Ragdolling then
						return
					end
					local head = arg:FindFirstChild("Head")
					local torso = head and arg:FindFirstChild("Torso")
					local humanoid = torso and arg:FindFirstChild("Humanoid")
					humanoid = humanoid and humanoid:FindFirstChild("Ragdolled")

					if humanoid and humanoid.Value == false then
						tbl7.States.Ragdolling = true
						local ragdollRSC = v17:FindFirstChild("RagdollRSC") or tbl12.SpawnToy("PalletLightBrown")
						local soundPart = ragdollRSC and ragdollRSC:WaitForChild("SoundPart", 0.5)
						local main = soundPart and ragdollRSC:WaitForChild("Main", 0.5)
						if not main or not tbl12.SNO(soundPart) then
							tbl7.States.Ragdolling = false
							return tbl12.DestroyToy(ragdollRSC)
						end
						ragdollRSC.Name = "RagdollRSC"

						for _, child in pairs(ragdollRSC:GetChildren()) do
							if child:IsA("BasePart") then
								child.CanCollide = false
							end
						end

						if not main:FindFirstChild("RagdollBP") then
							local bodyPosition = Instance.new("BodyPosition")
							bodyPosition.Name = "RagdollBP"
							bodyPosition.D = 1500
							bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
							bodyPosition.Position = Vector3.new(0, 100000, 0)
							bodyPosition.Parent = main
						end

						local now3 = tick()

						while true do
							soundPart.Position = torso.Position
							soundPart.Velocity = Vector3.new(0, -10, 0)
							task.wait(0.1)
							if not (humanoid.Value or not main.Parent or not arg.Parent or not head:FindFirstChild("PartOwner") or tick() - now3 > 0.5) then
								continue
							end
							break
						end

						tbl7.States.Ragdolling = false
						return humanoid.Value
					end
				end

				tbl12.RemoveSticky = function(arg, arg2)
					if not arg or not arg.Parent then
						return
					end

					for _, v24 in pairs(arg:QueryDescendants("BasePart")) do
						if v24.Parent then
							for _, v25 in pairs(v24:GetConnectedParts()) do
								if v25.Name == "StickyPart" then
									for _, child in pairs(v25:GetChildren()) do
										if child:IsA("TouchInterest") then
											child:Destroy()
										end
									end

									local parent2 = v25.Parent and tbl12.FindNicePart(v25.Parent)

									if parent2 then
										if not parent2:IsDescendantOf(workspace.PlotItems) then
											tbl12.Grab(parent2)
										end
									end
								end
							end
						end
					end

					if arg2 then
						return
					end
					local playerFromCharacter = Players:GetPlayerFromCharacter(arg)
					if not playerFromCharacter then
						return
					end
					local v24 = tbl12.GetInventory(playerFromCharacter)
					if not v24 then
						return
					end
					local humanoidRootPart = arg:FindFirstChild("HumanoidRootPart") or arg:FindFirstChild("Torso")
					if not humanoidRootPart then
						return
					end

					for _, v25 in v24:GetChildren() do
						if v25:IsA("Model") then
							local position = humanoidRootPart.Position

							if (v25:GetPivot().Position - position).Magnitude < 10 then
								local v26 = tbl12.FindNicePart(v25)

								if v26 then
									tbl12.ToggleCollisions(v25, false)
									tbl12.Grab(v26)

									if not v25:FindFirstChild("StickyPart") then
										if not v26:FindFirstChild("RscBV") then
											local bodyVelocity2 = Instance.new("BodyVelocity")
											bodyVelocity2.Velocity = Vector3.new(0, -50000, 0)
											bodyVelocity2.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
											bodyVelocity2.Name = "RscBV"
											bodyVelocity2.Parent = v26
										end

										tbl12.PivotTo(v25, CFrame.new(0, -50000, 0))
										task.delay(1, tbl12.RNO, v26)
									end
								end
							end
						end
					end
				end

				tbl12.BreakLimb = function(arg, arg2)
					local flag12 = arg == localPlayer
					if flag12 and tbl8.GucciAntiGrab then
						return fn18("Can't break limbs while in Gucci!")
					end
					local v24, v25, v26 = tbl12.Char(arg)
					local ragdolled = v26 and v26:FindFirstChild("Ragdolled")
					if not (v25 and v26 and v26.Health ~= 0 and ragdolled) then
						return
					end
					local children = v24:GetChildren()
					local flag13 = false

					for _, child in ipairs(children) do
						if child:IsA("BasePart") then
							if child.Name:find("Arm") and (arg2 == "Arms" or arg2 == "All") or child.Name:find("Leg") and (arg2 == "Legs" or arg2 == "All") then
								flag13 = true
								break
							end
						end
					end

					if not flag13 then
						return
					end

					if flag12 then
						tbl11.RagdollRemote:FireServer(v25, 0.35)
						local now3 = tick()

						while true do
							task.wait()
							if not (ragdolled.Value or tick() - now3 > 0.5) then
								continue
							end
							break
						end
					elseif not (tbl12.SNO(v25) and tbl12.Ragdoll(v24)) then
						return
					end

					if not ragdolled.Value then
						return
					end
					local cFrame2 = v25.CFrame

					for _, child in ipairs(children) do
						if child:IsA("BasePart") then
							if child.Name:find("Arm") and (arg2 == "Arms" or arg2 == "All") then
								tbl12.Teleport(child, CFrame.new(0, -100000, 0))
							elseif child.Name:find("Leg") and (arg2 == "Legs" or arg2 == "All") then
								tbl12.Teleport(child, CFrame.new(0, -100000, 0))
							end
						end
					end

					task.wait(0.15)
					if not v25.Parent then
						return
					end

					if flag12 then
						tbl12.Grab(v25)
						task.wait()

						for _, v27 in children, nil, nil do
							if v27.Parent then
								tbl12.ResetVelocity(v27)
							end
						end

						tbl11.RagdollRemote:FireServer(v25, 0)
					else
						workspace.FallenPartsDestroyHeight = -10000
						tbl12.Teleport(v25, CFrame.new(0, -11000, 0))
						task.wait()
						local v27 = workspace
						local fallenPartsDestroyHeight2

						if tbl8.DestroyVoid then
							fallenPartsDestroyHeight2 = (0/0)
						else
							fallenPartsDestroyHeight2 = -100
						end

						v27.FallenPartsDestroyHeight = fallenPartsDestroyHeight2

						if v25.Parent then
							tbl12.Teleport(v25, cFrame2)

							for _, v28 in children, nil, nil do
								if v28.Parent then
									tbl12.ResetVelocity(v28)
								end
							end

							RunService.Heartbeat:Wait()

							for _, v28 in children, nil, nil do
								if v28.Parent then
									tbl12.ResetVelocity(v28)
								end
							end

							if v25.Parent then
								tbl12.RNO(v25)
							end
						end
					end
				end

				tbl12.UpdateWalkSpeed = function(arg)
					local v24, v25, v26 = tbl12.Char()
					local humanoidCreature = parent and parent:FindFirstChild("HumanoidCreature")

					if v26 and v26.Parent and v26.Health > 0 then
						if humanoidCreature then
							humanoidCreature.WalkSpeed = tbl9.WalkSpeed
							return
						end

						if v26.MoveDirection.Magnitude > 0 then
							v24:TranslateBy(v26.MoveDirection * tbl9.WalkSpeed * arg)
						end
					end
				end

				tbl12.UpdateFlight = function()
					local v24, v25, v26 = tbl12.Char()

					if not (v24 and v25 and v26 and v26.Health > 0) then
						if bodyVelocity or bodyGyro then
							tbl12.StopFly()
						end

						return
					end

					if not bodyVelocity or bodyVelocity.Parent ~= v25 or not bodyGyro or bodyGyro.Parent ~= v25 then
						tbl12.StopFly()
						tbl12.StartFly(v25)
					end

					if not v26.Sit then
						v26.PlatformStand = true
					end

					local n36 = 0

					if UserInputService:IsKeyDown(Enum.KeyCode.W) then
						n36 = 1
					end

					if UserInputService:IsKeyDown(Enum.KeyCode.S) then
						n36 -= 1
					end

					local n37 = 0

					if UserInputService:IsKeyDown(Enum.KeyCode.A) then
						n37 = -1
					end

					if UserInputService:IsKeyDown(Enum.KeyCode.D) then
						n37 += 1
					end

					local n38 = 0

					if UserInputService:IsKeyDown(Enum.KeyCode.Space) then
						n38 = 2
					end

					if UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) then
						n38 -= 2
					end

					if UserInputService.TouchEnabled and not UserInputService.KeyboardEnabled then
						local v27 = v23
						local ControlModule

						if v23 then
							ControlModule = v27
						else
							ControlModule = require(localPlayer.PlayerScripts:WaitForChild("PlayerModule"):WaitForChild("ControlModule"))
						end

						v23 = ControlModule
						local moveVector = v23:GetMoveVector()
						n37 += moveVector.X
						n36 -= moveVector.Z

						if v26.Jump then
							n38 += 2
						end
					end

					local n39 = currentCamera.CFrame.RightVector * n37 + currentCamera.CFrame.LookVector * n36 + Vector3.new(0, n38, 0)

					if n39.Magnitude > 1 then
						n39 = n39.Unit
					end

					local v27 = bodyVelocity
					local velocity = bodyVelocity.Velocity
					local lerp = velocity.Lerp
					local n40 = n39 * tbl9.FlightSpeed * 50
					local n41

					if n39.Magnitude > 0 then
						n41 = 0.22
					else
						n41 = 0.12
					end

					v27.Velocity = lerp(velocity, n40, n41)
					bodyGyro.CFrame = currentCamera.CFrame
				end

				do
					local v24 = nil
					local flag12 = nil
					local n36 = nil
					local num = nil
					local n37 = nil
					local n38 = 0
					tbl12.DesyncSupported = type(sethiddenproperty) == "function" and type(setfflag) == "function" and type(getfflag) == "function"

					local function fn21(arg)
						for _, v25 in ipairs({ tostring(arg), arg }) do
							pcall(setfflag, "S2PhysicsSenderRate", v25)
							local ok, result = pcall(getfflag, "S2PhysicsSenderRate")
							if ok and tonumber(result) == arg then
								return true
							end
						end

						return false
					end

					local function fn22()
						n38 += 1

						if v24 and v24.Parent then
							pcall(sethiddenproperty, v24, "PhysicsRepRootPart", nil)
						end

						v24 = nil
						flag12 = false
						n36 = 0
					end

					local function fn23()
						tbl12.SetDesync(false)
						local desyncT = toggles.DesyncT

						if desyncT then
							desyncT:SetValue(false)
						end
					end

					tbl12.UpdateDesync = function()
						if flag11 or not tbl8.Desync then
							return
						end
						local now3 = os.clock()

						if n37 <= now3 then
							n37 = now3 + 1
							local ok, result = pcall(getfflag, "S2PhysicsSenderRate")
							if (not ok or tonumber(result) ~= 1000) and not fn21(1000) then
								return fn23()
							end
						end

						local v25, v26, v27 = tbl12.Char()
						local flag13 = v25 ~= localPlayer.Character
						local flag14

						if flag13 then
							flag14 = flag13
						else
							flag14 = not (v25 and v25.Parent and v26 and v27 and v27.Health > 0)
						end

						if flag14 then
							if v24 then
								fn22()
							end

							return
						end

						if v26 ~= v24 then
							fn22()
							v24 = v26
							n36 = now3 + 0.14
						end

						if flag12 then
							return
						end

						if now3 < n36 then
							if not pcall(sethiddenproperty, v24, "PhysicsRepRootPart", v24) then
								return fn23()
							end
							return
						end

						flag12 = true
						local v28 = v24
						local v29 = n38
						if not pcall(sethiddenproperty, v28, "PhysicsRepRootPart", nil) then
							return fn23()
						end
						task.wait(0.1)
						if v29 ~= n38 or flag11 or not tbl8.Desync or v28 ~= v24 then
							return
						end

						if not v28.Parent or v25 ~= localPlayer.Character or v27.Health <= 0 then
							return fn22()
						end

						if not pcall(sethiddenproperty, v28, "PhysicsRepRootPart", v28) then
							return fn23()
						end
						flag12 = false
						n36 = os.clock() + 0.14
					end

					tbl12.SetDesync = function(arg)
						local desync = arg == true and not flag11 and tbl12.DesyncSupported == true
						if tbl8.Desync == desync then
							return
						end
						tbl12.SetRuntimeConnection("Desync", nil, false)
						tbl8.Desync = desync

						if desync then
							local ok, result = pcall(getfflag, "S2PhysicsSenderRate")

							if ok and tonumber(result) then
								num = tonumber(result)
							end

							if num == nil then
								return fn23()
							end
							n37 = os.clock() + 1
							if not fn21(1000) then
								return fn23()
							end
						else
							fn22()

							if num ~= nil then
								fn21(num)
							end
						end

						tbl12.SetRuntimeConnection("Desync", RunService.Heartbeat, desync, tbl12.UpdateDesync)
					end
				end
			end

			do
				do
					do
						local lookFigures = {
							Enabled = false,
							Preview = true,
							Figure = "Sideways",
							Clock = 0,
							Cycle = 0,
						}

						local look = ReplicatedStorage.CharacterEvents.Look
						tbl7.LookFigures = lookFigures

						tbl12.ClearLookFigureCharacter = function()
							if lookFigures.Root and lookFigures.Root.Parent then
								lookFigures.Root.C0 = lookFigures.Saved[2]
							end

							local v23 = lookFigures
							local v24 = lookFigures
							lookFigures.Character = nil
							v23.Root = nil
							v24.Saved = nil
						end

						tbl12.UpdateLookFigures = function(arg)
							if flag11 or not lookFigures.Enabled then
								return
							end
							local v23, rootJoint, v24 = tbl12.Char()
							local torso = v23 and v23:FindFirstChild("Torso")
							local neck = torso and torso:FindFirstChild("Neck")
							rootJoint = rootJoint and rootJoint:FindFirstChild("RootJoint")
							torso = torso and torso:FindFirstChild("Right Shoulder")
							if not (v24 and v24.Health > 0 and neck and rootJoint and torso) then
								return tbl12.ClearLookFigureCharacter()
							end

							if lookFigures.Character ~= v23 or lookFigures.Root ~= rootJoint then
								tbl12.ClearLookFigureCharacter()
								local v25 = lookFigures
								local v26 = lookFigures
								local saved = { neck.C0, rootJoint.C0, torso.C0 }
								lookFigures.Character = v23
								v25.Root = rootJoint
								v26.Saved = saved
							end

							local cframe = CFrame.Angles
							local n36

							if lookFigures.Figure == "Upside Down" then
								n36 = 3.1415926535897931
							else
								n36 = 1.5707963267948966
							end

							local v25 = lookFigures.Saved[2]
							local n37 = cframe(0, 0, n36) * v25
							local v26

							if lookFigures.Preview then
								v26 = n37
							else
								v26 = lookFigures.Saved[2]
							end

							if rootJoint.C0 ~= v26 then
								rootJoint.C0 = v26
							end

							lookFigures.Clock = lookFigures.Clock + arg
							if lookFigures.Clock < 0.05 then
								return
							end
							local v27 = lookFigures
							local cycle = lookFigures.Cycle % 20 + 1
							lookFigures.Clock = lookFigures.Clock % 0.05
							v27.Cycle = cycle
							look:FireServer(lookFigures.Saved[1], n37, lookFigures.Saved[3], "high")

							if lookFigures.Cycle % 5 == 0 then
								look:FireServer(lookFigures.Saved[1], n37, lookFigures.Saved[3], "medium")
							end

							if lookFigures.Cycle % 10 == 0 then
								look:FireServer(lookFigures.Saved[1], n37, lookFigures.Saved[3], "low")
							end

							if lookFigures.Cycle == 20 then
								look:FireServer(lookFigures.Saved[1], n37, lookFigures.Saved[3], "lowest")
							end
						end

						tbl12.SetLookFigures = function(arg)
							local enabled = arg and not flag11
							if lookFigures.Enabled == enabled then
								return
							end
							lookFigures.Enabled = enabled
							local antiLag = toggles.AntiLag

							if enabled then
								lookFigures.AntiLag = antiLag.Value

								if not antiLag.Value then
									antiLag:SetValue(true)
								end

								antiLag:SetDisabled(true)
								tbl12.UpdateLookFigures(0)
							else
								local saved = lookFigures.Character == localPlayer.Character and lookFigures.Saved
								tbl12.ClearLookFigureCharacter()
								local v23 = lookFigures
								lookFigures.Clock = 0
								v23.Cycle = 0

								if saved then
									for _, v24 in ipairs({ "high", "medium", "low", "lowest" }) do
										look:FireServer(saved[1], saved[2], saved[3], v24)
									end
								end

								antiLag:SetDisabled(false)

								if antiLag.Value ~= lookFigures.AntiLag then
									antiLag:SetValue(lookFigures.AntiLag)
								end

								lookFigures.AntiLag = nil
							end

							tbl12.SetRuntimeConnection("LookFigures", RunService.Heartbeat, enabled, tbl12.UpdateLookFigures)
						end
					end

					tbl12.AntiGrab = function()
						if flag11 then
							return
						end

						if isHeld.Value and tbl8.AntiGrab and not tbl7.States["Anti Grab"] then
							tbl11.Struggle:FireServer()
							local v23, v24, v25 = tbl12.Char()
							local torso = v23 and v23:FindFirstChild("Torso")
							local neck = torso and torso:FindFirstChild("Neck")
							if not (v25 and torso) then
								return
							end
							v25.RequiresNeck = false
							v25.AutoRotate = false
							tbl12.ResetVelocity(v24 or torso)
							local position = torso.Position
							local lookVector = torso.CFrame.LookVector
							local unit = Vector3.new(lookVector.X, 0, lookVector.Z).Unit
							tbl7.States["Anti Grab"] = true
							local flag12 = tbl9.AGType == "Escapes Anything, but buggy"
							local sit = tbl9.AGType == "Anti-Kill"
							local flag13 = tbl9.AGType == "No Ragdoll"

							if flag12 then
								task.spawn(tbl12.ExtraEscape)
							end

							local now3 = tick()
							local connection = nil
							local n36 = tick() + 0.033333333333333333
							local n37 = 0

							connection = RunService.RenderStepped:Connect(function(deltaTime)
								local now4 = tick()

								if now4 >= n36 then
									tbl11.Struggle:FireServer()
									n36 = now4 + 0.033333333333333333
								end

								if v24 and not flag12 and not flag13 and now4 >= n37 then
									local ragdollRemote = tbl11.RagdollRemote
									local fireServer = ragdollRemote.FireServer
									local n38

									if sit then
										n38 = 0.11
									else
										n38 = 0
									end

									fireServer(ragdollRemote, v24, n38)
									n37 = now4 + 0.033333333333333333
								end

								if flag12 and tick() - now3 > 2 then
									task.spawn(tbl12.ExtraEscape)
									now3 = tick()
								end

								local moveDirection = v25.MoveDirection
								local walkSpeed

								if tbl8.WalkSpeed and tbl9.WalkSpeed > 16 then
									walkSpeed = tbl9.WalkSpeed
								else
									walkSpeed = 16
								end

								if moveDirection.Magnitude > 0 then
									position += moveDirection * walkSpeed * deltaTime
								end

								if (currentCamera.CFrame.Position - currentCamera.Focus.Position).Magnitude < 1 then
									moveDirection = currentCamera.CFrame.LookVector
								end

								local vector = Vector3.new(moveDirection.X, 0, moveDirection.Z)

								if vector.Magnitude > 0 then
									unit = unit:Lerp(vector.Unit, math.min(deltaTime * 12, 1)).Unit
								end

								tbl12.ResetVelocity(v24 or torso)

								if v22 then
									local v26 = torso
									local v27 = v22
									position = v22.Position
									v26.CFrame = v27
									v22 = nil
								else
									torso.CFrame = CFrame.lookAt(position, position + unit)
								end

								v25.Sit = sit

								if not neck or not neck.Enabled then
									tbl12.ToggleCollisions(v23, false)
									tbl12.RepositionLimbs(v23, true)
								end

								for _, v26 in ipairs(v25:GetPlayingAnimationTracks()) do
									if v26.Animation.AnimationId == "rbxassetid://7047322890" then
										v26:Stop()
									end
								end

								if v24 and v24:FindFirstChild("Scream") then
									v24.Scream.Playing = false
								end

								if not isHeld.Value or not tbl8.AntiGrab then
									tbl7.States["Anti Grab"] = false

									if sit then
										task.delay(0.1, function()
											if not v25.SeatPart then
												v25.Sit = false
												v25:ChangeState(Enum.HumanoidStateType.Running)
											end
										end)
									end

									v25.AutoRotate = true
									connection:Disconnect()
								end
							end)
						end
					end

					do
						local tbl16 = nil
						local flag12 = nil

						local function fn21(arg)
							if not arg.Parent or arg.Health <= 0 then
								return
							end
							arg.Sit = true
							task.wait(0.05)

							if arg.Parent then
								arg.Sit = false
							end

							task.wait(0.05)
						end

						local function fn22()
							if not tbl16 then
								return
							end

							for _, v23 in tbl16.Connections, nil, nil do
								v23:Disconnect()
							end

							table.clear(tbl16.Connections)

							if tbl16.BP then
								tbl16.BP:Destroy()
								tbl16.BP = nil
							end

							local hum = tbl16.Hum
							local hrp = tbl16.HRP

							if hum and hum.Parent then
								hum:SetStateEnabled(Enum.HumanoidStateType.Jumping, tbl16.Jumping)

								if hum.SeatPart == tbl16.Seat or not hum.SeatPart then
									hum.Sit = false
								end
							end

							if tbl16.Ragdoll and hrp and hrp.Parent then
								tbl11.RagdollRemote:FireServer(hrp, 0.15)
							end

							local v23 = tbl16
							local v24 = tbl16
							tbl16.Hum = nil
							v23.HRP = nil
							v24.Ragdoll = nil
						end

						local function fn23()
							if not tbl16 then
								return
							end
							fn22()

							if tbl16.InvConn then
								tbl16.InvConn:Disconnect()
							end

							local vehicle = tbl16.Vehicle
							local seat = tbl16.Seat

							if vehicle then
								tbl7.ToyAuraReserved[vehicle] = tbl16.Reserved

								if tbl16.Type == "Train" then
									if seat and seat.Parent then
										seat.Transparency = tbl16.Transparency
										seat.CanCollide = tbl16.CanCollide
									end
								else
									tbl12.DestroyToy(vehicle)
								end
							end

							tbl16 = nil
						end

						local function fn24()
							local character = localPlayer.Character
							local n36 = 0
							local v23 = nil
							local v24, v25, v26, gucciType, ragdolled, object, v27, seat

							while tbl8.GucciAntiGrab do
								local exitTo = nil
								local vehicle, root, flag13, fn25, flag14, now3, cFrame2, n37, connection, flag15, flag16, now4, flag17, parent2, v28, bodyPosition, random, parent3, seatPart, flag18, occupant, playerFromCharacter

								while true do
									task.wait()
									v24, v25, v26 = tbl12.Char()
									gucciType = tbl9.GucciType

									if v24 ~= character then
										character = v24
										n36 = os.clock() + 1
									end

									if tbl16 and (tbl16.Type ~= gucciType or not tbl16.Vehicle.Parent or not tbl16.Seat.Parent or tbl16.Char ~= v24) then
										fn23()
									end

									if tbl8.GucciAntiGrab then
										ragdolled = v26 and v26:FindFirstChild("Ragdolled")

										if not (v25 and v26 and v26.Health > 0 and ragdolled) or isHeld.Value or ragdolled.Value then
											exitTo = 1
											break
										elseif not tbl16 then
											local seat2, v29, v30, flag19, flag20, parent4, parent5, fn26

											if gucciType == "Train" then
												object = train:FindFirstChild("Object")
												object = object and object:FindFirstChild("ObjectModel")
												seat2 = object and object:FindFirstChildWhichIsA("Seat")

												if not seat2 then
													exitTo = 25
													break
												else
													v29 = tbl7.ToyAuraReserved[object]
													v30 = nil
													flag19 = not tbl8.GucciAntiGrab or tbl9.GucciType ~= gucciType or localPlayer.Character ~= v24

													if flag19 then
														flag20 = flag19
													else
														parent4 = object and object.Parent
														parent5 = parent4 and seat2 and seat2.Parent
														flag20 = not parent5
													end

													if flag20 then
														exitTo = 26
														break
													else
														tbl16 = {
															Vehicle = object,
															Seat = seat2,
															Root = v30,
															Char = v24,
															Type = gucciType,
															Reserved = v29,
															Connections = {},
															Transparency = seat2.Transparency,
															CanCollide = seat2.CanCollide,
														}

														tbl7.ToyAuraReserved[object] = true
														v23 = nil

														if gucciType == "Train" then
															v27 = tbl16
															vehicle = v27.Vehicle
															seat = v27.Seat
															root = v27.Root
															flag13 = seat.Occupant and seat.Occupant ~= v26

															if flag13 then
																exitTo = 32
																break
															else
																fn25 = function()
																	local flag21 = tbl16 == v27 and tbl8.GucciAntiGrab and tbl9.GucciType == gucciType and localPlayer.Character == v24 and vehicle.Parent and seat.Parent and v25.Parent and v26.Parent and v26.Health > 0 and not isHeld.Value and not ragdolled.Value

																	if flag21 then
																		flag21 = not (seat.Occupant and seat.Occupant ~= v26)
																	end

																	return flag21
																end

																v27.Hum = v26
																v27.HRP = v25
																v27.Jumping = v26:GetStateEnabled(Enum.HumanoidStateType.Jumping)
																seat.Transparency = 1
																seat.CanCollide = false
																v26.Sit = false
																flag14 = false

																table.insert(v27.Connections, seat.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child.Name == "SeatWeld" then
																		child.Enabled = false
																		child:Destroy()
																		flag14 = true
																	end
																end))

																table.insert(v27.Connections, v24.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child:IsA("LocalScript") and child.Name:lower():find("control") then
																		child.Enabled = false
																		child:Destroy()
																	end
																end))

																now3 = os.clock()
																cFrame2 = v25.CFrame
																n37 = nil
																v27.Ragdoll = true
																connection = nil

																connection = RunService.Heartbeat:Connect(function()
																	if not fn25() then
																		connection:Disconnect()
																	elseif n37 and os.clock() >= n37 then
																		v27.Ragdoll = false
																		tbl11.RagdollRemote:FireServer(v25, 0.15)
																		connection:Disconnect()
																	else
																		tbl11.RagdollRemote:FireServer(v25, 0)
																	end
																end)

																table.insert(v27.Connections, connection)
																tbl11.RagdollRemote:FireServer(v25, 0)
																task.wait()

																if not fn25() then
																	exitTo = 33
																	break
																else
																	seat:Sit(v26)

																	while true do
																		task.wait()

																		if not fn25() then
																			break
																		else
																			flag15 = flag14 or os.clock() - now3 > 0.75
																			if not flag15 then
																				continue
																			end
																			break
																		end
																	end

																	flag16 = not fn25() or not flag14

																	if flag16 then
																		exitTo = 34
																		break
																	else
																		v26.Sit = false
																		now4 = os.clock()
																		n37 = now4 + 0.15

																		if now4 < n36 then
																			tbl12.Teleport(v25, cFrame2)
																		end

																		flag17 = gucciType ~= "Train" and root
																		parent2 = flag17 and root.Parent

																		if parent2 then
																			v28 = root:IsDescendantOf(workspace.PlotItems)
																			parent2 = v28 or tbl12.IsNetworkOwner(root) or tbl12.SNO(root)
																		end

																		if parent2 then
																			if not fn25() then
																				exitTo = 36
																				break
																			else
																				bodyPosition = Instance.new("BodyPosition")
																				bodyPosition.Name = "GucciBP"
																				bodyPosition.D = 200
																				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
																				random = math.random
																				bodyPosition.Position = Vector3.new(math.random(-100000, 100000), 100000, random(-100000, 100000))
																				v27.BP = bodyPosition
																				vehicle.Name = "GucciRSC"
																				bodyPosition.Parent = root
																				v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

																				while fn25() do
																					task.wait()
																				end

																				parent3 = v26.Parent
																				seatPart = parent3 and v26.Health > 0 and v26.SeatPart
																				flag18 = seatPart and v26.SeatPart ~= seat

																				if flag18 then
																					fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
																				end

																				if tbl16 == v27 then
																					occupant = seat.Occupant
																					playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

																					if playerFromCharacter then
																						fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
																					end

																					fn22()

																					if playerFromCharacter then
																						fn23()
																					end
																				end

																				fn21(v26)
																				if tbl8.GucciAntiGrab then
																					continue
																				end
																			end
																		else
																			exitTo = 35
																			break
																		end
																	end
																end
															end
														else
															fn26 = function(descendant)
																if descendant:IsA("BasePart") then
																	descendant.Transparency = 1
																	descendant.CanCollide = false
																elseif descendant:IsA("Decal") or descendant:IsA("Texture") then
																	descendant.Transparency = 1
																elseif descendant.Name == "ItemSpawnSound" then
																	descendant:Destroy()
																end
															end

															for _, v31 in object:GetDescendants() do
																fn26(v31)
															end

															tbl16.InvConn = object.DescendantAdded:Connect(fn26)
															v23 = nil
															v27 = tbl16
															vehicle = v27.Vehicle
															seat = v27.Seat
															root = v27.Root
															flag13 = seat.Occupant and seat.Occupant ~= v26

															if flag13 then
																exitTo = 27
																break
															else
																fn25 = function()
																	local flag21 = tbl16 == v27 and tbl8.GucciAntiGrab and tbl9.GucciType == gucciType and localPlayer.Character == v24 and vehicle.Parent and seat.Parent and v25.Parent and v26.Parent and v26.Health > 0 and not isHeld.Value and not ragdolled.Value

																	if flag21 then
																		flag21 = not (seat.Occupant and seat.Occupant ~= v26)
																	end

																	return flag21
																end

																v27.Hum = v26
																v27.HRP = v25
																v27.Jumping = v26:GetStateEnabled(Enum.HumanoidStateType.Jumping)
																seat.Transparency = 1
																seat.CanCollide = false
																v26.Sit = false
																flag14 = false

																table.insert(v27.Connections, seat.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child.Name == "SeatWeld" then
																		child.Enabled = false
																		child:Destroy()
																		flag14 = true
																	end
																end))

																table.insert(v27.Connections, v24.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child:IsA("LocalScript") and child.Name:lower():find("control") then
																		child.Enabled = false
																		child:Destroy()
																	end
																end))

																now3 = os.clock()
																cFrame2 = v25.CFrame
																n37 = nil
																v27.Ragdoll = true
																connection = nil

																connection = RunService.Heartbeat:Connect(function()
																	if not fn25() then
																		connection:Disconnect()
																	elseif n37 and os.clock() >= n37 then
																		v27.Ragdoll = false
																		tbl11.RagdollRemote:FireServer(v25, 0.15)
																		connection:Disconnect()
																	else
																		tbl11.RagdollRemote:FireServer(v25, 0)
																	end
																end)

																table.insert(v27.Connections, connection)
																tbl11.RagdollRemote:FireServer(v25, 0)
																task.wait()

																if not fn25() then
																	exitTo = 28
																	break
																else
																	seat:Sit(v26)

																	while true do
																		task.wait()

																		if not fn25() then
																			break
																		else
																			flag15 = flag14 or os.clock() - now3 > 0.75
																			if not flag15 then
																				continue
																			end
																			break
																		end
																	end

																	flag16 = not fn25() or not flag14

																	if flag16 then
																		exitTo = 29
																		break
																	else
																		v26.Sit = false
																		now4 = os.clock()
																		n37 = now4 + 0.15

																		if now4 < n36 then
																			tbl12.Teleport(v25, cFrame2)
																		end

																		flag17 = gucciType ~= "Train" and root
																		parent2 = flag17 and root.Parent

																		if parent2 then
																			v28 = root:IsDescendantOf(workspace.PlotItems)
																			parent2 = v28 or tbl12.IsNetworkOwner(root) or tbl12.SNO(root)
																		end

																		if parent2 then
																			if not fn25() then
																				exitTo = 31
																				break
																			else
																				bodyPosition = Instance.new("BodyPosition")
																				bodyPosition.Name = "GucciBP"
																				bodyPosition.D = 200
																				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
																				random = math.random
																				bodyPosition.Position = Vector3.new(math.random(-100000, 100000), 100000, random(-100000, 100000))
																				v27.BP = bodyPosition
																				vehicle.Name = "GucciRSC"
																				bodyPosition.Parent = root
																				v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

																				while fn25() do
																					task.wait()
																				end

																				parent3 = v26.Parent
																				seatPart = parent3 and v26.Health > 0 and v26.SeatPart
																				flag18 = seatPart and v26.SeatPart ~= seat

																				if flag18 then
																					fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
																				end

																				if tbl16 == v27 then
																					occupant = seat.Occupant
																					playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

																					if playerFromCharacter then
																						fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
																					end

																					fn22()

																					if playerFromCharacter then
																						fn23()
																					end
																				end

																				fn21(v26)
																				if tbl8.GucciAntiGrab then
																					continue
																				end
																			end
																		else
																			exitTo = 30
																			break
																		end
																	end
																end
															end
														end
													end
												end
											else
												object = tbl12.SpawnToy(gucciType, CFrame.new(100000, 500000, 0), 2, true)
												seat2 = object and object:WaitForChild("VehicleSeat", 1.25)
												v29 = nil

												if seat2 then
													v30 = tbl12.FindNicePart(object)
													v29 = nil
													flag19 = not tbl8.GucciAntiGrab or tbl9.GucciType ~= gucciType or localPlayer.Character ~= v24

													if flag19 then
														flag20 = flag19
													else
														parent4 = object and object.Parent
														parent5 = parent4 and seat2 and seat2.Parent
														flag20 = not parent5
													end

													if flag20 then
														exitTo = 14
														break
													else
														tbl16 = {
															Vehicle = object,
															Seat = seat2,
															Root = v30,
															Char = v24,
															Type = gucciType,
															Reserved = v29,
															Connections = {},
															Transparency = seat2.Transparency,
															CanCollide = seat2.CanCollide,
														}

														tbl7.ToyAuraReserved[object] = true
														v23 = nil

														if gucciType == "Train" then
															v27 = tbl16
															vehicle = v27.Vehicle
															seat = v27.Seat
															root = v27.Root
															flag13 = seat.Occupant and seat.Occupant ~= v26

															if flag13 then
																exitTo = 20
																break
															else
																fn25 = function()
																	local flag21 = tbl16 == v27 and tbl8.GucciAntiGrab and tbl9.GucciType == gucciType and localPlayer.Character == v24 and vehicle.Parent and seat.Parent and v25.Parent and v26.Parent and v26.Health > 0 and not isHeld.Value and not ragdolled.Value

																	if flag21 then
																		flag21 = not (seat.Occupant and seat.Occupant ~= v26)
																	end

																	return flag21
																end

																v27.Hum = v26
																v27.HRP = v25
																v27.Jumping = v26:GetStateEnabled(Enum.HumanoidStateType.Jumping)
																seat.Transparency = 1
																seat.CanCollide = false
																v26.Sit = false
																flag14 = false

																table.insert(v27.Connections, seat.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child.Name == "SeatWeld" then
																		child.Enabled = false
																		child:Destroy()
																		flag14 = true
																	end
																end))

																table.insert(v27.Connections, v24.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child:IsA("LocalScript") and child.Name:lower():find("control") then
																		child.Enabled = false
																		child:Destroy()
																	end
																end))

																now3 = os.clock()
																cFrame2 = v25.CFrame
																n37 = nil
																v27.Ragdoll = true
																connection = nil

																connection = RunService.Heartbeat:Connect(function()
																	if not fn25() then
																		connection:Disconnect()
																	elseif n37 and os.clock() >= n37 then
																		v27.Ragdoll = false
																		tbl11.RagdollRemote:FireServer(v25, 0.15)
																		connection:Disconnect()
																	else
																		tbl11.RagdollRemote:FireServer(v25, 0)
																	end
																end)

																table.insert(v27.Connections, connection)
																tbl11.RagdollRemote:FireServer(v25, 0)
																task.wait()

																if not fn25() then
																	exitTo = 21
																	break
																else
																	seat:Sit(v26)

																	while true do
																		task.wait()

																		if not fn25() then
																			break
																		else
																			flag15 = flag14 or os.clock() - now3 > 0.75
																			if not flag15 then
																				continue
																			end
																			break
																		end
																	end

																	flag16 = not fn25() or not flag14

																	if flag16 then
																		exitTo = 22
																		break
																	else
																		v26.Sit = false
																		now4 = os.clock()
																		n37 = now4 + 0.15

																		if now4 < n36 then
																			tbl12.Teleport(v25, cFrame2)
																		end

																		flag17 = gucciType ~= "Train" and root
																		parent2 = flag17 and root.Parent

																		if parent2 then
																			v28 = root:IsDescendantOf(workspace.PlotItems)
																			parent2 = v28 or tbl12.IsNetworkOwner(root) or tbl12.SNO(root)
																		end

																		if parent2 then
																			if not fn25() then
																				exitTo = 24
																				break
																			else
																				bodyPosition = Instance.new("BodyPosition")
																				bodyPosition.Name = "GucciBP"
																				bodyPosition.D = 200
																				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
																				random = math.random
																				bodyPosition.Position = Vector3.new(math.random(-100000, 100000), 100000, random(-100000, 100000))
																				v27.BP = bodyPosition
																				vehicle.Name = "GucciRSC"
																				bodyPosition.Parent = root
																				v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

																				while fn25() do
																					task.wait()
																				end

																				parent3 = v26.Parent
																				seatPart = parent3 and v26.Health > 0 and v26.SeatPart
																				flag18 = seatPart and v26.SeatPart ~= seat

																				if flag18 then
																					fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
																				end

																				if tbl16 == v27 then
																					occupant = seat.Occupant
																					playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

																					if playerFromCharacter then
																						fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
																					end

																					fn22()

																					if playerFromCharacter then
																						fn23()
																					end
																				end

																				fn21(v26)
																				if tbl8.GucciAntiGrab then
																					continue
																				end
																			end
																		else
																			exitTo = 23
																			break
																		end
																	end
																end
															end
														else
															fn26 = function(arg)
																if arg:IsA("BasePart") then
																	arg.Transparency = 1
																	arg.CanCollide = false
																elseif arg:IsA("Decal") or arg:IsA("Texture") then
																	arg.Transparency = 1
																elseif arg.Name == "ItemSpawnSound" then
																	arg:Destroy()
																end
															end

															for _, v31 in object:GetDescendants() do
																fn26(v31)
															end

															tbl16.InvConn = object.DescendantAdded:Connect(fn26)
															v23 = nil
															v27 = tbl16
															vehicle = v27.Vehicle
															seat = v27.Seat
															root = v27.Root
															flag13 = seat.Occupant and seat.Occupant ~= v26

															if flag13 then
																exitTo = 15
																break
															else
																fn25 = function()
																	local flag21 = tbl16 == v27 and tbl8.GucciAntiGrab and tbl9.GucciType == gucciType and localPlayer.Character == v24 and vehicle.Parent and seat.Parent and v25.Parent and v26.Parent and v26.Health > 0 and not isHeld.Value and not ragdolled.Value

																	if flag21 then
																		flag21 = not (seat.Occupant and seat.Occupant ~= v26)
																	end

																	return flag21
																end

																v27.Hum = v26
																v27.HRP = v25
																v27.Jumping = v26:GetStateEnabled(Enum.HumanoidStateType.Jumping)
																seat.Transparency = 1
																seat.CanCollide = false
																v26.Sit = false
																flag14 = false

																table.insert(v27.Connections, seat.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child.Name == "SeatWeld" then
																		child.Enabled = false
																		child:Destroy()
																		flag14 = true
																	end
																end))

																table.insert(v27.Connections, v24.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child:IsA("LocalScript") and child.Name:lower():find("control") then
																		child.Enabled = false
																		child:Destroy()
																	end
																end))

																now3 = os.clock()
																cFrame2 = v25.CFrame
																n37 = nil
																v27.Ragdoll = true
																connection = nil

																connection = RunService.Heartbeat:Connect(function()
																	if not fn25() then
																		connection:Disconnect()
																	elseif n37 and os.clock() >= n37 then
																		v27.Ragdoll = false
																		tbl11.RagdollRemote:FireServer(v25, 0.15)
																		connection:Disconnect()
																	else
																		tbl11.RagdollRemote:FireServer(v25, 0)
																	end
																end)

																table.insert(v27.Connections, connection)
																tbl11.RagdollRemote:FireServer(v25, 0)
																task.wait()

																if not fn25() then
																	exitTo = 16
																	break
																else
																	seat:Sit(v26)

																	while true do
																		task.wait()

																		if not fn25() then
																			break
																		else
																			flag15 = flag14 or os.clock() - now3 > 0.75
																			if not flag15 then
																				continue
																			end
																			break
																		end
																	end

																	flag16 = not fn25() or not flag14

																	if flag16 then
																		exitTo = 17
																		break
																	else
																		v26.Sit = false
																		now4 = os.clock()
																		n37 = now4 + 0.15

																		if now4 < n36 then
																			tbl12.Teleport(v25, cFrame2)
																		end

																		flag17 = gucciType ~= "Train" and root
																		parent2 = flag17 and root.Parent

																		if parent2 then
																			v28 = root:IsDescendantOf(workspace.PlotItems)
																			parent2 = v28 or tbl12.IsNetworkOwner(root) or tbl12.SNO(root)
																		end

																		if parent2 then
																			if not fn25() then
																				exitTo = 19
																				break
																			else
																				bodyPosition = Instance.new("BodyPosition")
																				bodyPosition.Name = "GucciBP"
																				bodyPosition.D = 200
																				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
																				random = math.random
																				bodyPosition.Position = Vector3.new(math.random(-100000, 100000), 100000, random(-100000, 100000))
																				v27.BP = bodyPosition
																				vehicle.Name = "GucciRSC"
																				bodyPosition.Parent = root
																				v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

																				while fn25() do
																					task.wait()
																				end

																				parent3 = v26.Parent
																				seatPart = parent3 and v26.Health > 0 and v26.SeatPart
																				flag18 = seatPart and v26.SeatPart ~= seat

																				if flag18 then
																					fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
																				end

																				if tbl16 == v27 then
																					occupant = seat.Occupant
																					playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

																					if playerFromCharacter then
																						fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
																					end

																					fn22()

																					if playerFromCharacter then
																						fn23()
																					end
																				end

																				fn21(v26)
																				if tbl8.GucciAntiGrab then
																					continue
																				end
																			end
																		else
																			exitTo = 18
																			break
																		end
																	end
																end
															end
														end
													end
												else
													v30 = seat2
													flag19 = not tbl8.GucciAntiGrab or tbl9.GucciType ~= gucciType or localPlayer.Character ~= v24

													if flag19 then
														flag20 = flag19
													else
														parent4 = object and object.Parent
														parent5 = parent4 and seat2 and seat2.Parent
														flag20 = not parent5
													end

													if flag20 then
														exitTo = 3
														break
													else
														tbl16 = {
															Vehicle = object,
															Seat = seat2,
															Root = v30,
															Char = v24,
															Type = gucciType,
															Reserved = v29,
															Connections = {},
															Transparency = seat2.Transparency,
															CanCollide = seat2.CanCollide,
														}

														tbl7.ToyAuraReserved[object] = true
														v23 = nil

														if gucciType == "Train" then
															v27 = tbl16
															vehicle = v27.Vehicle
															seat = v27.Seat
															root = v27.Root
															flag13 = seat.Occupant and seat.Occupant ~= v26

															if flag13 then
																exitTo = 9
																break
															else
																fn25 = function()
																	local flag21 = tbl16 == v27 and tbl8.GucciAntiGrab and tbl9.GucciType == gucciType and localPlayer.Character == v24 and vehicle.Parent and seat.Parent and v25.Parent and v26.Parent and v26.Health > 0 and not isHeld.Value and not ragdolled.Value

																	if flag21 then
																		flag21 = not (seat.Occupant and seat.Occupant ~= v26)
																	end

																	return flag21
																end

																v27.Hum = v26
																v27.HRP = v25
																v27.Jumping = v26:GetStateEnabled(Enum.HumanoidStateType.Jumping)
																seat.Transparency = 1
																seat.CanCollide = false
																v26.Sit = false
																flag14 = false

																table.insert(v27.Connections, seat.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child.Name == "SeatWeld" then
																		child.Enabled = false
																		child:Destroy()
																		flag14 = true
																	end
																end))

																table.insert(v27.Connections, v24.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child:IsA("LocalScript") and child.Name:lower():find("control") then
																		child.Enabled = false
																		child:Destroy()
																	end
																end))

																now3 = os.clock()
																cFrame2 = v25.CFrame
																n37 = nil
																v27.Ragdoll = true
																connection = nil

																connection = RunService.Heartbeat:Connect(function()
																	if not fn25() then
																		connection:Disconnect()
																	elseif n37 and os.clock() >= n37 then
																		v27.Ragdoll = false
																		tbl11.RagdollRemote:FireServer(v25, 0.15)
																		connection:Disconnect()
																	else
																		tbl11.RagdollRemote:FireServer(v25, 0)
																	end
																end)

																table.insert(v27.Connections, connection)
																tbl11.RagdollRemote:FireServer(v25, 0)
																task.wait()

																if not fn25() then
																	exitTo = 10
																	break
																else
																	seat:Sit(v26)

																	while true do
																		task.wait()

																		if not fn25() then
																			break
																		else
																			flag15 = flag14 or os.clock() - now3 > 0.75
																			if not flag15 then
																				continue
																			end
																			break
																		end
																	end

																	flag16 = not fn25() or not flag14

																	if flag16 then
																		exitTo = 11
																		break
																	else
																		v26.Sit = false
																		now4 = os.clock()
																		n37 = now4 + 0.15

																		if now4 < n36 then
																			tbl12.Teleport(v25, cFrame2)
																		end

																		flag17 = gucciType ~= "Train" and root
																		parent2 = flag17 and root.Parent

																		if parent2 then
																			v28 = root:IsDescendantOf(workspace.PlotItems)
																			parent2 = v28 or tbl12.IsNetworkOwner(root) or tbl12.SNO(root)
																		end

																		if parent2 then
																			if not fn25() then
																				exitTo = 13
																				break
																			else
																				bodyPosition = Instance.new("BodyPosition")
																				bodyPosition.Name = "GucciBP"
																				bodyPosition.D = 200
																				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
																				random = math.random
																				bodyPosition.Position = Vector3.new(math.random(-100000, 100000), 100000, random(-100000, 100000))
																				v27.BP = bodyPosition
																				vehicle.Name = "GucciRSC"
																				bodyPosition.Parent = root
																				v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

																				while fn25() do
																					task.wait()
																				end

																				parent3 = v26.Parent
																				seatPart = parent3 and v26.Health > 0 and v26.SeatPart
																				flag18 = seatPart and v26.SeatPart ~= seat

																				if flag18 then
																					fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
																				end

																				if tbl16 == v27 then
																					occupant = seat.Occupant
																					playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

																					if playerFromCharacter then
																						fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
																					end

																					fn22()

																					if playerFromCharacter then
																						fn23()
																					end
																				end

																				fn21(v26)
																				if tbl8.GucciAntiGrab then
																					continue
																				end
																			end
																		else
																			exitTo = 12
																			break
																		end
																	end
																end
															end
														else
															fn26 = function(arg)
																if arg:IsA("BasePart") then
																	arg.Transparency = 1
																	arg.CanCollide = false
																elseif arg:IsA("Decal") or arg:IsA("Texture") then
																	arg.Transparency = 1
																elseif arg.Name == "ItemSpawnSound" then
																	arg:Destroy()
																end
															end

															for _, v31 in object:GetDescendants() do
																fn26(v31)
															end

															tbl16.InvConn = object.DescendantAdded:Connect(fn26)
															v23 = nil
															v27 = tbl16
															vehicle = v27.Vehicle
															seat = v27.Seat
															root = v27.Root
															flag13 = seat.Occupant and seat.Occupant ~= v26

															if flag13 then
																exitTo = 4
																break
															else
																fn25 = function()
																	local flag21 = tbl16 == v27 and tbl8.GucciAntiGrab and tbl9.GucciType == gucciType and localPlayer.Character == v24 and vehicle.Parent and seat.Parent and v25.Parent and v26.Parent and v26.Health > 0 and not isHeld.Value and not ragdolled.Value

																	if flag21 then
																		flag21 = not (seat.Occupant and seat.Occupant ~= v26)
																	end

																	return flag21
																end

																v27.Hum = v26
																v27.HRP = v25
																v27.Jumping = v26:GetStateEnabled(Enum.HumanoidStateType.Jumping)
																seat.Transparency = 1
																seat.CanCollide = false
																v26.Sit = false
																flag14 = false

																table.insert(v27.Connections, seat.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child.Name == "SeatWeld" then
																		child.Enabled = false
																		child:Destroy()
																		flag14 = true
																	end
																end))

																table.insert(v27.Connections, v24.ChildAdded:Connect(function(child)
																	if tbl16 == v27 and child:IsA("LocalScript") and child.Name:lower():find("control") then
																		child.Enabled = false
																		child:Destroy()
																	end
																end))

																now3 = os.clock()
																cFrame2 = v25.CFrame
																n37 = nil
																v27.Ragdoll = true
																connection = nil

																connection = RunService.Heartbeat:Connect(function()
																	if not fn25() then
																		connection:Disconnect()
																	elseif n37 and os.clock() >= n37 then
																		v27.Ragdoll = false
																		tbl11.RagdollRemote:FireServer(v25, 0.15)
																		connection:Disconnect()
																	else
																		tbl11.RagdollRemote:FireServer(v25, 0)
																	end
																end)

																table.insert(v27.Connections, connection)
																tbl11.RagdollRemote:FireServer(v25, 0)
																task.wait()

																if not fn25() then
																	exitTo = 5
																	break
																else
																	seat:Sit(v26)

																	while true do
																		task.wait()

																		if not fn25() then
																			break
																		else
																			flag15 = flag14 or os.clock() - now3 > 0.75
																			if not flag15 then
																				continue
																			end
																			break
																		end
																	end

																	flag16 = not fn25() or not flag14

																	if flag16 then
																		exitTo = 6
																		break
																	else
																		v26.Sit = false
																		now4 = os.clock()
																		n37 = now4 + 0.15

																		if now4 < n36 then
																			tbl12.Teleport(v25, cFrame2)
																		end

																		flag17 = gucciType ~= "Train" and root
																		parent2 = flag17 and root.Parent

																		if parent2 then
																			v28 = root:IsDescendantOf(workspace.PlotItems)
																			parent2 = v28 or tbl12.IsNetworkOwner(root) or tbl12.SNO(root)
																		end

																		if parent2 then
																			if not fn25() then
																				exitTo = 8
																				break
																			else
																				bodyPosition = Instance.new("BodyPosition")
																				bodyPosition.Name = "GucciBP"
																				bodyPosition.D = 200
																				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
																				random = math.random
																				bodyPosition.Position = Vector3.new(math.random(-100000, 100000), 100000, random(-100000, 100000))
																				v27.BP = bodyPosition
																				vehicle.Name = "GucciRSC"
																				bodyPosition.Parent = root
																				v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

																				while fn25() do
																					task.wait()
																				end

																				parent3 = v26.Parent
																				seatPart = parent3 and v26.Health > 0 and v26.SeatPart
																				flag18 = seatPart and v26.SeatPart ~= seat

																				if flag18 then
																					fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
																				end

																				if tbl16 == v27 then
																					occupant = seat.Occupant
																					playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

																					if playerFromCharacter then
																						fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
																					end

																					fn22()

																					if playerFromCharacter then
																						fn23()
																					end
																				end

																				fn21(v26)
																				if tbl8.GucciAntiGrab then
																					continue
																				end
																			end
																		else
																			exitTo = 7
																			break
																		end
																	end
																end
															end
														end
													end
												end
											end
										else
											exitTo = 2
											break
										end
									end

									break
								end

								if exitTo == 1 then
									continue
								else
									local flag19, flag20

									if exitTo == 2 then
										v27 = tbl16
										vehicle = v27.Vehicle
										seat = v27.Seat
										root = v27.Root
										flag13 = seat.Occupant and seat.Occupant ~= v26

										if flag13 then
											fn23()
										else
											fn25 = function()
												local flag21 = tbl16 == v27 and tbl8.GucciAntiGrab and tbl9.GucciType == gucciType and localPlayer.Character == v24 and vehicle.Parent and seat.Parent and v25.Parent and v26.Parent and v26.Health > 0 and not isHeld.Value and not ragdolled.Value

												if flag21 then
													flag21 = not (seat.Occupant and seat.Occupant ~= v26)
												end

												return flag21
											end

											v27.Hum = v26
											v27.HRP = v25
											v27.Jumping = v26:GetStateEnabled(Enum.HumanoidStateType.Jumping)
											seat.Transparency = 1
											seat.CanCollide = false
											v26.Sit = false
											flag14 = false

											table.insert(v27.Connections, seat.ChildAdded:Connect(function(child)
												if tbl16 == v27 and child.Name == "SeatWeld" then
													child.Enabled = false
													child:Destroy()
													flag14 = true
												end
											end))

											table.insert(v27.Connections, v24.ChildAdded:Connect(function(child)
												if tbl16 == v27 and child:IsA("LocalScript") and child.Name:lower():find("control") then
													child.Enabled = false
													child:Destroy()
												end
											end))

											now3 = os.clock()
											cFrame2 = v25.CFrame
											n37 = nil
											v27.Ragdoll = true
											connection = nil

											connection = RunService.Heartbeat:Connect(function()
												if not fn25() then
													connection:Disconnect()
												elseif n37 and os.clock() >= n37 then
													v27.Ragdoll = false
													tbl11.RagdollRemote:FireServer(v25, 0.15)
													connection:Disconnect()
												else
													tbl11.RagdollRemote:FireServer(v25, 0)
												end
											end)

											table.insert(v27.Connections, connection)
											tbl11.RagdollRemote:FireServer(v25, 0)
											task.wait()

											if not fn25() then
												if tbl16 == v27 then
													fn22()
												end

												fn21(v26)
											else
												seat:Sit(v26)

												while true do
													task.wait()

													if not fn25() then
														break
													else
														flag15 = flag14 or os.clock() - now3 > 0.75
														if not flag15 then
															continue
														end
														break
													end
												end

												flag16 = not fn25() or not flag14

												if flag16 then
													flag19 = v26.Sit and seat.Occupant == v26
													flag20 = not flag19

													if tbl16 == v27 then
														fn23()
													end

													if flag20 then
														fn21(v26)
													end
												else
													v26.Sit = false
													now4 = os.clock()
													n37 = now4 + 0.15

													if now4 < n36 then
														tbl12.Teleport(v25, cFrame2)
													end

													flag17 = gucciType ~= "Train" and root
													parent2 = flag17 and root.Parent

													if parent2 then
														v28 = root:IsDescendantOf(workspace.PlotItems)
														parent2 = v28 or tbl12.IsNetworkOwner(root) or tbl12.SNO(root)
													end

													if parent2 then
														if not fn25() then
															if tbl16 == v27 then
																fn23()
															end

															fn21(v26)
														else
															bodyPosition = Instance.new("BodyPosition")
															bodyPosition.Name = "GucciBP"
															bodyPosition.D = 200
															bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
															random = math.random
															bodyPosition.Position = Vector3.new(math.random(-100000, 100000), 100000, random(-100000, 100000))
															v27.BP = bodyPosition
															vehicle.Name = "GucciRSC"
															bodyPosition.Parent = root
															v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

															while fn25() do
																task.wait()
															end

															parent3 = v26.Parent
															seatPart = parent3 and v26.Health > 0 and v26.SeatPart
															flag18 = seatPart and v26.SeatPart ~= seat

															if flag18 then
																fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
															end

															if tbl16 == v27 then
																occupant = seat.Occupant
																playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

																if playerFromCharacter then
																	fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
																end

																fn22()

																if playerFromCharacter then
																	fn23()
																end
															end

															fn21(v26)
														end
													else
														v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

														while fn25() do
															task.wait()
														end

														parent3 = v26.Parent
														seatPart = parent3 and v26.Health > 0 and v26.SeatPart
														flag18 = seatPart and v26.SeatPart ~= seat

														if flag18 then
															fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
														end

														if tbl16 == v27 then
															occupant = seat.Occupant
															playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

															if playerFromCharacter then
																fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
															end

															fn22()

															if playerFromCharacter then
																fn23()
															end
														end

														fn21(v26)
													end
												end
											end
										end

										continue
									else
										local flag21

										if exitTo == 3 then
											flag21 = object and gucciType ~= "Train"

											if flag21 then
												tbl7.ToyAuraReserved[object] = nil
												tbl12.DestroyToy(object)
											end

											continue
										elseif exitTo == 4 then
											fn23()
											continue
										elseif exitTo == 5 then
											if tbl16 == v27 then
												fn22()
											end

											fn21(v26)
											continue
										elseif exitTo == 6 then
											flag19 = v26.Sit and seat.Occupant == v26
											flag20 = not flag19

											if tbl16 == v27 then
												fn23()
											end

											if flag20 then
												fn21(v26)
											end

											continue
										elseif exitTo == 7 then
											v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

											while fn25() do
												task.wait()
											end

											parent3 = v26.Parent
											seatPart = parent3 and v26.Health > 0 and v26.SeatPart
											flag18 = seatPart and v26.SeatPart ~= seat

											if flag18 then
												fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
											end

											if tbl16 == v27 then
												occupant = seat.Occupant
												playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

												if playerFromCharacter then
													fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
												end

												fn22()

												if playerFromCharacter then
													fn23()
												end
											end

											fn21(v26)
											continue
										elseif exitTo == 8 then
											if tbl16 == v27 then
												fn23()
											end

											fn21(v26)
											continue
										elseif exitTo == 9 then
											fn23()
											continue
										elseif exitTo == 10 then
											if tbl16 == v27 then
												fn22()
											end

											fn21(v26)
											continue
										elseif exitTo == 11 then
											flag19 = v26.Sit and seat.Occupant == v26
											flag20 = not flag19

											if tbl16 == v27 then
												fn23()
											end

											if flag20 then
												fn21(v26)
											end

											continue
										elseif exitTo == 12 then
											v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

											while fn25() do
												task.wait()
											end

											parent3 = v26.Parent
											seatPart = parent3 and v26.Health > 0 and v26.SeatPart
											flag18 = seatPart and v26.SeatPart ~= seat

											if flag18 then
												fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
											end

											if tbl16 == v27 then
												occupant = seat.Occupant
												playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

												if playerFromCharacter then
													fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
												end

												fn22()

												if playerFromCharacter then
													fn23()
												end
											end

											fn21(v26)
											continue
										elseif exitTo == 13 then
											if tbl16 == v27 then
												fn23()
											end

											fn21(v26)
											continue
										elseif exitTo == 14 then
											flag21 = object and gucciType ~= "Train"

											if flag21 then
												tbl7.ToyAuraReserved[object] = nil
												tbl12.DestroyToy(object)
											end

											continue
										elseif exitTo == 15 then
											fn23()
											continue
										elseif exitTo == 16 then
											if tbl16 == v27 then
												fn22()
											end

											fn21(v26)
											continue
										elseif exitTo == 17 then
											flag19 = v26.Sit and seat.Occupant == v26
											flag20 = not flag19

											if tbl16 == v27 then
												fn23()
											end

											if flag20 then
												fn21(v26)
											end

											continue
										elseif exitTo == 18 then
											v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

											while fn25() do
												task.wait()
											end

											parent3 = v26.Parent
											seatPart = parent3 and v26.Health > 0 and v26.SeatPart
											flag18 = seatPart and v26.SeatPart ~= seat

											if flag18 then
												fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
											end

											if tbl16 == v27 then
												occupant = seat.Occupant
												playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

												if playerFromCharacter then
													fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
												end

												fn22()

												if playerFromCharacter then
													fn23()
												end
											end

											fn21(v26)
											continue
										elseif exitTo == 19 then
											if tbl16 == v27 then
												fn23()
											end

											fn21(v26)
											continue
										elseif exitTo == 20 then
											fn23()
											continue
										elseif exitTo == 21 then
											if tbl16 == v27 then
												fn22()
											end

											fn21(v26)
											continue
										elseif exitTo == 22 then
											flag19 = v26.Sit and seat.Occupant == v26
											flag20 = not flag19

											if tbl16 == v27 then
												fn23()
											end

											if flag20 then
												fn21(v26)
											end

											continue
										elseif exitTo == 23 then
											v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

											while fn25() do
												task.wait()
											end

											parent3 = v26.Parent
											seatPart = parent3 and v26.Health > 0 and v26.SeatPart
											flag18 = seatPart and v26.SeatPart ~= seat

											if flag18 then
												fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
											end

											if tbl16 == v27 then
												occupant = seat.Occupant
												playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

												if playerFromCharacter then
													fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
												end

												fn22()

												if playerFromCharacter then
													fn23()
												end
											end

											fn21(v26)
											continue
										elseif exitTo == 24 then
											if tbl16 == v27 then
												fn23()
											end

											fn21(v26)
											continue
										elseif exitTo == 25 then
											if v23 ~= gucciType then
												local v29 = fn18
												local str5

												if object then
													str5 = "Train doesn't have seats!"
												else
													str5 = "Train doesn't exist!"
												end

												v29(str5)
												v23 = gucciType
											end

											continue
										elseif exitTo == 26 then
											flag21 = object and gucciType ~= "Train"

											if flag21 then
												tbl7.ToyAuraReserved[object] = nil
												tbl12.DestroyToy(object)
											end

											continue
										elseif exitTo == 27 then
											fn23()
											continue
										elseif exitTo == 28 then
											if tbl16 == v27 then
												fn22()
											end

											fn21(v26)
											continue
										elseif exitTo == 29 then
											flag19 = v26.Sit and seat.Occupant == v26
											flag20 = not flag19

											if tbl16 == v27 then
												fn23()
											end

											if flag20 then
												fn21(v26)
											end

											continue
										elseif exitTo == 30 then
											v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

											while fn25() do
												task.wait()
											end

											parent3 = v26.Parent
											seatPart = parent3 and v26.Health > 0 and v26.SeatPart
											flag18 = seatPart and v26.SeatPart ~= seat

											if flag18 then
												fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
											end

											if tbl16 == v27 then
												occupant = seat.Occupant
												playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

												if playerFromCharacter then
													fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
												end

												fn22()

												if playerFromCharacter then
													fn23()
												end
											end

											fn21(v26)
											continue
										elseif exitTo == 31 then
											if tbl16 == v27 then
												fn23()
											end

											fn21(v26)
											continue
										elseif exitTo == 32 then
											fn23()
											continue
										elseif exitTo == 33 then
											if tbl16 == v27 then
												fn22()
											end

											fn21(v26)
											continue
										elseif exitTo == 34 then
											flag19 = v26.Sit and seat.Occupant == v26
											flag20 = not flag19

											if tbl16 == v27 then
												fn23()
											end

											if flag20 then
												fn21(v26)
											end

											continue
										elseif exitTo == 35 then
											v26:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)

											while fn25() do
												task.wait()
											end

											parent3 = v26.Parent
											seatPart = parent3 and v26.Health > 0 and v26.SeatPart
											flag18 = seatPart and v26.SeatPart ~= seat

											if flag18 then
												fn18("You can't sit on other Vehicles while in Gucci!", "Invincibility")
											end

											if tbl16 == v27 then
												occupant = seat.Occupant
												playerFromCharacter = occupant and occupant ~= v26 and Players:GetPlayerFromCharacter(occupant.Parent)

												if playerFromCharacter then
													fn18(playerFromCharacter.DisplayName .. " sat on your gucci!")
												end

												fn22()

												if playerFromCharacter then
													fn23()
												end
											end

											fn21(v26)
											continue
										elseif exitTo == 36 then
											if tbl16 == v27 then
												fn23()
											end

											fn21(v26)
											continue
										end
									end
								end

								break
							end
						end

						tbl12.SetGucciAntiGrab = function(arg)
							tbl8.GucciAntiGrab = arg and not flag11
							if not tbl8.GucciAntiGrab then
								fn23()
								return
							end

							if flag12 then
								return
							end
							flag12 = true

							task.spawn(function()
								local ok, result = pcall(fn24)
								fn23()
								flag12 = nil

								if not ok then
									warn("[GUCCI Anti Grab] " .. tostring(result))

									if not flag11 then
										toggles.GucciAntiGrab:SetValue(false)
									end
								end
							end)
						end
					end
				end

				do
					local espConfig, tbl16, tbl17, obj, fn21, fn22

					do
						tbl12.IsWaitingPCLD = function(arg)
							return arg and arg.Position == Vector3.zero
						end

						tbl12.ClearPCLDAssignment = function(arg, arg2)
							if not arg2 then
								return
							end
							local player = arg2 and arg2.Player

							if player and tbl7.PCLD[player] == arg then
								tbl7.PCLD[player] = nil
							end

							table.clear(arg2)
							arg2.Hits = 0

							if arg and arg.Parent then
								arg:SetAttribute("CurrentlyAssignedTo", nil)
							end

							if tbl8.PCLDESP and tbl12.UpdatePCLDESP then
								tbl12.UpdatePCLDESP(arg)
							end
						end

						tbl12.UpdatePCLDAssignments = function()
							local pcldTracker = tbl7.PCLDTracker
							local players = pcldTracker.Players
							local positions = pcldTracker.Positions
							table.clear(players)
							table.clear(positions)
							local flag12 = false

							for k in tbl7.PCLDParts, nil, nil do
								local v23 = pcldTracker.PartStates[k]
								local flag13 = k.Parent and k.Name == "PlayerCharacterLocationDetector" and not tbl12.IsWaitingPCLD(k)

								if flag13 then
									flag13 = not v23 or not v23.Player or v23.Player.Parent ~= Players
								end

								if flag13 then
									flag12 = true
									break
								end
							end

							if flag12 then
								for _, v23 in ipairs(tbl7.PlayerList) do
									local v24, v25, v26 = tbl12.Char(v23)

									if v25 and v26 and v26.Health > 0 then
										players[#players + 1] = v23
										positions[#positions + 1] = v25.Position
									end
								end
							end

							for k in tbl7.PCLDParts, nil, nil do
								if not k.Parent or k.Name ~= "PlayerCharacterLocationDetector" then
									local v23 = pcldTracker.PartStates[k]

									if v23 then
										tbl12.ClearPCLDAssignment(k, v23)
									end

									pcldTracker.PartStates[k] = nil
									tbl7.PCLDParts[k] = nil
								else
									local tbl18 = pcldTracker.PartStates[k]

									if not tbl18 then
										tbl18 = { Hits = 0 }
										pcldTracker.PartStates[k] = tbl18
									end

									if tbl12.IsWaitingPCLD(k) then
										if tbl18.Player or tbl18.Candidate or tbl18.Hits ~= 0 or k:GetAttribute("CurrentlyAssignedTo") ~= nil then
											tbl12.ClearPCLDAssignment(k, tbl18)
										end
									else
										if tbl8.PCLDESP and tbl12.CreatePCLDESP then
											tbl12.CreatePCLDESP(k)
										end

										local position, huge, huge2, v23, n36, v24, v25, v26, flag13, pcldesp, updatePCLDESP

										if tbl18.Player then
											if tbl18.Player.Parent == Players then
												tbl7.PCLD[tbl18.Player] = k

												if tbl8.PCLDESP and tbl12.UpdatePCLDESP then
													tbl12.UpdatePCLDESP(k)
												end
											else
												tbl12.ClearPCLDAssignment(k, tbl18)
												position = k.Position
												huge = math.huge
												huge2 = math.huge
												v23 = nil

												for i, player in ipairs(players) do
													n36 = position - positions[i]
													v24 = n36:Dot(n36)

													if v24 < huge then
														huge2 = huge
														v23 = player
														huge = v24
													elseif v24 < huge2 then
														huge2 = v24
													end
												end

												v25 = math.sqrt(huge)
												v26 = math.sqrt(huge2)
												flag13 = v23 and not tbl7.PCLD[v23] and v25 <= pcldTracker.MaxDistance and v26 - v25 >= pcldTracker.MinMargin

												if flag13 then
													if tbl18.Candidate == v23 then
														tbl18.Hits = tbl18.Hits + 1
													else
														tbl18.Candidate = v23
														tbl18.Hits = 1
													end

													if tbl18.Hits >= pcldTracker.Confirmations then
														tbl18.Player = v23
														tbl18.Candidate = nil
														tbl18.Hits = 0
														tbl7.PCLD[v23] = k
														k:SetAttribute("CurrentlyAssignedTo", v23.Name)
														pcldesp = tbl8.PCLDESP
														updatePCLDESP = pcldesp and tbl12.UpdatePCLDESP

														if updatePCLDESP then
															tbl12.UpdatePCLDESP(k)
														end
													end
												else
													tbl18.Candidate = nil
													tbl18.Hits = 0
												end
											end
										else
											position = k.Position
											huge = math.huge
											huge2 = math.huge
											v23 = nil

											for i, player in ipairs(players) do
												n36 = position - positions[i]
												v24 = n36:Dot(n36)

												if v24 < huge then
													huge2 = huge
													v23 = player
													huge = v24
												elseif v24 < huge2 then
													huge2 = v24
												end
											end

											v25 = math.sqrt(huge)
											v26 = math.sqrt(huge2)
											flag13 = v23 and not tbl7.PCLD[v23] and v25 <= pcldTracker.MaxDistance and v26 - v25 >= pcldTracker.MinMargin

											if flag13 then
												if tbl18.Candidate == v23 then
													tbl18.Hits = tbl18.Hits + 1
												else
													tbl18.Candidate = v23
													tbl18.Hits = 1
												end

												if tbl18.Hits >= pcldTracker.Confirmations then
													tbl18.Player = v23
													tbl18.Candidate = nil
													tbl18.Hits = 0
													tbl7.PCLD[v23] = k
													k:SetAttribute("CurrentlyAssignedTo", v23.Name)
													pcldesp = tbl8.PCLDESP
													updatePCLDESP = pcldesp and tbl12.UpdatePCLDESP

													if updatePCLDESP then
														tbl12.UpdatePCLDESP(k)
													end
												end
											else
												tbl18.Candidate = nil
												tbl18.Hits = 0
											end
										end
									end
								end
							end
						end

						tbl12.DetectPCLD = function(arg)
							return tbl7.PCLD[arg]
						end

						espConfig = tbl7.ESPConfig

						do
							local tbl18 = {}

							tbl16 = {
								Players = espConfig.Player.Objects,
								PCLDs = espConfig.Server.Objects,
								Stickies = espConfig.Sticky.Objects,
								BlackHoles = espConfig.Blackhole.Objects,
							}

							tbl17 = {}
							local obj2 = setmetatable({}, { __mode = "k" })
							obj = setmetatable({}, { __mode = "k" })
							local obj3 = setmetatable({}, { __mode = "k" })

							local function fn23(arg)
								if typeof(arg) == "Instance" then
									arg:Destroy()
								end
							end

							fn21 = function(arg, arg2, arg3)
								if arg[arg2] ~= arg3 then
									return
								end
								arg[arg2] = nil
								local v23 = ipairs
								local connections = arg3.Connections or {}

								for _, connection in v23(connections) do
									connection:Disconnect()
								end

								local v24 = ipairs
								local instances = arg3.Instances or {}

								for _, instance in v24(instances) do
									fn23(instance)
								end
							end

							tbl12.GetFont = function(arg)
								local str5 = arg or "Arial"
								if tbl18[str5] then
									return tbl18[str5]
								end
								local str6 = str5:gsub("|?Bold$", "")
								local flag12 = str5:match("Bold$") ~= nil

								local ok, result = pcall(function()
									return Enum.Font[str6]
								end)

								if not (ok and result) then
									result = Enum.Font.Arial
								end

								local bold

								if flag12 then
									bold = Enum.FontWeight.Bold
								else
									bold = Enum.FontWeight.Regular
								end

								local font = Font.new(Font.fromEnum(result).Family, bold)
								tbl18[str5] = font
								return font
							end

							tbl12.GetPlayerIcon = function(arg, arg2)
								local ok, result = pcall(function()
									return Players:GetUserThumbnailAsync(arg.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize["Size" .. (arg2 or "48x48")])
								end)

								local v23

								if ok then
									v23 = result
								else
									v23 = nil
								end

								return v23
							end

							fn22 = function(arg, arg2)
								if obj3[arg2.Player] == arg2 then
									obj3[arg2.Player] = nil
								end

								fn21(tbl16.Players, arg, arg2)
							end

							tbl12.UpdatePlayerESP = function(arg)
								local v23 = tbl16.Players[arg]
								local player = espConfig.Player
								if not v23 then
									return
								end

								if not (arg.Parent and v23.Player.Parent and v23.Head.Parent and v23.Highlight.Parent and v23.Billboard.Parent) then
									return fn22(arg, v23)
								end
								local playerESP = tbl8.PlayerESP
								v23.Highlight.FillColor = player.FillColor
								v23.Highlight.OutlineColor = player.OutlineColor
								v23.Highlight.FillTransparency = player.FillTransparency
								v23.Highlight.OutlineTransparency = player.OutlineTransparency
								v23.Highlight.Enabled = playerESP and player.HighlightEnabled
								v23.Billboard.StudsOffset = Vector3.new(0, player.NameYOffset, 0)
								v23.Billboard.Enabled = playerESP and player.NameEnabled
								v23.Icon.Size = UDim2.fromOffset(player.NameIconSize, player.NameIconSize)
								v23.Icon.Visible = player.NameShowIcon and v23.Thumbnail ~= nil
								v23.Label.TextSize = player.NameSize
								v23.Label.TextColor3 = player.NameColor
								v23.Label.TextTransparency = player.NameTransparency
								v23.Label.TextStrokeColor3 = player.NameOutlineColor
								v23.Label.TextStrokeTransparency = player.NameOutlineTransparency
								v23.Label.FontFace = tbl12.GetFont(player.NameFont)
							end

							tbl12.RemovePlayerESP = function(arg)
								local v23 = obj[arg]

								if v23 then
									v23:Disconnect()
								end

								local v24 = obj2
								obj[arg] = nil
								v24[arg] = nil

								for k, player in pairs(tbl16.Players) do
									if player.Player == arg then
										fn22(k, player)
									end
								end
							end

							tbl12.CreatePlayerESP = function(arg)
								local v23 = obj2[arg]
								if v23 then
									task.spawn(v23, arg.Character)
									return
								end
								local v24 = nil

								task.spawn(function()
									v24 = tbl12.GetPlayerIcon(arg)
									local v25 = obj3[arg]

									if v25 then
										v25.Thumbnail = v24

										if v24 and v25.Icon.Image ~= v24 then
											v25.Icon.Image = v24
										end

										tbl12.UpdatePlayerESP(v25.Character)
									end
								end)

								local function fn24(character)
									if flag11 or not tbl8.PlayerESP or not character then
										return
									end

									if tbl16.Players[character] then
										return
									end
									local head = character:WaitForChild("Head", 5)
									if not head or flag11 or not tbl8.PlayerESP or not character.Parent then
										return
									end
									local clone = highlight:Clone()
									clone.Adornee = character
									clone.Parent = character
									local billboardGui = Instance.new("BillboardGui")
									billboardGui.Enabled = false
									billboardGui.Adornee = head
									billboardGui.Size = UDim2.fromOffset(200, 150)
									billboardGui.SizeOffset = Vector2.new(0, 0.5)
									billboardGui.AlwaysOnTop = true
									billboardGui.Parent = screenGui
									local uiListLayout = Instance.new("UIListLayout")
									uiListLayout.FillDirection = Enum.FillDirection.Vertical
									uiListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
									uiListLayout.VerticalAlignment = Enum.VerticalAlignment.Bottom
									uiListLayout.Parent = billboardGui
									local imageLabel = Instance.new("ImageLabel")
									imageLabel.BackgroundTransparency = 1
									imageLabel.Size = UDim2.fromOffset(35, 35)
									imageLabel.ScaleType = Enum.ScaleType.Crop
									imageLabel.Image = v24 or ""
									imageLabel.Parent = billboardGui
									local textLabel = Instance.new("TextLabel")
									textLabel.BackgroundTransparency = 1
									textLabel.Size = UDim2.new(1, 0, 0, 0)
									textLabel.AutomaticSize = Enum.AutomaticSize.Y
									textLabel.TextStrokeTransparency = 0
									textLabel.TextXAlignment = Enum.TextXAlignment.Center
									textLabel.TextYAlignment = Enum.TextYAlignment.Top
									textLabel.Text = tbl12.FormatPlayer(arg, true)
									textLabel.Parent = billboardGui

									local tbl19 = {
										Character = character,
										Player = arg,
										Head = head,
										Highlight = clone,
										Billboard = billboardGui,
										Icon = imageLabel,
										Label = textLabel,
										Thumbnail = v24,
										Connections = {},
										Instances = { billboardGui, clone },
									}

									tbl16.Players[character] = tbl19
									obj3[arg] = tbl19

									tbl19.Connections[1] = character.AncestryChanged:Connect(function(child, parent2)
										if not parent2 then
											fn22(character, tbl19)
										end
									end)

									tbl12.UpdatePlayerESP(character)
								end

								obj2[arg] = fn24
								obj[arg] = arg.CharacterAdded:Connect(fn24)
								task.spawn(fn24, arg.Character)
							end
						end
					end

					local fn23, fn24

					do
						fn23 = function(arg, arg2)
							tbl17[arg2] = nil
							fn21(tbl16.PCLDs, arg, arg2)

							if tbl12.SetSmoothPCLDConnection then
								tbl12.SetSmoothPCLDConnection()
							end
						end

						tbl12.UpdatePCLDESP = function(arg)
							local v23 = tbl16.PCLDs[arg]
							local server = espConfig.Server
							if not v23 then
								return
							end

							if not (arg.Parent and v23.Clone.Parent and v23.Box.Parent and v23.Billboard.Parent) then
								return fn23(arg, v23)
							end
							local v24 = tbl12.IsWaitingPCLD(arg)
							v23.Waiting = v24
							v23.Box.Color3 = server.OutlineColor
							v23.Box.SurfaceColor3 = server.FillColor
							v23.Box.Transparency = server.OutlineTransparency
							v23.Box.SurfaceTransparency = server.FillTransparency
							v23.Box.LineThickness = server.OutlineThickness
							v23.Box.Visible = tbl8.PCLDESP and not v24
							local player = tbl7.PCLDTracker.PartStates[arg]
							player = player and player.Player
							local value = player and select(2, tbl12.Char(player))
							value = value and value.Position - arg.Position
							local flag12 = server.NameEnabled and tbl8.PCLDESP and not v24 and value and value:Dot(value) >= server.NameDistance * server.NameDistance
							v23.Billboard.StudsOffset = Vector3.new(0, server.NameYOffset, 0)
							v23.Billboard.Enabled = flag12 == true
							if not flag12 then
								return
							end

							if v23.CachedPlayer ~= player then
								v23.CachedPlayer = player
								v23.CachedName = tbl12.FormatPlayer(player, true, true)
							end

							v23.NameLabel.Text = v23.CachedName
							v23.NameLabel.TextSize = server.NameSize
							v23.NameLabel.TextColor3 = server.NameColor
							v23.NameLabel.TextTransparency = server.NameTransparency
							v23.NameLabel.TextStrokeColor3 = server.NameOutlineColor
							v23.NameLabel.TextStrokeTransparency = server.NameOutlineTransparency
							v23.NameLabel.FontFace = tbl12.GetFont(server.NameFont)
						end

						tbl12.CreatePCLDESP = function(arg)
							if not arg or not arg.Parent or arg.Name ~= "PlayerCharacterLocationDetector" or tbl12.IsWaitingPCLD(arg) then
								return
							end
							tbl7.PCLDParts[arg] = true
							if tbl16.PCLDs[arg] then
								return
							end
							local clone = arg:Clone()
							clone:ClearAllChildren()
							clone.Name = "SmoothPCLD"
							clone.CFrame = arg.CFrame
							clone.Anchored = true
							clone.CanCollide = false
							clone.CanTouch = false
							clone.CanQuery = false
							clone.CastShadow = false
							clone.Transparency = 1
							clone.Parent = arg.Parent
							local clone2 = selectionBox:Clone()
							clone2.Adornee = clone
							clone2.Visible = not tbl12.IsWaitingPCLD(arg)
							clone2.Parent = clone
							local billboardGui = Instance.new("BillboardGui")
							billboardGui.Enabled = false
							billboardGui.Adornee = clone
							billboardGui.Size = UDim2.fromOffset(200, 150)
							billboardGui.SizeOffset = Vector2.new(0, 0.5)
							billboardGui.AlwaysOnTop = true
							billboardGui.Parent = screenGui
							local textLabel = Instance.new("TextLabel")
							textLabel.BackgroundTransparency = 1
							textLabel.Size = UDim2.new(1, 0, 0, 0)
							textLabel.AutomaticSize = Enum.AutomaticSize.Y
							textLabel.Position = UDim2.fromScale(0, 1)
							textLabel.AnchorPoint = Vector2.new(0, 1)
							textLabel.TextStrokeTransparency = 0
							textLabel.TextXAlignment = Enum.TextXAlignment.Center
							textLabel.TextYAlignment = Enum.TextYAlignment.Top
							textLabel.Parent = billboardGui
							local now3 = tick()

							local tbl18 = {
								Part = arg,
								Clone = clone,
								Box = clone2,
								Billboard = billboardGui,
								NameLabel = textLabel,
								From = clone.CFrame,
								Target = arg.CFrame,
								StartedAt = now3,
								LastUpdate = now3,
								Duration = 0.32,
								Waiting = false,
								Moving = false,
								Connections = {},
								Instances = { billboardGui, clone },
							}

							tbl16.PCLDs[arg] = tbl18

							tbl18.Connections[1] = arg:GetPropertyChangedSignal("CFrame"):Connect(function()
								if flag11 or not clone.Parent then
									return
								end
								local v23 = tbl12.IsWaitingPCLD(arg)
								tbl18.Waiting = v23

								if v23 then
									tbl18.Moving = false
									tbl17[tbl18] = nil
								else
									if not tbl8.PCLDESP then
										tbl12.UpdatePCLDESP(arg)
										return
									end

									if not tbl8.SmoothPCLD then
										local cFrame2 = arg.CFrame
										tbl18.Moving = false
										tbl17[tbl18] = nil
										clone.CFrame = cFrame2
										tbl18.From = cFrame2
										tbl18.Target = cFrame2
										tbl18.LastUpdate = tick()
									elseif arg.CFrame ~= tbl18.Target then
										local now4 = tick()
										local n36 = now4 - tbl18.LastUpdate
										tbl18.From = clone.CFrame
										tbl18.Target = arg.CFrame
										tbl18.StartedAt = now4
										tbl18.LastUpdate = now4
										tbl18.Duration = math.clamp(n36 * 1.05, 0.08, 0.5)
										tbl18.Moving = true
										tbl17[tbl18] = true
										tbl12.SetSmoothPCLDConnection()
									end
								end

								tbl12.UpdatePCLDESP(arg)
							end)

							tbl18.Connections[2] = arg.AncestryChanged:Connect(function(child, parent2)
								if not parent2 then
									fn23(arg, tbl18)
								end
							end)

							tbl12.UpdatePCLDESP(arg)
						end

						tbl12.SnapPCLDESP = function()
							for k, pclD in pairs(tbl16.PCLDs) do
								if k.Parent and pclD.Clone.Parent then
									pclD.Moving = false

									if not tbl12.IsWaitingPCLD(k) then
										pclD.Clone.CFrame = k.CFrame
										pclD.From = k.CFrame
										pclD.Target = k.CFrame
										pclD.LastUpdate = tick()
									end

									tbl12.UpdatePCLDESP(k)
								else
									fn23(k, pclD)
								end
							end

							table.clear(tbl17)
							tbl12.SetSmoothPCLDConnection()
						end

						fn24 = function(arg, arg2)
							fn21(tbl16.Stickies, arg, arg2)
						end

						do
							local function fn25(arg, adornee)
								if not adornee:IsA("BasePart") or adornee.Transparency >= 1 or adornee.LocalTransparencyModifier >= 1 or arg.Parts[adornee] then
									return
								end
								local boxHandleAdornment = Instance.new("BoxHandleAdornment")
								local tbl18 = {}
								local n36 = adornee.Size * 0.5

								local function fn26(arg2, arg3)
									local lineHandleAdornment = Instance.new("LineHandleAdornment")
									local v23 = adornee
									local cframe = CFrame.lookAt(arg2, arg3)
									local magnitude = (arg3 - arg2).Magnitude
									lineHandleAdornment.Adornee = v23
									lineHandleAdornment.CFrame = cframe
									lineHandleAdornment.Length = magnitude
									local v24 = screenGui
									lineHandleAdornment.Thickness = 2
									lineHandleAdornment.AlwaysOnTop = true
									lineHandleAdornment.ZIndex = 2
									lineHandleAdornment.Parent = v24
									table.insert(tbl18, lineHandleAdornment)
									table.insert(arg.Instances, lineHandleAdornment)
								end

								for i = -1, 1, 2 do
									for i2 = -1, 1, 2 do
										local vector = Vector3.new
										local x = n36.X
										local n37 = i * n36.Y
										local n38 = i2 * n36.Z
										fn26(Vector3.new(-n36.X, i * n36.Y, i2 * n36.Z), vector(x, n37, n38))
										local vector2 = Vector3.new
										local n39 = i * n36.X
										local y = n36.Y
										local n40 = i2 * n36.Z
										fn26(Vector3.new(i * n36.X, -n36.Y, i2 * n36.Z), vector2(n39, y, n40))
										local vector3 = Vector3.new
										local n41 = i * n36.X
										local n42 = i2 * n36.Y
										local z = n36.Z
										fn26(Vector3.new(i * n36.X, i2 * n36.Y, -n36.Z), vector3(n41, n42, z))
									end
								end

								local size = adornee.Size
								boxHandleAdornment.Adornee = adornee
								boxHandleAdornment.Size = size
								boxHandleAdornment.AlwaysOnTop = true
								boxHandleAdornment.ZIndex = 1
								boxHandleAdornment.Parent = screenGui
								arg.Parts[adornee] = { tbl18, boxHandleAdornment }
								table.insert(arg.Instances, boxHandleAdornment)
							end

							tbl12.UpdateStickyESP = function(arg)
								local v23 = tbl16.Stickies[arg]
								local sticky = espConfig.Sticky
								if not v23 then
									return
								end

								if not (arg.Parent and v23.StickyWeld.Parent) then
									return fn24(arg, v23)
								end
								local part1 = v23.StickyWeld.Part1
								local character = localPlayer.Character
								local flag12 = tbl8.StickyESP and part1 ~= nil

								if flag12 then
									flag12 = not (character and part1:IsDescendantOf(character))
								end

								for k, part4 in pairs(v23.Parts) do
									if not k.Parent then
										v23.Parts[k] = nil
									else
										local visible = flag12 and k.Transparency < 1 and k.LocalTransparencyModifier < 1
										local v24 = part4[1]
										local v25 = part4[2]
										local visible2 = visible and sticky.OutlineTransparency < 1
										visible = visible and sticky.FillTransparency < 1

										for _, v26 in ipairs(v24) do
											if v26.Visible ~= visible2 then
												v26.Visible = visible2
											end

											if v26.Color3 ~= sticky.OutlineColor then
												v26.Color3 = sticky.OutlineColor
											end

											if v26.Transparency ~= sticky.OutlineTransparency then
												v26.Transparency = sticky.OutlineTransparency
											end

											if v26.Thickness ~= sticky.OutlineThickness then
												v26.Thickness = sticky.OutlineThickness
											end
										end

										if v25.Visible ~= visible then
											v25.Visible = visible
										end

										if v25.Color3 ~= sticky.FillColor then
											v25.Color3 = sticky.FillColor
										end

										if v25.Transparency ~= sticky.FillTransparency then
											v25.Transparency = sticky.FillTransparency
										end
									end
								end
							end

							tbl12.CreateStickyESP = function(arg)
								if tbl16.Stickies[arg] then
									return
								end
								local stickyPart = arg:WaitForChild("StickyPart", 0.15)
								stickyPart = stickyPart and stickyPart:WaitForChild("StickyWeld", 0.15)
								if not stickyPart or flag11 or not tbl8.StickyESP or not arg.Parent or tbl16.Stickies[arg] then
									return
								end
								local tbl18 = { StickyWeld = stickyPart, Parts = {}, Connections = {}, Instances = {} }
								tbl16.Stickies[arg] = tbl18

								for _, v23 in arg:QueryDescendants("BasePart") do
									fn25(tbl18, v23)
								end

								tbl18.Connections[1] = stickyPart:GetPropertyChangedSignal("Part1"):Connect(function()
									tbl12.UpdateStickyESP(arg)
								end)

								tbl18.Connections[2] = arg.AncestryChanged:Connect(function(child, parent2)
									if not parent2 then
										fn24(arg, tbl18)
									end
								end)

								tbl18.Connections[3] = stickyPart.Destroying:Connect(function()
									fn24(arg, tbl18)
								end)

								tbl18.Connections[4] = arg.DescendantAdded:Connect(function(descendant)
									fn25(tbl18, descendant)
									tbl12.UpdateStickyESP(arg)
								end)

								tbl12.UpdateStickyESP(arg)
							end
						end
					end

					do
						local function fn25(arg, arg2)
							fn21(tbl16.BlackHoles, arg, arg2)
						end

						tbl12.UpdateBlackHoleESP = function(arg)
							local v23 = tbl16.BlackHoles[arg]
							local blackhole = espConfig.Blackhole
							if not v23 then
								return
							end

							if not (arg.Parent and v23.Hole.Parent and v23.Highlight.Parent and v23.Billboard.Parent) then
								return fn25(arg, v23)
							end
							v23.Highlight.FillColor = blackhole.FillColor
							v23.Highlight.OutlineColor = blackhole.OutlineColor
							v23.Highlight.FillTransparency = blackhole.FillTransparency
							v23.Highlight.OutlineTransparency = blackhole.OutlineTransparency
							v23.Highlight.Enabled = tbl8.BlackholeESP
							v23.Billboard.StudsOffset = Vector3.new(0, blackhole.NameYOffset, 0)
							v23.Billboard.Enabled = tbl8.BlackholeESP and blackhole.NameEnabled
							v23.Label.TextSize = blackhole.NameSize
							v23.Label.TextColor3 = blackhole.NameColor
							v23.Label.TextTransparency = blackhole.NameTransparency
							v23.Label.TextStrokeColor3 = blackhole.NameOutlineColor
							v23.Label.TextStrokeTransparency = blackhole.NameOutlineTransparency
							v23.Label.FontFace = tbl12.GetFont(blackhole.NameFont)
						end

						tbl12.CreateBlackHoleESP = function(arg, arg2)
							if flag11 or not arg then
								return
							end

							if tbl16.BlackHoles[arg] then
								return tbl16.BlackHoles[arg]
							end
							local hole = arg:WaitForChild("Hole", 1.5)
							if not hole then
								return
							end
							local clone = highlight:Clone()
							clone.Name = "Blackhole"
							clone.Adornee = hole
							clone.Parent = hole
							local billboardGui = Instance.new("BillboardGui")
							billboardGui.Name = "BlackholeName"
							billboardGui.Enabled = false
							billboardGui.Size = UDim2.fromOffset(220, 60)
							billboardGui.SizeOffset = Vector2.new(0, 0.5)
							billboardGui.StudsOffset = Vector3.new(0, 5, 0)
							billboardGui.AlwaysOnTop = true
							billboardGui.Adornee = hole
							billboardGui.Parent = screenGui
							local textLabel = Instance.new("TextLabel")
							textLabel.Name = "Label"
							textLabel.BackgroundTransparency = 1
							textLabel.Size = UDim2.fromScale(1, 1)
							textLabel.TextStrokeTransparency = 0
							textLabel.TextXAlignment = Enum.TextXAlignment.Center
							textLabel.TextYAlignment = Enum.TextYAlignment.Center
							textLabel.Text = "Kicked: " .. tbl12.FormatPlayer(arg2, true)
							textLabel.Parent = billboardGui

							local tbl18 = {
								Hole = hole,
								Player = arg2,
								Highlight = clone,
								Billboard = billboardGui,
								Label = textLabel,
								Connections = {},
								Instances = { billboardGui, clone },
							}

							tbl16.BlackHoles[arg] = tbl18

							tbl18.Connections[1] = arg.AncestryChanged:Connect(function(child, parent2)
								if not parent2 then
									fn25(arg, tbl18)
								end
							end)

							tbl12.UpdateBlackHoleESP(arg)
							return tbl18
						end

						tbl12.RefreshESP = function(arg)
							task.spawn(function()
								if arg == "Player" then
									for _, v23 in ipairs(tbl7.PlayerList) do
										if v23 ~= localPlayer then
											tbl12.CreatePlayerESP(v23)
										end
									end
								elseif arg == "Server" then
									for k in pairs(tbl7.PCLDParts) do
										if not k.Parent or k.Name ~= "PlayerCharacterLocationDetector" then
											tbl7.PCLDParts[k] = nil
										elseif not tbl12.IsWaitingPCLD(k) then
											tbl12.CreatePCLDESP(k)
										end
									end
								elseif arg == "Sticky" then
									for _, v23 in ipairs(workspace:QueryDescendants("BasePart#StickyPart")) do
										if v23.Parent then
											tbl12.CreateStickyESP(v23.Parent)
										end
									end
								end

								tbl12.UpdateESP(arg)
							end)
						end

						tbl12.UpdateESP = function(arg)
							local v23 = espConfig[arg]
							if not v23 then
								return
							end

							for k in pairs(v23.Objects) do
								if arg == "Player" then
									tbl12.UpdatePlayerESP(k)
								elseif arg == "Server" then
									tbl12.UpdatePCLDESP(k)
								elseif arg == "Sticky" then
									tbl12.UpdateStickyESP(k)
								elseif arg == "Blackhole" then
									tbl12.UpdateBlackHoleESP(k)
								end
							end
						end

						tbl12.UpdateSmoothPCLD = function()
							local now3 = tick()

							for k in pairs(tbl17) do
								if k.Moving and k.Part.Parent and k.Clone.Parent then
									local n36 = math.clamp((now3 - k.StartedAt) / k.Duration, 0, 1)
									k.Clone.CFrame = k.From:Lerp(k.Target, n36)

									if n36 >= 1 then
										k.Moving = false
										tbl17[k] = nil
									end
								else
									tbl17[k] = nil
								end
							end

							if not next(tbl17) then
								tbl12.SetSmoothPCLDConnection()
							end
						end

						tbl12.SetSmoothPCLDConnection = function()
							if not tbl8.PCLDESP or not tbl8.SmoothPCLD then
								for k in pairs(tbl17) do
									k.Moving = false
								end

								table.clear(tbl17)
							end

							tbl12.SetRuntimeConnection("SmoothPCLD", RunService.RenderStepped, tbl8.PCLDESP and tbl8.SmoothPCLD and next(tbl17) ~= nil, tbl12.UpdateSmoothPCLD)
						end

						tbl12.CleanupESP = function()
							table.clear(tbl17)
							tbl12.SetSmoothPCLDConnection()

							for k in pairs(obj) do
								tbl12.RemovePlayerESP(k)
							end

							for k, player in pairs(tbl16.Players) do
								fn22(k, player)
							end

							for k, pclD in pairs(tbl16.PCLDs) do
								fn23(k, pclD)
							end

							for k, sticky in pairs(tbl16.Stickies) do
								fn24(k, sticky)
							end

							for k, blackHole in pairs(tbl16.BlackHoles) do
								fn25(k, blackHole)
							end
						end
					end
				end
			end

			do
				tbl12.UpdateCustomCrosshair = function()
					local customCrosshair = tbl7.CustomCrosshair
					local flag12 = tbl8.CustomCrosshair and type(tbl9.CustomCrosshairImage) == "string" and tbl9.CustomCrosshairImage ~= ""

					tbl12.SetRuntimeConnection("CustomCrosshairAdded", playerGui.ChildAdded, flag12, function(arg)
						if arg:IsA("ScreenGui") and arg.Name == "Crosshairs" then
							tbl12.UpdateCustomCrosshair()
						end
					end)

					if not flag12 then
						tbl12.SetRuntimeConnection("CustomCrosshairEnabled", playerGui.ChildAdded, false)
						customCrosshair.GameScreen = nil

						if customCrosshair.Gui then
							customCrosshair.Gui:Destroy()
							customCrosshair.Gui = nil
							customCrosshair.Image = nil
						end

						for k, v23 in customCrosshair.Hidden, nil, nil do
							if k.Parent then
								k.Enabled = v23
							end

							customCrosshair.Hidden[k] = nil
						end

						return
					end

					if not (customCrosshair.Gui and customCrosshair.Gui.Parent) then
						local screenGui2 = Instance.new("ScreenGui")
						local imageLabel = Instance.new("ImageLabel")
						screenGui2.Name = "RSCCustomCrosshair"
						screenGui2.IgnoreGuiInset = true
						screenGui2.ResetOnSpawn = false
						screenGui2.DisplayOrder = 100
						local udim2 = UDim2.fromScale(0.5, 0.5)
						imageLabel.Name = "Crosshair"
						imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
						imageLabel.Position = udim2
						local fit = Enum.ScaleType.Fit
						imageLabel.BackgroundTransparency = 1
						imageLabel.BorderSizePixel = 0
						imageLabel.ScaleType = fit
						imageLabel.Parent = screenGui2
						screenGui2.Parent = playerGui
						customCrosshair.Gui = screenGui2
						customCrosshair.Image = imageLabel
					end

					customCrosshair.Image.Image = tbl9.CustomCrosshairImage
					customCrosshair.Image.ImageColor3 = tbl9.CustomCrosshairColor
					customCrosshair.Image.Size = UDim2.fromOffset(tbl9.CustomCrosshairSize, tbl9.CustomCrosshairSize)
					local crosshairs = playerGui:FindFirstChild("Crosshairs")

					if crosshairs and crosshairs:IsA("ScreenGui") then
						if customCrosshair.Hidden[crosshairs] == nil then
							customCrosshair.Hidden[crosshairs] = crosshairs.Enabled
						end

						crosshairs.Enabled = false

						if customCrosshair.GameScreen ~= crosshairs then
							tbl12.SetRuntimeConnection("CustomCrosshairEnabled", crosshairs:GetPropertyChangedSignal("Enabled"), false)
							customCrosshair.GameScreen = crosshairs

							tbl12.SetRuntimeConnection("CustomCrosshairEnabled", crosshairs:GetPropertyChangedSignal("Enabled"), true, function()
								if tbl8.CustomCrosshair and crosshairs.Enabled then
									crosshairs.Enabled = false
								end
							end)
						end
					elseif customCrosshair.GameScreen then
						tbl12.SetRuntimeConnection("CustomCrosshairEnabled", playerGui.ChildAdded, false)
						customCrosshair.GameScreen = nil
					end
				end

				tbl12.SetCustomCrosshair = function(customCrosshair)
					tbl8.CustomCrosshair = customCrosshair
					tbl12.UpdateCustomCrosshair()
				end

				local tbl16 = {}

				local function fn21(arg, arg2)
					tbl7.CharacterHighlightParts[arg] = nil
					arg2.MaterialConnection:Disconnect()
					arg2.ColorConnection:Disconnect()

					if arg.Parent then
						local color = arg2.Color
						local physical = arg2.Physical
						arg.Material = arg2.Material
						arg.Color = color
						arg.CustomPhysicalProperties = physical
					end
				end

				tbl12.ApplyCharacterHighlightPart = function(arg, affect)
					if not (arg and arg:IsA("BasePart")) then
						return
					end
					local tbl17 = tbl7.CharacterHighlightParts[arg]

					if arg.Parent and not flag11 and tbl8.ForcefieldChar and tbl7.CharacterHighlightAffects[affect] then
						if not tbl17 then
							tbl17 = {
								Material = arg.Material,
								Color = arg.Color,
								Affect = affect,
								Physical = arg.CustomPhysicalProperties,
								CurrentPhysical = arg.CurrentPhysicalProperties,
							}

							tbl7.CharacterHighlightParts[arg] = tbl17

							tbl17.MaterialConnection = arg:GetPropertyChangedSignal("Material"):Connect(function()
								if arg.Material ~= Enum.Material.ForceField and tbl7.CharacterHighlightParts[arg] == tbl17 and not flag11 and tbl8.ForcefieldChar and tbl7.CharacterHighlightAffects[tbl17.Affect] then
									arg.Material = Enum.Material.ForceField
								end
							end)

							tbl17.ColorConnection = arg:GetPropertyChangedSignal("Color"):Connect(function()
								if arg.Color ~= tbl9.ForcefieldColor and tbl7.CharacterHighlightParts[arg] == tbl17 and not flag11 and tbl8.ForcefieldChar and tbl7.CharacterHighlightAffects[tbl17.Affect] then
									arg.Color = tbl9.ForcefieldColor
								end
							end)
						end

						tbl17.Affect = affect

						if affect == "Character" and arg.CustomPhysicalProperties ~= tbl17.CurrentPhysical then
							arg.CustomPhysicalProperties = tbl17.CurrentPhysical
						end

						if arg.Material ~= Enum.Material.ForceField then
							arg.Material = Enum.Material.ForceField
						end

						if arg.Color ~= tbl9.ForcefieldColor then
							arg.Color = tbl9.ForcefieldColor
						end
					elseif tbl17 then
						fn21(arg, tbl17)
					end
				end

				tbl12.UpdateCharacterHighlightAffects = function()
					for k, characterHighlightPart in pairs(tbl7.CharacterHighlightParts) do
						if not k.Parent or flag11 or not tbl8.ForcefieldChar or not tbl7.CharacterHighlightAffects[characterHighlightPart.Affect] then
							fn21(k, characterHighlightPart)
						end
					end

					if not flag11 and tbl8.ForcefieldChar and tbl7.CharacterHighlightAffects["Coconut Forms"] then
						for _, v23 in tbl7.CoconutForms.Models, nil, nil do
							for _, v24 in v23:QueryDescendants("BasePart") do
								tbl12.ApplyCharacterHighlightPart(v24, "Coconut Forms")
							end
						end
					end

					if not flag11 and tbl8.ForcefieldChar and tbl7.CharacterHighlightAffects["Anti Kick"] and v18 then
						for _, v23 in v18:GetChildren() do
							tbl12.ApplyCharacterHighlightPart(v23, "Anti Kick")
						end
					end

					tbl12.UpdateChinaHat()
				end

				tbl12.ClearChinaHat = function()
					if tbl16.Hat then
						tbl16.Hat:Destroy()
						tbl16.Hat = nil
					end
				end

				tbl12.UpdateChinaHat = function()
					local hat = tbl16.Hat
					if not (hat and hat.Parent) then
						return
					end
					local chinaHat = tbl8.ForcefieldChar and tbl7.CharacterHighlightAffects["China Hat"]
					local forceField

					if chinaHat then
						forceField = Enum.Material.ForceField
					else
						forceField = Enum.Material.Neon
					end

					local forcefieldColor

					if chinaHat then
						forcefieldColor = tbl9.ForcefieldColor
					else
						forcefieldColor = tbl9.ChinaHatColor
					end

					local transparency

					if chinaHat then
						transparency = 0
					else
						transparency = 0.75
					end

					if hat.Material ~= forceField then
						hat.Material = forceField
					end

					if hat.Color ~= forcefieldColor then
						hat.Color = forcefieldColor
					end

					if hat.Transparency ~= transparency then
						hat.Transparency = transparency
					end
				end

				tbl12.CreateChinaHat = function(arg)
					local head = arg and arg:WaitForChild("Head", 5)
					if flag11 or not tbl8.ChinaHat or arg ~= localPlayer.Character or not head then
						return
					end
					tbl12.ClearChinaHat()
					local meshPart = Instance.new("MeshPart")
					tbl16.Hat = meshPart
					meshPart.Name = "RSCChinaHat"
					meshPart.MeshId = "rbxassetid://1778999"
					meshPart.Size = Vector3.new(3, 0.7, 3)
					meshPart.Transparency = 0.75
					meshPart.CanCollide = false
					meshPart.CanTouch = false
					meshPart.CanQuery = false
					meshPart.Massless = true
					meshPart.CastShadow = false
					meshPart.DoubleSided = true
					local v23 = currentCamera
					meshPart.CFrame = head.CFrame * CFrame.new(0, 1, 0)
					meshPart.Parent = v23
					local weldConstraint = Instance.new("WeldConstraint", meshPart)
					weldConstraint.Part0 = meshPart
					weldConstraint.Part1 = head
					tbl12.UpdateChinaHat()
				end

				tbl12.SetChinaHat = function(chinaHat)
					tbl8.ChinaHat = chinaHat

					tbl12.SetRuntimeConnection("ChinaHatRespawn", localPlayer.CharacterAdded, chinaHat, function(arg)
						task.defer(tbl12.CreateChinaHat, arg)
					end)

					tbl12.SetRuntimeConnection("ChinaHatVisibility", RunService.RenderStepped, chinaHat, function()
						if tbl16.Hat then
							local hat = tbl16.Hat
							local localTransparencyModifier

							if (currentCamera.CFrame.Position - currentCamera.Focus.Position).Magnitude <= 0.6 then
								localTransparencyModifier = 1
							else
								localTransparencyModifier = 0
							end

							hat.LocalTransparencyModifier = localTransparencyModifier
						end
					end)

					if chinaHat then
						task.defer(tbl12.CreateChinaHat, localPlayer.Character)
					else
						tbl12.ClearChinaHat()
					end
				end

				local function fn22()
					if tbl16.Connection then
						tbl16.Connection:Disconnect()
						tbl16.Connection = nil
					end

					tbl16.Character = nil

					for k, characterHighlightPart in pairs(tbl7.CharacterHighlightParts) do
						if characterHighlightPart.Affect == "Character" then
							fn21(k, characterHighlightPart)
						end
					end
				end

				local function fn23(descendant)
					if not tbl16.Character or not descendant:IsDescendantOf(tbl16.Character) then
						return
					end
					tbl12.ApplyCharacterHighlightPart(descendant, "Character")
				end

				local function fn24(character)
					fn22()
					if flag11 or not tbl8.ForcefieldChar or not tbl7.CharacterHighlightAffects.Character or not character then
						return
					end
					tbl16.Character = character
					tbl16.Connection = character.DescendantAdded:Connect(fn23)

					for _, v23 in ipairs(character:QueryDescendants("BasePart")) do
						fn23(v23)
					end
				end

				tbl12.UpdateCharacterHighlight = function()
					if flag11 or not tbl8.ForcefieldChar then
						return
					end
					local character = tbl16.Character
					local forcefieldColor = tbl9.ForcefieldColor

					for k, characterHighlightPart in pairs(tbl7.CharacterHighlightParts) do
						if not k.Parent or not tbl7.CharacterHighlightAffects[characterHighlightPart.Affect] or characterHighlightPart.Affect == "Character" and (not character or not k:IsDescendantOf(character)) then
							fn21(k, characterHighlightPart)
						elseif k.Color ~= forcefieldColor then
							k.Color = forcefieldColor
						end
					end

					tbl12.UpdateChinaHat()
				end

				tbl12.SetCharacterHighlight = function(forcefieldChar)
					tbl8.ForcefieldChar = forcefieldChar
					local character = forcefieldChar and tbl7.CharacterHighlightAffects.Character

					tbl12.SetRuntimeConnection("CharacterHighlightRespawn", localPlayer.CharacterAdded, character, function(arg)
						task.defer(fn24, arg)
					end)

					tbl12.SetRuntimeConnection("CharacterHighlightAppearance", localPlayer.CharacterAppearanceLoaded, character, function(arg)
						if arg ~= tbl16.Character then
							return
						end
						tbl12.UpdateCharacterHighlight()
					end)

					if not character then
						fn22()
					elseif tbl16.Character ~= localPlayer.Character then
						fn24(localPlayer.Character)
					end

					tbl12.UpdateCharacterHighlightAffects()
				end
			end

			tbl12.UpdateParticles = function(arg)
				local particleSettings = tbl7.ParticleSettings
				local flag12 = not arg

				if flag12 or arg == "BoxSize" then
					part2.Size = Vector3.one * particleSettings.BoxSize
				end

				if flag12 or arg == "Texture" then
					particleEmitter.Texture = particleSettings.Texture
				end

				if flag12 or arg == "Count" then
					particleEmitter.Rate = particleSettings.Count
				end

				if flag12 or arg == "LifeTime" then
					particleEmitter.Lifetime = NumberRange.new(particleSettings.LifeTime)
				end

				if flag12 or arg == "SpeedMin" or arg == "SpeedMax" then
					particleEmitter.Speed = NumberRange.new(particleSettings.SpeedMin, particleSettings.SpeedMax)
				end

				if flag12 or arg == "Color" then
					particleEmitter.Color = ColorSequence.new(particleSettings.Color)
				end

				if flag12 or arg == "ParticleSize" then
					local v23 = particleEmitter
					local numberSequence = NumberSequence.new
					local tbl16 = {}
					local v24 = NumberSequenceKeypoint.new(0, 0)
					local v25 = NumberSequenceKeypoint.new(0.1, particleSettings.ParticleSize)
					local v26 = NumberSequenceKeypoint.new(0.9, particleSettings.ParticleSize)
					local new = NumberSequenceKeypoint.new
					tbl16[1] = v24
					tbl16[2] = v25
					tbl16[3] = v26

					do
						local values = table.pack(new(1, 0))
						table.move(values, 1, values.n, 4, tbl16)
					end

					v23.Size = numberSequence(tbl16)
				end

				if flag12 or arg == "Transparency" then
					particleEmitter.Transparency = NumberSequence.new(particleSettings.Transparency)
				end
			end

			tbl12.UpdateParticlePosition = function()
				if currentCamera then
					part2.CFrame = currentCamera.CFrame
				end
			end

			tbl12.SetParticlesEnabled = function(enabled)
				tbl7.ParticleSettings.Enabled = enabled
				local updateParticlePosition = tbl12.UpdateParticlePosition
				tbl12.SetRuntimeConnection("Particles", currentCamera:GetPropertyChangedSignal("CFrame"), enabled, updateParticlePosition)
				particleEmitter.Enabled = enabled

				if enabled then
					tbl12.UpdateParticles()
					tbl12.UpdateParticlePosition()
				else
					particleEmitter:Clear()
				end
			end

			do
				local tbl16 = {}
				local flag12 = false
				local flag13 = false
				local flag14 = false
				local flag15 = false
				local tbl17 = { Materials = true, Textures = true, Reflections = true, Shadows = true }

				local function fn21(arg, arg2, arg3)
					local v23 = arg[arg2]
					if v23 == arg3 then
						return
					end

					if not pcall(function()
						arg[arg2] = arg3
					end) then
						return
					end
					tbl16[arg] = tbl16[arg] or {}
					tbl16[arg][arg2] = tbl16[arg][arg2] or { v23, arg3 }
				end

				local function fn22(arg)
					if not flag12 then
						return
					end

					if arg:IsA("BasePart") and not arg:IsA("Terrain") then
						if tbl17.Materials and arg.Material ~= Enum.Material.ForceField then
							fn21(arg, "Material", Enum.Material.SmoothPlastic)
							fn21(arg, "MaterialVariant", "")
						end

						if tbl17.Reflections then
							fn21(arg, "Reflectance", 0)
						end

						if tbl17.Shadows then
							fn21(arg, "CastShadow", false)
						end

						if tbl17.Textures and arg:IsA("MeshPart") then
							fn21(arg, "TextureID", "")
						end
					elseif tbl17.Textures and (arg:IsA("Decal") or arg:IsA("Texture")) then
						fn21(arg, "Transparency", 1)
					elseif tbl17.Textures and arg:IsA("SpecialMesh") then
						fn21(arg, "TextureId", "")
					end
				end

				tbl12.SetBoostFPS = function(arg)
					flag12 = arg and not flag11
					local v23 = flag14
					local flag16

					if flag14 then
						flag16 = v23
					else
						flag16 = flag12 == flag13 and not flag15
					end

					if flag16 then
						return
					end
					flag14 = true

					task.spawn(function()
						while true do
							local now3 = os.clock()

							if flag12 and not flag13 then
								flag13 = true
								flag15 = false

								if tbl17.Shadows then
									fn21(Lighting, "GlobalShadows", false)
								end

								tbl12.SetRuntimeConnection("BoostFPSAdded", workspace.DescendantAdded, true, fn22)

								for _, v24 in workspace:QueryDescendants("BasePart, Decal, Texture, SpecialMesh") do
									if flag12 then
										fn22(v24)

										if os.clock() - now3 > 0.004 then
											task.wait()
											now3 = os.clock()
										end

										continue
									end

									break
								end
							else
								tbl12.SetRuntimeConnection("BoostFPSAdded", nil, false)

								for k, v24 in tbl16, nil, nil do
									if k.Parent then
										for k2, v25 in v24, nil, nil do
											if k[k2] == v25[2] then
												pcall(function()
													k[k2] = v25[1]
												end)
											end
										end
									end

									if not flag11 and os.clock() - now3 > 0.004 then
										task.wait()
										now3 = os.clock()
									end
								end

								table.clear(tbl16)
								flag13 = false

								if not flag12 then
									flag15 = false
								end
							end

							if not (flag12 == flag13 and not flag15) then
								continue
							end
							break
						end

						flag14 = false
					end)
				end

				tbl12.SetBoostFPSOptions = function(arg)
					tbl17 = arg
					flag15 = flag12
					tbl12.SetBoostFPS(flag12)
				end
			end
		end

		do
			do
				local anchorSettings, objectStates, objectGroups, tbl16, n36, vector, vector2, fn21, fn22, fn23
				local fn24, fn25, fn26, fn27, fn28, fn29

				do
					do
						local fn30

						do
							local fn31

							do
								tbl12.SetCameraOcclusionMode = function(devCameraOcclusionMode)
									if pcall(function()
										localPlayer.DevCameraOcclusionMode = devCameraOcclusionMode
									end) and localPlayer.DevCameraOcclusionMode == devCameraOcclusionMode then
										return true
									end
									return sethiddenproperty and pcall(sethiddenproperty, localPlayer, "DevCameraOcclusionMode", devCameraOcclusionMode)
								end

								tbl12.SetCameraPopper = function(arg)
									local states = tbl7.States
									local cameraPopperPatch = states.CameraPopperPatch

									if not arg then
										if not cameraPopperPatch then
											return true
										end
										local ok = pcall(cameraPopperPatch[1], cameraPopperPatch[2], cameraPopperPatch[3])

										if ok then
											states.CameraPopperPatch = nil
										end

										return ok
									end

									if cameraPopperPatch then
										return true
									end
									local v22 = hookfunction or replaceclosure
									local playerModule = localPlayer.PlayerScripts:FindFirstChild("PlayerModule")
									playerModule = playerModule and playerModule:FindFirstChild("CameraModule")
									playerModule = playerModule and playerModule:FindFirstChild("ZoomController")
									playerModule = playerModule and playerModule:FindFirstChild("Popper")
									if not v22 or not playerModule then
										return false
									end
									local ok, result = pcall(require, playerModule)
									if not ok or type(result) ~= "function" then
										return false
									end

									local ok2, result2 = pcall(v22, result, function(arg2, arg3)
										return arg3
									end)

									if ok2 then
										states.CameraPopperPatch = { v22, result, result2 }
									end

									return ok2
								end

								tbl12.SetCameraNoclip = function(cameraNoclip)
									local states = tbl7.States
									tbl8.CameraNoclip = cameraNoclip
									local v22 = cameraNoclip and tbl12.SetCameraPopper(true)

									if cameraNoclip then
										if states.CameraOcclusionMode == nil then
											states.CameraOcclusionMode = localPlayer.DevCameraOcclusionMode
										end

										if not v22 then
											tbl12.SetCameraOcclusionMode(Enum.DevCameraOcclusionMode.Invisicam)
										end
									end

									tbl12.SetRuntimeConnection("CameraNoclip", localPlayer:GetPropertyChangedSignal("DevCameraOcclusionMode"), cameraNoclip and not v22, function()
										if tbl8.CameraNoclip and localPlayer.DevCameraOcclusionMode ~= Enum.DevCameraOcclusionMode.Invisicam then
											tbl12.SetCameraOcclusionMode(Enum.DevCameraOcclusionMode.Invisicam)
										end
									end)

									if not cameraNoclip then
										tbl12.SetCameraPopper(false)

										if states.CameraOcclusionMode ~= nil then
											tbl12.SetCameraOcclusionMode(states.CameraOcclusionMode)
											states.CameraOcclusionMode = nil
										end
									end
								end

								tbl12.UpdateAspectRatio = function()
									currentCamera.CFrame = currentCamera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, tbl9.AspectRatio, 0, 0, 0, 1)
								end

								tbl12.SetAspectRatio = function(aspectRatio)
									tbl9.AspectRatio = aspectRatio

									if aspectRatio == 1 then
										if tbl7.States.AspectRatio then
											RunService:UnbindFromRenderStep("RSC-AR")
										end

										tbl7.States.AspectRatio = nil
									elseif not tbl7.States.AspectRatio then
										tbl7.States.AspectRatio = true
										RunService:BindToRenderStep("RSC-AR", Enum.RenderPriority.Camera.Value + 1, tbl12.UpdateAspectRatio)
									end
								end

								do
									local n37 = 2147483648
									local n38 = 1e9

									fn31 = function(arg)
										local function fn32(arg2)
											if not arg2 or not arg2:IsA("BasePart") then
												return false
											end
											local position = arg2.Position
											return math.abs(math.abs(position.X) - n37) > n38 and math.abs(math.abs(position.Z) - n37) > n38
										end

										return fn32(arg.Part0) and fn32(arg.Part1)
									end
								end
							end

							fn30 = function(arg, arg2)
								local v22 = tbl7.ShurikenLagWelds[arg]
								if not v22 then
									return
								end

								for _, v23 in v22.Connections, nil, nil do
									v23:Disconnect()
								end

								tbl7.ShurikenLagWelds[arg] = nil

								if arg2 and not arg.Parent and v22.Parent and v22.Parent.Parent then
									arg.Parent = v22.Parent
								end
							end

							do
								local function fn32(arg)
									if not tbl8.AntiShurikenLag or not arg:IsA("WeldConstraint") or arg.Name ~= "StickyWeld" or tbl7.BreakPartWelds[arg] or tbl7.ShurikenLagWelds[arg] then
										return
									end
									local tbl17 = { Parent = arg.Parent, Connections = {} }
									tbl7.ShurikenLagWelds[arg] = tbl17

									local function fn33()
										if tbl7.BreakPartWelds[arg] then
											if not arg.Parent and tbl17.Parent and tbl17.Parent.Parent then
												arg.Parent = tbl17.Parent
											end

											return
										end

										if arg.Part0 and arg.Part1 and not fn31(arg) then
											if arg.Parent then
												local v22 = arg
												tbl17.Parent = arg.Parent
												v22.Parent = nil
											end
										elseif not arg.Parent and tbl17.Parent and tbl17.Parent.Parent then
											arg.Parent = tbl17.Parent
										end
									end

									local connections = {}
									local connection = arg:GetPropertyChangedSignal("Enabled"):Connect(fn33)
									local connection2 = arg:GetPropertyChangedSignal("Part0"):Connect(fn33)
									local connection3 = arg:GetPropertyChangedSignal("Part1"):Connect(fn33)
									local destroying = arg.Destroying
									local connect = destroying.Connect

									local function fn34()
										fn30(arg, false)
									end

									connections[1] = connection
									connections[2] = connection2
									connections[3] = connection3

									do
										local values = table.pack(connect(destroying, fn34))
										table.move(values, 1, values.n, 4, connections)
									end

									tbl17.Connections = connections
									fn33()
								end

								tbl12.SetAntiShurikenLag = function(antiShurikenLag)
									tbl8.AntiShurikenLag = antiShurikenLag
									tbl12.SetRuntimeConnection("AntiShurikenLag", workspace.DescendantAdded, antiShurikenLag, fn32)

									if antiShurikenLag then
										for _, v22 in workspace:QueryDescendants("WeldConstraint#StickyWeld") do
											fn32(v22)
										end
									else
										for k in table.clone(tbl7.ShurikenLagWelds), nil, nil do
											fn30(k, true)
										end
									end
								end
							end
						end

						do
							do
								local function fn31(adornee, arg)
									if not tbl8.HighlightBrokenParts or not adornee.Parent then
										if arg.Highlight then
											arg.Highlight:Destroy()
											arg.Highlight = nil
										end

										return
									end

									if not (arg.Highlight and arg.Highlight.Parent) then
										arg.Highlight = highlight:Clone()
										arg.Highlight.Name = "BreakPartHighlight"
										arg.Highlight.Adornee = adornee
										arg.Highlight.Enabled = true
										arg.Highlight.Parent = adornee
									end

									local brokenPartHighlight = tbl7.BrokenPartHighlight
									arg.Highlight.FillColor = brokenPartHighlight.FillColor
									arg.Highlight.OutlineColor = brokenPartHighlight.OutlineColor
									arg.Highlight.FillTransparency = brokenPartHighlight.FillTransparency
									arg.Highlight.OutlineTransparency = brokenPartHighlight.OutlineTransparency
								end

								tbl12.SetBrokenPartHighlights = function(highlightBrokenParts)
									tbl8.HighlightBrokenParts = highlightBrokenParts

									for k, v22 in tbl7.BrokenParts, nil, nil do
										fn31(k, v22)
									end
								end

								tbl12.TrackBrokenPart = function(arg, arg2)
									local tbl17 = tbl7.BrokenParts[arg]

									if not tbl17 then
										tbl17 = { Welds = {} }
										tbl7.BrokenParts[arg] = tbl17
									end

									tbl17.Welds[arg2] = true
									tbl7.BreakPartWelds[arg2] = true
									fn30(arg2, true)
									fn31(arg, tbl17)
								end
							end
						end
					end

					tbl12.UntrackBrokenPart = function(arg, arg2)
						tbl7.BreakPartWelds[arg2] = nil
						local v22 = tbl7.BrokenParts[arg]
						if not v22 then
							return
						end
						v22.Welds[arg2] = nil
						if next(v22.Welds) then
							return
						end

						if v22.Highlight then
							v22.Highlight:Destroy()
						end

						tbl7.BrokenParts[arg] = nil
					end

					tbl12.SpawnToy = function(arg, arg2, arg3, arg4)
						if type(arg) ~= "string" or arg == "" then
							return
						end

						if tbl7.FailedToys[arg] then
							return
						end
						local n37 = tonumber(arg3) or 0

						if tbl7.States.Spawning or #tbl7.SpawnQueue > 0 then
							if n37 <= 0 then
								return
							end
							tbl7.SpawnOrder = tbl7.SpawnOrder + 1
							local tbl17 = { Priority = n37, Order = tbl7.SpawnOrder }
							table.insert(tbl7.SpawnQueue, tbl17)

							table.sort(tbl7.SpawnQueue, function(arg5, arg6)
								local flag12

								if arg5.Priority == arg6.Priority then
									flag12 = arg5.Order < arg6.Order
								else
									flag12 = arg5.Priority > arg6.Priority
								end

								return flag12
							end)

							while true do
								task.wait()
								if not (flag11 or not tbl7.States.Spawning and tbl7.SpawnQueue[1] == tbl17) then
									continue
								end
								break
							end

							table.remove(tbl7.SpawnQueue, table.find(tbl7.SpawnQueue, tbl17))
							if flag11 then
								return
							end
						end

						local v22, v23 = tbl12.Char()
						if not v23 then
							return
						end
						local flag12 = inPlot.Value and not inOwnedPlot.Value
						if flag12 and tbl7.States.Owning then
							return
						end
						tbl7.States.Spawning = true

						if flag12 then
							tbl7.States.Owning = true
						end

						if localPlayer.CanSpawnToy.Value == false then
							repeat
								task.wait()
							until localPlayer.CanSpawnToy.Value
						end

						local cframe

						if flag12 then
							cframe = CFrame.new(0, 25, 0)
						else
							cframe = v23.CFrame + Vector3.new(0, 15, 0)
						end

						local n38 = CFrame.new((arg2 or cframe).Position) + Vector3.new(0, 0, 20)
						local rotation

						if workspace:FindFirstChild("RotateOrientPart") then
							rotation = workspace.RotateOrientPart.Rotation
						else
							rotation = Vector3.zero
						end

						local v24 = rotation
						local v25 = nil
						local connection = nil

						connection = v17.ChildAdded:Connect(function(child)
							if child.Name == arg then
								v25 = child

								if arg4 then
									tbl7.ToyAuraReserved[child] = true
								end

								if connection then
									connection:Disconnect()
								end
							end
						end)

						local cFrame2 = v23.CFrame
						local cframe2 = CFrame.new(0, 10, 0)
						local connection2 = nil

						if flag12 then
							RunService:BindToRenderStep("STClient", Enum.RenderPriority.Camera.Value - 1, function()
								v23.CFrame = cFrame2
							end)

							connection2 = RunService.Heartbeat:Connect(function()
								cFrame2 = v23.CFrame
								v23.CFrame = cframe2
							end)
						end

						local now3 = tick()

						task.spawn(function()
							tbl11.SpawnToy:InvokeServer(arg, n38, v24)
						end)

						while true do
							RunService.Heartbeat:Wait()

							if flag12 then
								task.spawn(function()
									tbl11.SpawnToy:InvokeServer(arg, n38, v24)
								end)
							end

							if not (v25 or tick() - now3 > 1.3) then
								continue
							end
							break
						end

						if flag12 then
							RunService:UnbindFromRenderStep("STClient")

							if connection2 then
								connection2:Disconnect()
							end

							if v23 then
								v23.CFrame = cFrame2
							end
						end

						if connection then
							connection:Disconnect()
						end

						if not v25 then
							tbl7.FailedToys[arg] = true

							task.delay(2, function()
								tbl7.FailedToys[arg] = nil
							end)
						end

						tbl7.States.Spawning = false

						if flag12 then
							tbl7.States.Owning = false
						end

						return v25
					end

					tbl12.DestroyToy = function(arg)
						if arg and arg:IsA("Model") then
							tbl11.DestroyToy:FireServer(arg)
						end
					end

					tbl12.GetInventory = function(arg)
						local v22 = workspace:FindFirstChild(arg.Name .. "SpawnedInToys")
						local v23 = nil

						for _, child in pairs(workspace.Plots:GetChildren()) do
							for _, child2 in pairs(child.PlotSign.ThisPlotsOwners:GetChildren()) do
								if child2:IsA("StringValue") and child2.Value == arg.Name then
									v23 = workspace.PlotItems:FindFirstChild(child.Name)
								end
							end
						end

						return v22, v23
					end

					tbl12.BreakHoldable = function(arg, arg2, arg3)
						local v22, v23, v24 = tbl12.Char()
						local leftGripAttachment = v22 and v22:FindFirstChild("Left Arm") and v22["Left Arm"]:FindFirstChild("LeftGripAttachment")
						local holdPart = arg and arg:FindFirstChild("HoldPart")
						local holdItemRemoteFunction = holdPart and holdPart:WaitForChild("HoldItemRemoteFunction", 0.45)
						local dropItemRemoteFunction = holdItemRemoteFunction and holdPart:WaitForChild("DropItemRemoteFunction", 0.45)
						local rigidConstraint = dropItemRemoteFunction and holdPart:WaitForChild("RigidConstraint", 0.45)
						if not (v22 and v24 and leftGripAttachment and holdItemRemoteFunction and dropItemRemoteFunction and rigidConstraint) then
							return false
						end

						if arg3 then
							rigidConstraint.Enabled = false
						end

						local now3 = tick()

						while true do
							local flag12 = v22.Parent and arg.Parent and leftGripAttachment.Parent and rigidConstraint.Parent and rigidConstraint.Attachment1 ~= leftGripAttachment

							if flag12 then
								flag12 = tick() - now3 < (arg2 or 0.6)
							end

							if flag12 then
								task.spawn(function()
									pcall(holdItemRemoteFunction.InvokeServer, holdItemRemoteFunction, arg, v22)
								end)

								task.wait()
								continue
							end

							break
						end

						if rigidConstraint.Attachment1 ~= leftGripAttachment then
							return false
						end

						task.spawn(function()
							pcall(dropItemRemoteFunction.InvokeServer, dropItemRemoteFunction, arg)
						end)

						dropItemRemoteFunction:Destroy()
						local now4 = tick()

						while true do
							RunService.Heartbeat:Wait()
							if not (not rigidConstraint.Parent or rigidConstraint.Attachment1 ~= leftGripAttachment or tick() - now4 > 0.45) then
								continue
							end
							break
						end

						for _, v25 in v24:GetPlayingAnimationTracks() do
							local match = v25.Animation and v25.Animation.AnimationId:match("%d+")

							if not (match and tbl7.AnimationWhitelist[match]) then
								v25:Stop()
							end
						end

						return rigidConstraint.Parent and rigidConstraint.Attachment1 ~= leftGripAttachment
					end

					tbl12.SpawnCoconutForms = function()
						local coconutForms = tbl7.CoconutForms
						if coconutForms.Spawning or not tbl8.CoconutForms or #coconutForms.Models >= #coconutForms.Offsets then
							return
						end
						coconutForms.Spawning = true
						local generation = coconutForms.Generation

						task.spawn(function()
							while true do
								if not flag11 and tbl8.CoconutForms and generation == coconutForms.Generation and #coconutForms.Models < #coconutForms.Offsets then
									local FoodCoconut = tbl12.SpawnToy("FoodCoconut", nil, 1, true)
									local soundPart = FoodCoconut and FoodCoconut:WaitForChild("SoundPart", 0.5)
									local holdPart = FoodCoconut and FoodCoconut:WaitForChild("HoldPart", 0.5)
									holdPart = holdPart and holdPart:WaitForChild("RigidConstraint", 0.5)

									if not (soundPart and holdPart and tbl12.BreakHoldable(FoodCoconut) and tbl12.SNO(soundPart, 0.4)) then
										tbl12.DestroyToy(FoodCoconut)
										break
									else
										for _, v22 in FoodCoconut:QueryDescendants("BasePart") do
											v22.CanCollide = false
											v22.CanQuery = false
											v22.CanTouch = false
											v22.LocalTransparencyModifier = coconutForms.Transparency

											if tbl12.ApplyCharacterHighlightPart then
												tbl12.ApplyCharacterHighlightPart(v22, "Coconut Forms")
											end
										end

										if tbl8.CoconutForms and generation == coconutForms.Generation and #coconutForms.Models < #coconutForms.Offsets then
											coconutForms.Parts[FoodCoconut] = { Root = soundPart, Rigid = holdPart }
											coconutForms.Models[#coconutForms.Models + 1] = FoodCoconut
										else
											tbl12.DestroyToy(FoodCoconut)
										end

										continue
									end
								end

								break
							end

							coconutForms.Spawning = false

							if tbl8.CoconutForms and #coconutForms.Models < #coconutForms.Offsets then
								task.delay(0.5, tbl12.SpawnCoconutForms)
							end
						end)
					end

					tbl12.UpdateCoconutForms = function()
						local coconutForms = tbl7.CoconutForms
						local v22, v23, v24 = tbl12.Char()
						if not (v23 and v24 and v24.Health > 0) then
							return
						end
						local flight = tbl8.Flight
						local now3 = os.clock()
						local n37 = math.min(now3 - (coconutForms.WingClock or now3), 0.1)
						coconutForms.WingClock = now3
						local wingSpeed = coconutForms.WingSpeed
						local n38

						if flight then
							n38 = 7.5
						else
							n38 = 1.4
						end

						coconutForms.WingSpeed = wingSpeed + (n38 - coconutForms.WingSpeed) * math.min(n37 * 5, 1)
						coconutForms.WingPhase = coconutForms.WingPhase + n37 * coconutForms.WingSpeed
						local wingPhase = coconutForms.WingStart and coconutForms.WingPhase
						local n39

						if not wingPhase then
							n39 = nil
						elseif flight then
							n39 = -0.08 + math.sin(wingPhase) * 0.52 + math.sin(wingPhase * 2 - 0.6) * 0.07
						else
							n39 = -0.3 + math.sin(wingPhase) * 0.06
						end

						local cFrame2 = (v22:FindFirstChild("Torso") or v23).CFrame
						local n40 = nil
						local n41 = nil

						if wingPhase then
							local n42 = cFrame2 * CFrame.new(0, 0.5, 0.55)
							local cframe = CFrame.Angles
							local n43

							if flight then
								n43 = -0.12
							else
								n43 = 0
							end

							n40 = n42 * cframe(n43, 0, -n39)
							local cframe2 = CFrame.Angles
							local n44

							if flight then
								n44 = -0.12
							else
								n44 = 0
							end

							n41 = n42 * cframe2(n44, 0, n39)

							for i = 1, 6 do
								local wingRipple = coconutForms.WingRipple
								local sin = math.sin
								local n45 = i - 1
								local n46

								if flight then
									n46 = 0.22
								else
									n46 = 0.35
								end

								local v25 = sin(wingPhase - n45 * n46)
								local n47

								if flight then
									n47 = 0.18
								else
									n47 = 0.035
								end

								wingRipple[i] = v25 * n47
							end
						end

						local n42 = 0
						local vector3 = Vector3.zero

						if coconutForms.CapeStart then
							local v25 = tbl12.GetCustomVelocity(v23)

							if not flight and v24.MoveDirection.Magnitude > 0.01 then
								local n43 = v24.MoveDirection * v24.WalkSpeed
								v25 = v25:Lerp(Vector3.new(n43.X, v25.Y, n43.Z), 0.45)
							end

							local v26 = cFrame2:VectorToObjectSpace(v25)
							local magnitude = Vector3.new(v26.X, 0, v26.Z).Magnitude
							local n43 = math.sin(now3 * 0.72) + math.sin(now3 * 1.31 + 0.8) * 0.45
							n42 = v26.Magnitude
							local vector4 = Vector3.new(n43 * 0.18, 0.08 + math.sin(now3 * 0.58 + 1.4) * 0.06, 0.38 + n43 * 0.14)
							local vector5 = Vector3.new
							local n44 = math.clamp(-v26.X * 0.05, -2.25, 2.25)
							local clamp = math.clamp
							local n45

							if flight then
								n45 = 0.045
							else
								n45 = 0.018
							end

							local n46 = magnitude * n45 - v26.Y * 0.025
							local n47

							if flight then
								n47 = 0.55
							else
								n47 = 0
							end

							local n48 = n46 + n47
							local n49

							if flight then
								n49 = 2.8
							else
								n49 = 1.3
							end

							local v27 = clamp(n48, -0.9, n49)
							local clamp2 = math.clamp
							local n50 = -v26.Z * 0.06 + magnitude * 0.015
							local n51

							if flight then
								n51 = 0.8
							else
								n51 = 0
							end

							local n52 = n50 + n51
							local n53

							if flight then
								n53 = 5
							else
								n53 = 3.5
							end

							vector3 = vector4 + vector5(n44, v27, clamp2(n52, -0.15, n53))
						end

						coconutForms.CapeSpeed = coconutForms.CapeSpeed + (n42 - coconutForms.CapeSpeed) * math.min(n37 * 8, 1)

						if coconutForms.CapeStart then
							coconutForms.CapePhase = coconutForms.CapePhase + n37 * (2.2 + math.min(coconutForms.CapeSpeed * 0.055, 5))
						end

						local capeWind = coconutForms.CapeWind
						local lerp = capeWind.Lerp
						local min = math.min
						local n43

						if flight then
							n43 = 12
						else
							n43 = 10
						end

						coconutForms.CapeWind = lerp(capeWind, vector3, min(n37 * n43, 1))
						local n44 = coconutForms.Counts.Cape / 3
						local n45 = 0.09 + math.min(coconutForms.CapeSpeed * 0.004, 0.28)
						local n46

						if flight then
							n46 = 0.1
						else
							n46 = 0
						end

						local n47 = n45 + n46
						local n48 = now3 * 1.17

						for i = #coconutForms.Models, 1, -1 do
							local v25 = coconutForms.Models[i]
							local rigid = coconutForms.Parts[v25]
							local root = rigid and rigid.Root
							rigid = rigid and rigid.Rigid

							if not (v25.Parent and root and root.Parent and rigid and rigid.Parent) or rigid.Attachment1 then
								if v25 and v25.Parent then
									tbl12.DestroyToy(v25)
								end

								coconutForms.Parts[v25] = nil
								table.remove(coconutForms.Models, i)
							elseif tbl12.IsPartOwner(root) then
								local n49 = coconutForms.Offsets[i]
								local v26

								if wingPhase and i >= coconutForms.WingStart and i < coconutForms.WingStart + 12 then
									local n50 = i - coconutForms.WingStart
									local n51

									if n50 < 6 then
										n51 = -1
									else
										n51 = 1
									end

									local n52 = n50 % 6 + 1
									local n53 = (n52 - 1) * coconutForms.WingSpacing
									local v27 = coconutForms.WingRipple[n52]

									if n51 ~= -1 then
										v26 = n41
									else
										v26 = n40
									end

									local cframe = CFrame.new
									local n54 = n51 * (0.55 + n53)
									local n55 = n53 / 1.1
									local n56

									if flight then
										n56 = 0.1
									else
										n56 = 0.16
									end

									local v28 = cframe(n54, 0.05 - n55 * n56 + v27, n53 / 1.1 * 0.06 + v27 * 0.35)
									local cframe2 = CFrame.Angles
									local n57 = v27 * 0.6
									local n58

									if flight then
										n58 = -0.1
									else
										n58 = -0.18
									end

									n49 = v28 * cframe2(n57, n51 * n58, n51 * (v27 * 0.8 - 0.1))
								elseif coconutForms.CapeStart and i >= coconutForms.CapeStart + n44 and i < coconutForms.CapeStart + coconutForms.Counts.Cape then
									local n50 = i - coconutForms.CapeStart
									local n51 = n50 % n44 - (n44 - 1) / 2
									local n52 = math.floor(n50 / n44)
									local n53 = n52 / 2
									local n54 = coconutForms.CapeWind * n53
									local n55 = (math.sin(coconutForms.CapePhase - n52 * 0.9 + n51 * 0.48) + math.sin(n48 + n52 * 0.55 - n51 * 0.75) * 0.45) * n47 * n53
									local clamp = math.clamp
									local n56 = -n54.X * 0.14 + n51 * n55 * 0.06
									n49 = CFrame.new(n51 * (1.3 + n52 * 0.12) + n54.X, 0.55 - n52 * 1.65 + n54.Y + n55 * 0.28, 0.55 + n53 * 0.65 + n54.Z + n55 + math.abs(n51) * 0.08 * n53) * CFrame.Angles(0.1 + n53 * 0.18 + math.clamp(-n54.Y * 0.16 + n55 * 0.3, -0.65, 0.65), math.clamp(n51 * n55 * 0.08, -0.18, 0.18), clamp(n56, -0.5, 0.5))
									v26 = cFrame2
								else
									v26 = cFrame2
								end

								local cFrame3 = v26 * n49

								if root.CFrame ~= cFrame3 then
									root.CFrame = cFrame3
								end

								tbl12.ResetVelocity(root)
							elseif not coconutForms.Acquiring[root] then
								coconutForms.Acquiring[root] = true

								task.spawn(function()
									tbl12.SNO(root, 0.25)
									coconutForms.Acquiring[root] = nil
								end)
							end
						end

						if #coconutForms.Models < #coconutForms.Offsets then
							tbl12.SpawnCoconutForms()
						end
					end

					tbl12.RefreshCoconutForms = function()
						local coconutForms = tbl7.CoconutForms
						local selected = tbl7.CoconutForms.Selected
						local offsets = {}
						local counts = coconutForms.Counts
						local cape

						if coconutForms.CapeMode == "2x3" then
							cape = 6
						else
							cape = 12
						end

						counts.Cape = cape
						coconutForms.WingStart = nil
						coconutForms.CapeStart = nil

						for _, v22 in coconutForms.Order, nil, nil do
							if selected[v22] and #offsets + coconutForms.Counts[v22] <= coconutForms.Limit then
								if v22 == "Boobs" then
									local n37 = #offsets + 1
									local n38 = #offsets + 2
									local cframe = CFrame.new(-0.6, 0.5, -0.9)
									local cframe2 = CFrame.new(0.6, 0.5, -0.9)
									offsets[n37] = cframe
									offsets[n38] = cframe2
								elseif v22 == "Ass" then
									local n37 = #offsets + 1
									local n38 = #offsets + 2
									local cframe = CFrame.new(-0.55, -1, 0.75)
									local cframe2 = CFrame.new(0.55, -1, 0.75)
									offsets[n37] = cframe
									offsets[n38] = cframe2
								elseif v22 == "Penis" then
									local n37 = #offsets + 1
									local n38 = #offsets + 2
									local cframe = CFrame.new(-0.55, -1.2, -0.8)
									local cframe2 = CFrame.new(0.55, -1.2, -0.8)
									offsets[n37] = cframe
									offsets[n38] = cframe2

									for i = 1, coconutForms.ShaftLength do
										offsets[#offsets + 1] = CFrame.new(0, -1.2, -0.8 - i * coconutForms.ShaftSpacing)
									end
								elseif v22 == "Wings" then
									coconutForms.WingStart = #offsets + 1

									for i = 1, 12 do
										offsets[#offsets + 1] = CFrame.identity
									end
								elseif v22 == "Cape" then
									coconutForms.CapeStart = #offsets + 1
									local n37 = coconutForms.Counts.Cape / 3

									for i = 0, coconutForms.Counts.Cape - 1 do
										local n38 = i % n37 - (n37 - 1) / 2
										local n39 = #offsets + 1
										local n40

										if i < n37 then
											n40 = CFrame.new(n38 * 1.3, 0.55, 0.55) * CFrame.Angles(0.1, 0, 0)
										else
											n40 = CFrame.identity
										end

										offsets[n39] = n40
									end
								elseif v22 == "67" then
									local n37

									if coconutForms.Display67 == "Show to Front" then
										n37 = -1
									else
										n37 = 1
									end

									for k, v23 in coconutForms.Points67, nil, nil do
										local n38

										if k <= 7 then
											n38 = -1
										else
											n38 = 1
										end

										offsets[#offsets + 1] = CFrame.new((v23.X + n38 * coconutForms.Spacing67 * 0.5) * n37, v23.Y, 0.75)
									end
								end
							end
						end

						if not coconutForms.CapeStart then
							coconutForms.CapeSpeed = 0
							coconutForms.CapeWind = Vector3.zero
						end

						local generation = coconutForms.Generation + 1
						coconutForms.Offsets = offsets
						coconutForms.Generation = generation
						local tbl17 = {}

						for _, v22 in coconutForms.Names, nil, nil do
							if not selected[v22] and #offsets + coconutForms.Counts[v22] > coconutForms.Limit then
								tbl17[#tbl17 + 1] = v22
							end
						end

						if options.CoconutFormsDropdown then
							options.CoconutFormsDropdown:SetDisabledValues(tbl17)
						end

						if lib.Labels.CoconutFormsLimit then
							local coconutFormsLimit = lib.Labels.CoconutFormsLimit
							local setText = coconutFormsLimit.SetText
							local str5 = ("%*/%* coconuts used"):format(#offsets, coconutForms.Limit)
							setText(coconutFormsLimit, str5)
						end

						for i = #coconutForms.Models, #offsets + 1, -1 do
							local v22 = table.remove(coconutForms.Models, i)
							coconutForms.Parts[v22] = nil
							tbl12.DestroyToy(v22)
						end

						tbl12.SetRuntimeConnection("CoconutForms", RunService.Heartbeat, tbl8.CoconutForms and #offsets > 0, tbl12.UpdateCoconutForms)
						tbl12.SpawnCoconutForms()
					end

					tbl12.SetCoconutTransparency = function(transparency)
						local coconutForms = tbl7.CoconutForms
						coconutForms.Transparency = transparency

						for _, v22 in coconutForms.Models, nil, nil do
							for _, v23 in v22:QueryDescendants("BasePart") do
								v23.LocalTransparencyModifier = transparency
							end
						end
					end

					tbl12.SetCoconutShaftLength = function(arg)
						local coconutForms = tbl7.CoconutForms
						local n37 = 11

						if coconutForms.Selected.Penis then
							local n38 = 0

							for k, v22 in coconutForms.Selected, nil, nil do
								v22 = v22 and k ~= "Penis"

								if v22 then
									n38 += coconutForms.Counts[k]
								end
							end

							n37 = math.max(1, coconutForms.Limit - n38 - 2)
						end

						local shaftLength = math.min(arg, n37)
						local counts = coconutForms.Counts
						coconutForms.ShaftLength = shaftLength
						counts.Penis = shaftLength + 2

						if shaftLength ~= arg and options.CoconutShaftLength then
							task.defer(function()
								options.CoconutShaftLength:SetValue(shaftLength)
							end)
						end

						tbl12.RefreshCoconutForms()
					end

					tbl12.ClearCoconutForms = function()
						local coconutForms = tbl7.CoconutForms
						tbl8.CoconutForms = false
						coconutForms.Generation = coconutForms.Generation + 1
						tbl12.SetRuntimeConnection("CoconutForms", RunService.Heartbeat, false)

						for _, v22 in coconutForms.Models, nil, nil do
							tbl12.DestroyToy(v22)
						end

						table.clear(coconutForms.Models)
						table.clear(coconutForms.Parts)
						table.clear(coconutForms.WingRipple)
						table.clear(coconutForms.Acquiring)
					end

					tbl12.SetCoconutForms = function(coconutForms)
						if tbl8.CoconutForms == coconutForms then
							return
						end
						tbl8.CoconutForms = coconutForms

						if coconutForms then
							tbl12.RefreshCoconutForms()
						else
							tbl12.ClearCoconutForms()
						end
					end

					tbl12.BlackHole = function(arg, arg2)
						local v22, v23, v24 = tbl12.Char()

						if v23 and v24.Health ~= 0 and arg then
							local tbl17 = {}

							for i = 1, 12 do
								local NinjaShuriken = tbl12.SpawnToy("NinjaShuriken")
								local stickyPart = NinjaShuriken and NinjaShuriken:WaitForChild("StickyPart", 0.25)
								local soundPart = NinjaShuriken and NinjaShuriken:WaitForChild("SoundPart", 0.25)

								if stickyPart and soundPart and tbl12.SNO(soundPart) then
									soundPart.CFrame = CFrame.new(0, 1e10, 0)
									table.insert(tbl17, NinjaShuriken)
								end
							end

							for _, v25 in pairs(tbl17) do
								if v25.Parent and v25:FindFirstChild("StickyPart") and v25:FindFirstChild("SoundPart") then
									tbl11.StickyPartEvent:FireServer(v25.StickyPart, arg, arg2 or CFrame.new(0, 0, 0))
								end
							end
						end
					end

					tbl12.FindNicePart = function(arg)
						if not arg or not arg:IsA("Model") then
							return
						end
						local v22 = tbl7.GrabbableParts[arg]
						if v22 and v22:IsDescendantOf(arg) and v22.CanQuery and not v22.Anchored then
							return v22
						end
						tbl7.GrabbableParts[arg] = nil
						local v23 = nil

						for _, v24 in ipairs(arg:QueryDescendants("BasePart")) do
							if v24.CanQuery and not v24.Anchored and v24.Name ~= "Button" then
								v23 = v23 or v24
								if (v24.AssemblyRootPart or v24) == v24 then
									tbl7.GrabbableParts[arg] = v24
									return v24
								end
							end
						end

						tbl7.GrabbableParts[arg] = v23
						return v23
					end

					tbl12.MakeFoodEaten = function(arg, arg2)
						local v22, v23, v24 = tbl12.Char()
						local holdPart = arg and arg:WaitForChild("HoldPart", 0.15)
						local ediblePart = arg and arg:WaitForChild("EdiblePart", 0.15)

						if holdPart and v23 and v24 and v24.Health > 0 then
							if not ediblePart then
								return arg
							end
							local holdItemRemoteFunction = holdPart:WaitForChild("HoldItemRemoteFunction", 0.15)
							local dropItemRemoteFunction = holdPart:WaitForChild("DropItemRemoteFunction", 0.15)
							if not (holdItemRemoteFunction and dropItemRemoteFunction) then
								return
							end

							task.spawn(function()
								holdItemRemoteFunction:InvokeServer(arg, v22)
							end)

							local now3 = tick()

							while true do
								task.wait()
								if not (holdPart.AssemblyRootPart == v23 or not holdPart.Parent or v24.Health == 0 or tick() - now3 > 0.7) then
									continue
								end
								break
							end

							if not (holdPart.AssemblyRootPart == v23) then
								return
							end
							tbl11.UseFood:FireServer(arg, v22)
							local now4 = tick()

							while true do
								task.wait()
								if not (not ediblePart.Parent or not holdPart.Parent or not (holdPart.AssemblyRootPart == v23) or v24.Health == 0 or tick() - now4 > 4) then
									continue
								end
								break
							end

							if not holdPart.Parent or not (holdPart.AssemblyRootPart == v23) or tick() - now4 > 4 then
								task.spawn(function()
									dropItemRemoteFunction:InvokeServer(arg)
								end)

								return
							end

							task.spawn(function()
								if arg2 then
									dropItemRemoteFunction:InvokeServer(arg)
								else
									dropItemRemoteFunction:InvokeServer(arg, holdPart.CFrame, Vector3.new())
								end
							end)

							local now5 = tick()

							while true do
								task.wait()
								if not (not (holdPart.AssemblyRootPart == v23) or tick() - now5 > 0.7) then
									continue
								end
								break
							end

							for _, v25 in v24:GetPlayingAnimationTracks() do
								local match = v25.Animation and v25.Animation.AnimationId:match("%d+")

								if not (match and tbl7.AnimationWhitelist[match]) then
									v25:Stop()
								end
							end

							if not (holdPart.AssemblyRootPart == v23) then
								return arg
							end
						end
					end

					tbl12.ExplodeMissile = function(arg, arg2, arg3)
						local v22
						v22, v22 = tbl12.Char()
						if not v22 or not arg then
							return false
						end
						local tbl17 = {}
						arg3 = arg3 or 1

						for i = 1, arg3 do
							local v23 = tbl12.SpawnToy(arg2)

							if v23 then
								local partHitDetector, wedge

								if arg2 == "BombMissile" or arg2 == "FireworkMissile" then
									partHitDetector = v23:WaitForChild("PartHitDetector", 0.15)
									wedge = partHitDetector and v23:WaitForChild("Wedge", 0.15)
								elseif arg2 == "BombDarkMatter" then
									partHitDetector = v23:WaitForChild("PartHitDetector", 0.15)
									wedge = partHitDetector and v23:WaitForChild("Spinner", 0.15)
								elseif arg2 == "BombBalloon" then
									partHitDetector = v23:WaitForChild("Balloon", 0.15)
									wedge = partHitDetector
								else
									partHitDetector = nil
									wedge = nil

									if arg2 == "BallSnowball" then
										partHitDetector = v23:WaitForChild("SnowRagdollPart", 0.15)
										wedge = partHitDetector and v23:WaitForChild("SoundPart", 0.15)
									end
								end

								if partHitDetector and wedge and tbl12.SNO(wedge) then
									local bodyPosition = Instance.new("BodyPosition")
									bodyPosition.Parent = wedge
									bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
									local random = math.random
									bodyPosition.Position = Vector3.new(math.random(-1000, 1000), 1000000, random(-1000, 1000))
									table.insert(tbl17, v23)
								else
									tbl12.DestroyToy(v23)
								end
							end
						end

						for _, v23 in pairs(tbl17) do
							local partHitDetector, wedge

							if arg2 == "BombMissile" or arg2 == "FireworkMissile" then
								partHitDetector = v23:WaitForChild("PartHitDetector", 0.15)
								wedge = partHitDetector and v23:WaitForChild("Wedge", 0.15)
							elseif arg2 == "BombDarkMatter" then
								partHitDetector = v23:WaitForChild("PartHitDetector", 0.15)
								wedge = partHitDetector and v23:WaitForChild("Spinner", 0.15)
							elseif arg2 == "BombBalloon" then
								partHitDetector = v23:WaitForChild("Balloon", 0.15)
								wedge = partHitDetector
							else
								partHitDetector = nil
								wedge = nil

								if arg2 == "BallSnowball" then
									partHitDetector = v23:WaitForChild("SnowRagdollPart", 0.15)
									wedge = partHitDetector and v23:WaitForChild("SoundPart", 0.15)
								end
							end

							wedge = partHitDetector and wedge

							if wedge then
								if arg2 ~= "BallSnowball" then
									if typeof(arg) == "Instance" then
										tbl11.Explode:FireServer({ Hitbox = partHitDetector, PositionPart = arg }, arg.Position)
									elseif typeof(arg) == "Vector3" then
										tbl11.Explode:FireServer({
											Hitbox = partHitDetector,
											PositionPart = { Position = arg, AssemblyLinearVelocity = Vector3.zero },
										}, arg)
									end
								else
									local position = partHitDetector.Position
									tick()

									for i = 1, 2 do
										for _, v24 in v23:GetChildren() do
											if v24:IsA("BasePart") then
												v24.CanCollide = false
												v24.CanTouch = true
												v24.Position = arg.Position
											end
										end

										partHitDetector.Velocity = Vector3.new(0, 5, 0)
										RunService.Heartbeat:Wait()
									end

									partHitDetector.Position = position
								end
							end

							task.delay(0.25, tbl12.DestroyToy, v23)
						end
					end

					tbl12.IsBarrierBroken = function()
						if tbl9.IsBarrierBroken then
							return true
						end
						local Boombox = tbl12.SpawnToy("Boombox", workspace.Waypoints.BlueHouse.CFrame, 4)
						task.wait(2)

						if Boombox and Boombox.Parent then
							tbl12.DestroyToy(Boombox)
							tbl9.IsBarrierBroken = true

							task.spawn(function()
								while true do
									task.wait()
									if not (lib.Labels and lib.Labels.BarrierStatus) then
										continue
									end
									break
								end

								lib.Labels.BarrierStatus:SetText("Current barrier status: 🔴")
							end)

							return true
						end

						tbl12.DestroyToy(Boombox)
					end

					task.spawn(tbl12.IsBarrierBroken)

					tbl12.ExtraEscape = function()
						local v22, v23, v24 = tbl12.Char()
						if not v23 or not v24 or v24.Health == 0 or tbl7.States.Escaping or localPlayer.InPlot.Value then
							return
						end
						tbl7.States.Escaping = true
						local TractorGreen = tbl12.SpawnToy("TractorGreen", workspace.Waypoints.TudorHouse.CFrame)
						if not TractorGreen then
							tbl7.States.Escaping = false
							return
						end
						local vehicleSeat = TractorGreen:WaitForChild("VehicleSeat", 1)
						if not vehicleSeat then
							tbl7.States.Escaping = false
							return tbl12.DestroyToy(TractorGreen)
						end
						local now3 = tick()
						local flag12 = false
						v24.Sit = false
						vehicleSeat:Sit(v24)

						local connection = vehicleSeat.ChildAdded:Connect(function(child)
							if child.Name == "SeatWeld" then
								child.Enabled = false
								flag12 = true
								child:Destroy()
							end
						end)

						while true do
							fn20()
							if not (flag12 or tick() - now3 > 0.7) then
								continue
							end
							break
						end

						connection:Disconnect()
						v24.Sit = false
						tbl7.States.Escaping = false
						return tbl12.DestroyToy(TractorGreen)
					end

					tbl12.DestroyTrain = function()
						if tbl8.GucciAntiGrab then
							return
						end
						local v22, v23, v24 = tbl12.Char()
						if not v23 or not v24 then
							return
						end
						local leftGripAttachment = v22 and v22:FindFirstChild("Left Arm") and v22["Left Arm"]:FindFirstChild("LeftGripAttachment")
						if not leftGripAttachment then
							return
						end
						local objectModel = alwaysHereTweenedObjects.Train.Object:FindFirstChild("ObjectModel")
						if not objectModel then
							return fn18("Train doesn't exist!")
						end
						local seat = objectModel:FindFirstChild("Seat")
						if not seat then
							return fn18("Train seat doesn't exist!")
						end

						if v24.Sit then
							v24.Sit = false
						end

						local cFrame2 = v23.CFrame
						seat:Sit(v24)
						local now3 = tick()

						while true do
							task.wait()
							if not (seat.Occupant == v24 or tick() - now3 > 1.5) then
								continue
							end
							break
						end

						if tick() - now3 > 1.5 then
							return
						end
						local FoodHamburger = tbl12.SpawnToy("FoodHamburger")
						local holdPart = FoodHamburger and FoodHamburger:WaitForChild("HoldPart", 0.25)
						if not holdPart then
							return tbl12.DestroyToy(FoodHamburger)
						end
						local holdItemRemoteFunction = holdPart:WaitForChild("HoldItemRemoteFunction", 0.45)
						local dropItemRemoteFunction = holdItemRemoteFunction and holdPart:WaitForChild("DropItemRemoteFunction", 0.45)
						local rigidConstraint = dropItemRemoteFunction and holdPart:WaitForChild("RigidConstraint", 0.45)
						if not rigidConstraint then
							return tbl12.DestroyToy(FoodHamburger)
						end
						local now4 = tick()

						while v22.Parent and leftGripAttachment.Parent and rigidConstraint.Parent and rigidConstraint.Attachment1 ~= leftGripAttachment and v24.Health ~= 0 and tick() - now4 < 1 do
							task.spawn(function()
								holdItemRemoteFunction:InvokeServer(FoodHamburger, v22)
							end)

							fn20()
						end

						task.spawn(function()
							local vector3 = Vector3.new
							dropItemRemoteFunction:InvokeServer(FoodHamburger, CFrame.new(0, -150, 0), vector3())
						end)

						if tick() - now4 > 1 then
							return
						end
						task.wait(0.5)
						workspace.FallenPartsDestroyHeight = fallenPartsDestroyHeight
						tbl12.Teleport(v23, CFrame.new(0, -250, 0))
						task.wait(0.5)
						v24.Sit = false
						task.wait(0.25)
						tbl12.Teleport(v23, cFrame2)
						local v25 = workspace
						local fallenPartsDestroyHeight2

						if tbl8.DestroyVoid then
							fallenPartsDestroyHeight2 = (0/0)
						else
							fallenPartsDestroyHeight2 = -100
						end

						v25.FallenPartsDestroyHeight = fallenPartsDestroyHeight2
						tbl12.DestroyToy(FoodHamburger)
					end

					tbl12.DestroyObject = function(arg, arg2)
						if not arg or not arg:IsA("Model") then
							return
						end
						arg2 = arg2 or tbl12.FindNicePart(arg)
						if not arg2 or arg2.Anchored or not tbl12.SNO(arg2) then
							return
						end
						tbl12.ReleaseObject(arg)
						tbl12.ClearObjectAura(arg)

						if toggles.DisblVoid then
							toggles.DisblVoid:SetDisabled(true)
						end

						workspace.FallenPartsDestroyHeight = fallenPartsDestroyHeight
						tbl12.PivotTo(arg, CFrame.new(0, -11111, 0))

						if tbl9.DestroyThread then
							task.cancel(tbl9.DestroyThread)
						end

						tbl9.DestroyThread = task.delay(math.clamp(localPlayer:GetNetworkPing() + 0.05, 0.08, 0.25), function()
							workspace.FallenPartsDestroyHeight = -10000
							task.wait()
							local v22 = workspace
							local fallenPartsDestroyHeight2

							if tbl8.DestroyVoid then
								fallenPartsDestroyHeight2 = (0/0)
							else
								fallenPartsDestroyHeight2 = -100
							end

							v22.FallenPartsDestroyHeight = fallenPartsDestroyHeight2

							if toggles.DisblVoid then
								toggles.DisblVoid:SetDisabled(false)
							end

							tbl9.DestroyThread = nil
						end)

						task.delay(0.5, tbl12.RNO, arg2)
						return true
					end

					tbl12.ClearDestroyObjects = function()
						if tbl9.DestroyThread then
							task.cancel(tbl9.DestroyThread)
							tbl9.DestroyThread = nil
						end

						local v22 = workspace
						local fallenPartsDestroyHeight2

						if tbl8.DestroyVoid then
							fallenPartsDestroyHeight2 = (0/0)
						else
							fallenPartsDestroyHeight2 = -100
						end

						v22.FallenPartsDestroyHeight = fallenPartsDestroyHeight2
					end

					anchorSettings = tbl7.AnchorSettings
					objectStates = tbl7.ObjectStates
					objectGroups = tbl7.ObjectGroups
					tbl16 = {}
					n36 = 0
					vector = Vector3.new(0, 0.002, 0)
					vector2 = Vector3.new(0, 0.05, 0)

					fn21 = function(arg)
						return tbl12.IsPartOwner(arg) or tbl12.IsNetworkOwner(arg)
					end

					fn22 = function(arg)
						if not (arg and arg.Parent) then
							return
						end

						if arg:IsA("Player") then
							return arg
						end
						local model

						if arg:IsA("Model") then
							model = arg
						else
							model = arg:FindFirstAncestorOfClass("Model")
						end

						local v22 = objectStates[arg]
						local parent2

						if v22 then
							parent2 = model
							v22 = arg
						else
							parent2 = model
						end

						while parent2 and parent2 ~= workspace do
							if parent2:IsA("Model") then
								local playerFromCharacter = Players:GetPlayerFromCharacter(parent2)
								if playerFromCharacter then
									return playerFromCharacter
								end

								if objectStates[parent2] then
									v22 = parent2
								end
							end

							parent2 = parent2.Parent
						end

						if arg == map or arg:IsDescendantOf(map) then
							return
						end
						v22 = v22 or model

						if v22 then
							arg = v22
						elseif not arg:IsA("BasePart") then
							arg = nil
						end

						return arg
					end

					fn23 = function(arg)
						if not (arg and arg.Parent) then
							return
						end

						if arg:IsA("Player") then
							local v22, v23 = tbl12.Char(arg)
							if v22 == arg.Character then
								return v22, v23
							end
							return
						end

						if arg:IsA("BasePart") then
							return arg, arg
						end
						local primaryPart = arg.PrimaryPart

						if not (primaryPart and primaryPart:IsDescendantOf(arg) and primaryPart.CanQuery and not primaryPart.Anchored) then
							primaryPart = tbl12.FindNicePart(arg)
						end

						if not (primaryPart and primaryPart:IsDescendantOf(arg)) then
							tbl7.GrabbableParts[arg] = nil
							primaryPart = arg:FindFirstChildWhichIsA("BasePart", true)
						end

						return arg, primaryPart
					end

					do
						local function fn30(arg)
							local v22 = pairs
							local collisions = arg.Collisions or {}

							for k, collision in v22(collisions) do
								collision.Connection:Disconnect()

								if k.Parent then
									k.CanCollide = collision.Value
								end
							end

							arg.Collisions = nil
						end

						fn24 = function(arg)
							local group = arg.Group

							if group and group.Noclip then
								arg.Collisions = arg.Collisions or {}
								local v22 = ipairs
								local parts = arg.Parts or {}

								for _, part4 in v22(parts) do
									if not (not part4.Parent or arg.Collisions[part4]) then
										arg.Collisions[part4] = {
											Value = part4.CanCollide,
											Connection = part4:GetPropertyChangedSignal("CanCollide"):Connect(function()
												if part4.CanCollide then
													part4.CanCollide = false
												end
											end),
										}

										part4.CanCollide = false
									end
								end
							else
								fn30(arg)
							end

							if not (group and group.Highlight) then
								if arg.Anchored then
									group = anchorSettings
								else
									group = nil
								end
							end

							if group and arg.Model and arg.Model.Parent then
								if not (arg.Highlight and arg.Highlight.Parent) then
									arg.Highlight = Instance.new("Highlight", arg.Model)
									arg.Highlight.Name = "AnchorHighlight"
									arg.Highlight.Adornee = arg.Model
								end

								arg.Highlight.FillColor = group.FillColor
								arg.Highlight.OutlineColor = group.OutlineColor
							elseif arg.Highlight then
								arg.Highlight:Destroy()
								arg.Highlight = nil
							end
						end

						local function fn31(arg)
							arg.Position:Destroy()
							arg.Orientation:Destroy()
							arg.Attachment:Destroy()

							if arg.Target then
								arg.Target:Destroy()
							end

							if arg.Part.Parent then
								arg.Part.CustomPhysicalProperties = arg.Physics
								arg.Part.Massless = arg.Massless
								tbl12.ResetVelocity(arg.Part)
							end
						end

						fn25 = function(arg, parent2, cFrame2)
							if parent2 then
								local target = arg.Target

								if not target then
									target = Instance.new("Attachment")
									target.Name = "GroupAttachment"
									arg.Target = target
								end

								target.Parent = parent2
								target.CFrame = cFrame2
								arg.Position.Attachment1 = target
								arg.Position.Mode = Enum.PositionAlignmentMode.TwoAttachment
								arg.Orientation.Attachment1 = target
								arg.Orientation.Mode = Enum.OrientationAlignmentMode.TwoAttachment
							elseif arg.Target then
								arg.Position.Attachment1 = nil
								arg.Position.Mode = Enum.PositionAlignmentMode.OneAttachment
								arg.Orientation.Attachment1 = nil
								arg.Orientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
								arg.Target:Destroy()
								arg.Target = nil
							end
						end

						local function fn32(arg)
							local assemblyRootPart = arg.Root.AssemblyRootPart or arg.Root
							local v22 = ipairs
							local parts = arg.Parts or {}
							local n37 = nil

							for _, part4 in v22(parts) do
								local canCollide = part4.Parent and part4.CanCollide

								if canCollide then
									canCollide = (part4.AssemblyRootPart or part4) == assemblyRootPart
								end

								if canCollide then
									local n38 = part4.Size * 0.5
									local cFrame2 = part4.CFrame
									local x = n38.X
									local y = n38.Y
									local z = n38.Z
									n37 = math.min(n37 or math.huge, cFrame2.Position.Y - math.abs(cFrame2.RightVector.Y) * x + math.abs(cFrame2.UpVector.Y) * y + math.abs(cFrame2.LookVector.Y) * z)
								end
							end

							return n37
						end

						fn26 = function(arg, arg2)
							local v22 = nil
							local v23 = nil

							for k in pairs(arg.Members) do
								if k.Root and k.Root.Parent then
									local v24 = fn32(k)

									if v24 and (not v22 or v24 < v22) then
										v22 = v24
										v23 = k
									end
								end
							end

							return v23 or arg2
						end

						fn27 = function(arg)
							local assemblyLinearVelocity = arg.AssemblyLinearVelocity
							local assemblyAngularVelocity = arg.AssemblyAngularVelocity

							if assemblyLinearVelocity.Magnitude > 50 then
								arg.AssemblyLinearVelocity = assemblyLinearVelocity.Unit * 50
							end

							if assemblyAngularVelocity.Magnitude > 15 then
								arg.AssemblyAngularVelocity = assemblyAngularVelocity.Unit * 15
							end
						end

						fn28 = function(arg)
							local v22 = ipairs
							local grabConnections = arg.GrabConnections or {}

							for _, grabConnection in v22(grabConnections) do
								grabConnection:Disconnect()
							end

							arg.GrabConnections = nil
							arg.Held = nil
							arg.HeldRoot = nil
							fn30(arg)

							for _, connection in ipairs(arg.Connections) do
								connection:Disconnect()
							end

							for _, node in pairs(arg.Nodes) do
								fn31(node)
							end

							table.clear(arg.Connections)
							table.clear(arg.Nodes)

							if arg.Highlight then
								arg.Highlight:Destroy()
								arg.Highlight = nil
							end

							arg.Root = nil
							arg.Model = nil
							arg.Parts = nil
						end

						fn29 = function(arg, model, root)
							if arg.Model ~= model then
								fn28(arg)
								arg.Model = model

								local function fn33(descendant)
									if descendant:IsA("BasePart") then
										arg.Dirty = true
									end
								end

								arg.Connections[1] = model.DescendantAdded:Connect(fn33)
								arg.Connections[2] = model.DescendantRemoving:Connect(fn33)
							end

							arg.Root = root
							arg.Dirty = false
							local parts

							if model:IsA("BasePart") then
								parts = { model }
							else
								parts = model:QueryDescendants("BasePart")
							end

							arg.Parts = parts
							local v22 = pairs
							local collisions = arg.Collisions or {}

							for k, collision in v22(collisions) do
								if k ~= model and not k:IsDescendantOf(model) then
									collision.Connection:Disconnect()

									if k.Parent then
										k.CanCollide = collision.Value
									end

									arg.Collisions[k] = nil
								end
							end

							local tbl17 = {}
							local grabParts = workspace:FindFirstChild("GrabParts")
							grabParts = grabParts and grabParts:FindFirstChild("GrabPart")
							grabParts = grabParts and grabParts:FindFirstChild("WeldConstraint")
							grabParts = grabParts and grabParts.Part1
							local assemblyRootPart

							if grabParts and (grabParts == model or grabParts:IsDescendantOf(model)) then
								assemblyRootPart = grabParts.AssemblyRootPart
							else
								assemblyRootPart = nil
							end

							for _, part4 in ipairs(parts) do
								local assemblyRootPart2 = part4.AssemblyRootPart or part4

								if not assemblyRootPart2.Anchored then
									if assemblyRootPart2 == model or assemblyRootPart2:IsDescendantOf(model) then
										tbl17[assemblyRootPart2] = true
									elseif assemblyRootPart2 == assemblyRootPart then
										tbl17[root] = true
									end
								end
							end

							for k, node in pairs(arg.Nodes) do
								if not tbl17[k] then
									fn31(node)
									arg.Nodes[k] = nil
								end
							end

							for k in pairs(tbl17) do
								if not arg.Nodes[k] then
									local attachment = Instance.new("Attachment", k)
									attachment.Name = "AnchorAttachment"
									local alignPosition = Instance.new("AlignPosition", k)
									alignPosition.Name = "AnchorPosition"
									alignPosition.Attachment0 = attachment
									alignPosition.Mode = Enum.PositionAlignmentMode.OneAttachment
									alignPosition.ApplyAtCenterOfMass = true
									alignPosition.RigidityEnabled = true
									alignPosition.MaxForce = math.huge
									alignPosition.MaxVelocity = math.huge
									alignPosition.Enabled = false
									local alignOrientation = Instance.new("AlignOrientation", k)
									alignOrientation.Name = "AnchorOrientation"
									alignOrientation.Attachment0 = attachment
									alignOrientation.Mode = Enum.OrientationAlignmentMode.OneAttachment
									alignOrientation.RigidityEnabled = true
									alignOrientation.MaxTorque = math.huge
									alignOrientation.MaxAngularVelocity = math.huge
									alignOrientation.Enabled = false

									arg.Nodes[k] = {
										Part = k,
										Attachment = attachment,
										Position = alignPosition,
										Orientation = alignOrientation,
										Offset = root.CFrame:ToObjectSpace(k.CFrame),
										Physics = k.CustomPhysicalProperties,
										Massless = k.Massless,
									}
								end
							end

							if arg.Group then
								local group = arg.Group
								group.CollisionDirty = true

								if not arg.Held and (not group.Driver or group.Driver == arg) then
									local v23 = fn26(group, arg)
									group.Leader = v23
									group.Driver = v23
								end
							end

							fn24(arg)
						end
					end
				end

				do
					local fn30, fn31, fn32

					do
						do
							local function fn33()
								tbl12.SetRuntimeConnection("Anchors", RunService.Heartbeat, not flag11 and next(objectStates) ~= nil, tbl12.UpdateAnchors)
							end

							fn30 = function(arg)
								local v22 = objectStates[arg]

								if v22 then
									if not (v22.Root and v22.Root.Parent) then
										v22 = nil
									end

									return v22
								end

								if arg:IsA("Player") and tbl16[arg.UserId] then
									return
								end
								local v23, v24 = fn23(arg)
								if not (v23 and v24 and v24.Parent) or v24.Anchored then
									return
								end
								local tbl17 = { Target = arg, CFrame = v24.CFrame, Nodes = {}, Connections = {}, RetryAt = 0 }

								if tbl12.ClearObjectAura then
									tbl12.ClearObjectAura(v23)
								end

								objectStates[arg] = tbl17
								fn29(tbl17, v23, v24)

								if not next(tbl17.Nodes) then
									objectStates[arg] = nil
									fn28(tbl17)
									return
								end

								local grabParts = workspace:FindFirstChild("GrabParts")
								local grabPart = grabParts and grabParts:FindFirstChild("GrabPart")
								local weldConstraint = grabPart and grabPart:FindFirstChild("WeldConstraint")

								if weldConstraint and fn22(weldConstraint.Part1) == arg then
									tbl12.HandleAnchorGrab(weldConstraint.Part1, grabParts)
								end

								fn33()
								return tbl17
							end

							fn31 = function(arg, anchored)
								if arg.Anchored == anchored then
									return
								end
								arg.Anchored = anchored
								local anchored2 = tbl7.Anchored
								local target = arg.Target
								local v22

								if anchored then
									v22 = arg
								else
									v22 = nil
								end

								anchored2[target] = v22

								if arg.Target:IsA("Player") then
									local v23 = tbl16
									local userId = arg.Target.UserId
									local v24

									if anchored then
										v24 = arg
									else
										v24 = nil
									end

									v23[userId] = v24
								end

								if anchored and arg.Root and arg.Root.Parent then
									arg.CFrame = arg.Root.CFrame
								end

								if not anchored then
									for _, node in pairs(arg.Nodes) do
										node.Position.Enabled = false
										node.Orientation.Enabled = false

										if node.Part.Parent then
											node.Part.CustomPhysicalProperties = node.Physics
											node.Part.Massless = node.Massless
											tbl12.ResetVelocity(node.Part)
										end
									end
								end

								fn24(arg)
							end

							fn32 = function(arg)
								objectStates[arg.Target] = nil
								tbl7.Anchored[arg.Target] = nil

								if arg.Target:IsA("Player") then
									tbl16[arg.Target.UserId] = nil
								end

								fn28(arg)
								fn33()
							end
						end
					end

					tbl12.GetObjectTarget = function()
						local grabParts = workspace:FindFirstChild("GrabParts")
						local grabPart = grabParts and grabParts:FindFirstChild("GrabPart")
						grabPart = grabPart and grabPart:FindFirstChild("WeldConstraint")
						local part1 = grabPart and grabPart.Part1
						return fn22(part1 or tbl12.GetTarget()), part1 and grabParts
					end

					tbl12.SetAnchored = function(arg, anchored)
						local v22

						if objectStates[arg] then
							v22 = arg
						else
							v22 = fn22(arg)
						end

						if not v22 or anchored and flag11 then
							return false
						end
						local v23 = objectStates[v22]
						local v24

						if v23 then
							v24 = v23
						elseif anchored then
							v24 = fn30(v22)
						else
							v24 = nil
						end

						if not v24 then
							return false
						end
						local group = v24.Group

						if group then
							group.Anchored = anchored

							for k in pairs(group.Members) do
								fn31(k, anchored)
							end
						else
							fn31(v24, anchored)

							if not anchored then
								fn32(v24)
							end
						end

						return true
					end

					tbl12.ToggleAnchor = function()
						local v22 = tbl12.GetObjectTarget()
						if v22 then
							return tbl12.SetAnchored(v22, not tbl7.Anchored[v22])
						end
					end

					do
						local function fn33(arg, arg2, arg3)
							if objectStates[arg.Target] ~= arg or arg.Held ~= arg2 then
								return
							end

							if arg.HeldRoot and arg.HeldRoot.Parent then
								arg.CFrame = arg.HeldRoot.CFrame * arg.HeldOffset:Inverse()
							end

							if arg.Group then
								local group = arg.Group
								local n37 = arg.CFrame * group.Members[arg]:Inverse()

								for k, member in pairs(group.Members) do
									k.CFrame = n37 * member
								end

								local v22 = fn26(group, arg)
								group.Leader = v22
								group.Driver = v22
							end

							arg.Held = nil
							arg.HeldRoot = nil
							arg.Dirty = true
							arg.RetryAt = 0
							local v22 = ipairs
							local grabConnections = arg.GrabConnections or {}

							for _, grabConnection in v22(grabConnections) do
								grabConnection:Disconnect()
							end

							arg.GrabConnections = nil

							if not flag11 and not arg3 then
								tbl12.UpdateAnchors()
							end
						end

						tbl12.HandleAnchorGrab = function(heldRoot, held)
							local v22 = objectStates[fn22(heldRoot)]
							if not v22 or v22.Held == held then
								return
							end
							tbl12.DisableEndGrabEarly()
							local v23 = ipairs
							local grabConnections = v22.GrabConnections or {}

							for _, grabConnection in v23(grabConnections) do
								grabConnection:Disconnect()
							end

							v22.Held = held
							v22.HeldRoot = heldRoot
							v22.HeldOffset = v22.Root.CFrame:ToObjectSpace(heldRoot.CFrame)

							if v22.Group then
								v22.Group.Leader = v22
								v22.Group.Driver = v22
							end

							for _, node in pairs(v22.Nodes) do
								node.Position.Enabled = false
								node.Orientation.Enabled = false

								if node.Part.Parent then
									node.Part.CustomPhysicalProperties = node.Physics
									node.Part.Massless = node.Massless
								end
							end

							v22.GrabConnections = {
								held.Destroying:Connect(function()
									fn33(v22, held)
								end),
							}

							local grabPart = held:FindFirstChild("GrabPart")
							local weldConstraint = grabPart and grabPart:FindFirstChild("WeldConstraint")

							if weldConstraint then
								v22.GrabConnections[2] = weldConstraint:GetPropertyChangedSignal("Part1"):Connect(function()
									local target = v22.Target

									if fn22(weldConstraint.Part1) ~= target then
										fn33(v22, held)
									end
								end)
							end
						end

						local function fn34(arg, arg2, arg3, arg4)
							local flag12 = arg.HeldRoot and arg4.AssemblyRootPart == arg.HeldRoot.AssemblyRootPart

							if arg.Held then
								arg2 = not flag12
							else
								arg2 = arg.Anchored or arg2 and arg2.Driver ~= arg

								if not arg2 then
									arg2 = arg4 ~= (arg3.AssemblyRootPart or arg3)
								end
							end

							return flag12, arg2 and not arg4.Anchored
						end

						tbl12.UpdateAnchors = function()
							local now3 = os.clock()

							for k, v22 in pairs(tbl16) do
								if not v22.Target.Parent then
									local playerByUserId = Players:GetPlayerByUserId(k)

									if playerByUserId then
										objectStates[v22.Target] = nil
										tbl7.Anchored[v22.Target] = nil
										fn28(v22)
										v22.Target = playerByUserId
										v22.RetryAt = 0
										objectStates[playerByUserId] = v22
										tbl7.Anchored[playerByUserId] = v22
									end
								end
							end

							for k, objectState in pairs(objectStates) do
								local v22, v23 = fn23(k)

								if not (v22 and v23 and v23.Parent) then
									if k:IsA("Player") and (k.Parent or objectState.Anchored) then
										if objectState.Root then
											fn28(objectState)
										end
									else
										tbl12.RemoveObjectFromGroup(k)

										if objectStates[k] then
											fn32(objectState)
										end
									end
								else
									if v22 ~= objectState.Model or v23 ~= objectState.Root or objectState.Dirty and not objectState.Held then
										fn29(objectState, v22, v23)
									end

									if objectState.Held then
										local grabPart = objectState.Held:FindFirstChild("GrabPart")
										grabPart = grabPart and grabPart:FindFirstChild("WeldConstraint")

										if objectState.HeldRoot and objectState.HeldRoot.Parent then
											objectState.CFrame = objectState.HeldRoot.CFrame * objectState.HeldOffset:Inverse()
										end

										if not objectState.Held.Parent or not grabPart or fn22(grabPart.Part1) ~= k then
											fn33(objectState, objectState.Held, true)
										end
									end
								end
							end

							for _, objectGroup in pairs(objectGroups) do
								if objectGroup.CollisionDirty then
									tbl12.UpdateGroupCollisions(objectGroup)
								end

								local leader = objectGroup.Leader

								for k in pairs(objectGroup.Members) do
									if k.Held and k.Root and k.Root.Parent then
										leader = k
										break
									end
								end

								if leader and leader.Root and leader.Root.Parent and (not objectGroup.Anchored or leader.Held) then
									local cFrame2

									if leader.Held then
										cFrame2 = leader.CFrame
									else
										cFrame2 = leader.Root.CFrame
									end

									local n37 = cFrame2 * objectGroup.Members[leader]:Inverse()

									for k, member in pairs(objectGroup.Members) do
										k.CFrame = n37 * member
									end
								end

								if leader and not leader.Held and not objectGroup.Anchored then
									for k in pairs(objectGroup.Members) do
										for k2 in pairs(k.Nodes) do
											if k2.Parent then
												fn27(k2)
											end
										end
									end
								end

								objectGroup.Driver = leader
							end

							for k, objectState in pairs(objectStates) do
								local root = objectState.Root

								if root and root.Parent then
									local group = objectState.Group

									if group and group.Driver == objectState and not objectState.Anchored and not objectState.Held then
										objectState.CFrame = root.CFrame
									end

									local anchored = objectState.Anchored or group and group.Highlight

									if anchored then
										anchored = not (objectState.Highlight and objectState.Highlight.Parent)
									end

									if anchored then
										fn24(objectState)
									end

									local tbl17 = nil

									for k2 in pairs(objectState.Nodes) do
										if k2.Parent then
											local v22, flag12 = fn34(objectState, group, root, k2)
											local flag13 = (k2.AssemblyRootPart or k2) == k2 or v22

											if flag13 then
												flag12 = group ~= nil or flag12
											else
												flag12 = flag13
											end

											if flag12 and not fn21(k2) then
												tbl17 = tbl17 or {}
												tbl17[#tbl17 + 1] = k2
											end
										end
									end

									if tbl17 then
										for _, node in pairs(objectState.Nodes) do
											node.Position.Enabled = false
											node.Orientation.Enabled = false
										end

										if not objectState.Acquiring and now3 >= objectState.RetryAt then
											objectState.Acquiring = true

											task.spawn(function()
												local model = objectState.Model

												local function fn35(arg)
													return objectStates[k] == objectState and objectState.Model == model and (not arg or objectState.Nodes[arg] ~= nil)
												end

												for _, v22 in ipairs(tbl17) do
													if fn35() then
														if v22.Parent and fn35(v22) and not fn21(v22) then
															if pcall(tbl12.SNO, v22, 0.75, function()
																return fn35(v22)
															end) then
																continue
															end
														else
															continue
														end
													end

													break
												end

												objectState.Acquiring = false
												objectState.RetryAt = os.clock() + 0.25
											end)
										end
									else
										for k2, node in pairs(objectState.Nodes) do
											if not k2.Parent then
												objectState.Dirty = true
											else
												local v22, v23 = fn34(objectState, group, root, k2)

												if (k2.AssemblyRootPart or k2) ~= k2 and not v22 then
													objectState.Dirty = true
												elseif not v23 then
													node.Position.Enabled = false
													node.Orientation.Enabled = false
													fn25(node)

													if k2.CustomPhysicalProperties ~= node.Physics then
														k2.CustomPhysicalProperties = node.Physics
													end

													if k2.Massless ~= node.Massless then
														k2.Massless = node.Massless
													end
												else
													local physics = node.Physics
													local massless = node.Massless

													if k2.CustomPhysicalProperties ~= physics then
														k2.CustomPhysicalProperties = physics
													end

													if k2.Massless ~= massless then
														k2.Massless = massless
													end

													local n37 = objectState.CFrame * node.Offset
													local flag12 = objectState.Anchored == true

													if flag12 then
														flag12 = not (group and group.Driver and group.Driver.Held)
													end

													local driver = not flag12 and group and group.Driver
													local heldRoot

													if not driver then
														heldRoot = nil
													elseif driver.HeldRoot and driver.HeldRoot.Parent then
														heldRoot = driver.HeldRoot
													else
														heldRoot = driver.Root
													end

													if heldRoot and heldRoot.Parent then
														local v24 = group.Members[objectState]
														local n38 = group.Members[driver]:Inverse() * v24 * node.Offset

														if heldRoot == driver.HeldRoot then
															n38 = driver.HeldOffset:Inverse() * n38
														end

														fn25(node, heldRoot, n38)
													else
														fn25(node)
														node.Position.Position = n37.Position
														node.Orientation.CFrame = n37.Rotation
													end

													node.Position.Enabled = v23
													node.Orientation.Enabled = v23

													if flag12 then
														local flag13 = math.floor(now3 * 15) % 2 == 0
														local vector3

														if flag13 then
															vector3 = Vector3.new(0, 0.002, 0)
														else
															vector3 = -vector
														end

														k2.CFrame = n37 + vector3
														local vector4

														if flag13 then
															vector4 = Vector3.new(0, 0.05, 0)
														else
															vector4 = -vector2
														end

														k2.AssemblyLinearVelocity = vector4
														k2.AssemblyAngularVelocity = Vector3.zero
													end
												end
											end
										end
									end
								end
							end
						end
					end

					tbl12.ClearAnchors = function()
						for _, objectGroup in pairs(objectGroups) do
							objectGroup.Anchored = false
						end

						for _, objectState in pairs(objectStates) do
							fn31(objectState, false)

							if not objectState.Group then
								fn32(objectState)
							end
						end
					end

					tbl12.UpdateAnchorColors = function()
						for _, v22 in pairs(tbl7.Anchored) do
							fn24(v22)
						end
					end

					tbl12.UpdateGroupCollisions = function(arg)
						if arg.CollisionFolder then
							arg.CollisionFolder:Destroy()
						end

						arg.CollisionFolder = nil
						arg.CollisionDirty = false
						if arg.Deleting or not next(arg.Members) then
							return
						end
						local folder2 = Instance.new("Folder", workspace)
						local tbl17 = {}
						folder2.Name = "ObjectGroupCollisions"
						arg.CollisionFolder = folder2

						for k in pairs(arg.Members) do
							local v22 = ipairs
							local parts = k.Parts or {}

							for _, part4 in v22(parts) do
								if part4.Parent then
									for _, v23 in ipairs(tbl17) do
										if v23.State ~= k then
											local noCollisionConstraint = Instance.new("NoCollisionConstraint")
											noCollisionConstraint.Part0 = part4
											noCollisionConstraint.Part1 = v23.Part
											noCollisionConstraint.Parent = folder2
										end
									end

									tbl17[#tbl17 + 1] = { Part = part4, State = k }
								end
							end
						end
					end

					tbl12.UpdateObjectGroup = function(arg)
						for k in pairs(arg.Members) do
							fn24(k)
						end
					end

					tbl12.RefreshObjectGroups = function()
						if flag11 then
							return
						end
						local tbl17 = {}

						for k in pairs(objectGroups) do
							tbl17[#tbl17 + 1] = k
						end

						table.sort(tbl17, function(arg, arg2)
							return objectGroups[arg].Index < objectGroups[arg2].Index
						end)

						local objectGroup = options.ObjectGroup
						local objectGroup2 = tbl9.ObjectGroup

						if objectGroup then
							objectGroup:SetValues(tbl17)
							local v22 = objectGroup
							local setValue = v22.SetValue

							if not objectGroups[objectGroup2] then
								objectGroup2 = nil
							end

							setValue(v22, objectGroup2)
						end

						local v22 = objectGroups[tbl9.ObjectGroup]
						local objects = 0

						if v22 then
							for k in pairs(v22.Members) do
								objects += 1
							end
						end

						if tbl9.ObjectGroupLabel then
							tbl9.ObjectGroupLabel:SetText("Objects: " .. objects)
						end
					end

					tbl12.CreateObjectGroup = function()
						n36 += 1
						local objectGroup = "Group " .. n36

						objectGroups[objectGroup] = {
							Name = objectGroup,
							Index = n36,
							Members = {},
							Anchored = false,
							Noclip = false,
							Highlight = false,
							FillColor = anchorSettings.FillColor,
							OutlineColor = anchorSettings.OutlineColor,
						}

						tbl9.ObjectGroup = objectGroup
						tbl12.RefreshObjectGroups()
					end

					tbl12.RemoveObjectFromGroup = function(arg)
						if not objectStates[arg] then
							arg = fn22(arg) or arg
						end

						local v22 = objectStates[arg]
						local group = v22 and v22.Group
						if not group then
							return false
						end
						group.Members[v22] = nil
						v22.Group = nil
						tbl12.UpdateGroupCollisions(group)
						fn24(v22)

						if group.Leader == v22 then
							group.Leader = next(group.Members)
						end

						if group.Driver == v22 then
							group.Driver = group.Leader
						end

						if not v22.Anchored then
							fn32(v22)
						end

						tbl12.RefreshObjectGroups()
						return true
					end

					tbl12.AddObjectToGroup = function()
						if flag11 then
							return
						end
						local v22 = tbl12.GetObjectTarget()
						local v23 = objectGroups[tbl9.ObjectGroup]
						if not v23 then
							return fn18("Select an object group first.")
						end

						if not v22 or v22:IsA("Player") then
							return fn18("Grab a movable toy first.")
						end
						local v24 = fn30(v22)
						if not v24 then
							return fn18("This object cannot be grouped.")
						end

						if v24.Group == v23 then
							return
						end

						if v24.Group then
							return fn18("Remove this object from its current group first.")
						end
						local leader = v23.Leader

						if leader then
							leader = not (v23.Leader.Root and v23.Leader.Root.Parent)
						end

						if leader then
							tbl12.RemoveObjectFromGroup(v23.Leader.Target)
						end

						v23.Leader = v23.Leader or v24
						local leader2 = v23.Leader
						local n37

						if v23.Members[leader2] then
							n37 = leader2.Root.CFrame * v23.Members[leader2]:Inverse()
						else
							n37 = v24.Root.CFrame
						end

						v23.Members[v24] = n37:ToObjectSpace(v24.Root.CFrame)
						v24.Group = v23

						if not v23.Driver then
							local v25 = fn26(v23, v24)
							v23.Leader = v25
							v23.Driver = v25
						end

						tbl12.UpdateGroupCollisions(v23)

						if v23.Anchored or v24.Anchored then
							v23.Anchored = true

							for k in pairs(v23.Members) do
								fn31(k, true)
							end
						end

						fn24(v24)
						tbl12.RefreshObjectGroups()
					end

					tbl12.DeleteObjectGroup = function(arg)
						local v22 = objectGroups[arg]
						if not v22 then
							return
						end
						v22.Deleting = true

						while next(v22.Members) do
							tbl12.RemoveObjectFromGroup(next(v22.Members).Target)
						end

						if v22.CollisionFolder then
							v22.CollisionFolder:Destroy()
						end

						objectGroups[arg] = nil
						tbl12.RefreshObjectGroups()
					end

					tbl12.ReleaseObject = function(arg)
						if not objectStates[arg] then
							arg = fn22(arg) or arg
						end

						tbl12.RemoveObjectFromGroup(arg)
						local v22 = objectStates[arg]

						if v22 then
							fn32(v22)
						end
					end
				end

				do
					do
						tbl12.ClearObjectGroups = function()
							for k in pairs(objectGroups) do
								tbl12.DeleteObjectGroup(k)
							end
						end

						tbl12.BananaRagdoll = function(arg)
							local v22, v23, v24 = tbl12.Char()
							local rightLeg, v25, v26 = tbl12.Char(arg)
							rightLeg = rightLeg and rightLeg:FindFirstChild("Right Leg")

							if rightLeg and v25 and v26 and v26.Health > 0 and v23 and v24.Health > 0 and tbl12.GetMagnitude(v25, workspace.SpawnLocation) < 3000 then
								local rscBanana = v17:FindFirstChild("RSCBanana") or tbl12.SpawnToy("FoodBanana")
								local weight = rscBanana and rscBanana:WaitForChild("Weight", 0.25)
								local hitboxPart = weight and rscBanana:WaitForChild("HitboxPart", 0.25)
								local main = hitboxPart and rscBanana:WaitForChild("Main", 0.25)
								if not main or not tbl12.MakeFoodEaten(rscBanana, true) or not v25 then
									return tbl12.DestroyToy(rscBanana)
								end

								if weight.ReceiveAge ~= 0 then
									if not tbl12.SNO(hitboxPart) then
										return tbl12.DestroyToy(rscBanana)
									end
									tbl12.RNO(hitboxPart)
								end

								if rscBanana.Name ~= "RSCBanana" then
									for _, child in pairs(rscBanana:GetChildren()) do
										if child:IsA("BasePart") then
											child.CanCollide = false
											child.CanTouch = true
											child.Transparency = 1
										end
									end

									rscBanana.Name = "RSCBanana"
								end

								local now3 = tick()

								while tick() - now3 <= 0.075 do
									main.CFrame = rightLeg.CFrame
									main.Velocity = Vector3.new(0.1, 0.1, 0.1)
									RunService.Heartbeat:Wait()
									tbl12.ResetVelocity(main)
								end
							end
						end

						tbl12.MakeBlack = function(arg)
							local v22, v23, v24 = tbl12.Char()
							local v25, v26, v27 = tbl12.Char(arg)

							if v24 and v24.Health > 0 and v23 and v26 and v27 and v27.Health > 0 and tbl12.GetMagnitude(v26, workspace.SpawnLocation) < 3000 and (not localPlayer.InPlot.Value or tbl9.IsBarrierBroken) then
								local rscOven = v17:FindFirstChild("RSCOven") or tbl12.SpawnToy("OvenDarkGray")
								if not rscOven then
									return
								end
								local buttonOven = rscOven:WaitForChild("ButtonOven", 0.25)
								if not buttonOven then
									return tbl12.DestroyToy(rscOven)
								end
								local main = rscOven:WaitForChild("Main", 0.25)
								if not main then
									return tbl12.DestroyToy(rscOven)
								end
								local v28 = tbl12.FindNicePart(rscOven)
								if not tbl12.SNO(v28) then
									return tbl12.DestroyToy(rscOven)
								end

								if buttonOven.Transparency ~= 1 then
									main.CFrame = v23.CFrame * CFrame.new(0, 5, 0)
									task.wait(0.15)
									tbl12.Grab(buttonOven)
									task.wait(0.15)
								end

								if rscOven.Name ~= "RSCOven" then
									for _, v29 in rscOven:GetChildren() do
										if v29:IsA("BasePart") or v29:IsA("MeshPart") then
											v29.CanCollide = false
											v29.CanTouch = true
											v29.CanQuery = true
											v29.Transparency = 1
										end
									end

									rscOven.Name = "RSCOven"
								end

								local now3 = tick()

								while tick() - now3 <= 0.1 do
									tbl12.Teleport(main, v26)
									RunService.Heartbeat:Wait()
								end
							end
						end

						tbl12.Microwave = function(arg)
							local v22, v23, v24 = tbl12.Char()
							local v25, v26, v27 = tbl12.Char(arg)

							if v24 and v24.Health > 0 and v23 and v26 and v27 and v27.Health > 0 and tbl12.GetMagnitude(v26, workspace.SpawnLocation) < 3000 and (not localPlayer.InPlot.Value or tbl9.IsBarrierBroken) then
								local rscMicrowave = v17:FindFirstChild("RSCMicrowave") or tbl12.SpawnToy("OvenMicrowaveWhite")
								if not rscMicrowave then
									return
								end
								local button = rscMicrowave:WaitForChild("Button", 0.25)
								local primaryPart = rscMicrowave.PrimaryPart
								if not (button and primaryPart) then
									return tbl12.DestroyToy(rscMicrowave)
								end
								local v28 = tbl12.FindNicePart(rscMicrowave)
								if not tbl12.SNO(v28) then
									return tbl12.DestroyToy(rscMicrowave)
								end

								if button.Transparency ~= 1 then
									primaryPart.CFrame = v23.CFrame * CFrame.new(0, 5, 0)
									task.wait(0.15)
									tbl12.Grab(button)
									task.wait(0.15)
								end

								if rscMicrowave.Name ~= "RSCMicrowave" then
									for _, v29 in rscMicrowave:GetChildren() do
										if v29:IsA("BasePart") then
											v29.CanCollide = false
											v29.CanTouch = true
											v29.CanQuery = true
											v29.Transparency = 1
										end
									end

									rscMicrowave.Name = "RSCMicrowave"
								end

								local now3 = tick()

								while tick() - now3 <= 0.1 do
									tbl12.Teleport(primaryPart, v26)
									RunService.Heartbeat:Wait()
								end
							end
						end

						tbl12.Campfire = function(arg)
							local v22, v23, v24 = tbl12.Char()
							local v25, v26, v27 = tbl12.Char(arg)

							if v26 and v27 and v27.Health > 0 and v23 and v24.Health > 0 and tbl12.GetMagnitude(v26, workspace.SpawnLocation) < 3000 then
								local rscCampfire = v17:FindFirstChild("RSCCampfire") or tbl12.SpawnToy("Campfire")
								local soundPart = rscCampfire and rscCampfire:WaitForChild("SoundPart", 0.25)
								local main = soundPart and rscCampfire:WaitForChild("Main", 0.25)
								if not main or not v26 or not tbl12.SNO(soundPart) then
									return tbl12.DestroyToy(rscCampfire)
								end

								if rscCampfire.Name ~= "RSCCampfire" then
									for _, child in pairs(rscCampfire:GetChildren()) do
										if child:IsA("BasePart") then
											child.CanCollide = false
											child.CanTouch = true
											child.Transparency = 1
										end
									end

									rscCampfire.Name = "RSCCampfire"
								end

								local now3 = tick()

								while tick() - now3 <= 0.1 do
									tbl12.Teleport(main, v26.CFrame - Vector3.new(0, 2, 0))
									RunService.Heartbeat:Wait()
								end
							end
						end

						do
							local flingState = tbl7.FlingState

							tbl12.ClearFling = function()
								local toy = flingState.Toy
								local part4 = flingState.Part
								local v22 = flingState
								local v23 = flingState
								flingState.Toy = nil
								v22.Part = nil
								v23.ActiveMethod = nil

								if part4 and part4.Parent then
									tbl12.ResetVelocity(part4)
								end

								if toy and toy.Parent then
									tbl12.DestroyToy(toy)
								end
							end

							tbl12.Fling = function(arg)
								if flingState.Busy then
									return
								end
								flingState.Busy = true

								local ok, result = pcall(function()
									local v22, v23, v24 = tbl12.Char()
									local v25, v26, v27 = tbl12.Char(arg)
									if not (v23 and v24 and v24.Health > 0 and v26 and v27 and v27.Health > 0 and tbl12.GetMagnitude(v26, workspace.SpawnLocation) < 3000) then
										return
									end
									local method = flingState.Method
									local toy = flingState.Toy
									local part4 = flingState.Part

									if not (toy and toy.Parent and part4 and part4.Parent and flingState.ActiveMethod == method) then
										tbl12.ClearFling()
										toy = tbl12.SpawnToy(method, nil, 1)
										local v28

										if toy then
											local v29 = toy
											local waitForChild = v29.WaitForChild
											local str5

											if method == "YouDecoy" then
												str5 = "HumanoidRootPart"
											else
												str5 = "Main"
											end

											v28 = waitForChild(v29, str5, 0.5)
										else
											v28 = toy
										end

										if toy then
											local v29 = toy
											local waitForChild = v29.WaitForChild
											local str5

											if method == "YouDecoy" then
												str5 = "HumanoidRootPart"
											else
												str5 = "SoundPart"
											end

											part4 = waitForChild(v29, str5, 0.5)
										else
											part4 = toy
										end

										if not (v28 and part4 and tbl12.SNO(part4)) or flingState.Method ~= method or flag11 then
											tbl12.DestroyToy(toy)
											return
										end
										local v29 = flingState
										local v30 = flingState
										flingState.Toy = toy
										v29.Part = part4
										v30.ActiveMethod = method
									elseif not tbl12.IsPartOwner(part4) and not tbl12.SNO(part4, 0.35) then
										tbl12.ClearFling()
										return
									end

									local now3 = os.clock()
									local BasePart = toy:QueryDescendants("BasePart")
									local tbl17 = {}
									local n37 = 1

									while true do
										local flag12 = flag11 or flingState.Toy ~= toy or flingState.Method ~= method

										if not flag12 then
											flag12 = not (toy.Parent and v26.Parent and v27.Health > 0)
										end

										if not flag12 then
											n37 = -n37
											tbl12.PivotTo(toy, tbl12.PredictCFrame(v26) * CFrame.new(n37 * 0.75, 0, 0), BasePart, tbl17)
											part4.AssemblyLinearVelocity = Vector3.new(n37 * 250, 120, -n37 * 250)
											part4.AssemblyAngularVelocity = Vector3.new(n37 * 1500, 1500, -n37 * 1500)
											RunService.Heartbeat:Wait()
											if not (os.clock() - now3 >= 0.2) then
												continue
											end
										end

										break
									end

									if flingState.Toy == toy and toy.Parent and part4.Parent then
										tbl12.ResetVelocity(part4)
										tbl12.PivotTo(toy, CFrame.new(0, 100000, 0), BasePart, tbl17)
									end

									return true
								end)

								flingState.Busy = false

								if not ok then
									error(result, 0)
								end

								return result
							end
						end
					end

					do
						local toysAuraSettings

						do
							tbl13 = {
								Shapes = {},
								ShapeNames = {},
								ShapeCache = {},
								Models = {},
								Movers = {},
								Candidates = {},
								Inventories = {},
								ActiveInventories = {},
								CharacterParts = {},
								CharacterRoots = {},
							}

							toysAuraSettings = tbl7.ToysAuraSettings

							tbl13.ClearCharacterRoots = function()
								tbl12.SetRuntimeConnection("ToyAuraCharacterAdded", nil, false)
								tbl12.SetRuntimeConnection("ToyAuraCharacterRemoved", nil, false)
								tbl13.Character = nil
								table.clear(tbl13.CharacterParts)
								table.clear(tbl13.CharacterRoots)
							end

							tbl13.UpdateCharacterRoots = function()
								local character = localPlayer.Character

								if character ~= tbl13.Character then
									tbl13.ClearCharacterRoots()
									tbl13.Character = character

									if character then
										tbl12.SetRuntimeConnection("ToyAuraCharacterAdded", character.DescendantAdded, true, function(arg)
											if arg:IsA("BasePart") then
												tbl13.CharacterParts[arg] = true
											end
										end)

										tbl12.SetRuntimeConnection("ToyAuraCharacterRemoved", character.DescendantRemoving, true, function(arg)
											tbl13.CharacterParts[arg] = nil
										end)

										for _, v22 in character:QueryDescendants("BasePart") do
											tbl13.CharacterParts[v22] = true
										end
									end
								end

								local characterRoots = tbl13.CharacterRoots
								table.clear(characterRoots)

								for k in pairs(tbl13.CharacterParts) do
									characterRoots[k.AssemblyRootPart or k] = true
								end
							end

							tbl13.AddCandidate = function(arg, arg2)
								if not arg:IsA("Model") then
									arg = arg:FindFirstAncestorOfClass("Model")
								end

								while arg and arg.Parent and arg.Parent:IsA("Model") do
									arg = arg.Parent
								end

								if arg and (arg == arg2 or arg:IsDescendantOf(arg2)) then
									tbl13.Candidates[arg] = arg2
								end
							end

							tbl13.UntrackInventory = function(arg)
								local v22 = tbl13.Inventories[arg]
								if not v22 then
									return
								end
								tbl13.Inventories[arg] = nil

								for _, v23 in ipairs(v22) do
									v23:Disconnect()
								end

								for k, candidate in pairs(tbl13.Candidates) do
									if candidate == arg then
										tbl13.Candidates[k] = nil
										tbl7.ToyAuraRoots[k] = nil
									end
								end
							end

							tbl13.TrackInventory = function(arg)
								if not (arg and arg.Parent) or tbl13.Inventories[arg] then
									return
								end

								local tbl17 = {
									arg.DescendantAdded:Connect(function(descendant)
										tbl13.AddCandidate(descendant, arg)
									end),
									arg.DescendantRemoving:Connect(function(descendant)
										if tbl13.Candidates[descendant] == arg then
											tbl13.Candidates[descendant] = nil
											tbl7.ToyAuraRoots[descendant] = nil
										end
									end),
								}

								tbl13.Inventories[arg] = tbl17

								task.spawn(function()
									for i, descendant in ipairs(arg:GetDescendants()) do
										if tbl13.Inventories[arg] ~= tbl17 then
											return
										end
										tbl13.AddCandidate(descendant, arg)

										if i % 100 == 0 then
											task.wait()
										end
									end
								end)
							end

							tbl13.RefreshInventories = function(arg)
								local activeInventories = tbl13.ActiveInventories
								table.clear(activeInventories)

								for _, inventory in ipairs(tbl7.Inventories) do
									if inventory and inventory.Parent then
										activeInventories[inventory] = true
										tbl13.TrackInventory(inventory)
									end
								end

								if arg and arg.Parent then
									activeInventories[arg] = true
									tbl13.TrackInventory(arg)
								end

								for k in pairs(tbl13.Inventories) do
									if not activeInventories[k] then
										tbl13.UntrackInventory(k)
									end
								end
							end

							tbl13.CleanupCandidates = function()
								for k in pairs(tbl13.Inventories) do
									tbl13.UntrackInventory(k)
								end

								table.clear(tbl13.Candidates)
								table.clear(tbl13.ActiveInventories)

								if flag11 or not toysAuraSettings.Enabled then
									tbl13.ClearCharacterRoots()
								end
							end

							tbl13.GetRoot = function(arg)
								if not arg or not arg.Parent or tbl7.ToyAuraReserved[arg] or arg.Name:find("RSC", 1, true) then
									return
								end
								local v22 = tbl7.ToyAuraRoots[arg]
								local parent2 = v22 and v22.Parent
								local flag12

								if parent2 then
									flag12 = v22 == arg or v22:IsDescendantOf(arg)
								else
									flag12 = parent2
								end

								local primaryPart

								if flag12 then
									primaryPart = v22
								else
									primaryPart = nil
								end

								if not primaryPart then
									if arg:FindFirstChildOfClass("Humanoid") then
										return
									end

									if arg:IsA("BasePart") then
										primaryPart = arg
									elseif arg:IsA("Model") then
										primaryPart = tbl12.FindNicePart(arg) or arg.PrimaryPart or arg:FindFirstChildWhichIsA("BasePart")
									end
								end

								if not primaryPart or not primaryPart.Parent then
									return
								end
								local assemblyRootPart = primaryPart.AssemblyRootPart or primaryPart
								if tbl13.CharacterRoots[assemblyRootPart] or assemblyRootPart ~= arg and not assemblyRootPart:IsDescendantOf(arg) then
									return
								end

								if v22 and v22 ~= assemblyRootPart then
									tbl13.ClearMovers(arg)
								end

								tbl7.ToyAuraRoots[arg] = assemblyRootPart
								return assemblyRootPart
							end

							tbl13.SetCollisions = function(arg, canCollide)
								local v22 = tbl13.Movers[arg]
								if not v22 then
									return
								end

								if canCollide == nil then
									for k, v23 in v22.Parts, nil, nil do
										if k.Parent then
											k.CanCollide = v23
										end
									end

									table.clear(v22.Parts)
									return
								end

								for _, v23 in arg:QueryDescendants("BasePart") do
									if v22.Parts[v23] == nil then
										v22.Parts[v23] = v23.CanCollide
									end

									v23.CanCollide = canCollide
								end

								if arg:IsA("BasePart") then
									if v22.Parts[arg] == nil then
										v22.Parts[arg] = arg.CanCollide
									end

									arg.CanCollide = canCollide
								end
							end

							tbl13.ClearMovers = function(arg)
								if not arg then
									for k in tbl13.Movers, nil, nil do
										tbl13.ClearMovers(k)
									end

									return
								end

								local v22 = tbl13.Movers[arg]
								if not v22 then
									return
								end
								tbl13.SetCollisions(arg, nil)
								v22.Position:Destroy()
								v22.Orientation:Destroy()
								v22.Attachment:Destroy()
								tbl13.Movers[arg] = nil
							end

							tbl12.ClearObjectAura = function(arg)
								if arg then
									tbl13.ClearMovers(arg)
								end
							end

							tbl13.EnsureMovers = function(arg, arg2)
								if tbl7.ObjectStates[arg] then
									return
								end
								local v22 = arg2 or tbl13.GetRoot(arg)
								if not v22 or v22.Anchored then
									return
								end
								local tbl17 = tbl13.Movers[arg]
								local flag12

								if tbl17 then
									flag12 = tbl17.Root ~= v22 or tbl17.Attachment.Parent ~= v22 or tbl17.Position.Parent ~= v22 or tbl17.Orientation.Parent ~= v22
								else
									flag12 = tbl17
								end

								if flag12 then
									tbl13.ClearMovers(arg)
									tbl17 = nil
								end

								if not tbl17 then
									local auraAttachment = v22:FindFirstChild("AuraAttachment") or Instance.new("Attachment")
									auraAttachment.Name = "AuraAttachment"
									auraAttachment.Parent = v22
									local auraAlignPos = v22:FindFirstChild("AuraAlignPos") or Instance.new("AlignPosition")
									auraAlignPos.Name = "AuraAlignPos"
									auraAlignPos.Attachment0 = auraAttachment
									auraAlignPos.Mode = Enum.PositionAlignmentMode.OneAttachment
									auraAlignPos.ApplyAtCenterOfMass = true
									auraAlignPos.MaxForce = math.huge
									auraAlignPos.MaxVelocity = math.huge
									auraAlignPos.RigidityEnabled = false
									auraAlignPos.Parent = v22
									local auraAlignOri = v22:FindFirstChild("AuraAlignOri") or Instance.new("AlignOrientation")
									auraAlignOri.Name = "AuraAlignOri"
									auraAlignOri.Attachment0 = auraAttachment
									auraAlignOri.Mode = Enum.OrientationAlignmentMode.OneAttachment
									auraAlignOri.MaxTorque = math.huge
									auraAlignOri.MaxAngularVelocity = math.huge
									auraAlignOri.RigidityEnabled = false
									auraAlignOri.Parent = v22
									tbl17 = { Root = v22, Attachment = auraAttachment, Position = auraAlignPos, Orientation = auraAlignOri, Parts = {} }
									tbl13.Movers[arg] = tbl17
								end

								local responsiveness = toysAuraSettings.Responsiveness or 55

								if tbl17.Responsiveness ~= responsiveness then
									tbl17.Position.Responsiveness = responsiveness
									tbl17.Orientation.Responsiveness = math.max(responsiveness - 10, 10)
									tbl17.Responsiveness = responsiveness
								end

								if tbl17.Collisions ~= toysAuraSettings.Collisions then
									tbl13.SetCollisions(arg, toysAuraSettings.Collisions)
									tbl17.Collisions = toysAuraSettings.Collisions
								end

								return tbl17.Position, tbl17.Orientation, v22, tbl17
							end

							tbl13.UpdatePhysics = function(arg, arg2, arg3, arg4, arg5)
								local v22, v23, v24, v25 = tbl13.EnsureMovers(arg, arg2)
								if not v22 then
									return
								end
								local position = arg3.Position

								if v25.TargetPosition ~= position then
									v22.Position = position
									v25.TargetPosition = position
								end

								arg5 = arg5 and arg5 - position
								local cframe

								if arg4 and arg5 and arg5:Dot(arg5) > 0.0025 then
									cframe = CFrame.lookAt(Vector3.zero, arg5)
								else
									cframe = arg3.Rotation
								end

								if v25.TargetOrientation ~= cframe then
									v23.CFrame = cframe
									v25.TargetOrientation = cframe
								end
							end

							tbl13.GetPath = function(arg, arg2, arg3)
								local tbl17 = {}
								local tbl18 = {}
								local n37

								if arg3 then
									n37 = #arg
								else
									n37 = #arg - 1
								end

								local n38 = 0

								for i = 1, n37 do
									local magnitude = (arg[i % #arg + 1] - arg[i]).Magnitude
									tbl18[i] = magnitude
									n38 += magnitude
								end

								if n38 == 0 then
									return table.create(arg2, arg[1] or Vector3.zero)
								end

								for i = 1, arg2 do
									local n39 = i - 1
									local n40

									if arg3 then
										n40 = arg2
									else
										n40 = math.max(arg2 - 1, 1)
									end

									local n41 = n39 / n40 * n38
									local n42 = 1

									while n42 < n37 and n41 > tbl18[n42] do
										n41 -= tbl18[n42]
										n42 += 1
									end

									local n43

									if tbl18[n42] > 0 then
										n43 = math.clamp(n41 / tbl18[n42], 0, 1)
									else
										n43 = 0
									end

									tbl17[i] = arg[n42]:Lerp(arg[n42 % #arg + 1], n43)
								end

								return tbl17
							end

							tbl13.AddShape = function(arg, arg2, arg3)
								if not tbl13.Shapes[arg] then
									table.insert(tbl13.ShapeNames, arg)
								end

								tbl13.Shapes[arg] = { Generate = arg2, Closed = arg3 }
								table.clear(tbl13.ShapeCache)
							end

							tbl13.GetShape = function(count)
								local circle = tbl13.Shapes[toysAuraSettings.Shape] or tbl13.Shapes.Circle
								local rows = math.clamp(math.floor(toysAuraSettings.Rows or 1), 1, math.max(count, 1))
								local rotations = math.max(toysAuraSettings.Rotations or 1, 0)
								local shapeCache = tbl13.ShapeCache
								if shapeCache.Shape == circle and shapeCache.Count == count and shapeCache.Rows == rows and shapeCache.Rotations == rotations then
									return shapeCache.Points
								end
								local v22

								if type(circle.Generate) == "table" then
									v22 = tbl13.GetPath(circle.Generate, count, circle.Closed)
								else
									local n37

									if circle.Closed ~= nil then
										n37 = math.max(192, count * 4)
									else
										n37 = count
									end

									local v23 = table.create(n37)

									for i = 1, n37 do
										v23[i] = circle.Generate(i, n37, rows, rotations)
									end

									if circle.Closed == nil then
										v22 = v23
									else
										v22 = tbl13.GetPath(v23, count, circle.Closed)
									end
								end

								shapeCache.Shape = circle
								shapeCache.Count = count
								shapeCache.Rows = rows
								shapeCache.Rotations = rotations
								shapeCache.Points = v22
								return v22
							end

							tbl13.GetRow = function(arg, arg2, arg3)
								local n37 = math.floor(arg2 / arg3)
								local n38 = arg2 % arg3
								local n39 = (n37 + 1) * n38
								if arg <= n39 then
									return math.floor((arg - 1) / (n37 + 1)), (arg - 1) % (n37 + 1), n37 + 1
								end
								local n40 = arg - n39 - 1
								return n38 + math.floor(n40 / n37), n40 % n37, n37
							end

							tbl13.GetOffset = function(arg)
								local n37 = (toysAuraSettings.Radius or 20) * (toysAuraSettings.Spacing or 1)
								return Vector3.new(arg.X * n37, arg.Y * (toysAuraSettings.Height or toysAuraSettings.Radius or 20), arg.Z * n37)
							end

							tbl13.GetCenter = function(arg)
								local center = toysAuraSettings.Center or CFrame.new(0, 50, 0)

								if toysAuraSettings.PosType == "You" and arg then
									center = arg.CFrame * toysAuraSettings.Offset
								elseif toysAuraSettings.PosType == "Players" and tbl9.SelectedTAPlayer then
									local v22, v23 = tbl12.Char(tbl9.SelectedTAPlayer)

									if v23 then
										center = v23.CFrame * toysAuraSettings.Offset
									end
								elseif toysAuraSettings.PosType == "Custom Pos" and toysAuraSettings.CustomPos then
									center = toysAuraSettings.CustomPos * toysAuraSettings.Offset
								end

								local rad = math.rad
								local z = toysAuraSettings.Rotation.Z
								return center * CFrame.Angles(math.rad(toysAuraSettings.Rotation.X), math.rad(toysAuraSettings.Rotation.Y), rad(z))
							end

							tbl13.AddModel = function(arg, arg2, arg3, arg4)
								if flag11 or not arg or not arg.Parent or not arg:IsA("Model") or tbl13.Models[arg] then
									return
								end

								if tbl7.ObjectStates[arg] then
									return
								end

								if toysAuraSettings.OwnInventoryOnly and not arg:IsDescendantOf(v17) then
									return
								end

								if toysAuraSettings.LimitEnabled and #toysAuraSettings.Models >= toysAuraSettings.Limit then
									return
								end

								if not arg4 then
									tbl13.UpdateCharacterRoots()
									arg4 = tbl13.GetRoot(arg)
								end

								if not arg4 then
									return
								end

								if arg2 and not tbl12.IsPartOwner(arg4) then
									if not tbl12.SNO(arg4, arg3 or 0.35) then
										return
									end
									tbl13.UpdateCharacterRoots()
									if tbl13.GetRoot(arg) ~= arg4 then
										return
									end
								end

								if flag11 or not arg.Parent or tbl13.Models[arg] or tbl7.ObjectStates[arg] then
									return
								end

								if toysAuraSettings.LimitEnabled and #toysAuraSettings.Models >= toysAuraSettings.Limit then
									return
								end
								table.insert(toysAuraSettings.Models, arg)
								tbl13.Models[arg] = true
								return true
							end

							tbl13.RemoveModel = function(arg, arg2, arg3)
								local v22 = arg3 or table.find(toysAuraSettings.Models, arg)

								if v22 then
									table.remove(toysAuraSettings.Models, v22)
								end

								tbl13.Models[arg] = nil
								tbl13.ClearMovers(arg)

								if arg2 then
									local v23 = tbl13.GetRoot(arg)

									if v23 then
										task.delay(0.1, function()
											if v23.Parent and not tbl13.Models[arg] and not tbl7.ObjectStates[arg] then
												tbl12.RNO(v23)
											end
										end)
									end
								end

								tbl7.ToyAuraRoots[arg] = nil
							end

							tbl13.TrimModels = function()
								while toysAuraSettings.LimitEnabled and #toysAuraSettings.Models > toysAuraSettings.Limit do
									tbl13.RemoveModel(toysAuraSettings.Models[#toysAuraSettings.Models], true)
								end
							end

							tbl13.ClearModels = function(arg)
								for i = #toysAuraSettings.Models, 1, -1 do
									tbl13.RemoveModel(toysAuraSettings.Models[i], arg, i)
								end

								tbl13.ClearMovers()
							end

							tbl13.AddShape("Line", function(arg, arg2)
								local n37

								if arg2 == 1 then
									n37 = 0.5
								else
									n37 = (arg - 1) / (arg2 - 1)
								end

								return Vector3.new(-1 + 2 * n37, 0, 0)
							end)

							tbl13.AddShape("Circle", function(arg, arg2)
								local n37 = (arg - 1) / arg2 * 3.1415926535897931 * 2
								local sin = math.sin
								return Vector3.new(math.cos(n37), 0, sin(n37))
							end)

							for _, v22 in {
								{ "Triangle", 3 },
								{ "Square", 4 },
								{ "Pentagon", 5 },
								{ "Hexagon", 6 },
								{ "Octagon", 8 },
							}, nil, nil do
								local tbl17 = {}

								for i = 1, v22[2] do
									local n37 = (i - 1) / v22[2] * 3.1415926535897931 * 2 - 1.5707963267948966
									local sin = math.sin
									tbl17[i] = Vector3.new(math.cos(n37), 0, sin(n37))
								end

								tbl13.AddShape(v22[1], tbl17, true)
							end

							tbl13.AddShape("Diamond", {
								Vector3.new(0, 0, -1),
								Vector3.new(1, 0, 0),
								Vector3.new(0, 0, 1),
								Vector3.new(-1, 0, 0),
							}, true)

							do
								local tbl17 = {}

								for i = 1, 10 do
									local n37

									if i % 2 == 1 then
										n37 = 1
									else
										n37 = 0.42
									end

									local n38 = (i - 1) / 10 * 3.1415926535897931 * 2 - 1.5707963267948966
									tbl17[i] = Vector3.new(math.cos(n38) * n37, 0, math.sin(n38) * n37)
								end

								tbl13.AddShape("Star", tbl17, true)
							end
						end

						tbl13.AddShape("Heart", function(arg, arg2)
							local n37 = (arg - 1) / arg2 * 3.1415926535897931 * 2
							return Vector3.new(16 * math.sin(n37) ^ 3 / 17, 0, -(13 * math.cos(n37) - 5 * math.cos(2 * n37) - 2 * math.cos(3 * n37) - math.cos(4 * n37)) / 17)
						end, true)

						tbl13.AddShape("Penis", function(arg, arg2)
							local n37 = (arg - 1) / math.max(arg2 - 1, 1)
							if n37 < 0.22 then
								local n38 = n37 / 0.22 * 3.1415926535897931 * 2
								return Vector3.new(-0.38 + math.cos(n38) * 0.34, -0.86 + math.sin(n38) * 0.18, math.sin(n38) * 0.28)
							end

							if n37 < 0.44 then
								local n38 = (n37 - 0.22) / 0.22 * 3.1415926535897931 * 2
								return Vector3.new(0.38 + math.cos(n38) * 0.34, -0.86 + math.sin(n38) * 0.18, math.sin(n38) * 0.28)
							end

							if n37 < 0.8 then
								local n38 = (n37 - 0.44) / 0.36
								local n39 = n38 * 3.1415926535897931 * 2 * 3
								local n40 = 0.34 - n38 * 0.07 + math.sin(n38 * 3.1415926535897931) * 0.04
								return Vector3.new(math.cos(n39) * n40, -0.48 + n38 * 1.28, math.sin(n39) * n40)
							end

							local n38 = (n37 - 0.8) / 0.2
							local n39 = n38 * 3.1415926535897931 * 2
							local n40 = 0.26 + math.sin(n38 * 3.1415926535897931) * 0.16
							return Vector3.new(math.cos(n39) * n40, 0.78 + n38 * 0.34, math.sin(n39) * n40)
						end)

						tbl13.AddShape("Flower", function(arg, arg2)
							local n37 = (arg - 1) / arg2 * 3.1415926535897931 * 2
							local n38 = 0.62 + math.cos(n37 * 6) * 0.32
							return Vector3.new(math.cos(n37) * n38, 0, math.sin(n37) * n38)
						end, true)

						tbl13.AddShape("Clover", function(arg, arg2)
							local n37 = (arg - 1) / arg2 * 3.1415926535897931 * 2
							local n38 = 0.35 + math.abs(math.sin(n37 * 2)) * 0.65
							return Vector3.new(math.cos(n37) * n38, 0, math.sin(n37) * n38)
						end, true)

						tbl13.AddShape("Infinity", function(arg, arg2)
							local n37 = (arg - 1) / arg2 * 3.1415926535897931 * 2
							return Vector3.new(math.sin(n37), 0, math.sin(n37) * math.cos(n37))
						end, true)

						tbl13.AddShape("Spiral", function(arg, arg2, arg3, arg4)
							local n37 = (arg - 1) / math.max(arg2 - 1, 1)
							local n38 = n37 * 3.1415926535897931 * 2 * arg4
							return Vector3.new(math.cos(n38) * n37, 0, math.sin(n38) * n37)
						end, false)

						tbl13.AddShape("Wave", function(arg, arg2, arg3, arg4)
							local n37 = (arg - 1) / math.max(arg2 - 1, 1)
							return Vector3.new(-1 + 2 * n37, math.sin(n37 * 3.1415926535897931 * 2 * arg4) * 0.5, 0)
						end, false)

						tbl13.AddShape("Cross", {
							Vector3.new(0.24, 0, -1),
							Vector3.new(0.24, 0, -0.24),
							Vector3.new(1, 0, -0.24),
							Vector3.new(1, 0, 0.24),
							Vector3.new(0.24, 0, 0.24),
							Vector3.new(0.24, 0, 1),
							Vector3.new(-0.24, 0, 1),
							Vector3.new(-0.24, 0, 0.24),
							Vector3.new(-1, 0, 0.24),
							Vector3.new(-1, 0, -0.24),
							Vector3.new(-0.24, 0, -0.24),
							Vector3.new(-0.24, 0, -1),
						}, true)

						tbl13.AddShape("Arrow", {
							Vector3.new(-1, 0, -0.25),
							Vector3.new(0.2, 0, -0.25),
							Vector3.new(0.2, 0, -0.65),
							Vector3.new(1, 0, 0),
							Vector3.new(0.2, 0, 0.65),
							Vector3.new(0.2, 0, 0.25),
							Vector3.new(-1, 0, 0.25),
						}, true)

						tbl13.AddShape("Crown", function(arg, arg2)
							local n37 = (arg - 1) / arg2 * 3.1415926535897931 * 2
							local vector3 = Vector3.new
							local n38 = 0.15 + (0.5 + 0.5 * math.cos(n37 * 5)) ^ 1.5 * 0.75
							local sin = math.sin
							return vector3(math.cos(n37), n38, sin(n37))
						end, true)

						tbl13.AddShape("Sphere", function(arg, arg2)
							local n37 = 1 - 2 * (arg - 0.5) / arg2
							local v22 = math.sqrt(math.max(0, 1 - n37 * n37))
							local n38 = 2.3999632297286531 * arg
							return Vector3.new(math.cos(n38) * v22, n37, math.sin(n38) * v22)
						end)

						tbl13.AddShape("Dome", function(arg, arg2)
							local n37 = (arg - 0.5) / arg2
							local v22 = math.sqrt(1 - n37 * n37)
							local n38 = 2.3999632297286531 * arg
							return Vector3.new(math.cos(n38) * v22, n37, math.sin(n38) * v22)
						end)

						tbl13.AddShape("Box", {
							Vector3.new(-1, -1, -1),
							Vector3.new(1, -1, -1),
							Vector3.new(1, -1, 1),
							Vector3.new(-1, -1, 1),
							Vector3.new(-1, -1, -1),
							Vector3.new(-1, 1, -1),
							Vector3.new(1, 1, -1),
							Vector3.new(1, -1, -1),
							Vector3.new(1, 1, -1),
							Vector3.one,
							Vector3.new(1, -1, 1),
							Vector3.one,
							Vector3.new(-1, 1, 1),
							Vector3.new(-1, -1, 1),
							Vector3.new(-1, 1, 1),
							Vector3.new(-1, 1, -1),
						}, false)

						tbl13.AddShape("Pyramid", {
							Vector3.new(-1, -1, -1),
							Vector3.new(1, -1, -1),
							Vector3.new(1, -1, 1),
							Vector3.new(-1, -1, 1),
							Vector3.new(-1, -1, -1),
							Vector3.new(0, 1, 0),
							Vector3.new(1, -1, -1),
							Vector3.new(0, 1, 0),
							Vector3.new(1, -1, 1),
							Vector3.new(0, 1, 0),
							Vector3.new(-1, -1, 1),
						}, false)

						tbl13.AddShape("Cone", function(arg, arg2, arg3, arg4)
							local n37 = (arg - 1) / math.max(arg2 - 1, 1)
							local n38 = n37 * 3.1415926535897931 * 2 * arg4
							local n39 = 1 - n37
							return Vector3.new(math.cos(n38) * n39, -1 + 2 * n37, math.sin(n38) * n39)
						end, false)

						tbl13.AddShape("Cylinder", function(arg, arg2, arg3)
							local n37 = math.min(arg3, math.max(1, math.floor(arg2 / 3)))
							local v22, v23, v24 = tbl13.GetRow(arg, arg2, n37)
							local n38

							if n37 == 1 then
								n38 = 0
							else
								n38 = -1 + 2 * v22 / (n37 - 1)
							end

							local n39 = v23 / v24 * 3.1415926535897931 * 2
							local sin = math.sin
							return Vector3.new(math.cos(n39), n38, sin(n39))
						end)

						tbl13.AddShape("Helix", function(arg, arg2, arg3, arg4)
							local n37 = (arg - 1) / math.max(arg2 - 1, 1)
							local n38 = n37 * 3.1415926535897931 * 2 * arg4
							local n39 = -1 + 2 * n37
							local sin = math.sin
							return Vector3.new(math.cos(n38), n39, sin(n38))
						end)

						tbl13.AddShape("Double Helix", function(arg, arg2, arg3, arg4)
							local n37 = math.ceil(arg2 / 2)
							local flag12 = arg > n37

							if flag12 then
								arg -= n37
							end

							if flag12 then
								n37 = arg2 - n37
							end

							local n38 = (arg - 1) / math.max(n37 - 1, 1)
							local n39 = n38 * 3.1415926535897931 * 2 * arg4
							local n40

							if flag12 then
								n40 = 3.1415926535897931
							else
								n40 = 0
							end

							local n41 = n39 + n40
							local n42 = -1 + 2 * n38
							local sin = math.sin
							return Vector3.new(math.cos(n41), n42, sin(n41))
						end)

						tbl13.AddShape("Torus", function(arg, arg2, arg3, arg4)
							local n37 = (arg - 1) / arg2 * 3.1415926535897931 * 2
							local n38 = n37 * math.max(1, math.floor(arg4))
							local n39 = 0.72 + 0.28 * math.cos(n38)
							return Vector3.new(n39 * math.cos(n37), 0.28 * math.sin(n38), n39 * math.sin(n37))
						end, true)

						tbl13.AddShape("Galaxy", function(arg, arg2, arg3, arg4)
							local n37 = math.min(arg2, math.clamp(arg3, 2, 8))
							local n38 = (arg - 1) % n37
							local v22 = math.sqrt((math.floor((arg - 1) / n37) + 0.5) / (math.floor((arg2 - n38 - 1) / n37) + 1))
							local n39 = v22 * 3.1415926535897931 * 2 * arg4 + n38 / n37 * 3.1415926535897931 * 2
							return Vector3.new(math.cos(n39) * v22, math.sin(v22 * 3.1415926535897931 * 4 + n38) * 0.12, math.sin(n39) * v22)
						end)

						tbl13.AddShape("Grid", function(arg, arg2, arg3)
							local v22, v23, v24 = tbl13.GetRow(arg, arg2, arg3)
							local n37

							if v24 == 1 then
								n37 = 0
							else
								n37 = -1 + 2 * v23 / (v24 - 1)
							end

							local n38

							if arg3 == 1 then
								n38 = 0
							else
								n38 = -1 + 2 * v22 / (arg3 - 1)
							end

							return Vector3.new(n37, 0, n38)
						end)

						tbl13.AddShape("Wall", function(arg, arg2, arg3)
							local v22 = tbl13.Shapes.Grid.Generate(arg, arg2, arg3)
							return Vector3.new(v22.X, v22.Z, 0)
						end)

						tbl13.AddShape("Ring Stack", function(arg, arg2, arg3)
							local n37 = math.min(arg3, math.max(1, math.floor(arg2 / 3)))
							local v22, v23, v24 = tbl13.GetRow(arg, arg2, n37)
							local n38

							if n37 == 1 then
								n38 = 0
							else
								n38 = -1 + 2 * v22 / (n37 - 1)
							end

							local n39 = v23 / v24 * 3.1415926535897931 * 2
							local n40 = 1 - math.abs(n38) * 0.18
							return Vector3.new(math.cos(n39) * n40, n38, math.sin(n39) * n40)
						end)

						do
							local tbl17 = { ShapePhase = 0, MovePhase = 0, BobPhase = 0, Valid = {}, Roots = {} }

							tbl12.UpdateToysAura = function(arg)
								local v22, v23, v24 = tbl12.Char()
								local flag12 = not toysAuraSettings.Enabled or #toysAuraSettings.Models == 0
								local flag13

								if flag12 then
									flag13 = flag12
								else
									flag13 = not (v23 and v24 and v24.Health > 0)
								end

								if flag13 then
									tbl13.ClearMovers()
									tbl17.MovePhase = 0
									return
								end

								local valid = tbl17.Valid
								local roots = tbl17.Roots
								table.clear(valid)
								table.clear(roots)
								tbl13.UpdateCharacterRoots()
								local n37 = 1

								while n37 <= #toysAuraSettings.Models do
									local v25 = toysAuraSettings.Models[n37]
									local parent2 = v25.Parent and tbl13.GetRoot(v25)

									if tbl7.ObjectStates[v25] then
										tbl13.ClearMovers(v25)
										n37 += 1
										continue
									end

									local flag14 = parent2 and tbl12.IsPartOwner(parent2)

									if parent2 and not flag14 and tbl12.SNO(parent2, 0.18) then
										tbl13.UpdateCharacterRoots()
										flag14 = tbl13.GetRoot(v25) == parent2
									end

									local v26 = flag11
									local flag15

									if flag11 then
										flag15 = v26
									else
										flag15 = not toysAuraSettings.Enabled
									end

									if flag15 then
										tbl13.ClearMovers()
										return
									end

									if toysAuraSettings.Models[n37] == v25 then
										if tbl7.ObjectStates[v25] then
											tbl13.ClearMovers(v25)
											n37 += 1
										elseif flag14 then
											valid[#valid + 1] = v25
											roots[#roots + 1] = parent2
											n37 += 1
										else
											tbl13.RemoveModel(v25, false, n37)
										end
									end
								end

								local n38 = #valid
								if n38 == 0 then
									return
								end

								if toysAuraSettings.AutoRotate then
									tbl17.ShapePhase = tbl17.ShapePhase + (toysAuraSettings.RotationSpeed or 0) * arg
									tbl17.ShapePhase = tbl17.ShapePhase % 6.2831853071795862
								end

								if toysAuraSettings.AutoMove then
									tbl17.MovePhase = tbl17.MovePhase + (toysAuraSettings.MoveSpeed or 1) * arg
									tbl17.MovePhase = tbl17.MovePhase % n38
								else
									tbl17.MovePhase = 0
								end

								if toysAuraSettings.Bob then
									tbl17.BobPhase = (tbl17.BobPhase + (toysAuraSettings.BobSpeed or 0) * arg) % 6.2831853071795862
								else
									tbl17.BobPhase = 0
								end

								local v25 = tbl13.GetCenter(v23)

								if toysAuraSettings.Bob then
									v25 *= CFrame.new(0, math.sin(tbl17.BobPhase) * (toysAuraSettings.BobHeight or 0), 0)
								end

								local v26 = tbl13.GetShape(n38)
								local n39 = #v26
								if n39 == 0 then
									return
								end
								local cframe = CFrame.identity

								if toysAuraSettings.AutoRotate then
									cframe = CFrame.Angles(0, tbl17.ShapePhase, 0)
								end

								for i = 1, n38 do
									local n40

									if toysAuraSettings.AutoMove and n39 > 1 then
										local n41 = i + tbl17.MovePhase
										local n42 = math.floor(n41)
										n40 = v26[(n42 - 1) % n39 + 1]:Lerp(v26[(n42 + 1 - 1) % n39 + 1], n41 - n42)
									else
										n40 = v26[(i - 1) % n39 + 1]
									end

									if toysAuraSettings.AutoRotate then
										n40 = cframe * n40
									end

									local faceCenter = toysAuraSettings.FaceCenter
									local position = v25.Position
									tbl13.UpdatePhysics(valid[i], roots[i], v25 * CFrame.new(tbl13.GetOffset(n40)), faceCenter, position)
								end
							end

							tbl12.StepToysAura = function(arg)
								if tbl17.Updating then
									return
								end
								tbl17.Updating = true
								local ok, result = pcall(tbl12.UpdateToysAura, arg)
								tbl17.Updating = false

								if not ok then
									warn("Toys Aura Update failed: " .. tostring(result))
								end
							end

							tbl12.SetToysAuraConnection = function(arg)
								tbl12.SetRuntimeConnection("ToysAura", RunService.Heartbeat, arg, tbl12.StepToysAura)
								if arg then
									return
								end

								if not tbl12.IsToyAuraEffectsEnabled() then
									tbl13.ClearCharacterRoots()
								end

								tbl13.ClearMovers()
								tbl17.MovePhase = 0
							end
						end
					end
				end
			end

			do
				tbl12.CaptureACPose = function(arg)
					local tbl16 = { BodyOffset = tbl9.AutoClickerOffset, Rotation = {}, LimbOffsets = {} }

					for k, v22 in tbl7.ACRotation, nil, nil do
						tbl16.Rotation[k] = v22
					end

					for k, v22 in tbl7.ACOffset, nil, nil do
						tbl16.LimbOffsets[k] = v22
					end

					if arg then
						tbl7.AutoClickerTargetPoses[arg.UserId] = tbl16
					end

					return tbl16
				end

				tbl12.GetACPose = function(arg)
					if not tbl8.IndependentACPoses or arg == tbl9.SelectedACPoseTarget then
						return tbl9.AutoClickerOffset, tbl7.ACRotation, tbl7.ACOffset
					end
					local v22 = tbl7.AutoClickerTargetPoses[arg.UserId] or tbl12.CaptureACPose(arg)
					return v22.BodyOffset, v22.Rotation, v22.LimbOffsets
				end

				tbl12.LoadACEditorPose = function(arg)
					if not arg then
						return
					end

					if not options.ACCSecXO or not options.ACRSecXOTorso then
						return
					end
					local bodyOffset = arg.BodyOffset

					if not bodyOffset and arg.BodyPos then
						bodyOffset = CFrame.new(tonumber(arg.BodyPos[1]) or 0, tonumber(arg.BodyPos[2]) or 0, tonumber(arg.BodyPos[3]) or -5)
					end

					if bodyOffset then
						local accSecXO = options.ACCSecXO
						local setValue = accSecXO.SetValue
						local v22 = table.pack(tonumber(string.format("%.1f", bodyOffset.X)))
						setValue(accSecXO, table.unpack(v22, 1, v22.n))
						local accSecYO = options.ACCSecYO
						local setValue2 = accSecYO.SetValue
						local v23 = table.pack(tonumber(string.format("%.1f", bodyOffset.Y)))
						setValue2(accSecYO, table.unpack(v23, 1, v23.n))
						local accSecZO = options.ACCSecZO
						local setValue3 = accSecZO.SetValue
						local v24 = table.pack(tonumber(string.format("%.1f", bodyOffset.Z)))
						setValue3(accSecZO, table.unpack(v24, 1, v24.n))
					end

					local rotation = arg.Rotation or arg

					for k in tbl7.ACRotation, nil, nil do
						local v22 = rotation[k]

						if v22 then
							local x

							if typeof(v22) == "Vector3" then
								x = v22.X
							else
								x = v22[1]
							end

							local y

							if typeof(v22) == "Vector3" then
								y = v22.Y
							else
								y = v22[2]
							end

							local z

							if typeof(v22) == "Vector3" then
								z = v22.Z
							else
								z = v22[3]
							end

							local v23 = options["ACRSecXO" .. k]
							local setValue = v23.SetValue
							local v24 = table.pack(tonumber(string.format("%.1f", tonumber(x) or 0)))
							setValue(v23, table.unpack(v24, 1, v24.n))
							local v25 = options["ACRSecYO" .. k]
							local setValue2 = v25.SetValue
							local v26 = table.pack(tonumber(string.format("%.1f", tonumber(y) or 0)))
							setValue2(v25, table.unpack(v26, 1, v26.n))
							local v27 = options["ACRSecZO" .. k]
							local setValue3 = v27.SetValue
							local v28 = table.pack(tonumber(string.format("%.1f", tonumber(z) or 0)))
							setValue3(v27, table.unpack(v28, 1, v28.n))
						end
					end

					if arg.LimbOffsets then
						for k in tbl7.ACOffset, nil, nil do
							local v22 = arg.LimbOffsets[k]

							if v22 then
								local x

								if typeof(v22) == "Vector3" then
									x = v22.X
								else
									x = v22[1]
								end

								local y

								if typeof(v22) == "Vector3" then
									y = v22.Y
								else
									y = v22[2]
								end

								local z

								if typeof(v22) == "Vector3" then
									z = v22.Z
								else
									z = v22[3]
								end

								local v23 = options["ACOSecXO" .. k]
								local setValue = v23.SetValue
								local v24 = table.pack(tonumber(string.format("%.1f", tonumber(x) or 0)))
								setValue(v23, table.unpack(v24, 1, v24.n))
								local v25 = options["ACOSecYO" .. k]
								local setValue2 = v25.SetValue
								local v26 = table.pack(tonumber(string.format("%.1f", tonumber(y) or 0)))
								setValue2(v25, table.unpack(v26, 1, v26.n))
								local v27 = options["ACOSecZO" .. k]
								local setValue3 = v27.SetValue
								local v28 = table.pack(tonumber(string.format("%.1f", tonumber(z) or 0)))
								setValue3(v27, table.unpack(v28, 1, v28.n))
							end
						end
					else
						for k in tbl7.ACOffset, nil, nil do
							options["ACOSecXO" .. k]:SetValue(options["ACOSecXO" .. k].Default)
							options["ACOSecYO" .. k]:SetValue(options["ACOSecYO" .. k].Default)
							options["ACOSecZO" .. k]:SetValue(options["ACOSecZO" .. k].Default)
						end
					end

					return true
				end

				tbl12.BringPlayer = function(arg)
					local v22, v23, v24 = tbl12.Char(arg)
					local v25, v26, v27 = tbl12.Char()
					local flag12 = arg == localPlayer or tbl12.IsProtectedPlayer(arg)

					if not flag12 then
						flag12 = not (v23 and v24 and v24.Health > 0 and v26 and v27 and v27.Health > 0)
					end

					if flag12 then
						return
					end

					if not tbl12.IsNetworkOwner(v23) and not tbl12.SNO(v23) then
						return
					end
					local n36 = v26.CFrame * CFrame.new(0, 0, -5)
					local BasePart = v22:QueryDescendants("BasePart")
					local tbl16 = {}

					for i = 1, 3 do
						local flag13 = flag11

						if not flag11 then
							flag13 = not (v23.Parent and v22.Parent)
						end

						if not (flag13 or v24.Health <= 0) then
							tbl12.PivotTo(v22, n36 * v23.CFrame:Inverse() * v22:GetPivot(), BasePart, tbl16)

							for _, v28 in BasePart, nil, nil do
								tbl12.ResetVelocity(v28)
							end

							RunService.Heartbeat:Wait()
							continue
						end

						break
					end

					for _, v28 in BasePart, nil, nil do
						if v28.Parent then
							tbl12.ResetVelocity(v28)
						end
					end

					if v23.Parent then
						tbl12.RNO(v23)
					end

					return v23.Parent ~= nil and v24.Health > 0
				end

				do
					local tbl16 = {}

					tbl12.Kill = function(arg)
						local v22, v23, v24 = tbl12.Char(arg)

						if v24 and v24.Health ~= 0 and v23 and tbl12.GetMagnitude(workspace.SpawnLocation, v23) < 15000 and not tbl16[v22] then
							v24.BreakJointsOnDeath = false
							v24:ChangeState(Enum.HumanoidStateType.Dead)
							tbl12.DestroyObject(v22, v23)
							tbl16[v22] = true

							task.delay(1, function()
								tbl16[v22] = nil
							end)
						end
					end
				end
			end

			tbl12.Void = function(arg)
				local v22, v23, v24 = tbl12.Char(arg)

				if v24 and v24.Health ~= 0 and v23 and tbl12.GetMagnitude(workspace.SpawnLocation, v23) < 15000 and tbl12.SNO(v23) then
					local cframe = CFrame.new(0, 9e9, 0)
					tbl12.PivotTo(v22, cframe * v23.CFrame:Inverse() * v22:GetPivot())
					tbl12.Teleport(v23, cframe)
					v23.Velocity = Vector3.new(0, 9e9, 0)
					task.delay(0.35, tbl12.RNO, v23)
				end
			end

			tbl12.EatAntiInput = function(arg)
				local v22 = tbl12.Char(arg)

				if v22 and v22:FindFirstChild("Left Arm") then
					local leftArm = v22:FindFirstChild("Left Arm")
					local v23, v24, v25 = tbl12.Char()

					if leftArm and v25 and v25.Health ~= 0 then
						for _, v26 in pairs(leftArm:GetConnectedParts()) do
							if v26.Name == "HoldPart" and not v26:IsDescendantOf(v17) then
								tbl12.BreakHoldable(v26.Parent, 1, true)
							end
						end
					end
				end
			end

			do
				local obj = setmetatable({}, { __mode = "k" })
				local obj2 = setmetatable({}, { __mode = "k" })

				tbl12.ResetGucciSeat = function(arg)
					obj[arg] = nil
				end

				tbl12.RemoveGucci = function(arg)
					local v22, v23, v24 = tbl12.Char()
					local v25, v26, v27 = tbl12.Char(arg)
					local v28, v29 = tbl12.GetInventory(arg)
					local gucciAntiGrab = tbl8.GucciAntiGrab

					if not gucciAntiGrab then
						gucciAntiGrab = not (v24 and v24.Health > 0 and v23 and v28)
					end

					if gucciAntiGrab then
						return false
					end

					local function fn21(arg2)
						if not (arg2 and arg2.Parent) or obj2[arg2] then
							return
						end

						if obj[arg2] then
							return
						end

						if (arg2:IsA("VehicleSeat") or arg2:IsA("Seat")) and not arg2.Occupant then
							obj2[arg2] = true

							if tbl8.RagdollInRG and v26 then
								tbl12.SNO(v26, 1.5)
							end

							if v24.Sit then
								v24.Sit = false
								task.wait(0.1)
							end

							local now3 = tick()
							local flag12 = false
							local flag13 = false

							tbl12.SetRuntimeConnection(arg2, v22.ChildAdded, true, function(arg3)
								if arg3:IsA("LocalScript") and arg3.Name:lower():find("control") then
									arg3.Enabled = false
									arg3:Destroy()
									flag13 = true
								end
							end)

							local connection = arg2.ChildAdded:Connect(function(child)
								if child.Name == "SeatWeld" then
									child.Enabled = false
									child:Destroy()
									flag12 = true
								end
							end)

							while true do
								arg2:Sit(v24)
								fn20()
								if not (flag12 or tick() - now3 > 0.5 or not arg2.Parent or v24.Health <= 0 or flag11) then
									continue
								end
								break
							end

							v24.Sit = false

							if flag12 then
								local now4 = tick()

								while not flag13 and not flag11 and v22.Parent and v24.Health > 0 and tick() - now4 < 0.5 do
									task.wait()
								end
							end

							tbl12.SetRuntimeConnection(arg2, nil, false)
							obj2[arg2] = nil

							if not flag12 then
								v24.Sit = true
								task.wait(0.05)
								v24.Sit = false
								return connection:Disconnect()
							end

							obj[arg2] = true
							connection:Disconnect()

							connection = arg2.ChildAdded:Connect(function(child)
								local v30
								v30, v30 = tbl12.Char()

								if child.Name == "SeatWeld" and child.Part1 ~= v30 then
									obj[arg2] = nil
									connection:Disconnect()
								end
							end)
						end
					end

					local seatPart = v27 and v27.SeatPart
					if seatPart and not v27.Sit then
						obj[seatPart] = nil
						return fn21(seatPart)
					end

					for _, v30 in v28:GetChildren() do
						if v30:IsA("Model") then
							local vehicleSeat = v30:FindFirstChildWhichIsA("VehicleSeat") or v30:FindFirstChildWhichIsA("Seat")

							if vehicleSeat then
								fn21(vehicleSeat)
							end
						end
					end

					if v29 then
						for _, v30 in v29:GetChildren() do
							if v30:IsA("Model") then
								local vehicleSeat = v30:FindFirstChildWhichIsA("VehicleSeat") or v30:FindFirstChildWhichIsA("Seat")

								if vehicleSeat then
									fn21(vehicleSeat)
								end
							end
						end
					end
				end
			end
		end

		tbl12.DeleteSeatables = function(arg)
			local v22, v23, v24 = tbl12.Char()
			local v25 = tbl12.GetInventory(arg)
			if not (v24 and v24.Health > 0 and v23 and v25) then
				return false
			end

			local function fn21(arg2)
				if arg2:IsA("Model") then
					local primaryPart = arg2.PrimaryPart or tbl12.FindNicePart(arg2)
					if not primaryPart or not primaryPart:IsA("BasePart") or primaryPart.Velocity.Magnitude > 100 then
						return
					end
					local vehicleSeat = arg2:FindFirstChild("VehicleSeat")
					if not vehicleSeat or vehicleSeat.Occupant then
						return
					end
					tbl12.DestroyObject(arg2)
				end
			end

			for _, v26 in v25:GetChildren() do
				fn21(v26)
			end
		end

		tbl12.StopControlCharacter = function(arg)
			local controlCharacter = arg or tbl7.States.ControlCharacter
			if not controlCharacter then
				tbl8.ControllingSomeone = false
				return
			end

			if controlCharacter.Cleaned then
				return
			end
			controlCharacter.Active = false
			controlCharacter.Cleaned = true

			if controlCharacter.JumpConnection then
				controlCharacter.JumpConnection:Disconnect()
			end

			for k, v22 in controlCharacter.Parts, nil, nil do
				if k.Parent then
					k.CanCollide = v22.CanCollide
					k.CanQuery = v22.CanQuery
				end
			end

			if controlCharacter.Humanoid.Parent then
				controlCharacter.Humanoid:Move(Vector3.zero, false)
				controlCharacter.Humanoid.Jump = false
				controlCharacter.Humanoid.AutoRotate = controlCharacter.AutoRotate
			end

			if controlCharacter.Root.Parent then
				tbl12.RNO(controlCharacter.Root)
			end

			local v22, v23, v24 = tbl12.Char()

			if v24 then
				currentCamera.CameraSubject = v24
			elseif controlCharacter.CameraSubject and controlCharacter.CameraSubject.Parent then
				currentCamera.CameraSubject = controlCharacter.CameraSubject
			end

			if controlCharacter.LocalRoot.Parent and controlCharacter.LocalHumanoid.Parent and controlCharacter.LocalHumanoid.Health > 0 then
				tbl12.Teleport(controlCharacter.LocalRoot, controlCharacter.ReturnCFrame)
			end

			if tbl7.States.ControlCharacter == controlCharacter then
				tbl7.States.ControlCharacter = nil
				tbl8.ControllingSomeone = false
			end
		end

		tbl12.ControlCharacter = function(arg)
			if tbl7.States.ControlCharacter then
				tbl12.StopControlCharacter()
				return
			end
			local v22, v23, v24 = tbl12.Char()
			if not (v22 and v23 and v24 and v24.Health > 0) then
				return
			end

			if arg and not arg:FindFirstChildWhichIsA("Humanoid") then
				arg = arg:FindFirstAncestorOfClass("Model")
			end

			if not arg or arg == v22 then
				return
			end
			local humanoidRootPart = arg and arg:FindFirstChild("HumanoidRootPart")
			local humanoid = arg and arg:FindFirstChildWhichIsA("Humanoid")
			if not (humanoidRootPart and humanoid and humanoid.Health > 0) then
				return
			end

			local controlCharacter = {
				Active = true,
				Cleaned = false,
				Character = arg,
				Root = humanoidRootPart,
				Humanoid = humanoid,
				LocalRoot = v23,
				LocalHumanoid = v24,
				ReturnCFrame = v23.CFrame,
				CameraSubject = currentCamera.CameraSubject,
				AutoRotate = humanoid.AutoRotate,
				Parts = {},
			}

			tbl7.States.ControlCharacter = controlCharacter
			tbl8.ControllingSomeone = true
			if not tbl12.SNO(humanoidRootPart) or not controlCharacter.Active or tbl7.States.ControlCharacter ~= controlCharacter then
				tbl12.StopControlCharacter(controlCharacter)
				return
			end

			local function fn21(arg2, arg3)
				for _, v25 in arg2:QueryDescendants("BasePart") do
					controlCharacter.Parts[v25] = { CanCollide = v25.CanCollide, CanQuery = v25.CanQuery }
					v25.CanCollide = false

					if arg3 then
						v25.CanQuery = false
					end
				end
			end

			fn21(v22, false)
			fn21(arg, true)
			humanoid.AutoRotate = false
			currentCamera.CameraSubject = humanoid

			controlCharacter.JumpConnection = UserInputService.JumpRequest:Connect(function()
				if controlCharacter.Active and humanoid.Parent then
					humanoid.Jump = true
				end
			end)

			local ok, result = pcall(function()
				while true do
					if controlCharacter.Active and not flag11 and tbl7.States.ControlCharacter == controlCharacter and arg.Parent and humanoidRootPart.Parent and humanoid.Health > 0 and v22.Parent and v23.Parent and v24.Health > 0 then
						if not (not tbl12.IsPartOwner(humanoidRootPart) and not tbl12.SNO(humanoidRootPart, 0.2)) then
							currentCamera.CameraSubject = humanoid
							humanoid.Sit = false
							local lookVector = currentCamera.CFrame.LookVector
							local vector = Vector3.new(lookVector.X, 0, lookVector.Z)

							if vector.Magnitude > 0.001 then
								humanoidRootPart.CFrame = CFrame.lookAt(humanoidRootPart.Position, humanoidRootPart.Position + vector.Unit)
							end

							v23.CFrame = humanoidRootPart.CFrame * CFrame.new(0, -10, 0)
							local moveDirection = v24.MoveDirection
							local v25 = humanoid
							local move = v25.Move

							if moveDirection.Magnitude > 1 then
								moveDirection = moveDirection.Unit
							end

							move(v25, moveDirection, false)
							RunService.Heartbeat:Wait()
							continue
						end
					end

					break
				end
			end)

			tbl12.StopControlCharacter(controlCharacter)

			if not ok then
				warn(result)
			end
		end

		do
			local v22 = nil
			local bodyPosition = nil
			local bodyGyro = nil

			local function fn21()
				if bodyPosition then
					bodyPosition:Destroy()
					bodyPosition = nil
				end

				if bodyGyro then
					bodyGyro:Destroy()
					bodyGyro = nil
				end

				v22 = nil
			end

			tbl14 = {
				GetBlobmanComponents = function()
					if not parent then
						return
					end
					local blobmanSeatAndOwnerScript = parent:FindFirstChild("BlobmanSeatAndOwnerScript")
					local rightDetector = parent:FindFirstChild("RightDetector")
					local leftDetector = parent:FindFirstChild("LeftDetector")

					return {
						Blobman = parent,
						BSAOS = blobmanSeatAndOwnerScript,
						CreatureGrab = blobmanSeatAndOwnerScript and blobmanSeatAndOwnerScript:FindFirstChild("CreatureGrab"),
						CreatureDrop = blobmanSeatAndOwnerScript and blobmanSeatAndOwnerScript:FindFirstChild("CreatureDrop"),
						CreatureRelease = blobmanSeatAndOwnerScript and blobmanSeatAndOwnerScript:FindFirstChild("CreatureRelease"),
						RightDetector = rightDetector,
						RightWeld = rightDetector and rightDetector:FindFirstChild("RightWeld"),
						RightOri = rightDetector and rightDetector:FindFirstChild("RightAlignOrientation"),
						LeftDetector = leftDetector,
						LeftWeld = leftDetector and leftDetector:FindFirstChild("LeftWeld"),
						LeftOri = leftDetector and leftDetector:FindFirstChild("LeftAlignOrientation"),
					}
				end,
				UpdateFreeze = function()
					local humanoidRootPart = parent and parent:FindFirstChild("HumanoidRootPart")

					if humanoidRootPart ~= v22 then
						fn21()
						if not humanoidRootPart then
							return
						end
						v22 = humanoidRootPart
						bodyPosition = Instance.new("BodyPosition", humanoidRootPart)
						local v23 = bodyPosition
						local v24 = bodyPosition
						local v25 = bodyPosition
						local position = humanoidRootPart.Position
						bodyPosition.Name = "FreezeBP"
						v23.Position = position
						v24.MaxForce = Vector3.one * math.huge
						v25.D = 500
						bodyGyro = Instance.new("BodyGyro", humanoidRootPart)
						local v26 = bodyGyro
						local v27 = bodyGyro
						local v28 = bodyGyro
						local cFrame2 = humanoidRootPart.CFrame
						bodyGyro.Name = "FreezeBG"
						v26.CFrame = cFrame2
						v27.MaxTorque = Vector3.one * math.huge
						v28.D = 500
					end

					tbl12.ResetVelocity(humanoidRootPart)
				end,
				SetFrozen = function(freezeBlobman)
					tbl8.FreezeBlobman = freezeBlobman
					tbl12.SetRuntimeConnection("FreezeBlobman", RunService.Heartbeat, freezeBlobman, tbl14.UpdateFreeze)

					if not freezeBlobman then
						fn21()
					end
				end,
			}
		end

		tbl14.Sit = function()
			local v22, v23, v24 = tbl12.Char()
			local flag12 = v24 and v24.Health > 0 and v23

			if flag12 then
				flag12 = not (parent or v24.Sit and v24.SeatPart or tbl8.GucciAntiGrab)
			end

			if not flag12 then
				return
			end
			local creatureBlobman = v17:FindFirstChild("CreatureBlobman")
			local vehicleSeat = creatureBlobman and creatureBlobman:FindFirstChild("VehicleSeat")
			local flag13 = vehicleSeat and (vehicleSeat.Occupant == nil or vehicleSeat.Occupant == v24)

			if vehicleSeat and not flag13 then
				tbl12.DestroyToy(creatureBlobman)
			end

			if not (flag13 and creatureBlobman) then
				creatureBlobman = tbl12.SpawnToy("CreatureBlobman")
			end

			if not (flag13 and vehicleSeat) then
				vehicleSeat = creatureBlobman and creatureBlobman:WaitForChild("VehicleSeat", 0.5)
			end

			if not vehicleSeat then
				tbl12.DestroyToy(creatureBlobman)
				return
			end
			local cFrame2 = v23.CFrame
			local now3 = tick()

			while true do
				vehicleSeat:Sit(v24)
				task.wait()
				if not (parent or tick() - now3 > 1) then
					continue
				end
				break
			end

			if parent then
				tbl12.Teleport(v23, cFrame2)
			end
		end

		tbl14.Grab = function(arg, arg2)
			if not parent then
				return
			end
			local v22 = tbl14.GetBlobmanComponents()
			if not (v22.CreatureGrab and v22.RightWeld) then
				return
			end
			local v23, v24, v25 = tbl12.Char()
			if not (v24 and v25 and v25.Health > 0) or not parent then
				return
			end
			local v26, v27, v28 = tbl12.Char(arg)
			local rootAttachment = v27 and v27:FindFirstChild("RootAttachment")
			if not (rootAttachment and v28 and v28.Health > 0) or not parent then
				return
			end
			local now3 = tick()

			if tbl12.GetMagnitude(v24, v27) > 40 then
				local cFrame2 = v24.CFrame
				currentCamera.CameraType = Enum.CameraType.Scriptable

				while true do
					local flag12 = parent and v27 and v27.Parent and v25.Health > 0 and v28.Health > 0 and rootAttachment and v22.RightWeld.Attachment0 ~= rootAttachment

					if flag12 then
						flag12 = tick() - now3 < (arg2 or 0.7)
					end

					if flag12 then
						tbl12.Teleport(v24, tbl12.PredictCFrame(v27) - Vector3.new(0, 15, 0))
						task.wait()
						v22.CreatureGrab:FireServer(nil, v27, v22.RightWeld)
						continue
					end

					break
				end

				tbl12.Teleport(v24, cFrame2, CFrame.new(0, 5, 0))
				currentCamera.CameraType = Enum.CameraType.Custom
			else
				v22.CreatureGrab:FireServer(nil, v27, v22.RightWeld)
				task.wait(0.1)
			end

			if v22.RightWeld and v22.RightWeld.Attachment0 == rootAttachment then
				return true
			end
		end

		tbl14.Release = function(arg, arg2)
			if not parent then
				return
			end
			local v22 = tbl14.GetBlobmanComponents()
			if not (v22.CreatureGrab and v22.CreatureRelease and v22.RightWeld) then
				return
			end
			local v23, v24, v25 = tbl12.Char()
			if not (v24 and v25 and v25.Health > 0) or not parent then
				return
			end
			local v26, v27, v28 = tbl12.Char(arg)
			if not (v27 and v28 and v28.Health > 0) or not parent then
				return
			end

			if tbl12.IsNetworkOwner(v27) then
				return true
			end
			local now3 = tick()
			local flag12 = tbl12.GetMagnitude(v24, v27) >= 40
			if flag12 and tbl7.States.Owning then
				return
			end
			v22.RightWeld.Enabled = false
			local cframe = CFrame.new()
			local cframe2 = CFrame.new()
			local connection = nil
			tbl7.States.Owning = true

			local function fn21()
				cframe = v24.CFrame
				cframe2 = v24.CFrame

				RunService:BindToRenderStep("ClientVision", Enum.RenderPriority.Camera.Value - 1, function()
					v24.CFrame = cframe
				end)

				connection = RunService.Heartbeat:Connect(function()
					cframe = v24.CFrame
					v24.CFrame = cframe2
				end)
			end

			local function fn22()
				RunService:UnbindFromRenderStep("ClientVision")

				if connection then
					connection:Disconnect()
					connection = nil
				end

				if v24 then
					v24.CFrame = cframe
				end
			end

			if tbl12.GetMagnitude(workspace.SpawnLocation, v27) < 15000 then
				pcall(function()
					if flag12 then
						fn21()
					end

					while true do
						local flag13 = parent and v27 and v27.Parent and v25.Health > 0 and v28.Health > 0 and not tbl12.IsNetworkOwner(v27)

						if flag13 then
							flag13 = tick() - now3 < (arg2 or 0.7)
						end

						if flag13 then
							local v29 = tbl12.PredictCFrame(v27)
							v22.RightWeld.Enabled = false

							if flag12 then
								cframe2 = v29 - Vector3.new(0, 15, 0)
							end

							task.wait(0.011111111111111112)
							v22.CreatureGrab:FireServer(nil, v27, v22.RightWeld)
							task.wait(0.011111111111111112)
							v22.CreatureRelease:FireServer(v22.RightWeld)
							continue
						end

						break
					end
				end)

				if flag12 then
					pcall(fn22)
				end
			end

			task.delay(0.1, function()
				v22.RightWeld.Attachment0 = nil
				v22.RightWeld.Enabled = true
			end)

			tbl7.States.Owning = false
			task.wait()
			if v27 and tbl12.IsNetworkOwner(v27) then
				return true
			end
		end

		tbl14.KickServerCooldowns = setmetatable({}, { __mode = "k" })

		tbl14.KickTargets = function(arg, arg2)
			local v22 = tbl14.GetBlobmanComponents()
			local v23, v24, v25 = tbl12.Char()
			if not (v22 and v22.CreatureGrab and v22.CreatureDrop and v22.RightWeld and v24 and v25 and v25.Health > 0) then
				return
			end
			local tbl16 = {}
			local tbl17 = {}
			v22.CreatureDrop:FireServer(v22.RightWeld)

			for _, v26 in ipairs(arg) do
				local flag12

				if arg2 then
					flag12 = os.clock() - (tbl14.KickServerCooldowns[v26] or -math.huge) < 7
				else
					flag12 = arg2
				end

				if not flag12 then
					local v27, v28, v29 = tbl12.Char(v26)
					local flag13 = v26 ~= localPlayer and not tbl12.IsProtectedPlayer(v26, arg2) and v28 and v29 and v29.Health > 0

					if flag13 then
						flag13 = not (v28.AssemblyRootPart or v28).Massless
					end

					if flag13 and not v29.SeatPart and tbl14.Release(v26) then
						tbl16[#tbl16 + 1] = { Character = v27, Root = v28 }

						if arg2 then
							tbl14.KickServerCooldowns[v26] = os.clock()
						end
					end
				end
			end

			if #tbl16 == 0 then
				return false
			end
			v22.RightWeld.Enabled = false

			for i, v26 in ipairs(tbl16) do
				local cFrame2 = v24.CFrame * CFrame.Angles(0, i / #tbl16 * 3.1415926535897931 * 2, 0) * CFrame.new(0, 5, -20)
				v26.CFrame = cFrame2
				tbl12.Teleport(v26.Root, cFrame2)
				local v27, v28 = tbl12.CreateAlign(v26.Root, true)
				local position = cFrame2.Position
				local cFrame3 = cFrame2 - cFrame2.Position
				v27.Position = position
				v28.CFrame = cFrame3
				local n36 = #tbl17 + 1
				local n37 = #tbl17 + 2
				tbl17[n36] = v27
				tbl17[n37] = v28
			end

			task.wait(0.35)

			for _, v26 in ipairs(tbl16) do
				if v26.Root.Parent then
					tbl12.Grab(v26.Root)
					tbl12.RNO(v26.Root)
					v22.CreatureGrab:FireServer(nil, v26.Root, v22.RightWeld)

					if tbl8.DeleteShurInBlobK then
						task.spawn(tbl12.RemoveSticky, v26.Character)
					end

					task.wait()
				end
			end

			v22.CreatureGrab:FireServer(nil, v24, v22.RightWeld)

			local function fn21()
				if v22.RightWeld.Parent then
					local rightWeld = v22.RightWeld
					v22.RightWeld.Attachment0 = nil
					rightWeld.Enabled = true
				end

				for _, v26 in ipairs(tbl17) do
					if v26.Parent then
						v26:Destroy()
					end
				end
			end

			local n36 = os.clock() + 2

			while true do
				for _, v26 in ipairs(tbl16) do
					if v26.Root.Parent then
						v26.Root.CFrame = v26.CFrame
						tbl12.ResetVelocity(v26.Root)
					end
				end

				RunService.Heartbeat:Wait()
				if not (n36 <= os.clock()) then
					continue
				end
				break
			end

			fn21()
			return true
		end

		tbl14.Kick = function(arg)
			return tbl14.KickTargets({ arg })
		end

		tbl14.KickServer = function()
			return tbl14.KickTargets(tbl12.GetTargets(true, tbl7.SelectedPlayersBlob), true)
		end

		tbl12.KickServer = function(arg)
			local kickServerState = tbl7.KickServerState
			local tbl16 = {}
			if kickServerState.Running then
				return false
			end
			local now3 = os.clock()

			for _, v22 in ipairs(tbl12.GetTargets(true, tbl7.SelectedPlayers)) do
				local v23, v24, v25 = tbl12.Char(v22)
				local flag12 = v24 and v25 and v25.Health > 0

				if flag12 then
					flag12 = not arg

					if not flag12 then
						flag12 = now3 - (tbl7.KickServerCooldowns[v22] or -math.huge) >= 15
					end
				end

				if flag12 then
					tbl16[#tbl16 + 1] = v22
				end
			end

			if #tbl16 == 0 then
				return false
			end
			kickServerState.Running = true
			local tbl17 = {}
			local tbl18 = {}
			local connection = nil

			local ok, result = pcall(function()
				options.LineLagSSlider:SetValue(11)

				if not toggles.LineLagToggle.Value then
					toggles.LineLagToggle:SetValue(true)
				end

				toggles.LineLagToggle:SetDisabled(true)
				local v22, v23, v24 = tbl12.Char()
				if not (v23 and v24 and v24.Health > 0) then
					return
				end
				local position = v23.Position

				connection = RunService.Heartbeat:Connect(function()
					for k, v25 in tbl18, nil, nil do
						if k.Parent then
							k.CFrame = v25
							tbl12.ResetVelocity(k)
						else
							tbl18[k] = nil
						end
					end
				end)

				for i, v25 in ipairs(tbl16) do
					if not flag11 then
						local v26, v27, v28 = tbl12.Char(v25)

						if v27 and v28 and v28.Health > 0 then
							if arg then
								tbl7.KickServerCooldowns[v25] = os.clock()
							end

							if tbl12.SNO(v27) then
								local n36 = i / #tbl16 * 3.1415926535897931 * 2
								local v29 = tbl17
								local n37 = #tbl17 + 1
								local v30 = tbl18
								local cframe = CFrame.new(position + Vector3.new(math.cos(n36) * 15, 15, math.sin(n36) * 15))
								v29[n37] = v27
								v30[v27] = cframe
								tbl12.Teleport(v27, tbl18[v27])
							end
						end

						continue
					end

					break
				end

				for i, v25 in ipairs(tbl17) do
					local n36 = i / #tbl17 * 3.1415926535897931 * 2
					tbl18[v25] = CFrame.new(position + Vector3.new(math.cos(n36) * 15, 15, math.sin(n36) * 15))
				end

				RunService.Heartbeat:Wait()
			end)

			task.spawn(function()
				local n36 = os.clock() + 3

				while not flag11 and os.clock() < n36 do
					RunService.Heartbeat:Wait()
				end

				if connection then
					connection:Disconnect()
					connection = nil
				end
			end)

			task.wait(0.15)

			for _, v22 in ipairs(tbl17) do
				if v22.Parent then
					tbl12.RNO(v22)
				end
			end

			for _, v22 in ipairs(tbl17) do
				if not flag11 and v22.Parent then
					task.spawn(tbl12.RemoveSticky, v22.Parent)
				end
			end

			task.wait(6)

			if not flag11 then
				toggles.LineLagToggle:SetDisabled(false)
				toggles.LineLagToggle:SetValue(false)
			end

			kickServerState.Running = false

			if not ok then
				warn("[Resonance] Target Kick Server failed: " .. tostring(result))
			end

			return ok and #tbl17 > 0
		end

		tbl14.Bring = function(arg)
			if not parent then
				return
			end
			local v22, v23, v24 = tbl12.Char()
			if not (v23 and v24 and v24.Health > 0) then
				return
			end
			local v25, v26, v27 = tbl12.Char(arg)
			if not (v26 and v27 and v27.Health > 0) then
				return
			end

			if tbl14.Release(arg) then
				return tbl12.BringPlayer(arg)
			end
		end

		tbl14.Kill = function(arg)
			if not parent then
				return
			end
			local v22, v23, v24 = tbl12.Char()
			if not (v23 and v24 and v24.Health > 0) then
				return
			end
			local v25, v26, v27 = tbl12.Char(arg)
			if not (v26 and v27 and v27.Health > 0) then
				return
			end

			if not (v27.Sit and v27.SeatPart) and tbl14.Release(arg) then
				v27.BreakJointsOnDeath = false
				v27:ChangeState(Enum.HumanoidStateType.Dead)
				task.wait()
				return true
			end

			if v27.Sit and v27.SeatPart and tbl14.Bring(arg) then
				tbl12.Kill(arg)
				return true
			end
		end

		tbl14.RemoveGucci = function(arg)
			if not parent then
				return
			end
			local v22, v23, v24 = tbl12.Char()
			if not (v23 and v24 and v24.Health > 0) then
				return
			end
			local v25, v26, v27 = tbl12.Char(arg)
			local flag12 = v26 and v27 and v27.Health > 0

			if flag12 then
				flag12 = not (v27.Sit and v27.SeatPart)
			end

			if not flag12 then
				return
			end

			if tbl14.Release(arg) then
				v27.Sit = true

				task.delay(0.1, function()
					v27.Sit = false
				end)
			end
		end

		tbl14.Lock = function(arg)
			if not parent then
				return
			end
			local v22 = tbl14.GetBlobmanComponents()
			if not v22.RightWeld then
				return
			end
			local v23, v24, v25 = tbl12.Char()
			if not (v24 and v25 and v25.Health > 0) then
				return
			end
			local v26, v27, v28 = tbl12.Char(arg)
			if not (v27 and v28 and v28.Health > 0) then
				return
			end

			if tbl14.Grab(arg) then
				v22.RightWeld.Attachment0 = nil
				task.wait(0.45)
				v25.Sit = false
				task.wait(0.45)
				v22.RightWeld.Attachment0 = v27.RootAttachment
			end
		end

		tbl14.Follow = function(arg)
			if not parent then
				return
			end
			local v22, v23, v24 = tbl12.Char()
			if not (v23 and v24 and v24.Health > 0) then
				return
			end
			local v25, v26, v27 = tbl12.Char(arg)
			if not (v26 and v27 and v27.Health > 0) then
				return
			end

			if tbl14.Release(arg) then
				task.spawn(function()
					while v23.Parent and v24.Health > 0 and v27.Parent and v27.Health > 0 and tbl12.IsNetworkOwner(v26) do
						if tbl12.GetMagnitude(v26, v23) > 50 then
							tbl12.Teleport(v26, v23, CFrame.new(0, 10, 0))
						end

						v27.WalkToPoint = v23.Position
						task.wait()
					end
				end)
			end
		end

		tbl14.LoopKick = function(arg)
			if not parent then
				return
			end
			local v22, v23, v24 = tbl12.Char()
			if not (v23 and v24 and v24.SeatPart) then
				return
			end
			local v25, v26, v27 = tbl12.Char(arg)
			local rootAttachment = v26 and v26:FindFirstChild("RootAttachment")
			local flag12 = v26 and v27 and v27.Health > 0

			if flag12 then
				flag12 = not (v26.AssemblyRootPart or v26).Massless
			end

			if not (flag12 and rootAttachment) then
				return
			end
			local firePlayerPart = v26:FindFirstChild("FirePlayerPart")
			local weldConstraint = firePlayerPart and firePlayerPart:FindFirstChild("WeldConstraint")
			if not (firePlayerPart and weldConstraint and weldConstraint.Enabled) then
				return
			end
			local v28 = tbl14.GetBlobmanComponents()
			if not (v28.CreatureGrab and v28.CreatureDrop and v28.CreatureRelease and v28.RightWeld and v28.RightOri) then
				return
			end
			v28.RightWeld.Enabled = false
			v28.RightOri.Enabled = false

			if tbl12.SNO(v26) or tbl14.Release(arg) then
				v27.Sit = true

				task.delay(0.5, function()
					v27.Sit = false
				end)

				local n36 = v23.CFrame * CFrame.new(options.BlobKickX.Value, options.BlobKickY.Value, options.BlobKickZ.Value)
				tbl12.Teleport(v26, n36)
				local v29, v30 = tbl12.CreateAlign(v26, true)
				v29.Position = n36.Position

				task.delay(0.2, function()
					tbl12.Grab(v26)
					tbl12.RNO(v26)
				end)

				v28.CreatureDrop:FireServer(v28.RightWeld)
				v28.CreatureDrop:FireServer(v28.LeftWeld)
				task.wait(0.06)
				rootAttachment.Parent = v25

				while arg.Parent and v26.Parent and v27.Parent and v27.Health > 0 and parent and parent.Parent and tbl7.SelectedPlayersBlob[arg] and tbl8.LoopApplyMethod and tbl9.BlobMethod == "Kick" and tbl12.GetMagnitude(v23, v26) <= 41 and not v27.SeatPart and v24.Sit do
					task.spawn(function()
						v27.RequiresNeck = false
						tbl12.ToggleMotor6D(v25, false, true)
						tbl12.RepositionLimbs(v25)
					end)

					task.spawn(tbl12.ToggleCollisions, v25, false)
					v28.RightOri.Enabled = false
					v28.RightWeld.Enabled = false
					v28.RightOri.Attachment0 = nil
					v28.RightWeld.Attachment0 = nil
					v29.Position = (v23.CFrame * CFrame.new(options.BlobKickX.Value, options.BlobKickY.Value, options.BlobKickZ.Value)).Position
					tbl12.ResetVelocity(v26)

					if tbl8.DeleteShurInBlobK then
						task.spawn(tbl12.RemoveSticky, v25)
					end

					if tbl9.BKMethod == 1 then
						v28.CreatureGrab:FireServer(nil, v26, v28.RightWeld)
						task.wait()
						v28.CreatureDrop:FireServer(v28.RightWeld)
						task.wait()

						if tbl8.NetworkOwnerInKick then
							tbl12.Grab(v26)
							tbl12.RNO(v26)
						end
					else
						v28.CreatureGrab:FireServer(nil, v26, v28.RightWeld)
						task.wait()
						v28.CreatureRelease:FireServer(v28.RightWeld)
						tbl12.Grab(v26)
						task.spawn(tbl12.Ragdoll, v25)

						if weldConstraint.Enabled then
							tbl12.RNO(v26)
						end

						task.wait()
					end
				end

				rootAttachment.Parent = v26
				task.spawn(tbl12.ToggleMotor6D, v25, true)
				task.spawn(tbl12.ToggleCollisions, v25, true)
				v30:Destroy()
				v29:Destroy()
			end
		end

		tbl14.LoopLock = function(arg, arg2)
			if not parent then
				return
			end
			local v22, v23 = tbl12.Char()
			local v24, v25, v26 = tbl12.Char(arg)
			if not v26 or v26.Health == 0 or not v25 then
				return false
			end
			local blobmanSeatAndOwnerScript = parent.BlobmanSeatAndOwnerScript
			local creatureGrab = blobmanSeatAndOwnerScript.CreatureGrab
			local creatureRelease = blobmanSeatAndOwnerScript.CreatureRelease
			local leftWeld = parent.LeftDetector.LeftWeld

			if (not v25.Massless or v26.Sit and v26.SeatPart) and tbl14.Release(arg) then
				tbl12.Teleport(v25, v23, CFrame.new(0, 0, -5))
				local bodyPosition = Instance.new("BodyPosition")
				bodyPosition.Name = "BlobLockBP"
				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				bodyPosition.D = 250
				bodyPosition.Position = v23.Position + Vector3.new(options.BlobKickX.Value, options.BlobKickY.Value, options.BlobKickZ.Value)
				bodyPosition.Parent = v25
				tbl12.ResetVelocity(v25)
				leftWeld.Enabled = false

				while arg.Parent and v25.Parent and v26.Health ~= 0 and tbl8[arg2] and parent and tbl9.BlobMethod == "Lock" and tbl12.GetMagnitude(v23, v25) < 45 do
					bodyPosition.Position = (v23.CFrame * CFrame.new(0, 0, -5)).Position
					tbl12.ResetVelocity(v25)
					creatureGrab:FireServer(nil, v25, leftWeld)
					task.wait()
					creatureRelease:FireServer(leftWeld)
					task.wait()
				end

				bodyPosition:Destroy()

				if leftWeld then
					leftWeld.Enabled = true
				end
			end
		end

		tbl12.NormalizeServerHopServer = function(arg)
			if typeof(arg) ~= "table" then
				return
			end
			local id = arg.Id or arg.id
			local num = tonumber(arg.Playing or arg.playing)
			local num2 = tonumber(arg.MaxPlayers or arg.maxPlayers)
			if type(id) ~= "string" or not num or not num2 or num2 <= 0 then
				return
			end

			return {
				Id = id,
				Playing = math.max(0, num),
				MaxPlayers = num2,
				Ping = tonumber(arg.Ping or arg.ping),
				FPS = tonumber(arg.FPS or arg.fps),
			}
		end

		tbl12.IsServerHopCandidate = function(arg, arg2)
			if arg.Id == jobId or tbl7.ServerHop.Rejected[arg.Id] then
				return false
			end

			if arg2 and not arg2[arg.Id] then
				return false
			end
			local n36 = math.min(tbl9.ServerHopMinPlayers, tbl9.ServerHopMaxPlayers)
			local n37 = math.max(tbl9.ServerHopMinPlayers, tbl9.ServerHopMaxPlayers)
			if arg.Playing < n36 or arg.Playing > n37 then
				return false
			end

			if not tbl8.ServerHopIncludeFull and arg.Playing >= arg.MaxPlayers then
				return false
			end
			return true
		end

		tbl12.LoadServerHopCache = function()
			if not readfile then
				return {}, nil, false, {}
			end

			if isfile and not isfile(tbl7.ServerHop.CachePath) then
				return {}, nil, false, {}
			end

			local ok, result = pcall(function()
				return HttpService:JSONDecode(readfile(tbl7.ServerHop.CachePath))
			end)

			if not ok or typeof(result) ~= "table" or result.PlaceId ~= placeId or result.Schema ~= 4 then
				return {}, nil, false, {}
			end
			local tbl16 = {}
			local tbl17 = {}
			local v22 = ipairs
			local servers = result.Servers or {}

			for _, server in v22(servers) do
				local v23 = tbl12.NormalizeServerHopServer(server)

				if v23 and v23.Id ~= jobId then
					tbl16[#tbl16 + 1] = v23
				end
			end

			local v23 = pairs
			local regions = result.Regions or {}

			for k, region in v23(regions) do
				if type(k) == "string" and typeof(region) == "table" then
					tbl17[k] = {}

					for k2, v24 in pairs(region) do
						if type(k2) == "string" and v24 == true then
							tbl17[k][k2] = true
						end
					end
				end
			end

			local n36 = tonumber(result.CachedAt) or 0
			local n37 = os.time() - n36
			return tbl16, n36, n37 >= 0 and n37 <= 120, tbl17
		end

		tbl12.SaveServerHopCache = function(arg, arg2)
			tbl7.ServerHop.LastCacheError = nil
			if not writefile then
				tbl7.ServerHop.LastCacheError = "writefile is unavailable"
				return false
			end

			local ok, result = pcall(function()
				writefile(tbl7.ServerHop.CachePath, HttpService:JSONEncode({
					Schema = 4,
					PlaceId = placeId,
					CachedAt = arg2 or os.time(),
					Servers = arg,
					Regions = tbl7.ServerHop.CachedRegions,
				}))
			end)

			if not ok then
				tbl7.ServerHop.LastCacheError = tostring(result)
			end

			return ok
		end

		tbl12.FetchServerHopPage = function(arg, arg2, arg3)
			local str5 = arg3 or "Roblox"
			local ok, result = pcall(game.HttpGet, game, arg, true)
			if not ok then
				return nil, tostring(result)
			end

			if type(result) ~= "string" or result == "" then
				return nil, str5 .. " returned an empty response"
			end
			local ok2, result2 = pcall(HttpService.JSONDecode, HttpService, result)
			if not ok2 or typeof(result2) ~= "table" then
				return nil, str5 .. " returned an invalid JSON response"
			end

			if arg2 and typeof(result2[arg2]) ~= "table" then
				local errors = result2.errors and result2.errors[1]
				local str6

				if errors then
					str6 = tostring(errors.message)
				else
					str6 = str5 .. " returned no server data"
				end

				return nil, str6
			end

			return result2
		end

		tbl12.GetServerHopContinent = function(arg)
			if type(arg) ~= "string" then
				return
			end
			local str5 = " " .. arg:upper() .. " "

			for _, regionName in ipairs(tbl7.ServerHop.RegionNames) do
				local v22 = tbl7.ServerHop.ContinentCountries[regionName]
				if v22 and v22:find(str5, 1, true) then
					return regionName
				end
			end
		end

		tbl12.RefreshServerHopRegions = function()
			local list, v22 = tbl12.FetchServerHopPage("https://apis.rovalra.com/v1/datacenters/list", nil, "RoValra")
			if not list then
				return false, v22
			end
			local serverHop = tbl7.ServerHop
			local regionNames = tbl7.ServerHop.RegionNames
			local tbl16 = {}
			local regions = {}

			for i = 2, #regionNames do
				regions[regionNames[i]] = {}
			end

			for _, v23 in ipairs(list) do
				local location = v23.location
				local country = location and location.country
				local city = location and location.city
				local str5

				if type(country) == "string" then
					str5 = country:upper()
				else
					str5 = nil
				end

				local str6 = str5 and city and str5 .. "\0" .. city
				local v24 = tbl12.GetServerHopContinent(str5)

				if v23.inactive ~= true and str6 and v24 and not tbl16[str6] then
					tbl16[str6] = true

					regions[v24][#regions[v24] + 1] = {
						Country = str5,
						City = city,
						Latitude = tonumber(location.latLong and location.latLong[1]),
						Longitude = tonumber(location.latLong and location.latLong[2]),
					}
				end
			end

			if not next(tbl16) then
				return false, "RoValra returned no active datacenters"
			end
			serverHop.Regions = regions
			serverHop.AutomaticCountry = nil
			serverHop.PlayerCoordinates = nil
			table.clear(serverHop.ResolvedRegions)
			return true
		end

		tbl12.GetServerHopPlayerCoordinates = function()
			local serverHop = tbl7.ServerHop
			local LocalizationService = game:GetService("LocalizationService")
			local ok, result = pcall(LocalizationService.GetCountryRegionForPlayerAsync, LocalizationService, localPlayer)
			if not ok or type(result) ~= "string" or result == "" then
				return
			end
			local automaticCountry = result:upper()
			if serverHop.AutomaticCountry == automaticCountry then
				local playerCoordinates = serverHop.PlayerCoordinates
				return playerCoordinates and playerCoordinates.X, playerCoordinates and playerCoordinates.Y, automaticCountry
			end
			local match = nil
			local v22 = nil

			for _, v23 in ipairs({
				"https://cdn.jsdelivr.net/gh/google/dspl@master/samples/google/canonical/countries.csv",
				"https://raw.githubusercontent.com/google/dspl/master/samples/google/canonical/countries.csv",
			}) do
				local ok2, result2 = pcall(game.HttpGet, game, v23, true)

				if ok2 and type(result2) == "string" then
					match, v22 = result2:match("\n" .. automaticCountry .. ",([%d%.%-]+),([%d%.%-]+),")
					if not match then
						continue
					end
				else
					continue
				end

				break
			end

			local num = tonumber(match)
			local num2 = tonumber(v22)
			local v23 = serverHop.CountryCoordinates[automaticCountry]

			if not num and v23 then
				num = v23.X
				num2 = v23.Y
			end

			serverHop.AutomaticCountry = automaticCountry
			local vector2

			if num and num2 then
				vector2 = Vector2.new(num, num2)
			else
				vector2 = nil
			end

			serverHop.PlayerCoordinates = vector2
			table.clear(serverHop.ResolvedRegions)
			return num, num2, automaticCountry
		end

		tbl12.GetServerHopRegions = function()
			local serverHop = tbl7.ServerHop
			local serverHopRegion = tbl9.ServerHopRegion

			if not next(serverHop.Regions) then
				local v22, v23 = tbl12.RefreshServerHopRegions()
				if not v22 then
					return nil, v23
				end
			end

			if serverHopRegion ~= "Automatic" and not serverHop.Regions[serverHopRegion] then
				tbl9.ServerHopRegion = "Automatic"
				serverHopRegion = "Automatic"

				if options.ServerHopRegion then
					options.ServerHopRegion:SetValue("Automatic")
				end
			end

			local v22, v23, v24 = tbl12.GetServerHopPlayerCoordinates()
			local str5 = v24 and v24 .. "\0" .. serverHopRegion
			if str5 and serverHop.ResolvedRegions[str5] then
				return serverHop.ResolvedRegions[str5]
			end
			local v25 = v22 and math.rad(v22)

			local function fn21(arg)
				if not (v25 and arg.Latitude and arg.Longitude) then
					return math.huge
				end
				local v26 = math.rad(arg.Latitude - v22)
				local v27 = math.rad(arg.Longitude - v23)
				local v28 = math.sin(v26 / 2)
				local v29 = math.sin(v27 / 2)
				return v28 * v28 + math.cos(v25) * math.cos(math.rad(arg.Latitude)) * v29 * v29
			end

			if serverHopRegion == "Automatic" then
				serverHopRegion = tbl12.GetServerHopContinent(v24)

				if not serverHopRegion and v22 then
					local huge = math.huge

					for i = 2, #serverHop.RegionNames do
						local v26 = serverHop.RegionNames[i]
						local v27 = ipairs
						local tbl16 = serverHop.Regions[v26] or {}

						for _, v28 in v27(tbl16) do
							local v29 = fn21(v28)

							if v29 < huge then
								huge = v29
								serverHopRegion = v26
							end
						end
					end
				end
			end

			local v26 = serverHop.Regions[serverHopRegion]
			if not v26 or #v26 == 0 then
				return
			end
			local v27 = table.clone(v26)

			table.sort(v27, function(arg, arg2)
				local v28 = fn21(arg)
				local v29 = fn21(arg2)

				if v28 == v29 then
					local flag12 = arg.Country == v24
					if flag12 ~= arg2.Country == v24 then
						return flag12
					end
					return tostring(arg.City) < tostring(arg2.City)
				end

				return v28 < v29
			end)

			if str5 then
				serverHop.ResolvedRegions[str5] = v27
			end

			return v27
		end

		tbl12.FetchServerHopRegionIds = function(arg)
			local str5 = "https://apis.rovalra.com/v1/servers/region?place_id=" .. placeId .. "&country=" .. HttpService:UrlEncode(arg.Country) .. "&cursor=0"

			if arg.City then
				str5 ..= "&city=" .. HttpService:UrlEncode(arg.City)
			end

			local v22, v23 = tbl12.FetchServerHopPage(str5, "servers", "RoValra")
			if not v22 then
				return nil, v23
			end
			local tbl16 = {}

			for _, server in ipairs(v22.servers) do
				local serverId = server.server_id or server.id

				if type(serverId) == "string" and serverId ~= jobId then
					tbl16[serverId] = true
				end
			end

			return tbl16
		end

		tbl12.FetchServerHopServersPage = function(arg, arg2)
			local n36 = math.min(tbl9.ServerHopMinPlayers, tbl9.ServerHopMaxPlayers)
			local str5

			if tbl9.ServerHopSort == "Highest Players" or n36 >= Players.MaxPlayers / 2 then
				str5 = "Desc"
			else
				str5 = "Asc"
			end

			local str6 = "https://games.roblox.com/v1/games/" .. placeId .. "/servers/Public?sortOrder=" .. str5 .. "&limit=100&excludeFullGames=" .. tostring(not tbl8.ServerHopIncludeFull)

			if type(arg) == "string" and arg ~= "" then
				str6 ..= "&cursor=" .. HttpService:UrlEncode(arg)
			end

			local v22, v23

			repeat
				if flag11 or arg2 ~= tbl7.ServerHop.Token then
					return
				end
				v22, v23 = tbl12.FetchServerHopPage(str6, "data", "Roblox")
				local v24 = flag11
				local flag12

				if flag11 then
					flag12 = v24
				else
					flag12 = arg2 ~= tbl7.ServerHop.Token
				end

				if flag12 then
					return
				end

				if not v22 and not flag11 then
					task.wait(0.25)
				end
			until v22 or flag11 or arg2 ~= tbl7.ServerHop.Token

			if flag11 or arg2 ~= tbl7.ServerHop.Token then
				return
			end

			if not v22 then
				tbl7.ServerHop.LastFetchError = v23
				return
			end
			local tbl16 = {}

			for _, v24 in ipairs(v22.data) do
				local v25 = tbl12.NormalizeServerHopServer(v24)

				if v25 and v25.Id ~= jobId then
					tbl16[#tbl16 + 1] = v25
				end
			end

			return tbl16, v22.nextPageCursor
		end

		tbl12.FilterServerHopServers = function(arg, arg2)
			local tbl16 = {}

			for _, v22 in ipairs(arg) do
				if tbl12.IsServerHopCandidate(v22, arg2) then
					tbl16[#tbl16 + 1] = v22
				end
			end

			return tbl16
		end

		tbl12.SelectServerHopServer = function(arg)
			if #arg == 0 then
				return
			end

			if tbl9.ServerHopSort == "Closest Datacenter" or tbl9.ServerHopSort == "Lowest Ping" or tbl9.ServerHopSort == "Random" then
				return arg[math.random(1, #arg)]
			end

			table.sort(arg, function(arg2, arg3)
				local playing, playing2

				if tbl9.ServerHopSort == "Lowest Players" then
					playing = arg2.Playing
					playing2 = arg3.Playing
				elseif tbl9.ServerHopSort == "Highest Players" then
					playing = -arg2.Playing
					playing2 = -arg3.Playing
				elseif tbl9.ServerHopSort == "Highest FPS" then
					playing = -(arg2.FPS or 0)
					playing2 = -(arg3.FPS or 0)
				else
					playing = arg2.Ping or math.huge
					playing2 = arg3.Ping or math.huge
				end

				if playing == playing2 then
					return arg2.Id < arg3.Id
				end
				return playing < playing2
			end)

			return arg[1]
		end

		tbl12.UpdateServerHopButton = function()
			local serverHop = tbl7.ServerHop
			if flag11 or not serverHop.Button then
				return
			end
			local busy = serverHop.Busy or serverHop.Pending or serverHop.Retrying
			serverHop.Button.DoubleClick = not busy
			local button = serverHop.Button
			local setText = button.SetText
			local str5

			if busy then
				str5 = "Cancel Server Hop"
			else
				str5 = "Server-hop"
			end

			setText(button, str5)
		end

		tbl12.CancelServerHop = function()
			local serverHop = tbl7.ServerHop
			local pending = serverHop.Pending
			serverHop.Token = serverHop.Token + 1
			serverHop.AutoToken = serverHop.AutoToken + 1
			serverHop.Busy = false
			serverHop.Pending = nil
			serverHop.Retrying = false
			serverHop.Cancelled = true

			if serverHop.Notification then
				serverHop.Notification:Destroy()
				serverHop.Notification = nil
			end

			tbl12.UpdateServerHopButton()

			if not flag11 then
				if pending then
					fn18("Server-hop retries cancelled. Roblox may still complete the teleport already requested.")
				end

				if tbl8.AutoServerHop then
					tbl12.ScheduleAutoServerHop()
				end
			end
		end

		tbl12.ServerHop = function(arg, arg2)
			if flag11 then
				return false
			end

			if tbl7.ServerHop.Busy or tbl7.ServerHop.Pending or tbl7.ServerHop.Retrying then
				fn18("A server-hop is already in progress.")
				return false
			end
			local serverHop = tbl7.ServerHop
			serverHop.Token = serverHop.Token + 1
			local token = tbl7.ServerHop.Token

			local function fn21()
				return not flag11 and token == tbl7.ServerHop.Token
			end

			tbl7.ServerHop.Busy = true
			tbl7.ServerHop.Cancelled = false
			tbl12.UpdateServerHopButton()

			local v22 = lib:Notify({
				Title = "Resonance",
				Description = "Attempting to serverhop..",
				Persist = true,
				SoundId = n34,
				BigIcon = "rbxassetid://79685990879972",
				Volume = n35,
				IconColor = Color3.new(1, 1, 1),
			})

			if not fn21() then
				v22:Destroy()
				return false
			end
			tbl7.ServerHop.Notification = v22

			local ok, result = pcall(function()
				local v23, v24 = tbl12.GetServerHopRegions()
				if not fn21() then
					return false
				end

				if not v23 then
					local v25 = fn18
					local str5

					if v24 then
						str5 = " Error: " .. v24
					else
						str5 = ""
					end

					v25("Couldn't determine the server-hop region; server-hop cancelled." .. str5)
					return false
				end

				local tbl16, now3, v25, cachedRegions = tbl12.LoadServerHopCache()
				if not fn21() then
					return false
				end

				if not v25 then
					tbl16 = {}
				end

				local tbl17 = {}
				local v26 = nil
				local n36 = 0
				local n37 = 0
				local tbl18 = {}
				local tbl19 = {}
				local serverHop2 = tbl7.ServerHop

				if not v25 then
					cachedRegions = {}
				end

				serverHop2.CachedRegions = cachedRegions
				tbl7.ServerHop.LastFetchError = nil

				for _, v27 in ipairs(tbl16) do
					tbl19[v27.Id] = true
				end

				local function fn22(arg3)
					for _, v27 in ipairs(v23) do
						if not fn21() then
							return {}
						end
						local str5 = v27.Country .. "\0" .. tostring(v27.City or "")
						local v28 = tbl7.ServerHop.CachedRegions[str5]

						if not v28 then
							if n37 > 0 then
								task.wait(1)
							end

							if not fn21() then
								return {}
							end
							local v29
							v28, v29 = tbl12.FetchServerHopRegionIds(v27)
							v26 = v29
							if not fn21() then
								return {}
							end
							n37 += 1
							if not v28 then
								return {}
							end
							tbl7.ServerHop.CachedRegions[str5] = v28
						end

						if not tbl18[str5] then
							tbl18[str5] = true
							n36 += 1
						end

						local v29 = tbl12.FilterServerHopServers(arg3, v28)
						if #v29 > 0 then
							return v29
						end
					end

					return {}
				end

				if v25 and #tbl12.FilterServerHopServers(tbl16) > 0 then
					tbl17 = fn22(tbl16)
				end

				if #tbl17 == 0 and not v26 then
					table.clear(tbl16)
					table.clear(tbl19)
					local str5 = ""

					for i = 1, 10 do
						if i > 1 then
							task.wait(1)
						end

						if not fn21() then
							return false
						end
						local v27, v28 = tbl12.FetchServerHopServersPage(str5, token)
						if not fn21() then
							return false
						end

						if not v27 then
							break
						end
						now3 = os.time()

						for _, v29 in ipairs(v27) do
							if not tbl19[v29.Id] then
								tbl19[v29.Id] = true
								tbl16[#tbl16 + 1] = v29
							end
						end

						if #tbl12.FilterServerHopServers(v27) > 0 then
							tbl17 = fn22(v27)
							if #tbl17 > 0 or v26 then
								break
							end
						end

						if type(v28) ~= "string" or v28 == "" then
							break
						end
						str5 = v28
					end
				end

				if not fn21() then
					return false
				end

				if #tbl17 == 0 then
					if v26 then
						fn18("Region search failed. Error: " .. v26)
					elseif tbl7.ServerHop.LastFetchError then
						fn18("Roblox server search stopped. Error: " .. tbl7.ServerHop.LastFetchError)
					elseif #tbl16 == 0 then
						local v27 = fn18
						local str5

						if tbl7.ServerHop.LastFetchError then
							str5 = " Error: " .. tbl7.ServerHop.LastFetchError
						else
							str5 = ""
						end

						v27("Roblox didn't return any public servers. Try again in a few seconds." .. str5)
					else
						local serverHopRegion = tbl9.ServerHopRegion
						fn18(("Checked %d servers across %d datacenters, but none matched %d-%d players in %s."):format(#tbl16, n36, math.min(tbl9.ServerHopMinPlayers, tbl9.ServerHopMaxPlayers), math.max(tbl9.ServerHopMinPlayers, tbl9.ServerHopMaxPlayers), serverHopRegion))
					end

					if now3 then
						tbl12.SaveServerHopCache(tbl16, now3)
					end

					return false
				end

				local v27 = tbl12.SelectServerHopServer(tbl17)

				for i = #tbl16, 1, -1 do
					if tbl16[i].Id == v27.Id then
						table.remove(tbl16, i)
						break
					end
				end

				local v28 = tbl12.SaveServerHopCache(tbl16, now3)
				if not fn21() then
					return false
				end

				if not v28 then
					fn18("Server cache couldn't be saved: " .. tostring(tbl7.ServerHop.LastCacheError))
				end

				tbl12.QueueTeleport(arg, arg2)
				if not fn21() then
					return false
				end
				tbl7.ServerHop.Pending = { ServerId = v27.Id, AntiLag = arg, RestartScript = arg2 }
				local ok, result = pcall(TeleportService.TeleportToPlaceInstance, TeleportService, placeId, v27.Id, localPlayer)
				if not fn21() then
					return false
				end

				if not ok then
					local str5 = tostring(result)
					if str5:lower():find("full", 1, true) then
						return tbl12.RetryFullServerHop()
					end
					tbl7.ServerHop.Pending = nil
					fn18("Server-hop failed: " .. str5)
				end

				return ok
			end)

			if not fn21() then
				return false
			end
			tbl7.ServerHop.Busy = false
			v22:Destroy()
			tbl7.ServerHop.Notification = nil
			local flag12 = not ok

			if flag12 then
				tbl7.ServerHop.Pending = nil
			end

			tbl12.UpdateServerHopButton()
			if flag12 then
				fn18("Server-hop failed: " .. tostring(result))
				return false
			end
			return result
		end

		tbl12.RetryFullServerHop = function()
			local v22 = flag11
			local cancelled

			if flag11 then
				cancelled = v22
			else
				cancelled = tbl7.ServerHop.Cancelled
			end

			if cancelled then
				return false
			end
			local pending = tbl7.ServerHop.Pending
			if not pending then
				return tbl7.ServerHop.Retrying == true
			end
			tbl7.ServerHop.Pending = nil
			tbl7.ServerHop.Rejected[pending.ServerId] = true
			tbl7.ServerHop.Busy = false
			tbl7.ServerHop.Retrying = true
			local token = tbl7.ServerHop.Token
			tbl12.UpdateServerHopButton()
			fn18("Server is full; trying another server in the selected region.")

			task.delay(1, function()
				if flag11 or token ~= tbl7.ServerHop.Token then
					return
				end
				tbl7.ServerHop.Retrying = false

				if not flag11 then
					tbl12.ServerHop(pending.AntiLag, pending.RestartScript)
				end
			end)

			return true
		end

		tbl12.ScheduleAutoServerHop = function(arg)
			local serverHop = tbl7.ServerHop
			serverHop.AutoToken = serverHop.AutoToken + 1
			local autoToken = tbl7.ServerHop.AutoToken
			local v22 = flag11
			local flag12

			if flag11 then
				flag12 = v22
			else
				flag12 = not tbl8.AutoServerHop
			end

			if flag12 then
				return
			end

			task.delay(arg or tbl9.AutoServerHopTime, function()
				if flag11 or autoToken ~= tbl7.ServerHop.AutoToken or not tbl8.AutoServerHop then
					return
				end

				if not tbl12.ServerHop(tbl8.RejoinWithAntiLag ~= false, tbl8.RejoinWithScript) and autoToken == tbl7.ServerHop.AutoToken and tbl8.AutoServerHop then
					tbl12.ScheduleAutoServerHop(math.min(15, tbl9.AutoServerHopTime))
				end
			end)
		end

		TeleportService.TeleportInitFailed:Connect(function(arg, arg2, arg3, arg4, arg5)
			if arg ~= localPlayer or flag11 then
				return
			end

			if tbl7.ServerHop.Cancelled or tbl7.ServerHop.Busy and not tbl7.ServerHop.Pending then
				return
			end

			if tbl7.ServerHop.Pending and arg5 and arg5.ServerInstanceId ~= "" and arg5.ServerInstanceId ~= tbl7.ServerHop.Pending.ServerId then
				return
			end
			local flag12 = arg2 == Enum.TeleportResult.GameFull

			if not flag12 then
				flag12 = tostring(arg3):lower():find("full", 1, true)
			end

			if flag12 then
				if tbl12.RetryFullServerHop() then
					return
				end
			else
				tbl7.ServerHop.Pending = nil
			end

			tbl12.UpdateServerHopButton()

			if tbl8.AutoServerHop then
				tbl12.ScheduleAutoServerHop(10)
			end
		end)

		tbl12.CreatePlayerDropdown = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
			if not arg or not arg3 then
				fn18("Something went wrong, tell the owner about this notification.")
				return
			end
			local flag12 = arg5 ~= false
			local flag13 = arg4 ~= false
			local tbl16 = { Dropdown = nil, Values = arg3, Selected = {}, Index = arg2, Multi = flag13 }

			local v22 = arg:AddDropdown(arg2 .. "Dropdown", {
				SpecialType = "Player",
				Default = nil,
				ExcludeLocalPlayer = true,
				Multi = flag13,
				AllowNull = true,
				Searchable = true,
				Text = arg7 or "Targets",
				FormatListValue = tbl12.FormatPlayer,
				FormatDisplayValue = tbl12.FormatPlayer,
				EnablePlayerImages = true,
				Callback = function(arg8)
					table.clear(arg3)

					if flag13 then
						for k, v22 in pairs(arg8) do
							if not tbl12.IsProtectedPlayer(k) then
								arg3[k] = v22
							end
						end
					elseif arg8 and not tbl12.IsProtectedPlayer(arg8) then
						arg3[arg8] = true
					end

					table.clear(tbl16.Selected)

					if flag13 then
						for k, v22 in pairs(arg8) do
							if not tbl12.IsProtectedPlayer(k) then
								tbl16.Selected[k] = v22
							end
						end
					elseif arg8 and not tbl12.IsProtectedPlayer(arg8) then
						tbl16.Selected[arg8] = true
					end

					if arg6 then
						arg6(arg8)
					end
				end,
			})

			tbl16.Dropdown = v22
			table.insert(tbl7.PlayerDropdowns, tbl16)

			local function fn21(arg8)
				if tbl12.IsProtectedPlayer(arg8) then
					return fn18("This player has Resonance immunity.")
				end

				if not flag13 then
					v22:SetValue(arg8)
					local v23 = fn18
					local str5 = ("Selected %* in %*!"):format(arg8.Name, arg2)
					v23(str5)
					return
				end

				local tbl17 = {}

				for k, v23 in pairs(v22.Value) do
					if k ~= arg8 then
						tbl17[k] = v23
					end
				end

				if not v22.Value[arg8] then
					tbl17[arg8] = true
					local v23 = fn18
					local str5 = ("Selected %* in %*!"):format(arg8.Name, arg2)
					v23(str5)
				else
					local v23 = fn18
					local str5 = ("Deselected %* in %*!"):format(arg8.Name, arg2)
					v23(str5)
				end

				v22:SetValue(tbl17)
			end

			if flag12 then
				arg:AddLabel("Add To List"):AddKeyPicker(arg2 .. "DropdownST", {
					Text = "Add To List",
					Mode = "Press",
					NoUI = true,
					Callback = function()
						local target = mouse.Target
						if not target or not target.Parent then
							return
						end
						local v23 = Players:FindFirstChild(target.Parent.Name)
						if not v23 then
							return
						end
						fn21(v23)
					end,
				})
			end

			return v22
		end

		tbl12.GetTargets = function(arg, arg2)
			local tbl16 = {}

			if arg then
				for _, v22 in ipairs(tbl7.PlayerList) do
					if v22 ~= localPlayer and not tbl12.IsProtectedPlayer(v22, true) then
						table.insert(tbl16, v22)
					end
				end
			else
				for k in pairs(arg2) do
					if k and k.Parent and not tbl12.IsProtectedPlayer(k) then
						table.insert(tbl16, k)
					else
						arg2[k] = nil
					end
				end
			end

			return tbl16
		end

		tbl12.RunPlayerMethod = function(arg, arg2, arg3, arg4, arg5)
			if not arg2 then
				return
			end

			if arg4 then
				tbl10.Enqueue(arg, arg2, arg3, arg5)
				return
			end
			local ok, result = pcall(arg2, arg3)

			if not ok then
				warn(("[Resonance] %s failed: %s"):format(arg, tostring(result)))
			end
		end

		tbl12.ProcessPlayer = function(arg, arg2, arg3, arg4, arg5)
			local function fn21(arg6, arg7)
				tbl12.RunPlayerMethod(arg6, arg7, arg, arg2, arg5)
			end

			if arg4 then
				local blobMethod = tbl9.BlobMethod

				if blobMethod == "Bring" then
					fn21("Blob_Bring", tbl14.Bring)
				elseif blobMethod == "Kill" then
					fn21("Blob_Kill", tbl14.Kill)
				elseif blobMethod == "Follow" then
					fn21("Blob_Follow", tbl14.Follow)
				elseif blobMethod == "Remove Gucci" then
					fn21("Blob_RemoveGucci", tbl14.RemoveGucci)
				elseif blobMethod == "Lock" then
					local fn22

					if arg2 then
						fn22 = function(arg6)
							tbl14.LoopLock(arg6, arg5)
						end
					else
						fn22 = tbl14.Lock
					end

					fn21("Blob_Lock", fn22)
				elseif blobMethod == "Kick" and not arg3 then
					local loopKick

					if arg2 then
						loopKick = tbl14.LoopKick
					else
						loopKick = tbl14.Kick
					end

					fn21("Blob_Kick", loopKick)
				end

				return
			end

			local targetMethods = tbl7.TargetMethods
			local v22, v23 = tbl12.Char(arg)

			if targetMethods["Remove Invisibility"] and v23 then
				v23.Massless = false
			end

			if targetMethods.Bring then
				fn21("Bring", tbl12.BringPlayer)
			end

			local kick = targetMethods.Kick
			local flag12

			if kick then
				local flag13 = arg3 and tbl9.KickServerMethod == "Void"

				if flag13 then
					flag12 = flag13
				else
					flag12 = not arg3 and not arg2
				end
			else
				flag12 = kick
			end

			if flag12 then
				fn21("Kick", tbl12.Void)
			end

			if targetMethods.Kill then
				fn21("Kill", tbl12.Kill)
			end

			if targetMethods.Void then
				fn21("Void", tbl12.Void)
			end

			if targetMethods["Remove Gucci"] then
				fn21("Remove Gucci", tbl12.RemoveGucci)
			end

			if targetMethods["Destroy Food"] then
				fn21("Destroy Food", tbl12.EatAntiInput)
			end

			if targetMethods["Delete Seatables"] then
				fn21("Delete Seatables", tbl12.DeleteSeatables)
			end
		end

		tbl12.ProcessToyEffects = function(arg, arg2, arg3, arg4, arg5)
			local toyEffects = tbl7.ToyEffects

			if toyEffects.Oven then
				tbl12.RunPlayerMethod("ToyEffect_Oven", tbl12.MakeBlack, arg, arg2, arg5)
			end

			if toyEffects.Microwave then
				tbl12.RunPlayerMethod("ToyEffect_Microwave", tbl12.Microwave, arg, arg2, arg5)
			end

			if toyEffects.Banana then
				tbl12.RunPlayerMethod("ToyEffect_Banana", tbl12.BananaRagdoll, arg, arg2, arg5)
			end

			if toyEffects["Delete Limbs"] then
				tbl12.RunPlayerMethod("ToyEffect_DeleteLimbs", function(arg6)
					tbl12.BreakLimb(arg6, tbl9.TargetedLimbTE)
				end, arg, arg2, arg5)
			end

			if toyEffects.Campfire then
				tbl12.RunPlayerMethod("ToyEffect_Campfire", tbl12.Campfire, arg, arg2, arg5)
			end

			if toyEffects.Fling then
				tbl12.RunPlayerMethod("ToyEffect_Fling", tbl12.Fling, arg, arg2, arg5)
			end
		end

		tbl12.CreateLoopToggle = function(arg, arg2, arg3, arg4, arg5, arg6, arg7)
			local str5

			if arg4 then
				str5 = "Server"
			else
				str5 = "Selected"
			end

			local str6

			if arg4 then
				str6 = "all"
			else
				str6 = "selected"
			end

			local processPlayer = arg7 or tbl12.ProcessPlayer
			local flag12 = processPlayer == tbl12.ProcessPlayer

			arg:AddToggle(arg2, {
				Text = "Loop Apply Method " .. str5,
				Default = false,
				Tooltip = "Keeps applying selected methods to " .. str6 .. " players",
				Callback = function(arg8)
					tbl12.SetRuntimeToggle(arg3, arg8)
					tbl10.LoopTokens[arg3] = (tbl10.LoopTokens[arg3] or 0) + 1
					tbl10.Cancel(arg3)
					if not arg8 then
						return
					end
					local v22 = tbl10.LoopTokens[arg3]

					task.spawn(function()
						while not flag11 and tbl8[arg3] and tbl10.LoopTokens[arg3] == v22 do
							if arg5 and arg4 and tbl9.BlobMethod == "Kick" then
								tbl14.KickServer()
								task.wait(1)
							else

								if flag12 and not arg5 and arg4 and tbl7.TargetMethods.Kick and tbl9.KickServerMethod == "Circle + Lag" then
									tbl12.KickServer(true)
								end

								for _, v23 in ipairs(tbl12.GetTargets(arg4, arg6)) do
									if not (not tbl8[arg3] or tbl10.LoopTokens[arg3] ~= v22) then
										processPlayer(v23, true, arg4, arg5, arg3)
										continue
									end
									break
								end
							end

							if flag12 and not arg5 and arg4 and tbl7.TargetMethods.Kick and tbl9.KickServerMethod == "Circle + Lag" then
								task.wait(10)
							else
								task.wait()
							end
						end
					end)
				end,
			})
		end

		tbl12.CreateApplyButton = function(arg, arg2, arg3, arg4, arg5)
			local str5

			if arg2 then
				str5 = "Server"
			else
				str5 = "Selected"
			end

			local processPlayer = arg5 or tbl12.ProcessPlayer
			local flag12 = processPlayer == tbl12.ProcessPlayer

			arg:AddButton({
				Text = "Apply Method " .. str5,
				Func = function()
					task.spawn(function()
						if arg3 and tbl9.BlobMethod == "Kick" then
							tbl14.KickTargets(tbl12.GetTargets(arg2, arg4), arg2)
							return
						end

						if flag12 and not arg3 and arg2 and tbl7.TargetMethods.Kick and tbl9.KickServerMethod == "Circle + Lag" then
							tbl12.KickServer(false)
						end

						for _, v22 in ipairs(tbl12.GetTargets(arg2, arg4)) do
							processPlayer(v22, false, arg2, arg3)
						end
					end)
				end,
			})
		end

		tbl12.AddRainbowToggle = function(arg, arg2, arg3, arg4)
			local value = nil
			local n36 = 0
			local flag12 = false

			arg:AddToggle(arg2, {
				Text = arg3,
				Default = false,
				Callback = function(arg5)
					if arg5 == flag12 then
						return
					end
					flag12 = arg5
					n36 += 1

					if not arg5 then
						if value and options[arg4] then
							options[arg4]:SetValue(value)
						end

						value = nil
						return
					end

					value = options[arg4] and options[arg4].Value
					local v22 = n36

					task.spawn(function()
						while n36 == v22 and toggles[arg2] and toggles[arg2].Value do
							if options[arg4] then
								options[arg4]:SetValue(Color3.fromHSV(os.clock() / 5 % 1, 1, 1))
							end

							task.wait(0.05)
						end
					end)
				end,
			})
		end

		if inOwnedPlot.Value then
			local plotItems = workspace.PlotItems

			for _, child in pairs(workspace.Plots:GetChildren()) do
				for _, child2 in pairs(child.PlotSign.ThisPlotsOwners:GetChildren()) do
					if child2:IsA("StringValue") and child2.Value == localPlayer.Name then
						task.spawn(function()
							local v22 = plotItems:FindFirstChild(child.Name)
							v17 = v22
							v20 = child2
							table.insert(tbl7.Inventories, v22)

							repeat
								task.wait()
							until not child2.Parent

							v20 = nil
							local v23 = table.find(tbl7.Inventories, v22)

							if v23 then
								table.remove(tbl7.Inventories, v23)
							end
						end)
					end
				end
			end
		end

		inOwnedPlot:GetPropertyChangedSignal("Value"):Connect(function()
			if inOwnedPlot.Value then
				local plotItems = workspace.PlotItems

				for _, child in pairs(workspace.Plots:GetChildren()) do
					for _, child2 in pairs(child.PlotSign.ThisPlotsOwners:GetChildren()) do
						if child2:IsA("StringValue") and child2.Value == localPlayer.Name then
							local v22 = plotItems:FindFirstChild(child.Name)
							v17 = v22
							v20 = child2
							table.insert(tbl7.Inventories, v22)

							repeat
								task.wait()
							until not child2.Parent

							v20 = nil
							local v23 = table.find(tbl7.Inventories, v22)

							if v23 then
								table.remove(tbl7.Inventories, v23)
							end
						end
					end
				end
			else
				v17 = workspace:FindFirstChild(localPlayer.Name .. "SpawnedInToys")
			end
		end)

		task.spawn(function()
			local connection = nil

			local function fn21()
				local v22, v23, v24 = tbl12.Char()

				if connection then
					connection:Disconnect()
					connection = nil
				end

				connection = v24.Seated:Connect(function(arg, arg2)
					if arg and arg2 and arg2.Parent and arg2.Parent.Name == "CreatureBlobman" then
						parent = arg2.Parent
					else
						parent = nil
					end
				end)
			end

			fn21()

			localPlayer.CharacterAdded:Connect(function(character)
				while true do
					task.wait()
					local humanoid = flag11

					if not flag11 then
						humanoid = character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Humanoid")
					end

					if not humanoid then
						continue
					end
					break
				end

				if flag11 then
					return
				end
				fn21()
			end)
		end)

		task.spawn(function()
			while task.wait(0.2) do
				if flag11 then
					return
				end
				local v22 = tbl12.Char()

				if v22 then
					for _, child in pairs(v22:GetChildren()) do
						if not (child.Name == "HumanoidRootPart" or child.Name == "CamPart" or child.Name == "RagdollLimbPart" or child.Name == "TypingKeyboardMyWorld") then
							if child:IsA("BasePart") and child.Transparency == 1 then
								child.Transparency = 0
							end

							if child:IsA("Accessory") then
								for _, child2 in pairs(child:GetChildren()) do
									if child2:IsA("BasePart") then
										child2.Transparency = 0
									end
								end
							end
						end
					end
				end
			end
		end)

		task.spawn(function()
			while task.wait(0.1) do
				if flag11 then
					return
				end

				if not tbl8.AutoHouse and not tbl12.WaitForRuntimeToggle("AutoHouse") then
					return
				end

				if v20 and tbl8.AutoHouse then
					local timeRemainingNum = v20 and v20:WaitForChild("TimeRemainingNum", 2.5)

					if timeRemainingNum then
						while true do
							task.wait(0.1)
							if not (not timeRemainingNum.Parent or timeRemainingNum.Value < 15 or not tbl8.AutoHouse) then
								continue
							end
							break
						end

						if not (not tbl8.AutoHouse or not timeRemainingNum.Parent) then
							local v22, v23 = tbl12.Char()
							local cFrame2 = v23.CFrame

							while true do
								task.wait()
								tbl12.Teleport(v23, v20.Parent.Parent.Parent.House:FindFirstChildWhichIsA("BasePart"))
								if not (not timeRemainingNum.Parent or timeRemainingNum.Value == 90 or timeRemainingNum.Value == 91 or not v23.Parent) then
									continue
								end
								break
							end

							tbl12.Teleport(v23, cFrame2)
						end
					end
				end
			end
		end)

		do
			local function fn21(arg)
				local v22 = workspace:FindFirstChild(arg)

				if v22 and not v22.Name:find(localPlayer.Name) then
					table.insert(tbl7.Inventories, v22)
					local connection = nil

					connection = v22:GetPropertyChangedSignal("Parent"):Connect(function()
						if not v22.Parent then
							local v23 = table.find(tbl7.Inventories, v22)

							if v23 then
								table.remove(tbl7.Inventories, v23)
							end

							connection:Disconnect()
						end
					end)
				end
			end

			for _, v22 in pairs(tbl7.PlayerList) do
				fn21(v22.Name .. "SpawnedInToys")
			end

			for _, v22 in {
				"Balloons",
				"Cave",
				"Cubes",
				"Drawers",
				"Farm",
				"Food",
				"Furniture",
				"Glass Boxes",
				"Ladders",
				"Large Animals",
				"Lincoln Planks",
				"Music",
				"NOT New",
				"Other",
				"Pallets",
				"Robloxians",
				"Rollers",
			}, nil, nil do
				fn21(v22)
			end

			workspace.ChildAdded:Connect(function(child)
				if child:IsA("Folder") then
					fn21(child.Name)
				end
			end)
		end

		do
			local function fn21()
				return tbl8.PCLDESP or tbl8.AntiKick
			end

			task.spawn(function()
				while task.wait(0.1) do
					if flag11 then
						return
					end

					if not fn21() and not tbl12.WaitForRuntimeCondition("PCLDTracking", fn21) then
						return
					end
					tbl12.UpdatePCLDAssignments()
				end
			end)
		end

		task.spawn(function()
			while task.wait(0.03) do
				if flag11 then
					return
				end

				if not tbl8.Aura and not tbl12.WaitForRuntimeToggle("Aura") then
					return
				end
				local v22, v23 = tbl12.Char()
				local position = v23 and v23.Position
				local n36 = tbl9.AuraDistance * tbl9.AuraDistance

				for _, v24 in pairs(tbl7.PlayerList) do
					if not (tbl8.ExcludeTarget and (tbl7.SelectedPlayers[v24] or tbl7.SelectedPlayersAC[v24] or tbl7.SelectedPlayersBlob[v24])) then
						if v24 ~= localPlayer and not tbl12.IsProtectedPlayer(v24, true) and v24.Character then
							local v25, v26, v27 = tbl12.Char(v24)

							if position and v26 and v27 and v27.Health ~= 0 then
								local n37 = position - v26.Position

								if n37:Dot(n37) <= n36 then
									if tbl7.Auras["Kick [Slow]"] then
										if not v26:FindFirstChild("KickBP") then
											local bodyPosition = Instance.new("BodyPosition")
											bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
											bodyPosition.Position = v26.Position + Vector3.new(0, 7, 0)
											bodyPosition.Name = "KickBP"
											bodyPosition.Parent = v26

											task.spawn(function()
												while fn20() and not flag11 and v26.Parent and v24.Parent and tbl12.GetMagnitude(v23, v26) <= 33 and tbl7.Auras["Kick [Slow]"] do
													tbl12.Grab(v26)
													task.spawn(tbl12.Ragdoll, v25)
													fn20()
													tbl12.RNO(v26)
													task.wait()
												end

												bodyPosition:Destroy()
											end)
										end
									end

									if tbl7.Auras.Grab then
										tbl12.Grab(v26)
									end

									if tbl7.Auras.Anchor and not tbl7.Anchored[v24] then
										task.spawn(tbl12.SetAnchored, v24, true)
									end

									if tbl7.Auras.Kill then
										tbl12.Kill(v24)
									end

									if tbl7.Auras.Void then
										tbl12.Void(v24)
									end

									if tbl7.Auras["Blob-Kick"] and parent then
										local creatureGrab = parent and parent:FindFirstChild("BlobmanSeatAndOwnerScript") and parent.BlobmanSeatAndOwnerScript:FindFirstChild("CreatureGrab")
										local rightWeld = parent and parent:FindFirstChild("RightDetector") and parent.RightDetector:FindFirstChild("RightWeld")

										if creatureGrab and rightWeld then
											tbl12.Grab(v26)
											task.wait()

											if tbl12.IsPartOwner(v26) then
												v26.CFrame = v26.CFrame + Vector3.new(0, 15, 0)
												tbl12.RNO(v26)
												task.wait()
												creatureGrab:FireServer(nil, v26, rightWeld)
												task.wait()
												creatureGrab:FireServer(nil, v23, rightWeld)
											end
										end
									end

									if tbl7.Auras["Blob-Kill"] and parent then
										local creatureGrab = parent and parent:FindFirstChild("BlobmanSeatAndOwnerScript") and parent.BlobmanSeatAndOwnerScript:FindFirstChild("CreatureGrab")
										local creatureRelease = creatureGrab and creatureGrab.Parent:FindFirstChild("CreatureRelease")
										local rightWeld = parent and parent:FindFirstChild("RightDetector") and parent.RightDetector:FindFirstChild("RightWeld")

										if creatureGrab and creatureRelease and rightWeld then
											creatureGrab:FireServer(nil, v26, rightWeld)
											task.wait()
											creatureRelease:FireServer(rightWeld)
											task.wait()

											if tbl12.IsNetworkOwner(v26) then
												v27:ChangeState(Enum.HumanoidStateType.Dead)
											end
										end
									end

									if tbl7.Auras["Blob-Grab"] and parent then
										local creatureGrab = parent and parent:FindFirstChild("BlobmanSeatAndOwnerScript") and parent.BlobmanSeatAndOwnerScript:FindFirstChild("CreatureGrab")
										local creatureDrop = creatureGrab and creatureGrab.Parent:FindFirstChild("CreatureDrop")
										local rightWeld = parent and parent:FindFirstChild("RightDetector") and parent.RightDetector:FindFirstChild("RightWeld")

										if creatureGrab and creatureDrop and rightWeld then
											creatureGrab:FireServer(nil, v26, rightWeld)
											task.wait()
											creatureDrop:FireServer(rightWeld)
										end
									end

									if tbl7.Auras.Unstick then
										tbl12.RemoveSticky(v25)
									end

									if tbl7.Auras.Fling and tbl12.SNO(v26) then
										v26.Velocity = v23.CFrame.LookVector * 100 + Vector3.new(0, 25, 0)
									end

									if tbl7.Auras.Ragdoll and tbl12.SNO(v26) then
										tbl12.Ragdoll(v25)
									end

									if tbl7.Auras.Sky and not v26:FindFirstChild("SkyBV") and tbl12.SNO(v26) then
										local bodyVelocity = Instance.new("BodyVelocity")
										bodyVelocity.Velocity = Vector3.new(0, 50, 0)
										bodyVelocity.Name = "SkyBV"
										bodyVelocity.Parent = v26

										task.spawn(function()
											local now3 = tick()

											while true do
												task.wait()
												if not (not tbl12.IsPartOwner(v26) or tick() - now3 > 2.5) then
													continue
												end
												break
											end

											bodyVelocity:Destroy()
											tbl12.RNO(v26)
										end)
									end

									if tbl7.Auras["Teleport to Spawn"] and tbl12.SNO(v26) then
										tbl12.Teleport(v26, CFrame.new(0, 100, 0))
									end

									if tbl7.Auras["Banana Ragdoll"] then
										tbl12.BananaRagdoll(v24)
									end

									if tbl7.Auras["Delete Limbs"] then
										tbl12.BreakLimb(v24, tbl9.TargetedLimbAura)
									end
								end
							end
						end
					end
				end
			end
		end)

		task.spawn(function()
			local toysAuraSettings = tbl7.ToysAuraSettings

			while task.wait(0.03) do
				if flag11 then
					return
				end
				local flag12 = toysAuraSettings.Enabled and toysAuraSettings.OwnType == "Aura"
				local flag13 = tbl8.ToyAuras and next(tbl7.ToyAuras) ~= nil

				if not flag12 and not flag13 then
					tbl13.CleanupCandidates()
					if not tbl12.WaitForRuntimeCondition("ToyAuraEffects", tbl12.IsToyAuraEffectsEnabled) then
						return
					end
					continue
				end

				local v22, v23, v24 = tbl12.Char()

				if not (not v23 or not v24 or v24.Health == 0) then
					local ownInventoryOnly = flag12 and toysAuraSettings.OwnInventoryOnly
					local refreshInventories = tbl13.RefreshInventories
					local v25

					if flag12 then
						v25 = v17
					else
						v25 = nil
					end

					refreshInventories(v25)
					tbl13.UpdateCharacterRoots()
					local toyAuraDistance = tbl9.ToyAuraDistance
					local n36 = toyAuraDistance * toyAuraDistance

					for k, candidate in pairs(tbl13.Candidates) do
						if not (k.Parent and candidate.Parent) then
							tbl13.Candidates[k] = nil
							tbl7.ToyAuraRoots[k] = nil
						else
							local v26 = tbl13.GetRoot(k)
							local n37 = v26 and v26.Position - v23.Position

							if not (not n37 or n37:Dot(n37) > n36) then
								if flag12 and (not ownInventoryOnly or candidate == v17) then
									tbl13.AddModel(k, true, 0.25, v26)
								end

								if flag13 and candidate ~= v17 then
									local v27 = tbl7.Anchored[k] or tbl12.SNO(v26)

									if tbl7.ToyAuras.Destroy and v27 then
										tbl12.DestroyObject(k)
									else
										if tbl7.ToyAuras.Anchor and v27 and not tbl7.Anchored[k] then
											task.spawn(tbl12.SetAnchored, k, true)
										end

										if tbl7.ToyAuras.Fling and v27 then
											v26.Velocity = v23.CFrame.LookVector * 50 + Vector3.new(0, 25, 0)
										end

										if tbl7.ToyAuras["Teleport to Spawn"] and v27 then
											tbl12.Teleport(v26, workspace.SpawnLocation.Position + Vector3.new(0, 25, 0))
										end

										if tbl7.ToyAuras.Bounce and not v26:FindFirstChild("SmashBV") then
											local bodyVelocity = Instance.new("BodyVelocity")
											bodyVelocity.Name = "SmashBV"
											bodyVelocity.Velocity = Vector3.new(0, 100, 0)
											bodyVelocity.MaxForce = Vector3.new(0, math.huge, 0)
											bodyVelocity.Parent = v26

											task.delay(0.75, function()
												if not v26.Parent or not bodyVelocity.Parent then
													return
												end
												bodyVelocity.Velocity = Vector3.zero
												bodyVelocity.MaxForce = Vector3.zero
												v26.Velocity = Vector3.new(0, -120, 0)
												task.wait(0.4)

												if bodyVelocity.Parent then
													bodyVelocity:Destroy()
												end
											end)
										end
									end
								end
							end
						end
					end
				end
			end
		end)

		UserInputService.InputChanged:Connect(function(input)
			if flag11 then
				return
			end

			if input.UserInputType == Enum.UserInputType.MouseWheel then
				if tbl8.Zoom then
					if input.Position.Z > 0 then
						tbl12.SetFOV(tbl9.ZoomFOV - tbl9.ZoomStep, true)
					elseif input.Position.Z < 0 then
						tbl12.SetFOV(tbl9.ZoomFOV + tbl9.ZoomStep, true)
					end

					return
				end

				if tbl9.LineDistance < 11 then
					tbl9.LineDistance = 11
				end

				if input.Position.Z > 0 then
					tbl9.LineDistance = tbl9.LineDistance + tbl9.IncreaseLineDistance
				elseif input.Position.Z < 0 then
					tbl9.LineDistance = tbl9.LineDistance - tbl9.IncreaseLineDistance
				end
			end
		end)

		workspace.ChildAdded:Connect(function(child)
			if flag11 then
				return
			end

			if child.Name == "GrabParts" then
				local beamPart = child:WaitForChild("BeamPart", 0.1)
				beamPart = beamPart and beamPart:WaitForChild("GrabBeam", 0.1)

				if tbl8.CustomLine and beamPart then
					beamPart.Texture = tbl7.LineTypes[tbl9.CustomLine]
				end

				local dragPart = child:WaitForChild("DragPart", 0.1)
				local grabPart = child:WaitForChild("GrabPart", 0.1)
				local weldConstraint = grabPart and grabPart:WaitForChild("WeldConstraint", 0.1)
				local part1 = weldConstraint and weldConstraint.Part1

				if toggles.RealisticFirstPersonT.Value then
					local v22 = tbl12.Char()

					if v22 and v22:FindFirstChild("Right Arm") and v22["Right Arm"]:FindFirstChild("RightGripAttachment") and beamPart then
						beamPart.Attachment0 = v22["Right Arm"].RightGripAttachment
					end
				end

				if tbl8.MoreLineExtend then
					local clone = dragPart:Clone()
					clone.Name = "DragPart1"
					clone.AlignPosition.Attachment1 = clone.DragAttach
					clone.Parent = child
					tbl9.LineDistance = (clone.Position - currentCamera.CFrame.Position).Magnitude
					local button = lib.IsMobile and ContextActionService:GetButton("ZoomIn")
					local button2 = lib.IsMobile and ContextActionService:GetButton("ZoomOut")
					clone.AlignOrientation.Enabled = false
					dragPart.AlignPosition.Enabled = false

					task.spawn(function()
						while child.Parent and not flag11 do
							if button2 and button2.GuiState == Enum.GuiState.Press then
								tbl9.LineDistance = tbl9.LineDistance + tbl9.IncreaseLineDistance
							elseif button and button.GuiState == Enum.GuiState.Press then
								tbl9.LineDistance = math.max(3, tbl9.LineDistance - tbl9.IncreaseLineDistance)
							end

							clone.Position = currentCamera.CFrame.Position + currentCamera.CFrame.LookVector * tbl9.LineDistance
							task.wait()
						end

						tbl9.LineDistance = 0
					end)
				end

				if part1 and part1:IsA("BasePart") then
					tbl12.HandleAnchorGrab(part1, child)

					local function fn21()
						local bodyVelocity = Instance.new("BodyVelocity", part1)
						bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
						bodyVelocity.Velocity = currentCamera.CFrame.lookVector * tbl9.SuperStrength
						Debris:AddItem(bodyVelocity, 1)
					end

					local button = lib.IsMobile and ContextActionService:GetButton("Throw")

					tbl12.SetRuntimeConnection("MobileSuperStrength", button and button.InputBegan, not not button, function(arg)
						if arg.UserInputType == Enum.UserInputType.Touch and tbl8.SuperStrength then
							fn21()
						end
					end)

					child:GetPropertyChangedSignal("Parent"):Connect(function()
						if flag11 then
							return
						end

						if not child.Parent then
							tbl12.SetRuntimeConnection("MobileSuperStrength", nil, false)
							if not tbl8.SuperStrength or lib.IsMobile then
								return
							end

							local connection = UserInputService.InputBegan:Connect(function(input)
								if flag11 then
									return
								end

								if input.UserInputType == Enum.UserInputType.MouseButton2 then
									fn21()
								end
							end)

							task.delay(0.15, function()
								connection:Disconnect()
							end)
						end
					end)

					if tbl8.GOI then
						local parent2 = part1.Parent
						if not parent2 or not parent2:IsA("Model") then
							return
						end
						local name = parent2.Name
						local parent3 = parent2.Parent

						if parent3 then
						end

						local playerFromCharacter = Players:GetPlayerFromCharacter(parent2)
						local str5 = ""
						local maxHeldTimer = nil
						local str6

						if playerFromCharacter then
							local str7

							if playerFromCharacter == localPlayer then
								str7 = "You (wtf, how?)"
							else
								str7 = tbl12.FormatPlayer(playerFromCharacter)
							end

							name = str7
							local v22 = tbl12.GetInventory(playerFromCharacter)
							local n36

							if v22 then
								n36 = #v22:GetChildren()
							else
								n36 = 0
							end

							local tbl16 = {}

							if playerFromCharacter:FindFirstChild("FartherReach") then
								table.insert(tbl16, "Farther Reach")
							end

							if playerFromCharacter:FindFirstChild("LineColors") then
								table.insert(tbl16, "Line Colors")
							end

							maxHeldTimer = playerFromCharacter:FindFirstChild("MaxHeldTimer")

							if maxHeldTimer and maxHeldTimer.Value <= 4 then
								table.insert(tbl16, "Escape Faster")
							end

							str5 = table.concat(tbl16, ", ")

							if str5 == "" then
								str5 = "None"
							end

							local str8 = [[Type: Player
Name: %*
Spawned Toys: %*
Gamepasses: %*
Escape Timer: %*]]

							local format = str8.format
							local value

							if maxHeldTimer then
								value = maxHeldTimer.Value
							else
								value = "N/A"
							end

							str6 = format(str8, name, n36, str5, value)
						else
							local str7 = Players:FindFirstChild(string.sub(parent3.Name, 1, -14)) or "World"

							if str7 ~= "World" then
								if str7 == localPlayer then
									str7 = "You"
								else
									str7 = tbl12.FormatPlayer(str7)
								end
							end

							str6 = ([[Type: Toy/World Part
Name: %*
Who spawned: %*
Part you are touching: %*]]):format(parent2.Name, str7, part1.Name)
						end

						if str6 then
							v21:SetVisible(true)
							v21:SetText(str6)

							task.spawn(function()
								while true do
									if playerFromCharacter then
										local v22 = tbl12.GetInventory(playerFromCharacter)
										local n36

										if v22 then
											n36 = #v22:GetChildren()
										else
											n36 = 0
										end

										local setText = v21.SetText
										local v23 = v21

										local str7 = [[Type: Player
Name: %*
Spawned Toys: %*
Gamepasses: %*
Escape Timer: %*]]

										local format = str7.format
										local v24 = name
										local v25 = str5
										local value

										if maxHeldTimer then
											value = maxHeldTimer.Value
										else
											value = "N/A"
										end

										local v26 = format(str7, v24, n36, v25, value)
										setText(v23, v26)
									end

									task.wait()
									if not (not child.Parent or not tbl8.GOI) then
										continue
									end
									break
								end

								v21:SetVisible(false)
							end)
						else
							v21:SetVisible(false)
						end
					end

					if part1.Anchored then
						return
					end
					local toysAuraSettings = tbl7.ToysAuraSettings

					if toysAuraSettings.Enabled and toysAuraSettings.OwnType == "Grab" and part1.Parent and part1.Parent:IsA("Model") and not part1:IsDescendantOf(map) and not tbl13.Models[part1.Parent] then
						if tbl13.AddModel(part1.Parent, false) then
							tbl12.RNO(part1)
						end
					elseif tbl13.Models[part1.Parent] then
						tbl13.RemoveModel(part1.Parent, false)
					end

					local playerFromCharacter = part1.Name == "HumanoidRootPart" and Players:GetPlayerFromCharacter(part1.Parent)

					if tbl8.SilentAim and not tbl7.SilentAimState.RaycastActive and tbl12.IsSilentAimTarget(playerFromCharacter) and weldConstraint then
						tbl11.CreateGrabLine:FireServer()
						tbl11.CreateGrabLine:FireServer(part1, CFrame.new())
						weldConstraint.Enabled = false
						part1.CFrame = dragPart.CFrame
						weldConstraint.Enabled = true
					end

					if tbl8.Grab then
						local parent2 = part1.Parent and Players:FindFirstChild(part1.Parent.Name)

						task.spawn(function()
							if tbl7.Grabs.Kill and parent2 then
								task.wait()
								child:Destroy()
								tbl12.Kill(parent2)
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Void and parent2 then
								task.wait()
								child:Destroy()
								tbl12.Void(parent2)
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Invisible then
								tbl11.CreateGrabLine:FireServer()
							end
						end)

						task.spawn(function()
							if tbl7.Grabs["Teleport to Spawn"] then
								task.wait()
								child:Destroy()
								tbl12.Teleport(part1, CFrame.new(0, 100, 0))
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Noclip then
								if part1:IsDescendantOf(map) or part1.Parent == workspace then
									return
								end
								local parent3 = part1.Parent
								local tbl16 = {}

								for _, child2 in pairs(parent3:GetChildren()) do
									if child2:IsA("BasePart") and child2.CanCollide then
										table.insert(tbl16, child2)
									end
								end

								while task.wait(0.25) and child and child.Parent and not flag11 do
									local v22 = pairs
									local v23 = table.pack(parent3:QueryDescendants("BasePart"))
									v23.n = 1 + v23.n - 1
									table.move(v23, 1, v23.n, 1, v23)

									for _, v24 in v22(table.unpack(v23, 1, v23.n)) do
										v24.CanCollide = false
									end
								end

								for _, v22 in pairs(tbl16) do
									if v22.Parent then
										v22.CanCollide = true
									end
								end
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Infinite then
								if part1:IsDescendantOf(map) then
									return
								end
								tbl12.DisableEndGrabEarly()

								while part1 and child and child.Parent and not flag11 do
									tbl12.Grab(part1)
									RunService.Heartbeat:Wait()
								end

								tbl12.RNO(part1)
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Kick and parent2 then
								tbl12.DisableEndGrabEarly()

								while part1 and part1.Parent and child and child.Parent and not flag11 do
									tbl12.Grab(part1)
									task.wait()
									tbl12.RNO(part1)

									for i = 1, 2 do
										task.wait()
									end
								end

								tbl12.RNO(part1)
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Massless then
								local dragPart2 = child:FindFirstChild("DragPart")
								local dragPart1 = child:FindFirstChild("DragPart1")

								if dragPart2 then
									dragPart2.AlignOrientation.MaxTorque = "inf"
									dragPart2.AlignOrientation.Responsiveness = 200
									dragPart2.AlignPosition.MaxForce = "inf"
									dragPart2.AlignPosition.Responsiveness = 200

									if dragPart1 then
										dragPart1.AlignOrientation.MaxTorque = "inf"
										dragPart1.AlignOrientation.Responsiveness = 200
										dragPart1.AlignPosition.MaxForce = "inf"
										dragPart1.AlignPosition.Responsiveness = 200
									end
								end
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Ragdoll and part1.Parent:FindFirstChild("Humanoid") and part1.Parent.Humanoid:FindFirstChild("Ragdolled") then
								while part1 and part1.Parent and child.Parent and not flag11 and task.wait() do
									tbl12.Ragdoll(part1.Parent)
								end
							end
						end)

						task.spawn(function()
							if tbl7.Grabs.Unstick and part1.Parent:FindFirstChild("Humanoid") then
								while part1 and part1.Parent and child.Parent and not flag11 and task.wait() do
									tbl12.RemoveSticky(part1.Parent, tbl9.UnstickGrab == "Only Sticked")
								end
							end
						end)

						task.spawn(function()
							if grabPart and grabPart:FindFirstChild("GrabAttach") and tbl7.Grabs.Spin and part1.Parent ~= workspace and part1:IsDescendantOf(map) ~= true then
								while part1 and part1.Parent and child.Parent and not flag11 and task.wait() do
									grabPart.RotVelocity = Vector3.new(50, 50, 50)
								end
							end
						end)

						task.spawn(function()
							if grabPart and grabPart:FindFirstChild("GrabAttach") and tbl7.Grabs.Fling and part1.Parent ~= workspace and part1:IsDescendantOf(map) ~= true then
								while part1 and part1.Parent and child.Parent and not flag11 and task.wait() do
									grabPart.RotVelocity = Vector3.new(1500, 1500, 1500)
								end
							end
						end)

						task.spawn(function()

						end)
					end
				end
			end

			if child:FindFirstChild("HoldPart") and toggles.RealisticFirstPersonT.Value then
				local leftArm = tbl12.Char()
				leftArm = leftArm and leftArm:FindFirstChild("Left Arm")

				if leftArm then
					for _, v22 in leftArm:GetConnectedParts() do
						if v22.Name == "HoldPart" then
							local parent2 = v22.Parent

							if parent2 then
								local tbl16 = {}

								for _, v23 in parent2:QueryDescendants("BasePart, Decal"), nil, nil do
									local transparency = v23.Transparency

									if transparency ~= 1 then
										tbl16[v23] = transparency
									end
								end

								task.wait()

								for k, v23 in tbl16, nil, nil do
									k.Transparency = v23
								end

								for _, v23 in child:QueryDescendants("BasePart, Decal") do
									v23.Transparency = 1
								end
							end
						end
					end
				end
			end
		end)

		task.spawn(function()
			local spawnLocation = workspace.SpawnLocation

			while task.wait() do
				if flag11 then
					return
				end

				if not tbl8.LagServer and not tbl12.WaitForRuntimeToggle("LagServer") then
					return
				end
				local n36 = -2 ^ (20 + tbl9.LagLines)
				local cframe = CFrame.new(n36, 0, n36)
				tbl11.CreateGrabLine:FireServer(spawnLocation, cframe)
			end
		end)

		task.spawn(function()
			while task.wait(0.03) do
				if flag11 then
					return
				end

				if not tbl8.JumpPower and not tbl8.Noclip then
					if not tbl12.WaitForRuntimeCondition("MovementPhysics", tbl12.IsMovementPhysicsEnabled) then
						return
					end
					continue
				end

				local v22, v23, v24 = tbl12.Char()

				if tbl8.JumpPower and v24 and v24.JumpPower ~= tbl9.JumpPower then
					v24.JumpPower = tbl9.JumpPower
				end

				if tbl8.Noclip and v22 then
					tbl12.ToggleCollisions(v22, false, true)
				end
			end
		end)

		UserInputService.JumpRequest:Connect(function()
			if flag11 then
				return
			end

			if tbl8.InfJump then
				local v22, v23, v24 = tbl12.Char()

				if v24 then
					v24:ChangeState(Enum.HumanoidStateType.Jumping)
				end
			end
		end)

		GuiService.ErrorMessageChanged:Connect(function(arg)
			if flag11 then
				return
			end
			local str5 = tostring(arg):lower()
			if (str5:find("server is full", 1, true) or str5:find("game is full", 1, true)) and tbl12.RetryFullServerHop() then
				return
			end

			if not tbl8.AutoRejoin or tbl7.AutoRejoinBusy or not tbl12.IsTerminalDisconnect() then
				return
			end
			tbl7.AutoRejoinBusy = true
			tbl12.Rejoin(tbl8.RejoinWithAntiLag ~= false, tbl8.RejoinWithScript)
		end)

		isHeld:GetPropertyChangedSignal("Value"):Connect(tbl12.AntiGrab)

		task.spawn(function()
			local v22 = nil
			local boolValue = nil

			local function fn21()
				local v23
				v23, v23 = tbl12.Char()

				if v22 then
					if v22.Parent and v23 then
						v22.Parent = v23
					end

					v22 = nil
				end

				if boolValue then
					if boolValue.Parent then
						boolValue:Destroy()
					end

					boolValue = nil
				end
			end

			while task.wait() do
				if flag11 then
					fn21()
					return
				end

				if not tbl8.AntiBlobman then
					if v22 or boolValue then
						fn21()
					end

					if not tbl12.WaitForRuntimeToggle("AntiBlobman") then
						return
					end
				end

				local v23, v24, v25 = tbl12.Char()

				if not v24 or not v25 then
					if v22 then
						v22:Destroy()
						v22 = nil
					end

					if boolValue then
						if boolValue.Parent then
							boolValue:Destroy()
						end

						boolValue = nil
					end
				else
					local rootAttachment = not (v22 and v22.Parent) and v24:FindFirstChild("RootAttachment")

					if rootAttachment then
						task.wait(0.5)
						v22 = rootAttachment
						v22.Parent = ReplicatedStorage
						boolValue = Instance.new("BoolValue", v24)
						boolValue.Name = "RootAttachment"
					end

					if v24.Massless then
						v24.Massless = false
					end
				end
			end
		end)

		task.spawn(function()
			local v22 = nil
			local v23 = nil

			while true do
				task.wait(tbl9.InputLgDelay)

				if flag11 then
					if v22 then
						tbl12.DestroyToy(v22)
					end

					return
				else
					if not tbl8.AntiInputLag then
						if v22 then
							tbl12.DestroyToy(v22)
							v22 = nil
						end

						if not tbl12.WaitForRuntimeToggle("AntiInputLag") then
							break
						end
					end

					if not v23 or not v23.Parent then
						v23 = tbl12.DisableEndGrabEarly()
					end

					local v24, v25, v26 = tbl12.Char()

					if not v22 or not v22.Parent then
						v22 = tbl12.SpawnToy(tbl9.AntiInputType, CFrame.new(0, 1e20, 0), nil, true)
						if not v22 then
							continue
						end
					end

					local holdPart = v22 and v22:WaitForChild("HoldPart", 2)
					local holdItemRemoteFunction = holdPart and holdPart:WaitForChild("HoldItemRemoteFunction", 2)
					local dropItemRemoteFunction = holdItemRemoteFunction and holdPart:WaitForChild("DropItemRemoteFunction", 2)

					if v22.Name ~= tbl9.AntiInputType then
						tbl12.DestroyToy(v22)
					end

					pcall(function()
						if holdPart.RigidConstraint.Attachment1 ~= v24["Left Arm"].LeftGripAttachment and holdPart.RigidConstraint.Attachment1 ~= nil and holdPart.RigidConstraint.Attachment1 ~= v24["Right Arm"].RightGripAttachment then
							tbl12.DestroyToy(v22)
						end
					end)

					task.spawn(function()
						for _, v27 in pairs(v22:QueryDescendants("BasePart")) do
							v27.CanCollide = false

							if v27:IsA("MeshPart") or v27.Name == "Part" then
								v27.Transparency = tbl9.AILTransparency
							end
						end
					end)

					if v24 and v26 and v26.Health ~= 0 and holdItemRemoteFunction and dropItemRemoteFunction then
						task.spawn(function()
							local vector = Vector3.new
							dropItemRemoteFunction:InvokeServer(v22, CFrame.new(0, 1e20, 0), vector())
						end)

						task.spawn(function()
							holdItemRemoteFunction:InvokeServer(v22, v24)
						end)
					elseif not holdItemRemoteFunction or not dropItemRemoteFunction then
						tbl12.DestroyToy(v22)
						v22 = nil
					end
				end
			end
		end)

		if not tbl11.Explode then
			return
		end

		workspace.ChildAdded:Connect(function(child)
			local v22, v23, v24 = tbl12.Char()

			if child.Name == "Part" and tbl8.AntiExplosion and v23 and v24 then
				if (child.Position - v23.Position).Magnitude <= 20 then
					v23.Anchored = true
					task.wait(0.02)

					if not v24.SeatPart then
						v24.Sit = false
					end

					for _, v25 in pairs(v22:QueryDescendants("#RagdollLimbPart")) do
						v25.CanCollide = false
					end

					tbl12.ResetVelocity(v23)
					v23.Anchored = false
				end
			end
		end)

		task.spawn(function()
			local extinguishPart = map.Hole.PoisonSmallHole:FindFirstChild("ExtinguishPart")
			if not extinguishPart then
				return
			end

			if extinguishPart:FindFirstChild("Tex") then
				extinguishPart.Tex:Destroy()
			end

			extinguishPart.Transparency = 1

			local function fn21(character)
				if flag11 then
					return
				end
				local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 2)
				if not humanoidRootPart then
					return
				end

				humanoidRootPart.ChildAdded:Connect(function(child)
					if flag11 then
						return
					end

					if child.Name == "FireParticleEmitter" and tbl8.AntiBurn then
						local cFrame2 = extinguishPart.CFrame
						local fireLight = humanoidRootPart:FindFirstChild("FireLight")

						if fireLight then
							fireLight:Destroy()
						end

						child.Enabled = false
						local screenOverlayGui = playerGui:FindFirstChild("ScreenOverlayGui")
						screenOverlayGui = screenOverlayGui and screenOverlayGui:FindFirstChild("FireFade")

						if screenOverlayGui then
							screenOverlayGui.Visible = false
						end

						while true do
							extinguishPart.CFrame = humanoidRootPart.CFrame
							task.wait()
							if not (not child.Parent or not humanoidRootPart.Parent) then
								continue
							end
							break
						end

						extinguishPart.CFrame = cFrame2
					end
				end)
			end

			localPlayer.CharacterAdded:Connect(fn21)
			local v22 = tbl12.Char()

			if v22 then
				fn21(v22)
			end
		end)

		task.spawn(function()
			while task.wait(0.03) do
				if flag11 then
					return
				end

				if not tbl8.AntiVoid and not tbl12.WaitForRuntimeToggle("AntiVoid") then
					return
				end
				local v22, v23 = tbl12.Char()
				local flag12

				if v23 then
					flag12 = v23.Position.Y >= 10000 or v23.Position.Y <= -500
				else
					flag12 = v23
				end

				flag12 = flag12 and not ((v23.Position - part3.Position).Magnitude < 150)

				if flag12 then
					tbl12.Teleport(v23, CFrame.new(0, 15, 0))
				end
			end
		end)

		do
			local function fn21()
				local n36 = os.clock() + 0.35

				repeat
					local v22 = tbl12.DetectPCLD(localPlayer)
					if v22 and v22.Parent and not tbl12.IsWaitingPCLD(v22) then
						return v22
					end
					task.wait(0.05)
				until flag11 or not tbl8.AntiKick or os.clock() >= n36
			end

			local function fn22(arg)
				local NinjaShuriken = tbl12.SpawnToy("NinjaShuriken", arg.CFrame + Vector3.new(0, 15, 0), 3, true)
				local stickyPart = NinjaShuriken and NinjaShuriken:WaitForChild("StickyPart", 1.5)
				local stickyWeld = stickyPart and stickyPart:WaitForChild("StickyWeld", 1.5)
				if stickyPart and stickyWeld and tbl12.SNO(stickyPart) then
					return NinjaShuriken, stickyPart, stickyWeld
				end
				tbl12.DestroyToy(NinjaShuriken)
			end

			task.spawn(function()
				while task.wait(0.03) do
					if flag11 then
						return
					end

					if not tbl8.AntiKick then
						if v18 then
							tbl12.DestroyToy(v18)
							v18 = nil
						end

						if not tbl12.WaitForRuntimeToggle("AntiKick") then
							return
						end
					end

					local antiKickSettings = tbl7.AntiKickSettings
					local v22, v23, v24 = tbl12.Char()
					local ragdollTouchedHitbox = v23 and v23:FindFirstChild("RagdollTouchedHitbox")

					if v23 and v24 and ragdollTouchedHitbox and v24.Health > 0 then
						if localPlayer.InPlot.Value then
							while true do
								task.wait()
								if not (not localPlayer.InPlot.Value or localPlayer.InOwnedPlot.Value) then
									continue
								end
								break
							end
						end

						if tbl9.AKType == "Shuriken" then
							local parent2, shurHighlight, highlight2, antiKick, forcefieldChar, transparency, isMeshPart

							if not (v18 and v18.Name == "ShurikenRSC" and v18:FindFirstChild("StickyPart") and v18.StickyPart:FindFirstChild("StickyWeld") and v18.StickyPart.StickyWeld.Part1 == ragdollTouchedHitbox) then
								local stickyPart = nil
								local stickyWeld, now3, flag12, flag13

								if not v18 or not v18.Parent then
									tbl12.DestroyToy(v18)
									v18 = nil
									local v25 = fn21()
									stickyWeld = nil

									if v25 then
										local v26
										v26, stickyPart, stickyWeld = fn22(v25)
										v18 = v26
									end

									if not v18 then
										local v26
										v26, stickyPart, stickyWeld = fn22(v23)
										v18 = v26

										if v18 then
											v18.Name = "ShurikenRSC"

											task.spawn(function()
												local touchInterest = stickyPart:WaitForChild("TouchInterest", 2.5)

												if touchInterest then
													touchInterest:Destroy()
												end
											end)

											tbl11.StickyPartEvent:FireServer(stickyPart, ragdollTouchedHitbox, CFrame.new(0, -0.3, 0) * CFrame.Angles(1.5707963267948966, 0, 0))
											now3 = tick()

											while true do
												fn20()
												flag12 = stickyWeld.Part1 == ragdollTouchedHitbox or not stickyWeld.Parent or not ragdollTouchedHitbox.Parent or not v24.Parent
												flag13 = flag12 or v24.Health == 0 or tick() - now3 > 0.5
												if not flag13 then
													continue
												end
												break
											end

											parent2 = v18 and v18.Parent

											if parent2 then
												if not tbl8.AntiKick then
													tbl12.DestroyToy(v18)
													v18 = nil
												else
													shurHighlight = v18:FindFirstChild("ShurHighlight")

													if not shurHighlight then
														shurHighlight = Instance.new("Highlight")
														shurHighlight.Name = "ShurHighlight"
														shurHighlight.Adornee = v18
														shurHighlight.Parent = v18
													end

													if shurHighlight.Enabled ~= antiKickSettings.Highlight then
														shurHighlight.Enabled = antiKickSettings.Highlight
													end

													if shurHighlight.FillColor ~= antiKickSettings.HighlightFill then
														shurHighlight.FillColor = antiKickSettings.HighlightFill
													end

													if shurHighlight.OutlineColor ~= antiKickSettings.HighlightOutl then
														shurHighlight.OutlineColor = antiKickSettings.HighlightOutl
													end

													if shurHighlight.FillTransparency ~= antiKickSettings.HighlightFT then
														shurHighlight.FillTransparency = antiKickSettings.HighlightFT
													end

													if shurHighlight.OutlineTransparency ~= antiKickSettings.HighlightOT then
														shurHighlight.OutlineTransparency = antiKickSettings.HighlightOT
													end

													highlight2 = antiKickSettings.Highlight

													if highlight2 then
														antiKick = highlight2
													else
														forcefieldChar = tbl8.ForcefieldChar
														antiKick = forcefieldChar and tbl7.CharacterHighlightAffects["Anti Kick"]
													end

													if antiKick then
														transparency = 0
													else
														transparency = antiKickSettings.Transparency
													end

													for _, child in ipairs(v18:GetChildren()) do
														if child:IsA("BasePart") then
															if tbl12.ApplyCharacterHighlightPart then
																tbl12.ApplyCharacterHighlightPart(child, "Anti Kick")
															end

															isMeshPart = child.Transparency ~= transparency and (child:IsA("MeshPart") or child.Name == "Part")

															if isMeshPart then
																child.Transparency = transparency
															end

															if child.CanCollide then
																child.CanCollide = false
															end

															if child.CanQuery then
																child.CanQuery = false
															end
														end
													end
												end
											end
										end
									elseif v18 then
										v18.Name = "ShurikenRSC"

										task.spawn(function()
											local touchInterest = stickyPart:WaitForChild("TouchInterest", 2.5)

											if touchInterest then
												touchInterest:Destroy()
											end
										end)

										tbl11.StickyPartEvent:FireServer(stickyPart, ragdollTouchedHitbox, CFrame.new(0, -0.3, 0) * CFrame.Angles(1.5707963267948966, 0, 0))
										now3 = tick()

										while true do
											fn20()
											flag12 = stickyWeld.Part1 == ragdollTouchedHitbox or not stickyWeld.Parent or not ragdollTouchedHitbox.Parent or not v24.Parent
											flag13 = flag12 or v24.Health == 0 or tick() - now3 > 0.5
											if not flag13 then
												continue
											end
											break
										end

										parent2 = v18 and v18.Parent

										if parent2 then
											if not tbl8.AntiKick then
												tbl12.DestroyToy(v18)
												v18 = nil
											else
												shurHighlight = v18:FindFirstChild("ShurHighlight")

												if not shurHighlight then
													shurHighlight = Instance.new("Highlight")
													shurHighlight.Name = "ShurHighlight"
													shurHighlight.Adornee = v18
													shurHighlight.Parent = v18
												end

												if shurHighlight.Enabled ~= antiKickSettings.Highlight then
													shurHighlight.Enabled = antiKickSettings.Highlight
												end

												if shurHighlight.FillColor ~= antiKickSettings.HighlightFill then
													shurHighlight.FillColor = antiKickSettings.HighlightFill
												end

												if shurHighlight.OutlineColor ~= antiKickSettings.HighlightOutl then
													shurHighlight.OutlineColor = antiKickSettings.HighlightOutl
												end

												if shurHighlight.FillTransparency ~= antiKickSettings.HighlightFT then
													shurHighlight.FillTransparency = antiKickSettings.HighlightFT
												end

												if shurHighlight.OutlineTransparency ~= antiKickSettings.HighlightOT then
													shurHighlight.OutlineTransparency = antiKickSettings.HighlightOT
												end

												highlight2 = antiKickSettings.Highlight

												if highlight2 then
													antiKick = highlight2
												else
													forcefieldChar = tbl8.ForcefieldChar
													antiKick = forcefieldChar and tbl7.CharacterHighlightAffects["Anti Kick"]
												end

												if antiKick then
													transparency = 0
												else
													transparency = antiKickSettings.Transparency
												end

												for _, child in ipairs(v18:GetChildren()) do
													if child:IsA("BasePart") then
														if tbl12.ApplyCharacterHighlightPart then
															tbl12.ApplyCharacterHighlightPart(child, "Anti Kick")
														end

														isMeshPart = child.Transparency ~= transparency and (child:IsA("MeshPart") or child.Name == "Part")

														if isMeshPart then
															child.Transparency = transparency
														end

														if child.CanCollide then
															child.CanCollide = false
														end

														if child.CanQuery then
															child.CanQuery = false
														end
													end
												end
											end
										end
									end
								else
									stickyPart = v18:WaitForChild("StickyPart", 1.5)
									stickyWeld = stickyPart and stickyPart:WaitForChild("StickyWeld", 1.5)

									if not (stickyPart and stickyWeld) or not tbl12.SNO(stickyPart) then
										tbl12.DestroyToy(v18)
										v18 = nil
									elseif v18 then
										v18.Name = "ShurikenRSC"

										task.spawn(function()
											local touchInterest = stickyPart:WaitForChild("TouchInterest", 2.5)

											if touchInterest then
												touchInterest:Destroy()
											end
										end)

										tbl11.StickyPartEvent:FireServer(stickyPart, ragdollTouchedHitbox, CFrame.new(0, -0.3, 0) * CFrame.Angles(1.5707963267948966, 0, 0))
										now3 = tick()

										while true do
											fn20()
											flag12 = stickyWeld.Part1 == ragdollTouchedHitbox or not stickyWeld.Parent or not ragdollTouchedHitbox.Parent or not v24.Parent
											flag13 = flag12 or v24.Health == 0 or tick() - now3 > 0.5
											if not flag13 then
												continue
											end
											break
										end

										parent2 = v18 and v18.Parent

										if parent2 then
											if not tbl8.AntiKick then
												tbl12.DestroyToy(v18)
												v18 = nil
											else
												shurHighlight = v18:FindFirstChild("ShurHighlight")

												if not shurHighlight then
													shurHighlight = Instance.new("Highlight")
													shurHighlight.Name = "ShurHighlight"
													shurHighlight.Adornee = v18
													shurHighlight.Parent = v18
												end

												if shurHighlight.Enabled ~= antiKickSettings.Highlight then
													shurHighlight.Enabled = antiKickSettings.Highlight
												end

												if shurHighlight.FillColor ~= antiKickSettings.HighlightFill then
													shurHighlight.FillColor = antiKickSettings.HighlightFill
												end

												if shurHighlight.OutlineColor ~= antiKickSettings.HighlightOutl then
													shurHighlight.OutlineColor = antiKickSettings.HighlightOutl
												end

												if shurHighlight.FillTransparency ~= antiKickSettings.HighlightFT then
													shurHighlight.FillTransparency = antiKickSettings.HighlightFT
												end

												if shurHighlight.OutlineTransparency ~= antiKickSettings.HighlightOT then
													shurHighlight.OutlineTransparency = antiKickSettings.HighlightOT
												end

												highlight2 = antiKickSettings.Highlight

												if highlight2 then
													antiKick = highlight2
												else
													forcefieldChar = tbl8.ForcefieldChar
													antiKick = forcefieldChar and tbl7.CharacterHighlightAffects["Anti Kick"]
												end

												if antiKick then
													transparency = 0
												else
													transparency = antiKickSettings.Transparency
												end

												for _, child in ipairs(v18:GetChildren()) do
													if child:IsA("BasePart") then
														if tbl12.ApplyCharacterHighlightPart then
															tbl12.ApplyCharacterHighlightPart(child, "Anti Kick")
														end

														isMeshPart = child.Transparency ~= transparency and (child:IsA("MeshPart") or child.Name == "Part")

														if isMeshPart then
															child.Transparency = transparency
														end

														if child.CanCollide then
															child.CanCollide = false
														end

														if child.CanQuery then
															child.CanQuery = false
														end
													end
												end
											end
										end
									end
								end
							else
								parent2 = v18 and v18.Parent

								if parent2 then
									if not tbl8.AntiKick then
										tbl12.DestroyToy(v18)
										v18 = nil
									else
										shurHighlight = v18:FindFirstChild("ShurHighlight")

										if not shurHighlight then
											shurHighlight = Instance.new("Highlight")
											shurHighlight.Name = "ShurHighlight"
											shurHighlight.Adornee = v18
											shurHighlight.Parent = v18
										end

										if shurHighlight.Enabled ~= antiKickSettings.Highlight then
											shurHighlight.Enabled = antiKickSettings.Highlight
										end

										if shurHighlight.FillColor ~= antiKickSettings.HighlightFill then
											shurHighlight.FillColor = antiKickSettings.HighlightFill
										end

										if shurHighlight.OutlineColor ~= antiKickSettings.HighlightOutl then
											shurHighlight.OutlineColor = antiKickSettings.HighlightOutl
										end

										if shurHighlight.FillTransparency ~= antiKickSettings.HighlightFT then
											shurHighlight.FillTransparency = antiKickSettings.HighlightFT
										end

										if shurHighlight.OutlineTransparency ~= antiKickSettings.HighlightOT then
											shurHighlight.OutlineTransparency = antiKickSettings.HighlightOT
										end

										highlight2 = antiKickSettings.Highlight

										if highlight2 then
											antiKick = highlight2
										else
											forcefieldChar = tbl8.ForcefieldChar
											antiKick = forcefieldChar and tbl7.CharacterHighlightAffects["Anti Kick"]
										end

										if antiKick then
											transparency = 0
										else
											transparency = antiKickSettings.Transparency
										end

										for _, child in ipairs(v18:GetChildren()) do
											if child:IsA("BasePart") then
												if tbl12.ApplyCharacterHighlightPart then
													tbl12.ApplyCharacterHighlightPart(child, "Anti Kick")
												end

												isMeshPart = child.Transparency ~= transparency and (child:IsA("MeshPart") or child.Name == "Part")

												if isMeshPart then
													child.Transparency = transparency
												end

												if child.CanCollide then
													child.CanCollide = false
												end

												if child.CanQuery then
													child.CanQuery = false
												end
											end
										end
									end
								end
							end
						end
					end
				end
			end)
		end

		task.spawn(function()
			while task.wait(0.2) do
				if flag11 then
					return
				end

				if not tbl8.AntiKick2 and not tbl12.WaitForRuntimeToggle("AntiKick2") then
					return
				end
				local v22, v23, v24 = tbl12.Char()

				if v24 then
					if not v24:GetAttribute("BrokenPCLD") or v24.Health <= 0 then
						local result = nil

						if v24.Health > 0 then
							fn18("Starting PCLD Break...", "PCLD Breaker")

							task.spawn(function()
								repeat
									v24.Health = 0
									v24:ChangeState(Enum.HumanoidStateType.Dead)
									fn20()
								until result
							end)
						else
							fn18("Detected death, breaking PCLD again...", "PCLD Breaker")
						end

						result = localPlayer.CharacterAdded:Wait()
						local humanoid = result:WaitForChild("Humanoid", 5)

						if humanoid then
							local result2 = nil

							task.spawn(function()
								repeat
									humanoid.Health = 0
									humanoid:ChangeState(Enum.HumanoidStateType.Dead)
									fn20()
								until result2
							end)

							result2 = localPlayer.CharacterAdded:Wait()
							local humanoid2 = result2:WaitForChild("Humanoid", 5)

							if humanoid2 then
								humanoid2:SetAttribute("BrokenPCLD", true)
								fn18("Done!", "PCLD Breaker")
							end
						end
					end
				end
			end
		end)

		do
			local flag12 = false

			task.delay(2.5, function()
				flag12 = true
			end)

			RunService.Heartbeat:Connect(function(deltaTime)
				if flag11 or not flag12 or not tbl8.AutoAntiLag then
					return
				end
				local antiLagSens = tbl9.AntiLagSens

				if math.floor(1 / deltaTime) < antiLagSens and toggles.AntiLag and not toggles.AntiLag.Value then
					fn18("Anti Lag Enabled || Too low fps", "Auto Anti Lag")
					toggles.AntiLag:SetValue(true)
				end
			end)
		end

		task.spawn(function()
			task.wait(0.5)

			while task.wait(0.03) do
				if flag11 then
					return
				end

				if not tbl8.AntiSnowball and not tbl12.WaitForRuntimeToggle("AntiSnowball") then
					return
				end

				if tbl8.GucciAntiGrab then
					repeat
						task.wait()
					until not tbl8.GucciAntiGrab

					task.wait(1)
				end

				if tbl8.AntiBanana then
					local v22 = tbl12.Char()

					if v22 and v22:FindFirstChild("Right Leg") then
						while true do
							task.wait()
							local v23 = tbl12.Char()
							if v23 and v23:FindFirstChild("Right Leg") then
								continue
							end
							break
						end
					end
				end

				local v22, v23, v24 = tbl12.Char()
				local weldHRP = v23 and v23:FindFirstChild("WeldHRP")

				if not (not weldHRP or not v24 or v24.Health == 0 or not v23) then
					tbl11.RagdollRemote:FireServer(v23, 0.5)

					if not v24.SeatPart then
						v24.Sit = false
					end

					v24.AutoRotate = true

					if weldHRP.Enabled then
						ContextActionService:UnbindAction("JumpRemover")
						v24:SetStateEnabled(Enum.HumanoidStateType.Jumping, true)
						tbl12.RepositionLimbs(v22)
						tbl12.ToggleCollisions(v22, false, false, true)
					end
				end
			end
		end)

		task.spawn(function()
			task.wait(2)

			while task.wait(0.03) do
				if flag11 then
					return
				end

				if not tbl8.AntiBanana and not tbl12.WaitForRuntimeToggle("AntiBanana") then
					return
				end
				local rightLeg, v22, v23 = tbl12.Char()
				rightLeg = rightLeg and rightLeg:FindFirstChild("Right Leg")
				local gucciAntiGrab = tbl8.GucciAntiGrab

				if rightLeg and v22 and v23 and v23.Health ~= 0 and tbl12.IsNetworkOwner(v22) then
					if gucciAntiGrab then
						toggles.GucciAntiGrab:SetValue(false)
						task.wait(0.25)
					end

					v23.Sit = false
					v23.HipHeight = 2
					tbl12.BreakLimb(localPlayer, "Legs")
					local connection = nil

					connection = v23:GetPropertyChangedSignal("HipHeight"):Connect(function()
						if not tbl8.AntiBanana then
							return connection:Disconnect()
						end
						v23.HipHeight = 2
					end)

					local now3 = tick()

					while true do
						task.wait()
						if not (not rightLeg.Parent or v23.Health == 0 or tick() - now3 > 0.75) then
							continue
						end
						break
					end

					if gucciAntiGrab then
						toggles.GucciAntiGrab:SetValue(true)
					end
				elseif v23 and v23.Health == 0 then
					localPlayer.CharacterAdded:Wait()
					task.wait(0.5)
				end
			end
		end)

		do
			local gameCorrectionsNotify = ReplicatedStorage.GameCorrectionEvents.GameCorrectionsNotify

			if gameCorrectionsNotify then
				local n36 = 0

				gameCorrectionsNotify.OnClientEvent:Connect(function(arg)
					if flag11 then
						return
					end

					if arg == "Flying" then
						local now3 = tick()

						if now3 - n36 > 1 then
							n36 = now3
							tbl9.KickFlags = 1
						else
							tbl9.KickFlags = tbl9.KickFlags + 1
						end

						if tbl8.AutoReset then
							if tbl9.KickFlags >= 4 and tbl8.AutoLeave then
								return localPlayer:Kick("Resonance (Auto Reset)\nAvoided Kick")
							end
							local v22, v23, v24 = tbl12.Char()

							if v24 then
								v24:ChangeState(Enum.HumanoidStateType.Running)
								v24:ChangeState(Enum.HumanoidStateType.Dead)

								if tbl9.KickFlags == 1 then
									fn18("Reset due to kick flag", "Auto Reset")
								end
							end
						end
					end
				end)
			end
		end

		do
			local connection = nil

			local function fn21()
				local v22, head = tbl12.Char()
				head = head and v22:FindFirstChild("Head")
				if not head then
					return
				end

				connection = head.ChildAdded:Connect(function(child)
					if flag11 then
						return
					end

					if not child:IsA("StringValue") then
						return
					end
					local v23 = Players:FindFirstChild(child.Value)

					if child.Name == "PartOwner" and v23 then
						tbl9.WhoGrabbed = tbl12.FormatPlayer(v23)

						if tbl12.UpdateLastGrabbedLabel then
							tbl12.UpdateLastGrabbedLabel()
						end

						if tbl8.CounterAttack and not tbl12.IsProtectedPlayer(v23, true) then
							local v24, v25 = tbl12.Char(v23)

							if tbl9.CounterMethod == "Kill" then
								tbl12.Kill(v23)
							elseif tbl9.CounterMethod == "Void" then
								tbl12.Void(v23)
							elseif tbl9.CounterMethod == "Grab" and v25 then
								tbl12.Grab(v25)
							elseif tbl9.CounterMethod == "Delete Limbs" then
								tbl12.BreakLimb(v23, tbl9.TargetedLimbCA)
							elseif tbl9.CounterMethod == "Fling" and v25 and tbl12.SNO(v25) then
								local _, ownRoot = tbl12.Char()
                                if ownRoot then v25.AssemblyLinearVelocity = ownRoot.CFrame.LookVector * 100 + Vector3.new(0, 25, 0) end
							elseif tbl9.CounterMethod == "Teleport to Spawn" and tbl12.SNO(v25) then
								tbl12.Teleport(v25, CFrame.new(0, 10, 0))
							elseif tbl9.CounterMethod == "Anchor" then
								task.spawn(tbl12.SetAnchored, v23, true)
							end
						end
					end
				end)
			end

			localPlayer.CharacterAdded:Connect(function(character)
				if connection then
					connection:Disconnect()
				end

				while true do
					task.wait()
					local head = flag11

					if not flag11 then
						head = character:FindFirstChild("Humanoid") and character:FindFirstChild("HumanoidRootPart") and character:FindFirstChild("Head")
					end

					if not head then
						continue
					end
					break
				end

				if flag11 then
					return
				end
				fn21()
			end)

			fn21()
		end

		tbl12.SetRuntimeConnection("ESPPlayerAdded", Players.PlayerAdded, true, function(arg)
			if not flag11 and tbl8.PlayerESP and arg ~= localPlayer then
				tbl12.CreatePlayerESP(arg)
			end
		end)

		tbl12.SetRuntimeConnection("ESPPlayerRemoving", Players.PlayerRemoving, true, function(arg)
			if tbl12.RemovePlayerESP then
				tbl12.RemovePlayerESP(arg)
			end
		end)

		tbl12.SetRuntimeConnection("ESPDescendantAdded", workspace.DescendantAdded, true, function(arg)
			if flag11 then
				return
			end

			if arg:IsA("BasePart") and arg.Name == "StickyPart" then
				if tbl8.StickyESP then
					tbl12.CreateStickyESP(arg.Parent)
				end
			end

			if arg:IsA("BasePart") and arg.Name == "PlayerCharacterLocationDetector" and arg.Parent == workspace then
				tbl7.PCLDParts[arg] = true

				if tbl8.PCLDESP and not tbl12.IsWaitingPCLD(arg) then
					tbl12.CreatePCLDESP(arg)
				end
			end
		end)

		for _, child in pairs(workspace:GetChildren()) do
			if child:IsA("BasePart") and child.Name == "PlayerCharacterLocationDetector" then
				tbl7.PCLDParts[child] = true

				if tbl8.PCLDESP and not tbl12.IsWaitingPCLD(child) then
					tbl12.CreatePCLDESP(child)
				end
			end
		end

		workspace.ChildAdded:Connect(function(child)
			if flag11 then
				return
			end

			if child.Name == "BlackHoleKick" then
				tbl9.BlackHoles = tbl9.BlackHoles + 1
				local v22 = nil

				for _, v23 in pairs(tbl7.PlayerList) do
					if v23 == localPlayer or tbl7.KickLogs[localPlayer] then
						v22 = nil
					else
						local character = v23.Character
						character = character and character:FindFirstChild("HumanoidRootPart")

						if character and character.Anchored and not tbl7.KickLogs[v23] then
							tbl12.NotifyEvent("Kicked Player", { kickedPlayer = tbl12.FormatPlayer(v23) }, "Player Kicked")
							tbl7.KickLogs[v23] = true
							v22 = v23
							break
						else
							v22 = nil
						end
					end
				end

				local hole = child:WaitForChild("Hole", 1.5)
				if not hole then
					return
				end
				local billboardGui = hole:WaitForChild("BillboardGui", 1.5)
				if not billboardGui then
					return
				end
				local large = billboardGui:WaitForChild("Large", 1.5)
				local small = large and billboardGui:WaitForChild("Small", 1.5)
				if not small then
					return
				end

				if tbl8.CustomBlackholeSound and tbl9.CustomBlackholeSound then
					local drone = hole:WaitForChild("Drone", 1.5)
					if not drone then
						return
					end
					drone.SoundId = tbl9.CustomBlackholeSound
				end

				if tbl8.CustomBlackHole and tbl9.CustomBlackhole then
					large.Image = tbl9.CustomBlackhole
					hole.Transparency = 1
					small.Visible = false
				end

				if tbl9.CustomBHColor then
					large.ImageColor3 = tbl9.CustomBHColor
					small.ImageColor3 = tbl9.CustomBHColor
				end

				tbl12.CreateBlackHoleESP(child, v22)

				if tbl8.BlackholeStaying then
					task.wait(4.75)
					if not tbl8.BlackholeStaying then
						return
					end
					child.Archivable = true
					local clone = child:Clone()
					clone.Name = "StayedBH"
					child:Destroy()
					clone.Parent = workspace
					local hole2 = clone:FindFirstChild("Hole")

					if v22 then
						hole2 = hole2 and hole2:FindFirstChild("Blackhole")

						if hole2 then
							hole2:Destroy()
						end

						tbl12.CreateBlackHoleESP(clone, v22)
					end

					repeat
						task.wait(0.1)
					until not tbl8.BlackholeStaying

					if clone.Parent then
						clone:Destroy()
					end
				end
			end
		end)

		task.spawn(function()
			local tbl16 = {}
			local handle = workspace.Slots:GetChildren()[1].SlotHandle.Handle
			local handle2 = workspace.Slots:GetChildren()[2].SlotHandle.Handle
			local handle3 = workspace.Slots:GetChildren()[3].SlotHandle.Handle
			local handle4 = workspace.Slots:GetChildren()[4].SlotHandle.Handle
			local handle5 = workspace.Slots:GetChildren()[5].SlotHandle.Handle
			tbl16[1] = handle
			tbl16[2] = handle2
			tbl16[3] = handle3
			tbl16[4] = handle4
			tbl16[5] = handle5
			local timeText = workspace.Slots:GetChildren()[5].Screen.SlotGui.TimeLeftFrame.TimeText
			local coinAmount = workspace.Slots:GetChildren()[5].Screen.SlotGui.CoinsFrame.CoinAmount

			while task.wait(0.5) do
				if flag11 then
					return
				end

				if not tbl8.AutoSlot and not tbl12.WaitForRuntimeToggle("AutoSlot") then
					return
				end
				local v22, v23, v24 = tbl12.Char()

				if timeText.Text == "0:00" and v23 and v24 and v24.Health > 0 then
					for i = 1, #tbl16 do
						if tbl8.AutoSlot then
							if tbl12.SNO(tbl16[i]) then
								task.wait(1)

								if timeText.Text ~= "0:00" then
									fn18("Rolled the casino and got: " .. string.sub(tbl16[i].Parent.Parent.Screen.SlotGui.CoinsFrame.CoinAmount.Text, -3) .. " Coins", "Auto Slots")
									break
								else
									continue
								end
							else
								continue
							end
						end

						break
					end

					task.wait(1)

					if timeText.Text == "0:00" then
						fn18("No available lottery found, to farm coins switch server or retoggle", "Auto Slots")

						repeat
							task.wait()
						until not tbl8.AutoSlot
					end
				end
			end
		end)

		task.spawn(function()
			while task.wait() do
				if flag11 then
					return
				end

				if not tbl8.AutoExplodeTarget and not tbl12.WaitForRuntimeToggle("AutoExplodeTarget") then
					return
				end

				if tbl9.ExplosionMethod then
					if not (inPlot.Value and not inOwnedPlot.Value) then
						for _, v22 in ipairs(tbl12.GetTargets(false, tbl7.SelectedPlayersExp)) do
							if not (flag11 or not tbl8.AutoExplodeTarget or not tbl9.ExplosionMethod) then
								if not (not tbl7.SelectedPlayersExp[v22] or v22.Parent ~= Players) then
									local value = v22.InPlot.Value

									if value then
										value = not (localPlayer.InOwnedPlot.Value or tbl9.ExplosionMethod == "BallSnowball")
									end

									if not value then
										local v23, v24, v25 = tbl12.Char(v22)

										if v24 and v25 and v25.Health ~= 0 and not tbl7.States.Owning then
											tbl12.ExplodeMissile(v24, tbl9.ExplosionMethod, tbl9.MissilesToFire)
										end
									end
								end

								continue
							end

							break
						end
					end
				end
			end
		end)

		tbl7.SilentAimState = { Players = setmetatable({}, { __mode = "k" }) }
		tbl7.SilentAimState.Circle = tbl6.Frame:Clone()
		tbl7.SilentAimState.Circle.Name = "SilentAimFOV"
		tbl7.SilentAimState.Circle.Position = UDim2.fromScale(0.5, 0.5)
		tbl7.SilentAimState.Circle.Parent = tbl6.Gui

		for _, v22 in ipairs(tbl7.PlayerList) do
			tbl12.TrackSilentAimPlayer(v22)
		end

		lib:GiveSignal(Players.PlayerAdded:Connect(tbl12.TrackSilentAimPlayer))

		lib:GiveSignal(Players.PlayerRemoving:Connect(function(player)
			tbl7.SilentAimState.Players[player] = nil
		end))

		TextChatService.OnIncomingMessage = function(arg)
			if flag11 then
				return
			end

			if arg.Text == "You are not able to chat with this person." then
				return false
			end
		end

		task.spawn(function()
			while true do
				if flag11 then
					return
				else
					if not tbl8.SoundSpam and not tbl12.WaitForRuntimeToggle("SoundSpam") then
						break
					end

					for k in pairs(tbl7.Sounds) do
						if tbl8.SoundSpam then
							task.spawn(function()
								if rbxGeneral then pcall(function() rbxGeneral:SendAsync("/w . " .. tostring(k)) end) end
							end)

							continue
						end

						break
					end

					task.wait(tbl9.SoundsExternalDelay)
				end
			end
		end)

		if tbl11.Packet then
			tbl11.Packet.OnClientEvent:Connect(function(arg, arg2)
				tbl12.PacketHandler(arg, arg2, "EGL")
			end)
		end

		if tbl11.CreateGrabLine then
			tbl11.CreateGrabLine.OnClientEvent:Connect(function(arg, arg2, arg3)
				tbl12.PacketHandler(arg, arg2, "CGL")
				tbl12.PacketHandler(arg, arg3, "CGL")
				tbl12.LineLagHandler(arg, arg2, arg3)
			end)
		end

		isHeld:GetPropertyChangedSignal("Value"):Connect(function()
			if flag11 then
				return
			end

			if isHeld.Value and tbl8.FasterEscape then
				tbl12.Char()
				local heldTimer = localPlayer:FindFirstChild("HeldTimer")
				local struggle = tbl11.Struggle
				local playerGui2 = localPlayer:FindFirstChild("PlayerGui")
				playerGui2 = playerGui2 and playerGui2:FindFirstChild("ControlsGui")
				local escape = playerGui2 and playerGui2:FindFirstChild("PCFrame") and playerGui2.PCFrame:FindFirstChild("Escape")
				local fasterEscape = tbl9.FasterEscape
				local n36 = tick() + fasterEscape + 1

				while isHeld.Value and not flag11 and task.wait() do
					local value = math.floor(n36 - tick())

					if value <= 0 then
						heldTimer.Value = 0
						escape.Visible = true
					else
						heldTimer.Value = value
					end

					if value <= 0 and UserInputService:IsKeyDown(Enum.KeyCode.Space) then
						struggle:FireServer(localPlayer)
						ContextActionService:UnbindAction("Escape")
						ContextActionService:UnbindAction("JumpRemover")
					end
				end

				escape.Visible = false
			end
		end)

		task.spawn(function()
			local tbl16 = {}
			local obj = setmetatable({}, { __mode = "k" })
			local tbl17 = { "Torso", "Right Leg", "Left Leg", "Right Arm", "Left Arm", "Head" }

			local tbl18 = {
				["Right Leg"] = Vector3.new(0, 1, 0),
				["Left Leg"] = Vector3.new(0, 1, 0),
				["Right Arm"] = Vector3.new(1, 0.5, 0),
				["Left Arm"] = Vector3.new(-1, 0.5, 0),
				Head = Vector3.new(0, 1, 0),
			}

			local function fn21(arg)
				local autoClickerTransparency = tbl9.AutoClickerTransparency

				for _, v22 in ipairs(arg.Character:QueryDescendants("BasePart")) do
					if arg.Transparency[v22] == nil then
						arg.Transparency[v22] = v22.LocalTransparencyModifier
					end

					v22.LocalTransparencyModifier = autoClickerTransparency
				end

				arg.TransparencyValue = autoClickerTransparency
			end

			local function fn22(arg)
				local v22 = obj[arg]
				obj[arg] = nil

				if v22 then
					if v22.TransparencyConnection then
						v22.TransparencyConnection:Disconnect()
					end

					for k, v23 in v22.Transparency, nil, nil do
						if k.Parent then
							k.LocalTransparencyModifier = v23
						end
					end
				end

				local character = v22 and v22.Character or tbl12.Char(arg)
				local torso = character and character:FindFirstChild("Torso")
				local autoClickerBP = torso and torso:FindFirstChild("AutoClickerBP")
				torso = torso and torso:FindFirstChild("AutoClickerBG")

				if autoClickerBP then
					autoClickerBP:Destroy()
				end

				if torso then
					torso:Destroy()
				end

				if character then
					for _, v23 in ipairs(tbl17) do
						local v24 = character:FindFirstChild(v23)

						if v24 then
							if v23 == "Torso" or v23 == "Head" then
								v24.CanCollide = true
							end

							local ballSocketConstraint = v24:FindFirstChild("BallSocketConstraint")

							if ballSocketConstraint then
								ballSocketConstraint.LimitsEnabled = true
								ballSocketConstraint.TwistLimitsEnabled = true
								local v25 = tbl18[v23]

								if v25 then
									ballSocketConstraint.Attachment1.Position = v25
								end
							end

							local autoClickerBG = v24:FindFirstChild("AutoClickerBG")

							if autoClickerBG then
								autoClickerBG:Destroy()
							end
						end
					end
				end
			end

			tbl12.CleanupAutoClicker = function()
				for k in obj, nil, nil do
					fn22(k)
				end
			end

			while task.wait() do
				local selectedPlayersAC = tbl7.SelectedPlayersAC

				if flag11 then
					for k in selectedPlayersAC, nil, nil do
						fn22(k)
					end

					return
				end

				for k in tbl16, nil, nil do
					if not selectedPlayersAC[k] then
						fn22(k)
						tbl16[k] = nil
					end
				end

				if not tbl8.AutoClicker then
					for k in selectedPlayersAC, nil, nil do
						fn22(k)
					end

					if not tbl12.WaitForRuntimeToggle("AutoClicker") then
						return
					end
				end

				local v22, v23, v24 = tbl12.Char()
				local torso = v22 and v22:FindFirstChild("Torso")
				local selectedACPoseCenter

				if tbl8.CustomACPoseCenter then
					selectedACPoseCenter = tbl9.SelectedACPoseCenter
				else
					selectedACPoseCenter = localPlayer
				end

				local torso2, v25, v26

				if selectedACPoseCenter == localPlayer then
					torso2 = v22
					v25 = v23
					v26 = v24
				else
					torso2, v25, v26 = tbl12.Char(selectedACPoseCenter)
				end

				torso2 = torso2 and torso2:FindFirstChild("Torso")

				if tbl8.AutoClicker then
					local head = v22 and v22:FindFirstChild("Head")

					if head and head.CanCollide then
						head.CanCollide = false
					end

					if torso and torso.CanCollide then
						torso.CanCollide = false
					end
				end

				for k in selectedPlayersAC, nil, nil do
					if v23 and v24 and v24.Health > 0 and torso then
						if v25 and v26 and v26.Health > 0 and torso2 then
							if k == selectedACPoseCenter then
								if tbl16[k] then
									fn22(k)
									tbl16[k] = nil
								end
							else
								tbl16[k] = true
								local v27, v28, v29 = tbl12.Char(k)
								local tbl19 = obj[k]

								if tbl19 and tbl19.Character ~= v27 then
									fn22(k)
									tbl19 = nil
								end

								local torso3 = tbl19 and tbl19.Character == v27 and tbl19.Parts.Torso or v27 and v27:FindFirstChild("Torso")

								if v29 and torso3 then
									local v30, v31, v32 = tbl12.GetACPose(k)

									if not tbl19 or tbl19.Character ~= v27 then
										tbl19 = {
											Character = v27,
											Gyros = {},
											GyroTargets = {},
											Parts = {},
											RagdollParts = {},
											Sockets = {},
											SocketAttachments = {},
											LimbOffsets = {},
											RotationValues = {},
											RotationFrames = {},
											Transparency = {},
										}

										obj[k] = tbl19
										local v33 = tbl19
										local v34 = k

										v33.TransparencyConnection = v27.DescendantAdded:Connect(function(descendant)
											if obj[v34] ~= v33 or not descendant:IsA("BasePart") then
												return
											end
											v33.Transparency[descendant] = descendant.LocalTransparencyModifier
											descendant.LocalTransparencyModifier = tbl9.AutoClickerTransparency
										end)

										local head = v22:FindFirstChild("Head")

										if head and head.CanCollide then
											head.CanCollide = false
										end

										if torso.CanCollide then
											torso.CanCollide = false
										end

										for _, v35 in v27:GetChildren() do
											if v35:IsA("BasePart") then
												if v35.CanCollide then
													v35.CanCollide = false
												end

												local ragdollLimbPart = v35:FindFirstChild("RagdollLimbPart")

												if ragdollLimbPart and ragdollLimbPart.CanCollide then
													ragdollLimbPart.CanCollide = false
												end
											end
										end

										for _, v35 in ipairs(tbl17) do
											local v36 = v27:FindFirstChild(v35)

											if v36 then
												tbl19.Parts[v35] = v36
												tbl19.RagdollParts[v35] = v36:FindFirstChild("RagdollLimbPart")
												local ballSocketConstraint = v36:FindFirstChild("BallSocketConstraint")
												tbl19.Sockets[v35] = ballSocketConstraint
												tbl19.SocketAttachments[v35] = ballSocketConstraint and ballSocketConstraint.Attachment1
											end
										end
									end

									if tbl19.TransparencyValue ~= tbl9.AutoClickerTransparency then
										fn21(tbl19)
									end

									local bodyPosition = tbl19.BodyPosition

									if not bodyPosition or bodyPosition.Parent ~= torso3 then
										bodyPosition = torso3:FindFirstChild("AutoClickerBP") or Instance.new("BodyPosition")
										bodyPosition.Name = "AutoClickerBP"
										bodyPosition.D = 450
										bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
										bodyPosition.Parent = torso3
										tbl19.BodyPosition = bodyPosition
										tbl19.BodyTarget = nil
									end

									local position = (v25.CFrame * v30).Position

									if tbl19.BodyTarget ~= position then
										bodyPosition.Position = position
										tbl19.BodyTarget = position
									end

									local cframe = CFrame.lookAt(torso3.Position, Vector3.new(torso2.Position.X, torso3.Position.Y, torso2.Position.Z))

									for _, v33 in ipairs(tbl17) do
										local v34 = tbl19.Parts[v33]

										if not v34 or v34.Parent ~= v27 then
											v34 = v27:FindFirstChild(v33)
											tbl19.Parts[v33] = v34
											tbl19.RagdollParts[v33] = v34 and v34:FindFirstChild("RagdollLimbPart")
											tbl19.Sockets[v33] = v34 and v34:FindFirstChild("BallSocketConstraint")
											tbl19.SocketAttachments[v33] = tbl19.Sockets[v33] and tbl19.Sockets[v33].Attachment1
											tbl19.Gyros[v33] = nil
											tbl19.GyroTargets[v33] = nil
											tbl19.LimbOffsets[v33] = nil
										end

										if v34 then
											if v34.CanCollide then
												v34.CanCollide = false
											end

											local ragdollLimbPart = tbl19.RagdollParts[v33]

											if not ragdollLimbPart or not ragdollLimbPart.Parent then
												ragdollLimbPart = v34:FindFirstChild("RagdollLimbPart")
												tbl19.RagdollParts[v33] = ragdollLimbPart
											end

											if ragdollLimbPart and ragdollLimbPart.CanCollide then
												ragdollLimbPart.CanCollide = false
											end

											local ballSocketConstraint = tbl19.Sockets[v33]

											if not ballSocketConstraint or not ballSocketConstraint.Parent then
												ballSocketConstraint = v34:FindFirstChild("BallSocketConstraint")
												tbl19.Sockets[v33] = ballSocketConstraint
												tbl19.SocketAttachments[v33] = ballSocketConstraint and ballSocketConstraint.Attachment1
												tbl19.LimbOffsets[v33] = nil
											end

											if ballSocketConstraint then
												if ballSocketConstraint.LimitsEnabled then
													ballSocketConstraint.LimitsEnabled = false
												end

												if ballSocketConstraint.TwistLimitsEnabled then
													ballSocketConstraint.TwistLimitsEnabled = false
												end

												local v35 = v32[v33]
												local v36 = tbl19.SocketAttachments[v33]

												if v35 and v36 and tbl19.LimbOffsets[v33] ~= v35 then
													v36.Position = v35
													tbl19.LimbOffsets[v33] = v35
												end
											end

											local autoClickerBG = tbl19.Gyros[v33]

											if not autoClickerBG or autoClickerBG.Parent ~= v34 then
												autoClickerBG = v34:FindFirstChild("AutoClickerBG") or Instance.new("BodyGyro")
												autoClickerBG.Name = "AutoClickerBG"
												autoClickerBG.D = 500
												autoClickerBG.P = 7500
												autoClickerBG.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
												autoClickerBG.Parent = v34
												tbl19.Gyros[v33] = autoClickerBG
												tbl19.GyroTargets[v33] = nil
											end

											local v35 = v31[v33]

											if tbl19.RotationValues[v33] ~= v35 then
												tbl19.RotationValues[v33] = v35
												tbl19.RotationFrames[v33] = CFrame.Angles(math.rad(v35.X), math.rad(v35.Y), math.rad(v35.Z))
											end

											local v36 = tbl19.RotationFrames[v33]
											local cFrame2

											if v33 == "Torso" then
												cFrame2 = cframe * v36
											else
												cFrame2 = torso3.CFrame * v36
											end

											if tbl19.GyroTargets[v33] ~= cFrame2 then
												autoClickerBG.CFrame = cFrame2
												tbl19.GyroTargets[v33] = cFrame2
											end
										end
									end

									local n36 = v23.Position - torso3.Position

									if n36:Dot(n36) < 900 or tbl12.SNO(torso3) then
										tbl12.Grab(torso3)
										local ragdolled = v29:FindFirstChild("Ragdolled")

										if tbl8.RagdollInAC and ragdolled and not ragdolled.Value then
											task.spawn(tbl12.Ragdoll, v27)
										end
									end
								end
							end
						end
					end
				end
			end
		end)

		do
			local obj = setmetatable({}, { __mode = "k" })

			local function fn21()
				return tbl8.ImmunityAntiGrab or tbl8.ImmunityAntiExplosion
			end

			local function fn22(arg, arg2)
				local tbl16 = obj[arg]

				if not tbl16 or tbl16.Root ~= arg2 then
					tbl16 = { Root = arg2, CFrame = arg2.CFrame }
					obj[arg] = tbl16
				end

				return tbl16
			end

			local function fn23(arg)
				local root = arg.Root
				local cFrame2 = arg.CFrame
				local restoring = arg.Restoring

				if not restoring then
					restoring = not (root and root.Parent and cFrame2)
				end

				if restoring then
					return
				end
				arg.Restoring = true
				arg.OwnGrab = true

				task.spawn(function()
					pcall(function()
						if tbl12.SNO(root, 0.4) then
							for i = 1, 3 do
								if root.Parent then
									root.CFrame = cFrame2
									tbl12.ResetVelocity(root)
									RunService.Heartbeat:Wait()
									continue
								end

								break
							end

							tbl12.RNO(root)
						end
					end)

					arg.Restoring = false
				end)
			end

			task.spawn(function()
				while task.wait() do
					if flag11 then
						return
					end

					if not fn21() then
						table.clear(obj)
						if not tbl12.WaitForRuntimeCondition("ImmunityPosition", fn21) then
							return
						end
					end

					for k in tbl7.ImmunePlayers, nil, nil do
						local head, v22, v23 = tbl12.Char(k)
						head = head and head:FindFirstChild("Head")
						head = head and head:FindFirstChild("PartOwner")
						local value = head and head:IsA("StringValue") and head.Value
						local inPlot2 = k:FindFirstChild("InPlot")

						if v22 and v23 and v23.Health > 0 and inPlot2 and not inPlot2.Value then
							local v24 = fn22(k, v22)

							if value and value ~= "" then
								if value ~= localPlayer.Name and not v24.OwnGrab and not v24.Held and tbl8.ImmunityAntiGrab then
									v24.Held = true
									fn23(v24)
								end
							elseif v24.Held then
								local lockUntil = os.clock() + 0.35
								v24.Held = false
								v24.LockUntil = lockUntil
								fn23(v24)
							elseif v24.OwnGrab then
								if not v24.Restoring then
									v24.OwnGrab = nil
								end
							elseif os.clock() >= (v24.LockUntil or 0) and not v24.Restoring then
								v24.CFrame = v22.CFrame
							end
						end
					end

					for k in obj, nil, nil do
						if not (k.Parent and tbl7.ImmunePlayers[k]) then
							obj[k] = nil
						end
					end
				end
			end)

			lib:GiveSignal(workspace.ChildAdded:Connect(function(child)
				if flag11 or not tbl8.ImmunityAntiExplosion or not child:IsA("BasePart") or child.Name ~= "Part" then
					return
				end

				for k in tbl7.ImmunePlayers, nil, nil do
					local v22, v23, v24 = tbl12.Char(k)
					local inPlot2 = k:FindFirstChild("InPlot")

					if v23 and v24 and v24.Health > 0 and inPlot2 and not inPlot2.Value and (child.Position - v23.Position).Magnitude <= 20 then
						local v25 = fn22(k, v23)
						v25.LockUntil = os.clock() + 0.5
						fn23(v25)
					end
				end
			end))
		end

		task.spawn(function()
			while task.wait(0.03) do
				if flag11 then
					return
				end

				if not tbl8.ImmunityAntiKick then
					for k, v22 in tbl7.ImmuneShurikens, nil, nil do
						tbl12.DestroyToy(v22)
						tbl7.ImmuneShurikens[k] = nil
					end

					if not tbl12.WaitForRuntimeToggle("ImmunityAntiKick") then
						return
					end
				end

				for k in tbl7.ImmunePlayers, nil, nil do
					local v22, v23, v24 = tbl12.Char()
					local v25, ragdollTouchedHitbox, v26 = tbl12.Char(k)
					ragdollTouchedHitbox = ragdollTouchedHitbox and ragdollTouchedHitbox:FindFirstChild("RagdollTouchedHitbox")
					local inPlot2 = k:FindFirstChild("InPlot")

					if not (not v25 or not v23 or not v24 or v24.Health == 0 or not ragdollTouchedHitbox or inPlot2 and inPlot2.Value) then
						local v27 = tbl7.ImmuneShurikens[k]
						local stickyWeld = v27 and v27:FindFirstChild("StickyPart") and v27.StickyPart:FindFirstChild("StickyWeld")

						if not (stickyWeld and stickyWeld.Part1 == ragdollTouchedHitbox) then
							tbl12.DestroyToy(tbl7.ImmuneShurikens[k])
							local NinjaShuriken = tbl12.SpawnToy("NinjaShuriken")
							local stickyPart = NinjaShuriken and NinjaShuriken:WaitForChild("StickyPart", 1.5)
							local stickyWeld2 = stickyPart and stickyPart:WaitForChild("StickyWeld", 1.5)

							if not (stickyPart and stickyWeld2) or not tbl12.SNO(stickyPart) then
								tbl12.DestroyToy(NinjaShuriken)
							else
								task.spawn(function()
									local touchInterest = stickyPart:WaitForChild("TouchInterest", 2.5)

									if touchInterest then
										touchInterest:Destroy()
									end
								end)

								tbl11.StickyPartEvent:FireServer(stickyPart, ragdollTouchedHitbox, CFrame.new(0, -0.3, 0) * CFrame.Angles(1.5707963267948966, 0, 0))
								local now3 = tick()

								while true do
									fn20()
									if not (stickyWeld2.Part1 == ragdollTouchedHitbox or not stickyWeld2.Parent or not ragdollTouchedHitbox.Parent or not v26.Parent or v26.Health == 0 or tick() - now3 > 0.5) then
										continue
									end
									break
								end

								tbl7.ImmuneShurikens[k] = NinjaShuriken
							end
						end
					end
				end
			end
		end)

		task.spawn(function()
			local tbl16 = {}

			local function fn21(arg, arg2)
				if not arg or not tbl8.EKI then
					return
				end

				return sethiddenproperty and pcall(function()
					sethiddenproperty(arg, "PhysicsRepRootPart", arg2)
				end)
			end

			local function fn22(arg)
				if not arg then
					return
				end
				local v22, v23, v24 = tbl12.Char(arg)

				if v23 then
					local kickAP = v23:FindFirstChild("KickAP")
					local kickAO = v23:FindFirstChild("KickAO")
					local weldHRP = v23:FindFirstChild("WeldHRP")

					if kickAP then
						kickAP:Destroy()
					end

					if kickAO then
						kickAO:Destroy()
					end

					if weldHRP and v24:FindFirstChild("Ragdolled") and v24.Ragdolled.Value then
						weldHRP.Enabled = true
					end

					if tbl12.IsNetworkOwner(v23) then
						fn21(v23, nil)
					end
				end

				if v22 then
					task.spawn(tbl12.ToggleMotor6D, v22, true, true)
					task.spawn(tbl12.ToggleCollisions, v22, true)
				end
			end

			local function fn23(arg, arg2, arg3)
				local n36 = 6.2831853071795862 / arg3 * (arg2 - 1)
				local nkOffset = tbl9.NKOffset
				return arg.Position + Vector3.new(math.cos(n36) * 10, nkOffset, math.sin(n36) * 10)
			end

			while task.wait() do
				if flag11 then
					for k in tbl16, nil, nil do
						fn22(k)
					end

					return
				end

				if not tbl8.LoopApplyMethodT then
					for k in tbl16, nil, nil do
						fn22(k)
						tbl16[k] = nil
					end

					if not tbl12.WaitForRuntimeToggle("LoopApplyMethodT") then
						return
					end
				end

				local loopApplyMethodT = tbl8.LoopApplyMethodT
				local selectedPlayers = tbl7.SelectedPlayers
				local targetMethods = tbl7.TargetMethods

				for k in tbl16, nil, nil do
					if k and (not k.Parent or not targetMethods.Kick or inPlot.Value or not loopApplyMethodT or not selectedPlayers[k]) then
						fn22(k)
						tbl16[k] = nil
					end
				end

				if not (not loopApplyMethodT or not targetMethods.Kick or inPlot.Value) then
					local v22, v23, v24 = tbl12.Char()

					if v23 and v24 and v24.Health > 0 then
						local tbl17 = {}

						for k in selectedPlayers, nil, nil do
							if k and k.Parent and k:IsA("Player") then
								table.insert(tbl17, k)
								tbl16[k] = true
							end
						end

						if #tbl17 ~= 0 then
							for i, v25 in ipairs(tbl17) do
								if v23 and v24 and v24.Health > 0 and not inPlot.Value then
									local v26, v27, v28 = tbl12.Char(v25)
									local torso = v26 and v26:FindFirstChild("Torso")

									if not (v27 and v28 and torso and v28.Health > 0) then
										fn22(v25)
									else
										local v29 = fn23(v23, i, #tbl17)
										local kickAP = v27:FindFirstChild("KickAP")
										local kickAO = v27:FindFirstChild("KickAO")
										local weldHRP = v27:FindFirstChild("WeldHRP")

										if not kickAP or not kickAO then
											if kickAP then
												kickAP:Destroy()
											end

											if kickAO then
												kickAO:Destroy()
											end

											kickAP = Instance.new("BodyPosition")
											local bodyGyro = Instance.new("BodyGyro")
											kickAP.D = 200
											kickAP.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
											kickAP.Position = v29
											kickAP.Parent = v27
											bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
											bodyGyro.D = 200
											bodyGyro.CFrame = CFrame.new()
											bodyGyro.Parent = v27
											kickAP.Name = "KickAP"
											bodyGyro.Name = "KickAO"
										end

										if weldHRP then
											weldHRP.Enabled = false
										end

										kickAP.Position = v29
										local flag12

										if not (tbl12.GetMagnitude(v23, v27) > 33) then
											tbl12.Grab(v27)
											flag12 = tbl9.NKDelayMode == "Faster but worse" or not tbl9.NKDelayMode

											if flag12 then
												task.delay(0.2, tbl12.RNO, v27)
											elseif tbl9.NKDelayMode == "Normal" then
												task.spawn(function()
													task.wait()
													tbl12.RNO(v27)
												end)
											end

											if tbl8.RagdollInNK then
												task.spawn(tbl12.Ragdoll, v26)
											end

											if tbl8.DeleteShurInNK then
												task.spawn(tbl12.RemoveSticky, v26)
											end

											tbl12.ToggleCollisions(v26, false)
											tbl12.RepositionLimbs(v26, true)

											task.delay(0.6, function()
												if tbl8.LoopApplyMethodT and tbl7.TargetMethods.Kick and tbl7.SelectedPlayers[v25] and tbl12.IsNetworkOwner(v27) then
													fn21(v27, v27)
												end
											end)
										elseif tbl12.SNO(v27) then
											tbl12.Teleport(v27, v29)
											tbl12.Grab(v27)
											flag12 = tbl9.NKDelayMode == "Faster but worse" or not tbl9.NKDelayMode

											if flag12 then
												task.delay(0.2, tbl12.RNO, v27)
											elseif tbl9.NKDelayMode == "Normal" then
												task.spawn(function()
													task.wait()
													tbl12.RNO(v27)
												end)
											end

											if tbl8.RagdollInNK then
												task.spawn(tbl12.Ragdoll, v26)
											end

											if tbl8.DeleteShurInNK then
												task.spawn(tbl12.RemoveSticky, v26)
											end

											tbl12.ToggleCollisions(v26, false)
											tbl12.RepositionLimbs(v26, true)

											task.delay(0.6, function()
												if tbl8.LoopApplyMethodT and tbl7.TargetMethods.Kick and tbl7.SelectedPlayers[v25] and tbl12.IsNetworkOwner(v27) then
													fn21(v27, v27)
												end
											end)
										else
											fn21(v27, nil)
										end
									end
								end
							end

							if tbl9.NKDelayMode == "Normal" then
								task.wait()
							end
						end
					end
				end
			end
		end)

		lib.ForceCheckbox = true

		v19 = lib:CreateWindow({
			Title = "<b>Resonance</b>",
			Footer = ("<b>Project Resonance %* | FTAP</b>"):format("v2.9"),
			ToggleKeybind = Enum.KeyCode.RightShift,
			Center = true,
			AutoShow = true,
			EnableSidebarResize = true,
			Icon = 79685990879972,
			IconSize = UDim2.fromOffset(32, 32),
			CornerRadius = 6,
			Compact = true,
			Animations = {
				ToggleWindow = false,
				TabSwitch = true,
				Dropdown = true,
				Groupbox = true,
				KeyPicker = true,
			},
			TabSwipeFrom = "Auto",
			TabButtonsStyle = {
				Gap = 3,
				Padding = 8,
				CornerRadius = 6,
				Indicator = true,
				IndicatorWidth = 2,
				IndicatorHeight = 20,
			},
		})

		do
			local v22 = nil
			local v23 = nil

			for _, v24 in v19.MainFrame:GetChildren() do
				if v24:IsA("Frame") and v24.AnchorPoint == Vector2.new(0, 1) and v24.Position == UDim2.fromScale(0, 1) then
					if v24:FindFirstChildOfClass("UICorner") then
						v22 = v24
					elseif v24:FindFirstChildOfClass("TextLabel") then
						v23 = v24
					end
				end
			end

			if v22 and v23 then
				local uiCorner = v22:FindFirstChildOfClass("UICorner")
				local frame2 = Instance.new("Frame")
				frame2.Name = "FooterClip"
				frame2.BackgroundTransparency = 1
				frame2.BorderSizePixel = 0
				frame2.AnchorPoint = v23.AnchorPoint
				frame2.Position = v23.Position
				frame2.Size = v23.Size
				frame2.ZIndex = v22.ZIndex
				frame2.ClipsDescendants = true
				frame2.Parent = v19.MainFrame
				v22.Parent = frame2

				local function fn21()
					frame2.Size = v23.Size
					local offset = uiCorner.CornerRadius.Offset
					local udim2 = UDim2.new(1, 0, 0, math.max(v23.Size.Y.Offset + offset, offset * 2))

					if v22.Size ~= udim2 then
						v22.Size = udim2
					end
				end

				lib:GiveSignal(v22:GetPropertyChangedSignal("Size"):Connect(fn21))
				lib:GiveSignal(v23:GetPropertyChangedSignal("Size"):Connect(fn21))
				lib:GiveSignal(uiCorner:GetPropertyChangedSignal("CornerRadius"):Connect(fn21))
				fn21()
			end
		end

		v21 = lib:AddDraggableLabel("Object Info")
		v21:SetVisible(false)

		do
			local viewportSize = currentCamera.ViewportSize
			local label = v21.Label
			label.AnchorPoint = Vector2.new(0.5, 1)
			label.Position = UDim2.fromOffset(viewportSize.X * 0.5, viewportSize.Y * 0.8)
		end

		Watermark = lib:AddDraggableLabel("Resonance", 79685990879972)
		Watermark:SetVisible(true)

		task.spawn(function()
			while Watermark and Watermark.Label and Watermark.Label.Parent do
				if flag11 then
					return
				end
				local v22 = Watermark
				local setText = v22.SetText
				local v23 = v22
				local floor = math.floor
				local dataPing = Stats2.Network.ServerStatsItem["Data Ping"]
				local getValue = dataPing.GetValue
				setText(v23, ("Resonance %s | %s fps | %s ms"):format("v2.9", math.floor(Stats2.Workspace.Heartbeat:GetValue()), floor(getValue(dataPing))))
				task.wait(1)
			end
		end)

		tbl15 = {
			Home = v19:AddTab("<b>Home</b>", "house", "Profile, statistics"),
			Player = v19:AddTab("<b>Player</b>", "person-standing", "Things you can apply to yourself"),
			Combat = v19:AddTab("<b>Combat</b>", "hand", "Grab/Line/Auras stuff"),
			Invincibility = v19:AddTab("<b>Invincibility</b>", "shield", "Defense"),
			Target = v19:AddTab("<b>Target</b>", "crosshair", "Single/multiple target actions"),
			Blobman = v19:AddTab("<b>Blobman</b>", "venetian-mask", "Single/multiple Blobman target actions"),
			Toys = v19:AddTab("<b>Toys</b>", "shapes", "Actions you can do with Toys"),
			Visual = v19:AddTab("<b>Visual</b>", "eye", "Stuff only you can see"),
			AutoClicker = v19:AddTab("<b>Auto-Clicker</b>", "mouse-pointer-click", "Make figures out of players"),
			Keybinds = v19:AddTab("<b>Keybinds</b>", "keyboard", "Keybinds you can press for specific action"),
			Misc = v19:AddTab("<b>Misc</b>", "funnel", "Other things"),
			Lists = v19:AddTab("<b>Lists</b>", "scroll-text", "Miscellaneous useful dropdowns"),
			Settings = v19:AddTab("<b>Settings</b>", "settings", "GUI Settings"),
		}

	do
		local Greetings = tbl15.Home:AddLeftGroupbox("Greetings", "chess-queen")
		local thumbnail = string.format("rbxthumb://type=AvatarBust&id=%d&w=180&h=180", localPlayer.UserId)
		local avatar = Greetings:AddImage("MyIcon", {
			Image = thumbnail,
			Height = 180,
			Color = Color3.new(1, 1, 1),
			Transparency = 0,
			BackgroundTransparency = 1,
			ScaleType = Enum.ScaleType.Fit,
		})

		task.spawn(function()
			local holder = avatar and avatar.Holder
			local image = holder and holder:FindFirstChildWhichIsA("ImageLabel", true)
			if not image then return end
			for attempt = 1, 6 do
				if flag11 or avatar.Destroyed or not image.Parent then return end
				local ok, content, ready = pcall(function()
					return Players:GetUserThumbnailAsync(localPlayer.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size180x180)
				end)
				if flag11 or avatar.Destroyed or not image.Parent then return end
				if ok and ready and type(content) == "string" and content ~= "" then
					image.Image = content
					image.ImageColor3 = Color3.new(1, 1, 1)
					image.ImageTransparency = 0
					image.ImageRectOffset = Vector2.zero
					image.ImageRectSize = Vector2.zero
					avatar.Image = content
				end
				task.wait(math.min(attempt * 0.5, 2))
				if flag11 or avatar.Destroyed or not image.Parent then return end
				if image.IsLoaded then return end
			end
			if not flag11 and image.Parent then
				image.Image = thumbnail
				avatar.Image = thumbnail
			end
		end)

		local hour = tonumber(os.date("%H")) or 12
		local greeting = "Night"
		if hour >= 5 and hour < 12 then
			greeting = "Morning"
		elseif hour >= 12 and hour < 17 then
			greeting = "Afternoon"
		elseif hour >= 17 and hour < 21 then
			greeting = "Evening"
		end
		Greetings:AddLabel({ Text = ("%s, <b>%s</b> "):format(greeting, localPlayer.DisplayName), DoesWrap = true })
		Greetings:AddDivider()
		Greetings:AddLabel({ Text = "Welcome to <b><font color=\"#fffb00\">Resonance crack</font></b>", DoesWrap = true })
		Greetings:AddLabel({ Text = "cracked by: InLoad and <font color=\"#baa4ff\">wraith.dev</font>", DoesWrap = true })
		Greetings:AddLabel({ Text = "dont stop using cracks! ts crack is so cool", DoesWrap = true })
	end

		do
			local Statistics = tbl15.Home:AddRightGroupbox("Statistics", "chart-no-axes-combined")
			Statistics:AddLabel("CurrentTime", { Text = "Current time: 00:00", DoesWrap = true })
			Statistics:AddLabel("VerLabel", { Text = ("Current script version: <b>%*</b>"):format("v2.9"), DoesWrap = true })
			Statistics:AddLabel("TogglesCurrentlyOn", { Text = "Toggles currently enabled: 0", DoesWrap = true })
			Statistics:AddDivider("Server Statistics")
			Statistics:AddLabel("Game name: <b>Fling Things and People</b>")
			Statistics:AddLabel("SpentTime", { Text = "Elapsed time: 0 seconds", DoesWrap = true })
			Statistics:AddLabel("LabelHi", { Text = "Kicked players: 0", DoesWrap = true })
		end

		tbl12.UpdateEnabledToggleCount = function()
			local n36 = 0

			for _, v22 in toggles, nil, nil do
				if v22 and v22.Value then
					n36 += 1
				end
			end

			if lib.Labels.TogglesCurrentlyOn then
				local togglesCurrentlyOn = lib.Labels.TogglesCurrentlyOn
				local setText = togglesCurrentlyOn.SetText
				local str5 = ("Toggles currently on: <b>%*</b>"):format(n36)
				setText(togglesCurrentlyOn, str5)
			end
		end

		task.spawn(function()
			local v22 = nil
			local v23 = nil
			local v24 = nil

			while task.wait(0.1) and Watermark and Watermark.Label and Watermark.Label.Parent do
				if flag11 then
					return
				end
				local v25 = os.date("%H:%M")
				local blackHoles = tbl9.BlackHoles
				local n36 = math.floor(tick() - now2)

				if v25 ~= v22 then
					local currentTime = lib.Labels.CurrentTime
					local setText = currentTime.SetText
					local str5 = ("Current time: <b>%*</b>"):format(v25)
					setText(currentTime, str5)
					v22 = v25
				end

				if blackHoles ~= v23 then
					local labelHi = lib.Labels.LabelHi
					local setText = labelHi.SetText
					local str5 = ("Kicked players: <b>%*</b>"):format(blackHoles)
					setText(labelHi, str5)
					v23 = blackHoles
				end

				if n36 ~= v24 then
					local spentTime = lib.Labels.SpentTime
					local setText = spentTime.SetText
					local str5 = ("Elapsed time: <b>%* seconds</b>"):format(n36)
					setText(spentTime, str5)
					v24 = n36
				end
			end
		end)

		do
			local Script = tbl15.Home:AddRightGroupbox("Script", "scroll")

			Script:AddButton({
				Text = "Unload Script",
				Func = function()
					lib:Unload()
				end,
				DoubleClick = true,
			})

			Script:AddButton({
				Text = "Rejoin",
				Func = function()
					tbl12.Rejoin(tbl8.RejoinWithAntiLag ~= false, tbl8.RejoinWithScript)
				end,
				DoubleClick = true,
			})

			tbl7.ServerHop.Button = Script:AddButton({
				Text = "Server-hop",
				Func = function()
					if tbl7.ServerHop.Busy or tbl7.ServerHop.Pending or tbl7.ServerHop.Retrying then
						tbl12.CancelServerHop()
					else
						task.defer(tbl12.ServerHop, tbl8.RejoinWithAntiLag ~= false, tbl8.RejoinWithScript)
					end
				end,
				DoubleClick = true,
			})

			Script:AddDivider("Options")

			Script:AddToggle("AutoRj", {
				Text = "Auto Rejoin",
				Tooltip = "Rejoins immediately as soon as you get kicked",
				Callback = function(autoRejoin)
					tbl8.AutoRejoin = autoRejoin
				end,
			})

			Script:AddToggle("RejoinWithAntiLag", {
				Text = "Join with Anti-Lag",
				Tooltip = "Queues anti-lag on next teleport (server-hop or rejoin)",
				Default = true,
				Callback = function(rejoinWithAntiLag)
					tbl8.RejoinWithAntiLag = rejoinWithAntiLag
				end,
			})

			Script:AddToggle("RejoinWithScript", {
				Text = "Join with script",
				Tooltip = "Executes the script for you after teleporting (server-hop or rejoin)",
				Callback = function(rejoinWithScript)
					if not reloadPath and rejoinWithScript then
						tbl8.RejoinWithScript = false

						task.defer(function()
							toggles.RejoinWithScript:SetValue(false)
						end)

						fn18("Local reload is unavailable: this executor must support readfile and writefile")
						return
					end

					tbl8.RejoinWithScript = rejoinWithScript
				end,
			})

			Script:AddDivider("Server-Hop Settings")

			Script:AddDropdown("ServerHopRegion", {
				Values = tbl7.ServerHop.RegionNames,
				Default = 1,
				Multi = false,
				Searchable = true,
				Text = "Preferred Region",
				Tooltip = "Chooses the closest datacenter inside the selected continent; Automatic chooses the closest continent first",
				Callback = function(serverHopRegion)
					tbl9.ServerHopRegion = serverHopRegion
				end,
			})

			Script:AddDropdown("ServerHopSort", {
				Values = {
					"Closest Datacenter",
					"Lowest Players",
					"Highest Players",
					"Highest FPS",
					"Random",
				},
				Default = 1,
				Multi = false,
				Text = "Selection",
				Callback = function(serverHopSort)
					tbl9.ServerHopSort = serverHopSort
				end,
			})

			Script:AddSlider("ServerHopMinPlayers", {
				Text = "Minimum Players",
				Default = 0,
				Min = 0,
				Max = Players.MaxPlayers,
				Rounding = 0,
				Compact = true,
				Callback = function(serverHopMinPlayers)
					tbl9.ServerHopMinPlayers = serverHopMinPlayers
				end,
			})

			Script:AddSlider("ServerHopMaxPlayers", {
				Text = "Maximum Players",
				Default = Players.MaxPlayers,
				Min = 0,
				Max = Players.MaxPlayers,
				Rounding = 0,
				Compact = true,
				Callback = function(serverHopMaxPlayers)
					tbl9.ServerHopMaxPlayers = serverHopMaxPlayers
				end,
			})

			Script:AddDivider("Server-Hop Timer")

			Script:AddSlider("AutoServerHopTime", {
				Text = "Server-hop after",
				Default = 30,
				Min = 1,
				Max = 360,
				Rounding = 0,
				Suffix = " seconds",
				Compact = true,
				Callback = function(autoServerHopTime)
					tbl9.AutoServerHopTime = autoServerHopTime

					if tbl8.AutoServerHop then
						tbl12.ScheduleAutoServerHop()
					end
				end,
			})

			Script:AddToggle("AutoServerHop", {
				Text = "Auto Server-Hop",
				Tooltip = "Automatically server-hops after the selected time",
				Callback = function(autoServerHop)
					tbl8.AutoServerHop = autoServerHop
					tbl12.ScheduleAutoServerHop()
				end,
			})
		end

		do
			local Values = tbl15.Player:AddLeftGroupbox("Values", "user")

			Values:AddSlider("WalkspeedS", {
				Text = "Walk Speed",
				Default = 16,
				Min = 5,
				Max = 1000,
				Callback = function(walkSpeed)
					tbl9.WalkSpeed = walkSpeed
				end,
			})

			Values:AddSlider("JumpPowerS", {
				Text = "Jump Power",
				Default = 24,
				Min = 24,
				Max = 1000,
				Callback = function(jumpPower)
					tbl9.JumpPower = jumpPower
				end,
			})

			Values:AddSlider("FlightSpeedS", {
				Text = "Flight Speed",
				Default = 1,
				Min = 1,
				Max = 20,
				Callback = function(flightSpeed)
					tbl9.FlightSpeed = flightSpeed
				end,
			})

			Values:AddSlider("SpinS", {
				Text = "Spin Speed",
				Default = 15,
				Min = 5,
				Max = 1000,
				Callback = function(spinSpeed)
					tbl9.SpinSpeed = spinSpeed
				end,
			})
		end

		do
			local Character = tbl15.Player:AddLeftGroupbox("Character", "badge")

			Character:AddToggle("FlyT", {
				Text = "Flight",
				Default = false,
				Callback = function(flight)
					tbl8.Flight = flight
					tbl12.SetRuntimeConnection("Flight", RunService.RenderStepped, flight, tbl12.UpdateFlight)

					if not flight then
						tbl12.StopFly()
					end
				end,
			}):AddKeyPicker("FlightKey", { Text = "Flight", Mode = "Toggle", NoUI = false, SyncToggleState = true })

			Character:AddToggle("WalkspeedT", {
				Text = "Walkspeed",
				Default = false,
				Callback = function(walkSpeed)
					tbl8.WalkSpeed = walkSpeed
					tbl12.SetRuntimeConnection("WalkSpeed", RunService.Heartbeat, walkSpeed, tbl12.UpdateWalkSpeed)

					if not walkSpeed and parent then
						local humanoidCreature = parent and parent:FindFirstChild("HumanoidCreature")

						if humanoidCreature then
							humanoidCreature.WalkSpeed = 20
						end
					end
				end,
			}):AddKeyPicker("WSKey", { Text = "Walkspeed", Mode = "Toggle", NoUI = false, SyncToggleState = true })

			Character:AddToggle("JumpPowerT", {
				Text = "Jump Power",
				Default = false,
				Callback = function(jumpPower)
					tbl8.JumpPower = jumpPower
					tbl12.WakeRuntimeGate("MovementPhysics")
				end,
			}):AddKeyPicker("JPKey", { Text = "Jump Power", Mode = "Toggle", NoUI = true, SyncToggleState = true })

			Character:AddToggle("SpinT", {
				Text = "Character Spin",
				Default = false,
				Callback = function()
					local bodyAngularVelocity = Instance.new("BodyAngularVelocity")
					bodyAngularVelocity.MaxTorque = Vector3.new(0, math.huge, 0)

					task.spawn(function()
						while toggles.SpinT.Value do
							local v22, v23, v24 = tbl12.Char()

							if v23 then
								bodyAngularVelocity.Parent = v23
								bodyAngularVelocity.AngularVelocity = Vector3.new(0, options.SpinS.Value, 0)
							end

							if v24 then
								v24.AutoRotate = false
							end

							task.wait()
						end

						bodyAngularVelocity:Destroy()
						local v22, v23, v24 = tbl12.Char()

						if v24 then
							v24.AutoRotate = true
						end
					end)
				end,
			}):AddKeyPicker("CSKey", { Text = "Character Spin", Mode = "Toggle", NoUI = true, SyncToggleState = true })

			Character:AddDivider()

			Character:AddToggle("NoclipT", {
				Text = "Noclip",
				Default = false,
				Callback = function(noclip)
					tbl8.Noclip = noclip
					tbl12.WakeRuntimeGate("MovementPhysics")

					if not noclip then
						local v22 = tbl12.Char()

						if v22 then
							tbl12.ToggleCollisions(v22, true)
						end
					end
				end,
			}):AddKeyPicker("NCKey", { Text = "Noclip", Mode = "Toggle", NoUI = false, SyncToggleState = true })

			Character:AddToggle("InfJumpT", {
				Text = "Inf Jump",
				Default = false,
				Callback = function(infJump)
					tbl8.InfJump = infJump
				end,
			}):AddKeyPicker("IJKey", { Text = "Inf Jump", Mode = "Toggle", NoUI = true, SyncToggleState = true })

			Character:AddToggle("JerkOffT", {
				Text = "Jerk Off",
				Default = false,
				Callback = function(jerkOff)
					tbl8.JerkOff = jerkOff
					local v22, v23, v24 = tbl12.Char()
					local v25 = v24
					local animation = Instance.new("Animation")
					animation.Name = "JerkOff"
					local animator = v25:WaitForChild("Animator", 2)
					animation.AnimationId = "rbxassetid://168268306"
					local v26 = animator:LoadAnimation(animation)
					v26:Play()

					while task.wait(0.1) and tbl8.JerkOff and not flag11 do
						if v25.Health == 0 then
							v26:Stop()
							local result = localPlayer.CharacterAdded:Wait()

							while true do
								task.wait()
								if not (result:FindFirstChild("Humanoid") and result:FindFirstChild("HumanoidRootPart")) then
									continue
								end
								break
							end

							local v27, v28, v29 = tbl12.Char()
							v25 = v29
							v26 = v25:WaitForChild("Animator", 2):LoadAnimation(animation)
							v26:Play()
						end

						v26.TimePosition = 0.3
					end

					v26:Stop()
				end,
			}):AddKeyPicker("JerkOffK", { Text = "Jerk Off", Mode = "Toggle", NoUI = false, SyncToggleState = true })

			Character:AddDivider()

			Character:AddToggle("DesyncT", {
				Text = "Position Desync",
				Default = false,
				Tooltip = "Basically invisibility (makes your character stay still for other players, but not for the server)",
				Disabled = not tbl12.DesyncSupported,
				Risky = true,
				DisabledTooltip = "Your exploit does not support this feature",
				Callback = tbl12.SetDesync,
			}):AddKeyPicker("DesyncKey", {
				Text = "Position Desync",
				Default = nil,
				Mode = "Toggle",
				NoUI = false,
				SyncToggleState = true,
			})

			Character:AddLabel("Only use this if you have >= 100FPS!", true)
		end

		do
			local Teleporting = tbl15.Player:AddRightGroupbox("Teleporting", "house")

			Teleporting:AddDropdown("TeleportToDropdown", {
				Values = tbl7.TeleportLocations,
				Default = 1,
				Multi = false,
				Text = "Location",
				Callback = function(teleportLocation)
					tbl9.TeleportLocation = teleportLocation
				end,
			})

			Teleporting:AddToggle("MakeSpawnLoc", {
				Text = "Make Spawn Location",
				Default = false,
				Callback = function(arg)
					if not arg then
						return
					end

					local connection = localPlayer.CharacterAdded:Connect(function(character)
						local teleportLocation = tbl9.TeleportLocation
						if not teleportLocation then
							return
						end
						local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 0.5)

						if humanoidRootPart then
							tbl12.Teleport(humanoidRootPart, teleportLocation)
						end
					end)

					repeat
						task.wait()
					until not toggles.MakeSpawnLoc.Value

					connection:Disconnect()
				end,
			})

			Teleporting:AddToggle("LoopTPToLoc", {
				Text = "Loop TP to Location",
				Default = false,
				Callback = function(loopTpLocation)
					tbl8.LoopTpLocation = loopTpLocation

					task.spawn(function()
						while tbl8.LoopTpLocation and task.wait() do
							local v22, v23 = tbl12.Char()

							if v22 and v23 then
								tbl12.Teleport(v23, tbl9.TeleportLocation.CFrame + Vector3.new(0, 10, 0))
							end
						end
					end)
				end,
			})
		end

		do
			local Players2 = tbl15.Player:AddRightGroupbox("Players", "users")
			tbl12.CreatePlayerDropdown(Players2, "TeleportTargets", tbl7.SelectedTeleportPlayers, false, false)

			Players2:AddToggle("LoopSpectatePlayer", {
				Text = "Spectate Player",
				Default = false,
				Callback = function()
					task.spawn(function()
						while toggles.LoopSpectatePlayer.Value and task.wait() do
							local v22, v23, v24 = tbl12.Char()
							local v25, v26, v27 = tbl12.Char(options.TeleportTargetsDropdown.Value)

							if v23 and v26 and v27 then
								currentCamera.CameraSubject = v27
							else
								currentCamera.CameraSubject = v24
							end
						end

						local v22, v23, v24 = tbl12.Char()

						if v24 then
							currentCamera.CameraSubject = v24
						end
					end)
				end,
			}):AddKeyPicker("SpectateKey", { Text = "Spectate Player", Mode = "Toggle", NoUI = true, SyncToggleState = true })

			Players2:AddToggle("LoopTPToPlayer", {
				Text = "Loop TP to Player",
				Default = false,
				Callback = function()
					while toggles.LoopTPToPlayer.Value and task.wait() do
						local v22
						v22, v22 = tbl12.Char()
						local v23, v24 = tbl12.Char(options.TeleportTargetsDropdown.Value)

						if v22 and v24 then
							v22.CFrame = v24.CFrame * CFrame.new(0, 0, 2)
						end
					end
				end,
			})
		end

		do
			local v22 = tbl15.Player:AddRightGroupbox("Look Event Figures", "person-standing")

			v22:AddDropdown("LookFigure", {
				Text = "Figure",
				Values = { "Sideways", "Upside Down" },
				Default = tbl7.LookFigures.Figure,
				Multi = false,
				Callback = function(figure)
					tbl7.LookFigures.Figure = figure

					if tbl7.LookFigures.Enabled then
						tbl12.UpdateLookFigures(0)
					end
				end,
			})

			v22:AddToggle("LookFigures", { Text = "Enabled", Default = false, Callback = tbl12.SetLookFigures })

			v22:AddToggle("LookFiguresPreview", {
				Text = "Show Locally",
				Default = true,
				Callback = function(preview)
					tbl7.LookFigures.Preview = preview

					if tbl7.LookFigures.Enabled then
						tbl12.UpdateLookFigures(0)
					end
				end,
			})
		end

		do
			local Animations = tbl15.Player:AddRightGroupbox("Animations", "audio-lines")

			local tbl16 = {
				Struggle = "rbxassetid://7047322890",
				Faint = "rbxassetid://181526230",
				["Floor Faint"] = "rbxassetid://181525546",
				Levitate = "rbxassetid://313762630",
				Spinner = "rbxassetid://188632011",
				["Spin Dance"] = "rbxassetid://429730430",
				["Spin Dance 2"] = "rbxassetid://186934910",
				["Float Sit"] = "rbxassetid://179224234",
				Scared = "rbxassetid://180612465",
				["Floating Head"] = "rbxassetid://121572214",
				Crouch = "rbxassetid://182724289",
				["Moving Dance"] = "rbxassetid://429703734",
				["Bow Down"] = "rbxassetid://204292303",
				["Sword Slam"] = "rbxassetid://204295235",
				Insane = "rbxassetid://33796059",
				["Mega Insane"] = "rbxassetid://184574340",
				["Sword Slice"] = "rbxassetid://35978879",
				["Loop Head"] = "rbxassetid://35154961",
				["Floor Crawl"] = "rbxassetid://282574440",
				["Dino Walk"] = "rbxassetid://204328711",
				["Weird Back"] = "rbxassetid://215384594",
				["Moon Dance"] = "rbxassetid://45834924",
				["Full Punch"] = "rbxassetid://204062532",
				["Full Swing"] = "rbxassetid://218504594",
				["Arm Turbine"] = "rbxassetid://259438880",
				["Barrel Roll"] = "rbxassetid://136801964",
				["Arm Detach"] = "rbxassetid://33169583",
				["Insane Arms"] = "rbxassetid://27432691",
			}

			local tbl17 = {}

			for k, v22 in pairs(tbl16) do
				table.insert(tbl17, k)
				tbl7.AnimationWhitelist[v22:match("%d+")] = true
			end

			table.sort(tbl17)

			local AnimationToPlay = Animations:AddDropdown("AnimationToPlay", {
				Values = tbl17,
				Default = 1,
				Multi = false,
				Searchable = true,
				Text = "Animation to Play",
			})

			local AnimS = Animations:AddSlider("AnimS", { Text = "Animation Speed", Default = 1, Min = 0, Max = 100 })
			local v22 = nil
			local str5 = "Struggle"

			local function fn21()
				if v22 then
					v22:Stop()
					v22:Destroy()
					v22 = nil
				end
			end

			local function fn22(arg)
				fn21()
				if not (toggles.AnimationToggle and toggles.AnimationToggle.Value) then
					return
				end
				local character = localPlayer.Character
				if not character then
					return
				end
				local humanoid = character:FindFirstChildOfClass("Humanoid")
				if not humanoid then
					return
				end
				local animator = humanoid:FindFirstChildOfClass("Animator")
				if not animator then
					return
				end
				local v23 = tbl16[arg]
				if not v23 then
					return
				end
				local animation = Instance.new("Animation")
				animation.AnimationId = v23
				v22 = animator:LoadAnimation(animation)
				v22.Looped = true
				v22:Play()
				v22:AdjustSpeed(AnimS.Value)
				str5 = arg
			end

			local function fn23()
				if str5 then
					fn22(str5)
				end
			end

			Animations:AddToggle("AnimationToggle", {
				Text = "Toggle Animation",
				Default = false,
				Callback = function(arg)
					if not arg then
						fn21()
					else
						fn23()
					end
				end,
			})

			AnimS:OnChanged(function()
				if v22 then
					v22:AdjustSpeed(AnimS.Value)
				end
			end)

			AnimationToPlay:OnChanged(function(arg)
				str5 = arg

				if toggles.AnimationToggle and toggles.AnimationToggle.Value then
					fn22(AnimationToPlay.Value)
				end
			end)

			localPlayer.CharacterAdded:Connect(function()
				task.wait(1)

				if toggles.AnimationToggle and toggles.AnimationToggle.Value then
					fn21()
					fn22(AnimationToPlay.Value)
				end
			end)
		end
	end

	do
		local Line = tbl15.Combat:AddRightGroupbox("Line", "spline")

		Line:AddSlider("ExtSpeedSlider", {
			Text = "Extend speed",
			Default = 1,
			Min = 1,
			Max = 15,
			Rounding = 0,
			Compact = true,
			Callback = function(increaseLineDistance)
				tbl9.IncreaseLineDistance = increaseLineDistance
			end,
		})

		Line:AddToggle("ExtLineToggle", {
			Text = "Toggle Extend Line",
			Default = false,
			Callback = function(moreLineExtend)
				tbl8.MoreLineExtend = moreLineExtend
			end,
		})

		Line:AddDivider()

		Line:AddSlider("SupStrengthSlider", {
			Text = "Strength",
			Default = 400,
			Min = 300,
			Max = 5000,
			Rounding = 0,
			Compact = true,
			Callback = function(superStrength)
				tbl9.SuperStrength = superStrength
			end,
		})

		Line:AddToggle("SupStrength", {
			Text = "Super Strength",
			Default = false,
			Callback = function(superStrength)
				tbl8.SuperStrength = superStrength
			end,
		})
	end

	do
		local v20 = tbl15.Combat:AddRightTabbox("Server Lag")
		local Lines = v20:AddTab("Lines", "spline")

		Lines:AddToggle("LineLagToggle", {
			Text = "Line-Lag Server",
			Default = false,
			DisabledTooltip = "This function is currently being managed by another function.",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("LagServer", arg)

				if not arg then
					task.wait(0.1)
					tbl11.CreateGrabLine:FireServer()
				end
			end,
		}):AddKeyPicker("LineLagKey", {
			Text = "Line-Lag Server",
			Default = nil,
			Mode = "Toggle",
			NoUI = false,
			SyncToggleState = true,
		})

		Lines:AddSlider("LineLagSSlider", {
			Text = "Lag Strength",
			Default = 11,
			Min = 1,
			Max = 11,
			Rounding = 0,
			Compact = true,
			Callback = function(lagLines)
				tbl9.LagLines = lagLines
			end,
		})

		Lines:AddDivider()

		Lines:AddToggle("CrazyLineToggle", {
			Text = "Crazy Line",
			Tooltip = "Spams lines on everybody on the server (you don't see it)",
			Default = false,
			Callback = function()
				task.spawn(function()
					while toggles.CrazyLineToggle.Value do
						for _, v21 in pairs(tbl7.PlayerList) do
							if v21 ~= localPlayer then
								local torso = tbl12.Char(v21)
								torso = torso and torso:FindFirstChild("Torso")

								if torso then
									tbl11.CreateGrabLine:FireServer(torso, CFrame.identity)
									fn20(options.SoftLagSlider.Value)
								end
							end
						end
					end
				end)
			end,
		})

		Lines:AddSlider("SoftLagSlider", {
			Text = "Speed (seconds)",
			Default = 0.04,
			Min = 0,
			Max = 0.5,
			Rounding = 2,
			Compact = true,
		})

		local Packets = v20:AddTab("Packets", "package")

		Packets:AddToggle("PacketLagToggle", {
			Text = "Packet-Lag Server",
			Default = false,
			Risky = true,
			Tooltip = "Only use if you know what you're doing!",
			Callback = function(packetLagServer)
				tbl8.PacketLagServer = packetLagServer
				local packet = tbl11.Packet
				if not packet then
					return
				end

				task.spawn(function()
					while tbl8.PacketLagServer do
						local n36 = #tbl9.PacketPrefix
						packet:FireServer(tbl9.PacketPrefix .. string.rep("0", math.floor(tbl9.Packets * 1000000) - n36))
						fn20(tbl9.PacketDelay)
					end
				end)
			end,
		}):AddKeyPicker("PacketLagKey", {
			Text = "Packet-Lag Server",
			Default = nil,
			Mode = "Toggle",
			NoUI = false,
			Risky = true,
			SyncToggleState = true,
		})

		Packets:AddButton({
			Text = "Send One Packet",
			Risky = true,
			Tooltip = "Only use if you know what you're doing!",
			Func = function()
				local packet = tbl11.Packet
				if not packet then
					return
				end
				local n36 = #tbl9.PacketPrefix
				packet:FireServer(tbl9.PacketPrefix .. string.rep("0", math.floor(tbl9.Packets * 1000000) - n36))
			end,
		}):AddKeyPicker("OnePacketKey", { Text = "Packet Once", Default = nil, Mode = "Press", NoUI = true })

		Packets:AddDivider()

		Packets:AddSlider("PacketLagSlider", {
			Text = "Packet Size",
			Default = 0.35,
			Min = 0.05,
			Max = 9.8,
			Rounding = 2,
			Compact = true,
			Suffix = " MB",
			Callback = function(packets)
				tbl9.Packets = packets
			end,
		})

		Packets:AddSlider("PacketLagSlider2", {
			Text = "Sending Delay",
			Default = 0.1,
			Min = 0,
			Max = 5,
			Rounding = 2,
			Compact = true,
			Suffix = " seconds",
			Callback = function(packetDelay)
				tbl9.PacketDelay = packetDelay
			end,
		})

		Packets:AddInput("CustomPacketPrefix", {
			Text = "Custom Prefix",
			Tooltip = "If exploiters have a packet detector, this prefix will show up for them if the detector shows the text",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl9.PacketPrefix = tostring(arg)
			end,
		})

		local Lobotomy = v20:AddTab("Lobotomy", "flask-conical")
		local v21 = nil

		v21 = Lobotomy:AddButton({
			Text = "Break Server (Lobotomy)",
			Tooltip = "This requires GUCCI Anti-Grab to be on! Breaks the server's grabs, casinos, etc.",
			Func = function()
				if not tbl8.GucciAntiGrab then
					return fn18("Turn on GUCCI Anti-Grab in the Shield Tab for this to work!", "Lobotomy")
				end
				local v22, v23, v24 = tbl12.Char()
				if not v23 or not v24 or v24.Health == 0 then
					return fn18("Can't do lobotomy because of your character being unavailable!", "Lobotomy")
				end
				local loboStrength = tbl9.LoboStrength
				v21:SetDisabled(true)
				toggles.GucciAntiGrab:SetDisabled(true)
				fn18("This will take some time, please wait...", "Lobotomy")

				for i = 0, loboStrength * 45 do
					if i % 5 == 0 then
						task.wait()
					end

					tbl11.RagdollRemote:FireServer(v23, 0)
				end

				toggles.GucciAntiGrab:SetDisabled(false)
				toggles.GucciAntiGrab:SetValue(false)
				v24.Sit = true
				task.wait(0.1)
				v24.Sit = false
				fn18("Lobotomy has been done! Now you can't spawn anything, and when you grab someone, they get frozen in animation! Keep in mind that if you die, it will stop.", "Lobotomy")
				v21:SetDisabled(false)
			end,
		})

		Lobotomy:AddDivider()

		Lobotomy:AddSlider("LoboStrengthSl", {
			Text = "Length",
			Default = 500,
			Min = 450,
			Max = 1500,
			Rounding = 0,
			Compact = true,
			Callback = function(arg)
				tbl9.LoboStrength = arg / 3
			end,
		})
	end

	do
		local Grabs = tbl15.Combat:AddLeftGroupbox("Grabs", "hand-grab")

		Grabs:AddDropdown("GrabsDropdown", {
			Values = {
				"Invisible",
				"Kill",
				"Void",
				"Kick",
				"Spin",
				"Fling",
				"Teleport to Spawn",
				"Unstick",
				"Ragdoll",
				"Massless",
				"Infinite",
				"Noclip",
			},
			Multi = true,
			AllowNull = true,
			Searchable = true,
			Text = "Grabs",
			Tooltip = "What will you do to the things that you grab with a line",
			Callback = function(grabs)
				tbl7.Grabs = grabs
			end,
		})

		Grabs:AddToggle("ToggleGrabs", {
			Text = "Toggle Grabs",
			Default = false,
			Callback = function(grab)
				tbl8.Grab = grab
			end,
		})

		local v20 = Grabs:AddDependencyBox()
		v20:SetupDependencies({ { options.GrabsDropdown, "Unstick" } })
		v20:AddDivider()

		v20:AddDropdown("UnstickGrabDD", {
			Values = { "All Toys Near", "Only Sticked" },
			Default = 1,
			AllowNull = false,
			Multi = false,
			Searchable = true,
			Text = "Unstick Grab",
			Tooltip = "What toys to unstick from the player",
			Callback = function(unstickGrab)
				tbl9.UnstickGrab = unstickGrab
			end,
		})
	end

	do
		local Auras = tbl15.Combat:AddLeftGroupbox("Auras", "salad")

		Auras:AddDropdown("AurasDropdown", {
			Values = {
				"Kill",
				"Void",
				"Kick [Slow]",
				"Fling",
				"Sky",
				"Delete Limbs",
				"Teleport to Spawn",
				"Grab",
				"Anchor",
				"Unstick",
				"Ragdoll",
				"Banana Ragdoll",
				"Blob-Grab",
				"Blob-Kill",
				"Blob-Kick",
			},
			Multi = true,
			AllowNull = true,
			Searchable = true,
			Text = "Auras",
			Tooltip = "What will you do to the PLAYERS that are near you at the selected distance",
			Callback = function(auras)
				tbl7.Auras = auras
			end,
		})

		Auras:AddSlider("AuraSlider", {
			Text = "Aura Distance",
			Default = 25,
			Min = 5,
			Max = 31,
			Rounding = 0,
			Compact = true,
			Callback = function(auraDistance)
				tbl9.AuraDistance = auraDistance
				tbl12.UpdateAuraVisualSettings()
			end,
		})

		Auras:AddToggle("ToggleAuras", {
			Text = "Toggle Auras",
			Default = false,
			Callback = function(arg)
				tbl12.SetRuntimeToggle("Aura", arg)
				tbl12.RefreshAuraVisuals()
			end,
		})

		Auras:AddToggle("AuraVisualizer", {
			Text = "Show Aura Radius",
			Default = false,
			Callback = function(auraVisualizer)
				tbl8.AuraVisualizer = auraVisualizer
				tbl12.RefreshAuraVisuals()
			end,
		}):AddColorPicker("AuraVisualColor", {
			Default = tbl7.AuraVisualSettings.AuraColor,
			Title = "Aura Color",
			Callback = function(auraColor)
				tbl7.AuraVisualSettings.AuraColor = auraColor
				tbl12.UpdateAuraVisualSettings()
			end,
		})

		Auras:AddToggle("ExcludeT", {
			Text = "Exclude Targets",
			Default = true,
			Callback = function(excludeTarget)
				tbl8.ExcludeTarget = excludeTarget
			end,
		})

		local v20 = Auras:AddDependencyBox()
		v20:SetupDependencies({ { options.AurasDropdown, "Delete Limbs" } })
		v20:AddDivider("Delete Limb Settings")

		v20:AddDropdown("BLAuraDropdown", {
			Values = { "Legs", "Arms", "All" },
			Default = 3,
			Multi = false,
			Searchable = true,
			Text = "Limbs to delete",
			Tooltip = "What limbs will you delete in the delete limbs aura",
			Callback = function(targetedLimbAura)
				tbl9.TargetedLimbAura = targetedLimbAura
			end,
		})
	end

	do
		local v20 = tbl15.Combat:AddLeftGroupbox("Toy Auras", "shapes")

		v20:AddDropdown("TAurasDropdown", {
			Values = { "Destroy", "Fling", "Teleport to Spawn", "Bounce", "Anchor" },
			Multi = true,
			AllowNull = true,
			Searchable = true,
			Text = "Auras",
			Tooltip = "What will you do to the TOYS that are near you",
			Callback = function(toyAuras)
				tbl7.ToyAuras = toyAuras
				tbl12.WakeRuntimeGate("ToyAuraEffects")
			end,
		})

		v20:AddSlider("ToyAuraDistance", {
			Text = "Aura Distance",
			Default = tbl9.ToyAuraDistance,
			Min = 5,
			Max = 31,
			Rounding = 0,
			Compact = true,
			Callback = function(toyAuraDistance)
				tbl9.ToyAuraDistance = toyAuraDistance
				tbl12.UpdateAuraVisualSettings()
			end,
		})

		v20:AddToggle("ToggleTAuras", {
			Text = "Toggle Toy Auras",
			Default = false,
			Callback = function(toyAuras)
				tbl8.ToyAuras = toyAuras
				tbl12.WakeRuntimeGate("ToyAuraEffects")
				tbl12.RefreshAuraVisuals()
			end,
		})

		v20:AddToggle("ToyAuraVisualizer", {
			Text = "Show Toy Aura Radius",
			Default = false,
			Callback = function(toyAuraVisualizer)
				tbl8.ToyAuraVisualizer = toyAuraVisualizer
				tbl12.RefreshAuraVisuals()
			end,
		}):AddColorPicker("ToyAuraVisualColor", {
			Default = tbl7.AuraVisualSettings.ToyAuraColor,
			Title = "Toy Aura Color",
			Callback = function(toyAuraColor)
				tbl7.AuraVisualSettings.ToyAuraColor = toyAuraColor
				tbl12.UpdateAuraVisualSettings()
			end,
		})
	end

	do
		local Antis = tbl15.Invincibility:AddLeftGroupbox("Antis", "brick-wall-shield")

		Antis:AddToggle("AntiGrab", {
			Text = "Anti Grab",
			Default = false,
			Tooltip = "The most default anti-grab",
			Callback = function(antiGrab)
				tbl8.AntiGrab = antiGrab
				tbl12.AntiGrab()
			end,
		})

		Antis:AddToggle("GucciAntiGrab", {
			Text = "[GUCCI] Anti Grab",
			Default = false,
			Tooltip = "Can't be touched.",
			Callback = function(arg)
				tbl12.SetGucciAntiGrab(arg)
			end,
		}):AddKeyPicker("GucciK", {
			Text = "[GUCCI] Anti Grab",
			Default = nil,
			Mode = "Toggle",
			NoUI = false,
			SyncToggleState = true,
		})

		Antis:AddToggle("AntiBlobman", {
			Text = "Anti Blobman",
			Default = false,
			Tooltip = "People can't grab you using Blobman",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AntiBlobman", arg)
			end,
		})

		Antis:AddToggle("AntiInputLag", {
			Text = "Anti Network Ownership",
			Default = false,
			Tooltip = "Anti Blob-kill, etc.",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AntiInputLag", arg)
			end,
		}):AddKeyPicker("AntiNetK", {
			Text = "Anti Network Ownership",
			Default = nil,
			Mode = "Toggle",
			NoUI = false,
			SyncToggleState = true,
		})

		Antis:AddToggle("AntiExplosion", {
			Text = "Anti Explosion",
			Default = false,
			Tooltip = "Makes you not able to be exploded",
			Callback = function(antiExplosion)
				tbl8.AntiExplosion = antiExplosion
			end,
		})

		Antis:AddToggle("AntiBurn", {
			Text = "Anti Burn",
			Default = false,
			Tooltip = "Makes you not able to be burnt",
			Callback = function(antiBurn)
				tbl8.AntiBurn = antiBurn
			end,
		})

		Antis:AddToggle("AntiVoid", {
			Text = "Anti Void",
			Default = false,
			Tooltip = "Teleports you up if you go far down into the void",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AntiVoid", arg)
			end,
		})

		Antis:AddToggle("AntiKick", {
			Text = "Anti Kick",
			Default = false,
			Tooltip = "Default shuriken anti-kick",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AntiKick", arg)
				tbl12.WakeRuntimeGate("PCLDTracking")
			end,
		})

		Antis:AddToggle("AntiKick2", {
			Text = "[Break PCLD] Anti Kick",
			Default = false,
			Tooltip = "Unable to get kicked at all",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AntiKick2", arg)
			end,
		})

		Antis:AddToggle("AntiSticky", {
			Text = "Anti Sticky",
			Default = false,
			Tooltip = "Protects your character from sticky toys",
			Callback = function(antiSticky)
				tbl8.AntiSticky = antiSticky

				task.spawn(function()
					while tbl8.AntiSticky and task.wait(0.1) do
						local v20 = tbl12.Char()

						if v20 then
							for _, v21 in pairs(v20:QueryDescendants("BasePart")) do
								for _, v22 in pairs(v21:GetConnectedParts()) do
									if not (v22.Name ~= "StickyPart" or v22:IsDescendantOf(v17) or v22:IsDescendantOf(workspace.PlotItems) and not localPlayer.InOwnedPlot.Value) then
										for _, child in pairs(v22:GetChildren()) do
											if child:IsA("TouchInterest") then
												child:Destroy()
											end
										end

										local parent2 = v22.Parent

										if parent2 then
											local v23 = tbl12.FindNicePart(parent2)

											if v23 then
												tbl12.Grab(v23)
											end
										end
									end
								end
							end
						end
					end
				end)
			end,
		})

		Antis:AddToggle("AntiSnowball", {
			Text = "Anti Snowball",
			Default = false,
			Tooltip = "Prevents you from getting snowballed",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AntiSnowball", arg)

				if not arg then
					local v20 = tbl12.Char()
					if not v20 then
						return
					end
					tbl12.ToggleCollisions(v20, true)
				end
			end,
		})

		Antis:AddToggle("AntiBanana", {
			Text = "Anti Banana",
			Default = false,
			Tooltip = "Bananas won't touch you",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AntiBanana", arg)
			end,
		})

		Antis:AddToggle("AntiPaint", {
			Text = "Anti Paint",
			Default = false,
			Tooltip = "You won't get painted",
			Callback = function(antiPaint)
				tbl8.AntiPaint = antiPaint

				task.spawn(function()
					local tbl16 = {}

					local function fn21(descendant)
						if descendant:IsA("BasePart") and descendant.Name == "PaintPlayerPart" then
							descendant.CanTouch = not antiPaint

							if antiPaint then
								tbl16[descendant] = descendant:GetPropertyChangedSignal("CanTouch"):Connect(function()
									if not tbl8.AntiPaint then
										return
									end
									descendant.CanTouch = false
								end)
							end
						end
					end

					for _, v20 in pairs(workspace:QueryDescendants("BasePart#PaintPlayerPart")) do
						fn21(v20)
					end

					if antiPaint then
						local connection = workspace.DescendantAdded:Connect(fn21)

						repeat
							task.wait()
						until not tbl8.AntiPaint

						connection:Disconnect()

						for _, v20 in pairs(tbl16) do
							v20:Disconnect()
						end
					end
				end)
			end,
		})

		Antis:AddToggle("AntiPoison", {
			Text = "Anti Poison",
			Default = false,
			Tooltip = "Poison parts won't kill you",
			Callback = function(arg)
				local hole = map:FindFirstChild("Hole")
				local poisonBigHole = hole and hole:FindFirstChild("PoisonBigHole")
				hole = hole and hole:FindFirstChild("PoisonSmallHole")

				for _, v20 in pairs({ poisonBigHole, hole }) do
					if v20 then
						local poisonHurtPart = v20:FindFirstChild("PoisonHurtPart")
						local paintPlayerPart = v20:FindFirstChild("PaintPlayerPart")

						if poisonHurtPart then
							poisonHurtPart.CanTouch = not arg
						end

						if paintPlayerPart then
							paintPlayerPart.CanTouch = not arg
						end
					end
				end
			end,
		})

		Antis:AddToggle("AntiLag", {
			Text = "Anti Lag",
			Default = false,
			Tooltip = "Anti Line-Lag & Sticky-Lag",
			Callback = function(arg)
				local enabled = not arg
				if enabled and tbl7.LookFigures.Enabled then
					toggles.AntiLag:SetValue(true)
					return
				end
				localPlayer.PlayerScripts.CharacterAndBeamMove.Enabled = enabled
				localPlayer.PlayerScripts.StickyPartsTouchDetection.Enabled = enabled
				tbl12.SetAntiShurikenLag(arg)

				if arg then
					task.delay(1.5, function()
						if flag11 or not toggles.AntiLag.Value then
							return
						end

						for _, v20 in pairs(tbl7.PlayerList) do
							local v21 = tbl12.Char(v20)

							if v21 then
								for _, child in pairs(v21:GetChildren()) do
									if child.Name == "GrabParts" then
										child:Destroy()
									end
								end
							end
						end
					end)
				end
			end,
		}):AddKeyPicker("AntiLagK", { Text = "Anti Lag", Default = nil, Mode = "Toggle", NoUI = false, SyncToggleState = true })

		Antis:AddToggle("AutoAntiLag", {
			Text = "Auto Anti Lag",
			Default = true,
			Tooltip = "Enables anti-lag for you if too low fps",
			Callback = function(autoAntiLag)
				tbl8.AutoAntiLag = autoAntiLag
			end,
		})

		Antis:AddToggle("AntiInvis", {
			Text = "Anti Invis",
			Default = false,
			Tooltip = "Makes any invisible players visible",
			Callback = function()
				task.spawn(function()
					while toggles.AntiInvis and toggles.AntiInvis.Value do
						for _, v20 in tbl7.PlayerList, nil, nil do
							if v20 ~= localPlayer then
								local v21, v22, v23 = tbl12.Char(v20)

								if v22 then
									v22.Massless = false
								end

								if v23 and v23.Sit and v23.SeatPart then
									local seatPart = v23.SeatPart
									local seatWeld = seatPart:FindFirstChild("SeatWeld")

									if seatPart.Parent and seatWeld and not seatWeld.Enabled then
										seatWeld.Enabled = true
									end
								end
							end
						end

						task.wait(0.1)
					end
				end)
			end,
		})

		Antis:AddToggle("AutoReset", {
			Text = "Auto Reset",
			Default = true,
			Tooltip = "Checks for kick frame and resets when needed",
			Callback = function(autoReset)
				tbl8.AutoReset = autoReset
			end,
		})

		Antis:AddToggle("LoopTP", {
			Text = "Loop TP",
			Default = false,
			Tooltip = "Teleports you infinitely so you're unable to be grabbed",
			Callback = function(loopTP)
				tbl8.LoopTP = loopTP

				task.spawn(function()
					local v20
					v20, v20 = tbl12.Char()
					local cFrame2

					if v20 then
						cFrame2 = v20.CFrame
					else
						cFrame2 = CFrame.new(0, -5, 0)
					end

					while tbl8.LoopTP and fn20(0.04) do
						local v21 = tbl12.Char()

						if v21 then
							local random = math.random
							local cframe = CFrame.new(math.random(-1000, 1000), -7.35, random(-1000, 1000))
							tbl12.PivotTo(v21, cframe)
						end
					end

					local v21 = tbl12.Char()

					if v21 then
						tbl12.PivotTo(v21, cFrame2)
					end
				end)
			end,
		})
	end

	do
		local Miscellaneous = tbl15.Invincibility:AddRightGroupbox("Miscellaneous", "bolt")

		Miscellaneous:AddToggle("DisblVoid", {
			Text = "Disable Void",
			Default = true,
			Tooltip = "Makes you not get killed in void",
			DisabledTooltip = "This function is currently being managed by another function.",
			Callback = function(destroyVoid)
				tbl8.DestroyVoid = destroyVoid

				if destroyVoid then
					workspace.FallenPartsDestroyHeight = (0/0)
				else
					workspace.FallenPartsDestroyHeight = -100
				end
			end,
		})

		Miscellaneous:AddToggle("WaterWalk", {
			Text = "Water Walk",
			Default = false,
			Tooltip = "Walk on water",
			Callback = function(arg)
				for _, child in pairs(alwaysHereTweenedObjects.Ocean.Object.ObjectModel:GetChildren()) do
					local tbl16 = tbl7.WaterPartStates[child]

					if arg and not tbl16 then
						tbl16 = { child.CanCollide, child.Transparency }
						tbl7.WaterPartStates[child] = tbl16
					end

					if arg then
						child.CanCollide = true

						if child.Transparency ~= 1 and tbl16[2] ~= 1 then
							child.Transparency = 0.5
						end
					elseif tbl16 then
						child.CanCollide = tbl16[1]
						local transparency

						if toggles.CustomWaterT and toggles.CustomWaterT.Value then
							transparency = 1
						else
							transparency = tbl16[2]
						end

						child.Transparency = transparency

						if not (toggles.CustomWaterT and toggles.CustomWaterT.Value) then
							tbl7.WaterPartStates[child] = nil
						end
					end
				end
			end,
		})

		Miscellaneous:AddToggle("DeleteBarriers", {
			Text = "Noclip Barrier",
			Default = false,
			Callback = function(arg)
				local plots = workspace:FindFirstChild("Plots")
				if not plots then
					return
				end

				for _, child in ipairs(plots:GetChildren()) do
					local barrier = child:FindFirstChild("Barrier")

					if barrier then
						for _, child2 in ipairs(barrier:GetChildren()) do
							if child2:IsA("BasePart") and child2.Name == "PlotBarrier" then
								child2.CanCollide = not arg
							end
						end
					end
				end
			end,
		})

		Miscellaneous:AddToggle("OtherInvCollisions", {
			Text = "Anti-Fling [Objects Noclip]",
			Default = false,
			Callback = function(arg)
				if arg then
					task.spawn(function()
						while task.wait(0.1) and toggles.OtherInvCollisions.Value and not flag11 do
							for _, v20 in tbl12.Char():QueryDescendants("BasePart") do
								PhysicsService:SetPartCollisionGroup(v20, "PlotPlayers")
							end
						end

						for _, v20 in tbl12.Char():QueryDescendants("BasePart") do
							local v21 = PhysicsService
							local setPartCollisionGroup = v21.SetPartCollisionGroup
							local str5

							if not localPlayer.InOwnedPlot.Value then
								str5 = "Players"
							else
								str5 = "PlotPlayers"
							end

							setPartCollisionGroup(v21, v20, str5)
						end
					end)
				end
			end,
		})

		local LastGrabbedLabel = Miscellaneous:AddLabel("LastGrabbedLabel", { Text = "Last person who grabbed you: nobody", DoesWrap = true })

		tbl12.UpdateLastGrabbedLabel = function()
			LastGrabbedLabel:SetVisible(tbl9.WhoGrabbed ~= nil)

			if tbl9.WhoGrabbed then
				LastGrabbedLabel:SetText("Last person who grabbed you: " .. tbl9.WhoGrabbed)
			end
		end
	end

	tbl12.UpdateLastGrabbedLabel()

	do
		local v20 = tbl15.Invincibility:AddLeftGroupbox("Counter-attack", "airplay")

		v20:AddDropdown("CADropdown", {
			Values = { "Grab", "Kill", "Void", "Delete Limbs", "Fling", "Teleport to Spawn", "Anchor" },
			Default = "Kill",
			Multi = false,
			Text = "Consequences",
			Tooltip = "What will you do when someone touches you and you have Counter-attack on",
			Callback = function(counterMethod)
				tbl9.CounterMethod = counterMethod
			end,
		})

		v20:AddToggle("CAToggle", {
			Text = "Counter Attack",
			Default = false,
			Tooltip = "People who touch you will have the selected consequences",
			Callback = function(counterAttack)
				tbl8.CounterAttack = counterAttack
			end,
		})

		local v21 = v20:AddDependencyBox()
		v21:SetupDependencies({ { options.CADropdown, "Delete Limbs" } })
		v21:AddDivider("Delete Limb Settings")

		v21:AddDropdown("deleteLimbsCounterBoxDropdown", {
			Values = { "Legs", "Arms", "All" },
			Default = 3,
			Multi = false,
			Searchable = true,
			Text = "Limbs to delete",
			Tooltip = "What limbs will you delete",
			Callback = function(targetedLimbCA)
				tbl9.TargetedLimbCA = targetedLimbCA
			end,
		})
	end

	do
		local Config = tbl15.Invincibility:AddRightGroupbox("Config", "settings")

		Config:AddSlider("AntiLagSens", {
			Text = "Auto Anti-Lag Sensitivity",
			Default = 3,
			Min = 1,
			Max = 20,
			Suffix = " FPS",
			Callback = function(antiLagSens)
				tbl9.AntiLagSens = antiLagSens
			end,
		})

		Config:AddDivider("Auto Reset")

		Config:AddToggle("AutoLeave", {
			Text = "Auto Leave",
			Default = true,
			Tooltip = "Leaves after four detected kick flags instead of continuing to reset",
			Callback = function(autoLeave)
				tbl8.AutoLeave = autoLeave
			end,
		})

		Config:AddDivider("Anti-Grabs")

		Config:AddDropdown("AGTDropdown", {
			Values = { "Normal", "No Ragdoll", "Anti-Kill", "Escapes Anything, but buggy" },
			Default = 1,
			Multi = false,
			Text = "Anti-Grab Type",
			Tooltip = "Type of default Anti-Grab",
			Callback = function(agType)
				tbl9.AGType = agType
			end,
		})

		Config:AddDropdown("GTDropdown", {
			Values = { "Blobman", "Tractor [Invisible]", "Train [Invisible]", "Sleigh [Invisible]" },
			Default = 1,
			Multi = false,
			Text = "GUCCI Type",
			Tooltip = "What vehicle will you sit on during Gucci Anti Grab",
			Callback = function(arg)
				if arg == "Blobman" then
					tbl9.GucciType = "CreatureBlobman"
				elseif arg == "Tractor [Invisible]" then
					tbl9.GucciType = "TractorGreen"
				elseif arg == "Train [Invisible]" then
					tbl9.GucciType = "Train"
				elseif arg == "Sleigh [Invisible]" then
					tbl9.GucciType = "SantaSleigh"
				end
			end,
		})

		Config:AddDivider("Anti Net-Owner")

		Config:AddDropdown("AITDropdown", {
			Values = {
				"FoodHamburger",
				"InstrumentDrumBongos",
				"InstrumentBrassTrumpet",
				"InstrumentBrassBugle",
				"InstrumentVoiceMicrophone",
				"InstrumentWoodwindOcarina",
				"InstrumentGuitarUkulele",
				"InstrumentGuitarLyre",
				"InstrumentGuitarBanjo",
				"InstrumentGuitarAcoustic",
				"CupMugBrown",
				"CupMugWhite",
				"FoodBanana",
				"FoodBread",
				"FoodBroccoli",
				"FoodCakePink",
				"FoodCoconut",
				"FoodDippyEgg",
				"FoodDonut",
				"FoodFrenchFries",
				"FoodHotdog",
				"FoodMayonnaise",
				"FoodMeatStick",
				"FoodMushroomPoison",
				"FoodPizzaCheese",
				"FoodPizzaPepperoni",
				"FoodSodaCan",
				"PoopPile",
				"PoopPileSparkle",
			},
			Default = 1,
			Multi = false,
			Text = "Type",
			Tooltip = "What interactable item will you use when doing anti-Net Owner",
			Callback = function(antiInputType)
				tbl9.AntiInputType = antiInputType
			end,
		})

		Config:AddSlider("AntiInpLagDel", {
			Text = "Grab & Drop Delay",
			Default = 0.05,
			Min = 0,
			Max = 0.3,
			Suffix = " sec",
			Rounding = 2,
			Callback = function(inputLgDelay)
				tbl9.InputLgDelay = inputLgDelay
			end,
		})

		Config:AddLabel("Below 0.05 can cause high ping")

		Config:AddSlider("ItemTransAK", {
			Text = "Item Transparency",
			Default = tbl9.AILTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Callback = function(ailTransparency)
				tbl9.AILTransparency = ailTransparency
			end,
		})

		Config:AddDivider("Anti-Kick")
		local antiKickSettings = tbl7.AntiKickSettings

		local AntiKickHL = Config:AddToggle("AntiKickHL", {
			Text = "Highlight",
			Default = antiKickSettings.Highlight,
			Tooltip = "Highlights the shuriken",
			Callback = function(highlight)
				antiKickSettings.Highlight = highlight
			end,
		})

		AntiKickHL:AddColorPicker("AKFill", {
			Default = antiKickSettings.HighlightFill,
			Title = "Fill Color",
			Callback = function(highlightFill)
				antiKickSettings.HighlightFill = highlightFill
			end,
		})

		AntiKickHL:AddColorPicker("AKOutline", {
			Default = antiKickSettings.HighlightOutl,
			Title = "Outline Color",
			Callback = function(highlightOutl)
				antiKickSettings.HighlightOutl = highlightOutl
			end,
		})

		tbl12.AddRainbowToggle(Config, "RGBAKFill", "RGB Fill", "AKFill")
		tbl12.AddRainbowToggle(Config, "RGBAKOutline", "RGB Outline", "AKOutline")

		Config:AddSlider("FillTransAK", {
			Text = "Fill Transparency",
			Default = antiKickSettings.HighlightFT,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Callback = function(highlightFT)
				antiKickSettings.HighlightFT = highlightFT
			end,
		})

		Config:AddSlider("OutlTransAK", {
			Text = "Outline Transparency",
			Default = antiKickSettings.HighlightOT,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Callback = function(highlightOT)
				antiKickSettings.HighlightOT = highlightOT
			end,
		})

		Config:AddSlider("ShurTransAK", {
			Text = "Shuriken Transparency",
			Default = antiKickSettings.Transparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Callback = function(transparency)
				antiKickSettings.Transparency = transparency
			end,
		})
	end

	do
		local selectedPlayers = tbl7.SelectedPlayers
		tbl12.CreatePlayerDropdown(tbl15.Target:AddLeftGroupbox("Target", "circle-user-round"), "Target", selectedPlayers)
	end

	do
		local Apply = tbl15.Target:AddLeftGroupbox("Apply", "dock")
		tbl12.CreateLoopToggle(Apply, "LoopApplyMethodTSel", "LoopApplyMethodT", false, false, tbl7.SelectedPlayers)
		tbl12.CreateLoopToggle(Apply, "LoopApplyMethodTServ", "LoopApplyMethodTServer", true, false, tbl7.SelectedPlayers)
		tbl12.CreateApplyButton(Apply, false, false, tbl7.SelectedPlayers)
		tbl12.CreateApplyButton(Apply, true, false, tbl7.SelectedPlayers)
	end

	do
		local v20 = tbl15.Target:AddRightGroupbox("Method Settings", "apple")

		v20:AddDropdown("MethodSettingsTargets", {
			Values = {
				"Kick",
				"Void",
				"Kill",
				"Bring",
				"Destroy Food",
				"Remove Gucci",
				"Remove Invisibility",
				"Delete Seatables",
			},
			Multi = true,
			AllowNull = true,
			Text = "Methods",
			Callback = function(targetMethods)
				tbl7.TargetMethods = targetMethods
			end,
		})

		local v21 = v20:AddDependencyBox()
		v21:SetupDependencies({ { options.MethodSettingsTargets, "Kick" } })
		v21:AddDivider("Kick Settings")

		v21:AddDropdown("NKDelayConf", {
			Values = { "Normal", "Faster but worse" },
			Multi = false,
			Default = 1,
			Text = "Delay Mode",
			Callback = function(nkDelayMode)
				tbl9.NKDelayMode = nkDelayMode
			end,
		})

		v21:AddToggle("RagdollNK", {
			Text = "Loop Ragdoll",
			Default = true,
			Callback = function(ragdollInNK)
				tbl8.RagdollInNK = ragdollInNK
			end,
		})

		v21:AddToggle("AntiKickRemoverNK", {
			Text = "Remove Anti-Kick",
			Default = true,
			Callback = function(deleteShurInNK)
				tbl8.DeleteShurInNK = deleteShurInNK
			end,
		})

		v21:AddToggle("EKIToggle", {
			Text = "Experimental Kick Improvements [BETA]",
			Risky = true,
			Default = tbl8.EKI,
			Tooltip = "Improves the kick, but can get very buggy! This also doesn't work on bad executors",
			DisabledTooltip = "Your executor does not support this feature!",
			Disabled = typeof(sethiddenproperty) ~= "function",
			Callback = function(eki)
				tbl8.EKI = eki
			end,
		})

		v21:AddSlider("HeightNK", {
			Text = "Kick Height",
			Default = 15,
			Min = 0,
			Max = 28,
			Compact = true,
			Rounding = 0,
			Callback = function(nkOffset)
				tbl9.NKOffset = nkOffset
			end,
		})

		v21:AddButton({
			Text = "TP To Void Platform",
			Tooltip = "Teleports you to a platform where victim cant spawn anti-kick shurikens, though it affects you as well [ONLY WORKS WHEN YOU HAVE RESONANCE ANTI-KICK ON AND ONLY WORKS GOOD ON CHEATERS]",
			Func = function()
				local v22
				v22, v22 = tbl12.Char()

				if v22 then
					tbl12.Teleport(v22, part3.CFrame + Vector3.new(0, 10, 0))
				end
			end,
		})

		v21:AddDivider("Kick Server Settings")

		v21:AddDropdown("KickServerMethod", {
			Values = { "Circle + Lag", "Void" },
			Multi = false,
			Default = 1,
			Text = "Kick Server Method",
			Callback = function(kickServerMethod)
				tbl9.KickServerMethod = kickServerMethod
			end,
		})

		local v22 = v20:AddDependencyBox()
		v22:SetupDependencies({ { options.MethodSettingsTargets, "Remove Gucci" } })
		v22:AddDivider("Remove-Gucci Settings")

		v22:AddToggle("RagdollInRG", {
			Text = "Break Player? [Inf Ragdoll]",
			Default = false,
			Tooltip = "This takes 1.5 seconds, use only if you have time!",
			Callback = function(ragdollInRG)
				tbl8.RagdollInRG = ragdollInRG
			end,
		})

		v22:AddButton({
			Text = "Fix Gucci Remover",
			Tooltip = "Fixes Remove Gucci bugs if it's not working",
			Func = function()
				for k in tbl7.SelectedPlayers, nil, nil do
					local v23, v24 = tbl12.GetInventory(k)

					if v23 then
						for _, v25 in v23:GetChildren() do
							local vehicleSeat = v25:FindFirstChildWhichIsA("VehicleSeat") or v25:FindFirstChildWhichIsA("Seat")

							if vehicleSeat then
								tbl12.ResetGucciSeat(vehicleSeat)
							end
						end

						if v24 then
							for _, v25 in v24:GetChildren() do
								local vehicleSeat = v25:FindFirstChildWhichIsA("VehicleSeat") or v25:FindFirstChildWhichIsA("Seat")

								if vehicleSeat then
									tbl12.ResetGucciSeat(vehicleSeat)
								end
							end
						end
					end
				end
			end,
		})
	end

	do
		local selectedPlayersBlob = tbl7.SelectedPlayersBlob
		tbl12.CreatePlayerDropdown(tbl15.Blobman:AddLeftGroupbox("Target", "circle-user-round"), "Blobman", selectedPlayersBlob)
	end

	do
		local Apply = tbl15.Blobman:AddLeftGroupbox("Apply", "dock")
		tbl12.CreateLoopToggle(Apply, "LoopApplyMethodSel", "LoopApplyMethod", false, true, tbl7.SelectedPlayersBlob)
		tbl12.CreateLoopToggle(Apply, "LoopApplyMethodServ", "LoopApplyMethodServer", true, true, tbl7.SelectedPlayersBlob)
		tbl12.CreateApplyButton(Apply, false, true, tbl7.SelectedPlayersBlob)
		tbl12.CreateApplyButton(Apply, true, true, tbl7.SelectedPlayersBlob)
	end

	do
		local Settings = tbl15.Blobman:AddRightGroupbox("Settings", "settings")

		Settings:AddToggle("AutoSeatBlobman", {
			Text = "Auto Sit Blobman",
			Default = false,
			Callback = function(autoSeatBlobman)
				tbl8.AutoSeatBlobman = autoSeatBlobman

				task.spawn(function()
					while tbl8.AutoSeatBlobman and task.wait(0.1) do
						tbl14.Sit()
					end
				end)
			end,
		}):AddKeyPicker("ASBK", {
			Text = "Auto Sit Blobman",
			Default = nil,
			Mode = "Toggle",
			NoUI = false,
			SyncToggleState = true,
		})

		Settings:AddToggle("FreezeBlob", { Text = "Freeze Blobman", Default = false, Callback = tbl14.SetFrozen })
	end

	do
		local v20 = tbl15.Blobman:AddRightGroupbox("Method Settings", "apple")

		v20:AddDropdown("MethodSettingsBlobs", {
			Values = { "Kick", "Kill", "Bring", "Lock", "Follow", "Remove Gucci" },
			Default = 1,
			Multi = false,
			Text = "Blobman Method",
			Callback = function(blobMethod)
				tbl9.BlobMethod = blobMethod
			end,
		})

		v20:AddDivider()
		local v21 = v20:AddDependencyBox()
		v21:SetupDependencies({ { options.MethodSettingsBlobs, "Kick" } })

		v21:AddDropdown("KickSettingBlob", {
			Values = { "Grab-Drop", "Grab-Release" },
			Default = 1,
			Multi = false,
			Text = "Kick Method",
			Callback = function(arg)
				if arg == "Grab-Drop" then
					tbl9.BKMethod = 1
				elseif arg == "Grab-Release" then
					tbl9.BKMethod = 2
				end
			end,
		})

		v21:AddToggle("ShurikenDeleteBlob", {
			Text = "Remove Anti-Kick [Sticky]",
			Default = true,
			Callback = function(deleteShurInBlobK)
				tbl8.DeleteShurInBlobK = deleteShurInBlobK
			end,
		})

		local v22 = v21:AddDependencyBox()
		v22:SetupDependencies({ { options.KickSettingBlob, "Grab-Drop" } })

		v22:AddToggle("NetOwninKick", {
			Default = false,
			Text = "Net Owner Spam",
			Callback = function(networkOwnerInKick)
				tbl8.NetworkOwnerInKick = networkOwnerInKick
			end,
		})

		v21:AddDivider()
		v21:AddSlider("BlobKickX", { Text = "X Offset", Default = 0, Min = -5, Max = 5, Compact = true, Rounding = 1 })
		v21:AddSlider("BlobKickY", { Text = "Y Offset", Default = 25, Min = 10, Max = 40, Compact = true, Rounding = 1 })
		v21:AddSlider("BlobKickZ", { Text = "Z Offset", Default = 0, Min = -5, Max = 5, Compact = true, Rounding = 1 })
	end

	do
		local Barrier = tbl15.Toys:AddRightGroupbox("Barrier", "circle-slash")
		local flag12 = false
		local flag13 = false

		Barrier:AddToggle("BreakBarrierT", {
			Text = "Disable House Barrier",
			Default = false,
			Tooltip = "Disables the destruction of non-house toys inside houses and vice-versa",
			Callback = function(arg)
				flag12 = arg and not flag11
				if not flag12 or flag13 then
					return
				end
				flag13 = true

				task.spawn(function()
					local FoodHamburger = nil
					local v20 = nil
					local v21 = nil
					local flag14 = false

					local function fn21()
						if v21 and v20 and v20.Parent and localPlayer.Character and v20:IsDescendantOf(localPlayer.Character) then
							tbl12.Teleport(v20, v21)
						end

						v21 = nil
						v20 = nil

						if flag14 then
							tbl7.States.Owning = false
							flag14 = false
						end

						if FoodHamburger then
							tbl7.ToyAuraReserved[FoodHamburger] = nil
							tbl12.DestroyToy(FoodHamburger)
							FoodHamburger = nil
						end
					end

					local ok, result = pcall(function()
						if tbl12.IsBarrierBroken() then
							if flag12 then
								fn18("Barrier is already broken!")

								if toggles.DeleteBarriers then
									toggles.DeleteBarriers:SetValue(true)
								end
							end

							return
						end

						while true do
							if flag12 and task.wait() then
								local v22, v23, v24 = tbl12.Char()

								if not (v23 and v24 and v24.Health > 0) or tbl7.States.Owning then
									continue
								else
									local function fn22()
										return flag12 and localPlayer.Character == v22 and v23.Parent and v24.Health > 0
									end

									FoodHamburger = tbl12.SpawnToy("FoodHamburger", nil, 4, true)

									if not FoodHamburger then
										continue
									else
										local holdPart = FoodHamburger:WaitForChild("HoldPart", 0.35)
										local holdItemRemoteFunction = holdPart and holdPart:WaitForChild("HoldItemRemoteFunction", 0.35)
										local rigidConstraint = holdItemRemoteFunction and holdPart:WaitForChild("RigidConstraint", 0.35)

										if not (fn22() and holdItemRemoteFunction and rigidConstraint) then
											fn21()
											continue
										else
											while fn22() and tbl7.States.Owning do
												task.wait()
											end

											if not fn22() then
												fn21()
												break
											else
												local cFrame2 = v23.CFrame
												v20 = v23
												v21 = cFrame2
												flag14 = true
												tbl7.States.Owning = true
												tbl12.Teleport(v23, workspace.Waypoints.BlueHouse)
												local now2 = os.clock()

												while true do
													task.wait()
													if not (not fn22() or localPlayer.InPlot.Value or os.clock() - now2 > 0.7) then
														continue
													end
													break
												end

												if not fn22() or not localPlayer.InPlot.Value then
													fn21()
													continue
												else
													local v25 = FoodHamburger

													task.spawn(function()
														if fn22() and v25.Parent and holdItemRemoteFunction.Parent then
															pcall(function()
																holdItemRemoteFunction:InvokeServer(v25, v22)
															end)
														end
													end)

													local now3 = os.clock()

													while true do
														task.wait()
														if not (not fn22() or not rigidConstraint.Parent or rigidConstraint.Attachment1 or os.clock() - now3 > 0.7) then
															continue
														end
														break
													end

													if not fn22() or not rigidConstraint.Parent or not rigidConstraint.Attachment1 then
														fn21()
														continue
													else
														tbl12.DestroyToy(FoodHamburger)
														tbl7.ToyAuraReserved[FoodHamburger] = nil
														FoodHamburger = nil
														task.wait(0.5)
														fn21()

														if not fn22() then
															break
														else
															task.wait(1)

															if flag12 and tbl12.IsBarrierBroken() then
																if flag12 then
																	fn18("Barrier has been broken!")

																	if toggles.DeleteBarriers then
																		toggles.DeleteBarriers:SetValue(true)
																	end
																end

																break
															else
																continue
															end
														end
													end
												end
											end
										end
									end
								end
							end

							break
						end
					end)

					fn21()
					flag13 = false

					if not ok then
						warn("[House Barrier] " .. tostring(result))
					end
				end)
			end,
		})

		Barrier:AddLabel("BarrierStatus", { Text = "Current barrier status: 🟢" })
	end

	do
		local Effects = tbl15.Toys:AddRightGroupbox("Effects", "flask-conical")
		tbl12.CreatePlayerDropdown(Effects, "Toy Effects", tbl7.SelectedPlayersEffect)
		Effects:AddDivider("Method")

		Effects:AddDropdown("MethodSettingsTEf", {
			Values = { "Oven", "Microwave", "Campfire", "Banana", "Delete Limbs", "Fling" },
			Multi = true,
			AllowNull = true,
			Text = "Effects",
			Callback = function(toyEffects)
				tbl7.ToyEffects = toyEffects

				if not toyEffects.Fling then
					tbl12.ClearFling()
				end
			end,
		})

		tbl12.CreateLoopToggle(Effects, "LoopApplyMethodEFSel", "LoopApplyMethodEF", false, false, tbl7.SelectedPlayersEffect, tbl12.ProcessToyEffects)
		tbl12.CreateLoopToggle(Effects, "LoopApplyMethodEFServ", "LoopApplyMethodEFServer", true, false, tbl7.SelectedPlayersEffect, tbl12.ProcessToyEffects)
		tbl12.CreateApplyButton(Effects, false, false, tbl7.SelectedPlayersEffect, tbl12.ProcessToyEffects)
		tbl12.CreateApplyButton(Effects, true, false, tbl7.SelectedPlayersEffect, tbl12.ProcessToyEffects)
		local v20 = Effects:AddDependencyBox()
		v20:SetupDependencies({ { options.MethodSettingsTEf, "Delete Limbs" } })
		v20:AddDivider("Delete Limb Settings")

		v20:AddDropdown("BLTEDropdown", {
			Values = { "Legs", "Arms", "All" },
			Default = 3,
			Multi = false,
			Searchable = true,
			Text = "Limbs to delete",
			Tooltip = "What limbs will you delete in the delete limbs toy effect",
			Callback = function(targetedLimbTE)
				tbl9.TargetedLimbTE = targetedLimbTE
			end,
		})

		local v21 = Effects:AddDependencyBox()
		v21:SetupDependencies({ { options.MethodSettingsTEf, "Fling" } })
		v21:AddDivider("Fling Settings")

		v21:AddDropdown("FlingMethod", {
			Values = { "PalletLightBrown", "YouDecoy" },
			Default = "PalletLightBrown",
			Multi = false,
			Text = "Fling Method",
			Callback = function(method)
				if tbl7.FlingState.Method ~= method then
					tbl12.ClearFling()
				end

				tbl7.FlingState.Method = method
			end,
		})
	end

	do
		local v20 = tbl15.Toys:AddLeftGroupbox("Toys Aura", "tornado")
		local toysAuraSettings = tbl7.ToysAuraSettings

		local function fn21(arg, arg2, arg3)
			v20:AddToggle(arg, {
				Text = arg2,
				Default = toysAuraSettings[arg3],
				Callback = function(arg4)
					toysAuraSettings[arg3] = arg4

					if arg3 == "Enabled" then
						tbl12.SetToysAuraConnection(arg4)
						tbl12.WakeRuntimeGate("ToyAuraEffects")
					end
				end,
			})
		end

		local function fn22(arg, arg2, arg3, min, max, rounding, arg4)
			local v21 = v20
			local addSlider = v21.AddSlider
			local tbl16 = { Text = arg2 }
			local v22

			if arg4 then
				v22 = toysAuraSettings[arg3][arg4]
			else
				v22 = toysAuraSettings[arg3]
			end

			tbl16.Default = v22
			tbl16.Min = min
			tbl16.Max = max
			tbl16.Compact = true
			tbl16.Rounding = rounding

			tbl16.Callback = function(arg5)
				if not arg4 then
					toysAuraSettings[arg3] = arg5
					return
				end
				local v23 = toysAuraSettings[arg3]
				local x

				if arg4 == "X" then
					x = arg5
				else
					x = v23.X
				end

				local y

				if arg4 == "Y" then
					y = arg5
				else
					y = v23.Y
				end

				if arg4 ~= "Z" then
					arg5 = v23.Z
				end

				local v24 = toysAuraSettings
				local v25 = arg3
				local cframe

				if arg3 == "Offset" then
					cframe = CFrame.new(x, y, arg5)
				else
					cframe = Vector3.new(x, y, arg5)
				end

				v24[v25] = cframe
			end

			addSlider(v21, arg, tbl16)
		end

		fn21("ToggleToysAura", "Enabled", "Enabled")

		v20:AddDropdown("ShapesDropdown", {
			Values = tbl13.ShapeNames,
			Default = table.find(tbl13.ShapeNames, toysAuraSettings.Shape) or 1,
			Multi = false,
			Searchable = true,
			Text = "Shape",
			Callback = function(shape)
				toysAuraSettings.Shape = shape
			end,
		})

		v20:AddDivider("Grabbing")

		v20:AddDropdown("GrabTypeDropdown", {
			Values = { "Aura", "Grab", "None" },
			Default = table.find({ "Aura", "Grab", "None" }, toysAuraSettings.OwnType) or 1,
			Multi = false,
			Searchable = true,
			Text = "Grab Type",
			Callback = function(ownType)
				toysAuraSettings.OwnType = ownType
				tbl12.WakeRuntimeGate("ToyAuraEffects")
			end,
		})

		local ToysAuraLimitEnabled = v20:AddToggle("ToysAuraLimitEnabled", {
			Text = "Limit Toys",
			Default = toysAuraSettings.LimitEnabled,
			Callback = function(limitEnabled)
				toysAuraSettings.LimitEnabled = limitEnabled
				tbl13.TrimModels()
			end,
		})

		local v21 = v20:AddDependencyBox()
		v21:SetupDependencies({ { ToysAuraLimitEnabled, true } })

		v21:AddSlider("ToysAuraLimit", {
			Text = "Toys Limit",
			Default = toysAuraSettings.Limit,
			Min = 1,
			Max = 100,
			Rounding = 0,
			Compact = true,
			Callback = function(limit)
				toysAuraSettings.Limit = limit
				tbl13.TrimModels()
			end,
		})

		v20:AddToggle("ToysAuraOwnInventory", {
			Text = "Only Your Inventory",
			Default = toysAuraSettings.OwnInventoryOnly,
			Callback = function(ownInventoryOnly)
				toysAuraSettings.OwnInventoryOnly = ownInventoryOnly

				if ownInventoryOnly then
					for i = #toysAuraSettings.Models, 1, -1 do
						local v22 = toysAuraSettings.Models[i]

						if v22 and not v22:IsDescendantOf(v17) then
							tbl13.RemoveModel(v22, true)
						end
					end
				end
			end,
		})

		v20:AddButton({
			Text = "Grab All Toys",
			Func = function()
				task.spawn(function()
					local v22 = pairs
					local tbl16

					if toysAuraSettings.OwnInventoryOnly then
						tbl16 = { v17 }
					else
						tbl16 = tbl7.Inventories
					end

					for _, v23 in v22(tbl16) do
						for _, child in pairs(v23:GetChildren()) do
							if child:IsA("Model") and child.Name ~= "ShurikenRSC" then
								tbl13.AddModel(child, true, 0.25)
							end
						end

						task.wait()
					end
				end)
			end,
		})

		v20:AddButton({
			Text = "Release Toys",
			Func = function()
				tbl13.ClearModels(true)
			end,
		})

		fn21("ToysAuraFaceCenter", "Face Center", "FaceCenter")
		v20:AddDivider("Shape Movement")
		fn21("AutoMoveTA", "Auto Move", "AutoMove")
		fn22("AutoMoveSp", "Move Speed", "MoveSpeed", 0.1, 25, 1)
		fn21("AutoRotateTA", "Auto Rotate", "AutoRotate")
		fn22("AutoRotateSp", "Rotate Speed", "RotationSpeed", 0.1, 20, 1)
		fn21("ToysAuraBob", "Bob", "Bob")
		fn22("ToysAuraBobHeight", "Bob Height", "BobHeight", 0, 50, 1)
		fn22("ToysAuraBobSpeed", "Bob Speed", "BobSpeed", 0.1, 12, 1)
		v20:AddDivider("Shape Size")
		fn22("ToysAuraRadius", "Radius", "Radius", 5, 200, 0)
		fn22("ToysAuraHeight", "Height", "Height", 0, 200, 0)
		fn22("ToysAuraSpread", "Spread", "Spacing", 0.25, 3, 2)
		fn22("ToysAuraRows", "Rows", "Rows", 1, 20, 0)
		fn22("ToysAuraRotations", "Turns", "Rotations", 0, 12, 1)
		v20:AddDivider("Position")

		v20:AddDropdown("PositionTypeDropdown", {
			Values = { "You", "Players", "Custom Pos" },
			Default = table.find({ "You", "Players", "Custom Pos" }, toysAuraSettings.PosType) or 1,
			Multi = false,
			Searchable = true,
			Text = "Position Type",
			Callback = function(posType)
				toysAuraSettings.PosType = posType
			end,
		})

		local v22 = v20:AddDependencyBox()
		v22:SetupDependencies({ { options.PositionTypeDropdown, "Players" } })

		tbl12.CreatePlayerDropdown(v22, "TAPDD", tbl7.SelectedToysAuraPlayers, false, false, function(selectedTAPlayer)
			tbl9.SelectedTAPlayer = selectedTAPlayer
		end)

		v20:AddButton({
			Text = "Set Custom Position",
			Func = function()
				local v23
				v23, v23 = tbl12.Char()

				if v23 then
					toysAuraSettings.CustomPos = CFrame.new(v23.Position)
				end
			end,
		})

		v20:AddDivider("Offset")
		fn22("ToysAuraXO", "X Offset", "Offset", -100, 100, 0, "X")
		fn22("ToysAuraYO", "Y Offset", "Offset", -100, 100, 0, "Y")
		fn22("ToysAuraZO", "Z Offset", "Offset", -100, 100, 0, "Z")
		v20:AddDivider("Rotation")
		fn22("ToysAuraXR", "X Rotation", "Rotation", -180, 180, 0, "X")
		fn22("ToysAuraYR", "Y Rotation", "Rotation", -180, 180, 0, "Y")
		fn22("ToysAuraZR", "Z Rotation", "Rotation", -180, 180, 0, "Z")
	end

	do
		local Explosions = tbl15.Toys:AddRightGroupbox("Explosions", "bomb")
		tbl12.CreatePlayerDropdown(Explosions, "Explosions", tbl7.SelectedPlayersExp)
		Explosions:AddDivider()

		Explosions:AddDropdown("ExplosionType", {
			Values = { "BombMissile", "BombDarkMatter", "BombBalloon", "BallSnowball", "FireworkMissile" },
			Default = nil,
			ExcludeLocalPlayer = true,
			Multi = false,
			AllowNull = true,
			Searchable = true,
			Text = "Explosion Type",
			Callback = function(explosionMethod)
				tbl9.ExplosionMethod = explosionMethod
			end,
		})

		Explosions:AddSlider("missilesToFire", {
			Text = "How much to fire at once?",
			Default = 1,
			Min = 1,
			Max = 17,
			Rounding = 0,
			Callback = function(missilesToFire)
				tbl9.MissilesToFire = missilesToFire
			end,
		})

		Explosions:AddLabel("Only go above 8 if you have \"Raised Toys Limit\" Gamepass!", true)
		Explosions:AddDivider()

		Explosions:AddToggle("AutoExpTarget", {
			Text = "Auto Explode Target",
			Default = false,
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AutoExplodeTarget", arg)
			end,
		})
	end

	do
		local anchorSettings = tbl7.AnchorSettings
		local v20 = tbl15.Toys:AddLeftGroupbox("Anchor System", "anchor")

		v20:AddLabel("Fill Color"):AddColorPicker("AnchorFill", {
			Default = anchorSettings.FillColor,
			Title = "Fill Color",
			Callback = function(fillColor)
				anchorSettings.FillColor = fillColor
				tbl12.UpdateAnchorColors()
			end,
		})

		v20:AddLabel("Outline Color"):AddColorPicker("AnchorOutline", {
			Default = anchorSettings.OutlineColor,
			Title = "Outline Color",
			Callback = function(outlineColor)
				anchorSettings.OutlineColor = outlineColor
				tbl12.UpdateAnchorColors()
			end,
		})

		v20:AddButton({
			Text = "Release All",
			Func = function()
				tbl12.ClearAnchors()
			end,
		}):AddKeyPicker("ReleaseAll", { Text = "Release All", Mode = "Press", NoUI = true })
	end

	do
		local v20 = tbl15.Toys:AddLeftGroupbox("Object Groups", "group")
		local flag12 = false

		local function fn21(arg, arg2)
			local v21 = tbl7.ObjectGroups[tbl9.ObjectGroup]
			if flag12 or flag11 or not v21 then
				return
			end
			v21[arg] = arg2
			tbl12.UpdateObjectGroup(v21)
		end

		local function fn22()
			local v21 = tbl7.ObjectGroups[tbl9.ObjectGroup]
			flag12 = true

			for k, v22 in pairs({ GroupNoclip = "Noclip", GroupHighlight = "Highlight" }) do
				if toggles[k] then
					toggles[k]:SetDisabled(not v21)
					local v23 = toggles[k]
					local setValue = v23.SetValue
					local flag13

					if v21 then
						flag13 = v21[v22]
					else
						flag13 = false
					end

					setValue(v23, flag13)
				end
			end

			if options.GroupFill then
				local groupFill = options.GroupFill
				local setValue = groupFill.SetValue
				local fillColor

				if v21 then
					fillColor = v21.FillColor
				else
					fillColor = tbl7.AnchorSettings.FillColor
				end

				setValue(groupFill, fillColor)
			end

			if options.GroupOutline then
				local groupOutline = options.GroupOutline
				local setValue = groupOutline.SetValue
				local outlineColor

				if v21 then
					outlineColor = v21.OutlineColor
				else
					outlineColor = tbl7.AnchorSettings.OutlineColor
				end

				setValue(groupOutline, outlineColor)
			end

			flag12 = false
		end

		v20:AddDropdown("ObjectGroup", {
			Text = "Group",
			Values = {},
			Multi = false,
			AllowNull = true,
			Callback = function(objectGroup)
				tbl9.ObjectGroup = objectGroup
				local v21 = tbl7.ObjectGroups[objectGroup]
				local objects = 0

				if v21 then
					for k in pairs(v21.Members) do
						objects += 1
					end
				end

				if tbl9.ObjectGroupLabel then
					tbl9.ObjectGroupLabel:SetText("Objects: " .. objects)
				end

				fn22()
			end,
		})

		tbl9.ObjectGroupLabel = v20:AddLabel("Objects: 0", true)
		v20:AddButton({ Text = "Create Group", Func = tbl12.CreateObjectGroup })

		v20:AddToggle("GroupNoclip", {
			Text = "Noclip Toys",
			Default = false,
			Callback = function(arg)
				fn21("Noclip", arg)
			end,
		})

		v20:AddToggle("GroupHighlight", {
			Text = "Highlight Group",
			Default = false,
			Callback = function(arg)
				fn21("Highlight", arg)
			end,
		}):AddColorPicker("GroupFill", {
			Title = "Fill Color",
			Default = tbl7.AnchorSettings.FillColor,
			Callback = function(arg)
				fn21("FillColor", arg)
			end,
		}):AddColorPicker("GroupOutline", {
			Title = "Outline Color",
			Default = tbl7.AnchorSettings.OutlineColor,
			Callback = function(arg)
				fn21("OutlineColor", arg)
			end,
		})

		fn22()
		v20:AddDivider()
		v20:AddButton({ Text = "Add Object", Func = tbl12.AddObjectToGroup }):AddKeyPicker("GroupAddObject", { Text = "Add Object to Group", Mode = "Press", NoUI = true })

		v20:AddButton({
			Text = "Remove Object",
			Func = function()
				local v21 = tbl12.GetObjectTarget()

				if v21 then
					tbl12.RemoveObjectFromGroup(v21)
				end
			end,
		}):AddKeyPicker("GroupRemoveObject", { Text = "Remove Object from Group", Mode = "Press", NoUI = true })

		v20:AddDivider()

		v20:AddButton({
			Text = "Anchor / Release Group",
			Func = function()
				local v21 = tbl7.ObjectGroups[tbl9.ObjectGroup]

				if v21 and v21.Leader then
					tbl12.SetAnchored(v21.Leader.Target, not v21.Anchored)
				end
			end,
		})

		v20:AddButton({
			Text = "Delete Group",
			Func = function()
				tbl12.DeleteObjectGroup(tbl9.ObjectGroup)
			end,
		})
	end

	do
		local Experimental = tbl15.Toys:AddRightGroupbox("Experimental", "flask-conical")
		Experimental:AddDivider("Anchored Parts")
		local n36 = 1
		local enabled = false
		local n37 = 0
		local obj = setmetatable({}, { __mode = "k" })
		local brokenPartHighlight = tbl7.BrokenPartHighlight

		Experimental:AddToggle("BreakPartAffectsYou", {
			Text = "Affects you",
			Default = false,
			Callback = function(enabled2)
				enabled = enabled2

				for k in obj, nil, nil do
					if k.Parent then
						k.Enabled = enabled2
					else
						obj[k] = nil
					end
				end
			end,
		})

		local HighlightBrokenParts = Experimental:AddToggle("HighlightBrokenParts", {
			Text = "Highlight Broken Parts",
			Default = false,
			Callback = tbl12.SetBrokenPartHighlights,
		})

		HighlightBrokenParts:AddColorPicker("BrokenPartFill", {
			Default = brokenPartHighlight.FillColor,
			Transparency = brokenPartHighlight.FillTransparency,
			Title = "Fill Color",
			Callback = function(fillColor)
				local brokenPartFill = options.BrokenPartFill
				brokenPartHighlight.FillColor = fillColor
				brokenPartHighlight.FillTransparency = brokenPartFill and brokenPartFill.Transparency or brokenPartHighlight.FillTransparency
				tbl12.SetBrokenPartHighlights(tbl8.HighlightBrokenParts)
			end,
		})

		HighlightBrokenParts:AddColorPicker("BrokenPartOutline", {
			Default = brokenPartHighlight.OutlineColor,
			Transparency = brokenPartHighlight.OutlineTransparency,
			Title = "Outline Color",
			Callback = function(outlineColor)
				local brokenPartOutline = options.BrokenPartOutline
				brokenPartHighlight.OutlineColor = outlineColor
				brokenPartHighlight.OutlineTransparency = brokenPartOutline and brokenPartOutline.Transparency or brokenPartHighlight.OutlineTransparency
				tbl12.SetBrokenPartHighlights(tbl8.HighlightBrokenParts)
			end,
		})

		local function fn21(arg)
			local v20 = arg or tbl12.GetTarget()
			if not v20 or not v20:IsA("BasePart") then
				return
			end
			local cframe

			if n36 == 1 then
				cframe = CFrame.new(1e15, 1e15, 1e15)
			else
				cframe = CFrame.new(0, -2.3e9, 0)
			end

			local NinjaShuriken = tbl12.SpawnToy("NinjaShuriken")
			local stickyPart = NinjaShuriken and NinjaShuriken:WaitForChild("StickyPart", 0.5)
			local stickyWeld = stickyPart and stickyPart:WaitForChild("StickyWeld", 0.5)
			if not stickyWeld then
				return tbl12.DestroyToy(NinjaShuriken)
			end

			if not tbl12.SNO(stickyPart) then
				return tbl12.DestroyToy(NinjaShuriken)
			end
			tbl12.TrackBrokenPart(v20, stickyWeld)
			n37 += 1
			local str5 = "BreakPartAffectsYou" .. n37

			tbl12.SetRuntimeConnection(str5, stickyWeld:GetPropertyChangedSignal("Enabled"), true, function()
				if stickyWeld.Enabled ~= enabled then
					stickyWeld.Enabled = enabled
				end
			end)

			tbl12.SetRuntimeConnection(str5 .. "Cleanup", stickyWeld.Destroying, true, function()
				obj[stickyWeld] = nil
				tbl12.UntrackBrokenPart(v20, stickyWeld)
				tbl12.SetRuntimeConnection(str5, nil, false)
				tbl12.SetRuntimeConnection(str5 .. "Cleanup", nil, false)
			end)

			local v21 = enabled
			obj[stickyWeld] = true
			stickyWeld.Enabled = v21
			tbl11.StickyPartEvent:FireServer(stickyPart, v20, cframe)
		end

		Experimental:AddLabel("Decollide Part"):AddKeyPicker("DecollidePart", {
			Text = "Decollide Part",
			Mode = "Press",
			NoUI = true,
			Callback = function()
				fn21()
			end,
		})

		local v20 = nil

		Experimental:AddButton({
			Text = "Create Button",
			Func = function()
				v20 = lib:AddDraggableButton("Break Part", function()
					fn21()
				end)
			end,
		}):AddButton({
			Text = "Remove Button",
			Func = function()
				if v20 and v20.Button then
					v20:Destroy()
				end
			end,
		})

		Experimental:AddButton({
			Text = "Break Spawn",
			Func = function()
				local v21 = nil

				for _, v22 in map.BaseGround:GetChildren() do
					if v22:IsA("BasePart") then
						if (v22.Position - Vector3.new(107.5, -101.35, 43.375)).Magnitude <= 0.1 then
							v21 = v22
							break
						else
							v21 = nil
						end
					else
						v21 = nil
					end
				end

				if v21 then
					fn21(v21)
				end
			end,
		})

		Experimental:AddDropdown("BreakMethod", {
			Values = { "Non-collidable part", "Kickable part" },
			Default = 1,
			Multi = false,
			Searchable = true,
			Text = "Break Method",
			Callback = function(arg)
				local n38

				if arg == "Non-collidable part" then
					n38 = 1
				else
					n38 = 2
				end

				n36 = n38
			end,
		})

		Experimental:AddLabel("Fix part: delete the shuriken that was spawned from your inventory!", true)
		Experimental:AddDivider("Flying Parts")

		Experimental:AddDropdown("WhichToBreak", {
			Values = {
				"InnerUFO",
				"OuterUFO",
				"CaveCart",
				"Train",
				"Flying Rock 1",
				"Flying Rock 2",
				"Flying Rock 3",
				"Flying Rock 4",
			},
			Default = nil,
			Multi = false,
			AllowNull = true,
			Searchable = true,
			Text = "Which to Break",
		})

		Experimental:AddButton({
			Text = "Break",
			Func = function()
				local value = options.WhichToBreak.Value
				local v21 = tbl7.BreakParts[value]

				if v21 then
					local v22 = v21()

					if v22 then
						for _, child in pairs(v22:GetChildren()) do
							if child:IsA("BasePart") then
								tbl12.BlackHole(child.AssemblyRootPart)
								break
							end
						end

						if v22.Parent:FindFirstChild("FollowThisPart") then
							v22.Parent:FindFirstChild("FollowThisPart").AlignPosition.Enabled = false
							v22.Parent:FindFirstChild("FollowThisPart").AlignOrientation.Enabled = false
						end
					else
						warn("Part not found for:", value)
					end
				else
					warn("Invalid selection:", value)
				end
			end,
		})

		Experimental:AddDivider("Misc")
		Experimental:AddButton({ Text = "Destroy Train", Func = tbl12.DestroyTrain })

		Experimental:AddButton({
			Text = "Make Tsunami",
			Func = function()
				local cframe = CFrame.new
				tbl12.BlackHole(workspace.Map.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel:GetChildren()[22], cframe(4294967296, 2147483648, 2147483648))
			end,
		})
	end

	do
		local Misc = tbl15.Toys:AddLeftGroupbox("Misc", "funnel")

		Misc:AddDropdown("CoconutFormsDropdown", {
			Values = tbl7.CoconutForms.Names,
			Multi = true,
			AllowNull = true,
			Text = "Forms",
			Callback = function(selected)
				local coconutForms = tbl7.CoconutForms

				for i = #coconutForms.Order, 1, -1 do
					if not selected[coconutForms.Order[i]] then
						table.remove(coconutForms.Order, i)
					end
				end

				for _, v20 in coconutForms.Names, nil, nil do
					if selected[v20] and not table.find(coconutForms.Order, v20) then
						coconutForms.Order[#coconutForms.Order + 1] = v20
					end
				end

				coconutForms.Selected = selected
				tbl12.RefreshCoconutForms()
			end,
		})

		Misc:AddToggle("CoconutFormsToggle", { Text = "Coconut Forms", Callback = tbl12.SetCoconutForms })

		Misc:AddSlider("CoconutFormsTransparency", {
			Text = "Transparency",
			Default = tbl7.CoconutForms.Transparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = tbl12.SetCoconutTransparency,
		})

		local v20 = Misc:AddDependencyBox()
		v20:SetupDependencies({ { options.CoconutFormsDropdown, "Penis" } })

		v20:AddSlider("CoconutShaftLength", {
			Text = "Penis Shaft Length",
			Default = tbl7.CoconutForms.ShaftLength,
			Min = 2,
			Max = 11,
			Rounding = 0,
			Compact = true,
			Callback = tbl12.SetCoconutShaftLength,
		})

		v20:AddSlider("CoconutShaftSpacing", {
			Text = "Penis Shaft Spacing",
			Default = tbl7.CoconutForms.ShaftSpacing,
			Min = 0.9,
			Max = 3,
			Rounding = 2,
			Compact = true,
			Callback = function(shaftSpacing)
				tbl7.CoconutForms.ShaftSpacing = shaftSpacing
				tbl12.RefreshCoconutForms()
			end,
		})

		local v21 = Misc:AddDependencyBox()
		v21:SetupDependencies({ { options.CoconutFormsDropdown, "Wings" } })

		v21:AddSlider("CoconutWingsSpacing", {
			Text = "Wings Spacing",
			Default = tbl7.CoconutForms.WingSpacing,
			Min = 0.9,
			Max = 3,
			Rounding = 2,
			Compact = true,
			Callback = function(wingSpacing)
				tbl7.CoconutForms.WingSpacing = wingSpacing
			end,
		})

		local v22 = Misc:AddDependencyBox()
		v22:SetupDependencies({ { options.CoconutFormsDropdown, "Cape" } })

		v22:AddDropdown("CoconutCapeMode", {
			Text = "Cape Layout",
			Values = { "2x3", "4x3" },
			Default = tbl7.CoconutForms.CapeMode,
			Multi = false,
			Callback = function(capeMode)
				tbl7.CoconutForms.CapeMode = capeMode
				tbl12.RefreshCoconutForms()
			end,
		})

		local v23 = Misc:AddDependencyBox()
		v23:SetupDependencies({ { options.CoconutFormsDropdown, "67" } })

		v23:AddSlider("Coconut67Spacing", {
			Text = "67 Spacing",
			Default = tbl7.CoconutForms.Spacing67,
			Min = 0,
			Max = 3,
			Rounding = 2,
			Compact = true,
			Callback = function(spacing67)
				tbl7.CoconutForms.Spacing67 = spacing67
				tbl12.RefreshCoconutForms()
			end,
		})

		v23:AddDropdown("Coconut67Display", {
			Values = { "Show to Front", "Show to Back" },
			Default = tbl7.CoconutForms.Display67,
			Multi = false,
			Text = "67 Direction",
			Callback = function(display67)
				tbl7.CoconutForms.Display67 = display67
				tbl12.RefreshCoconutForms()
			end,
		})

		Misc:AddLabel("CoconutFormsLimit", { Text = "0/13 coconuts used", DoesWrap = true })
		Misc:AddDivider()

		Misc:AddToggle("DestroyAllHoldables", {
			Text = "Break all Holdables",
			Callback = function(breakAllHoldables)
				tbl8.BreakAllHoldables = breakAllHoldables

				while tbl8.BreakAllHoldables do
					if tbl12.Char() then
						for _, v24 in tbl7.Inventories, nil, nil do
							for _, v25 in v24:GetChildren() do
								if v25:IsA("Model") and v25:FindFirstChild("HoldPart") then
									tbl12.BreakHoldable(v25)
								end
							end

							task.wait()
						end
					end

					task.wait()
				end
			end,
		})

		Misc:AddButton({
			Text = "Destroy All Toys",
			Func = function()
				if tbl7.States.DestroyingToys then
					return
				end
				tbl7.States.DestroyingToys = true
				local tbl16 = {}

				for _, inventory in pairs(tbl7.Inventories) do
					for _, child in pairs(inventory:GetChildren()) do
						if child:IsA("Model") then
							tbl16[#tbl16 + 1] = child
						end
					end
				end

				local v24 = lib:Notify({
					Title = "Resonance",
					Description = "Destroyed 0/" .. #tbl16 .. " toys",
					Persist = true,
					SoundId = n34,
					BigIcon = "rbxassetid://79685990879972",
					Volume = n35,
					IconColor = Color3.new(1, 1, 1),
				})

				for i, v25 in ipairs(tbl16) do
					tbl12.DestroyObject(v25)
					v24:ChangeDescription("Destroyed " .. i .. "/" .. #tbl16 .. " toys")
				end

				while tbl9.DestroyThread and not flag11 do
					RunService.Heartbeat:Wait()
				end

				tbl7.States.DestroyingToys = false

				task.delay(0.25, function()
					v24:Destroy()
				end)
			end,
		})
	end

	do
		local espConfig = tbl7.ESPConfig

		local function fn21(arg, arg2, arg3)
			espConfig[arg][arg2] = arg3
			tbl12.UpdateESP(arg)
		end

		local esp = tbl15.Visual:AddLeftTabbox("ESP")
		local Toggles = esp:AddTab("Toggles", "toggle-right")

		Toggles:AddToggle("PlrESPT", {
			Text = "Player ESP",
			Default = false,
			Callback = function(playerESP)
				tbl8.PlayerESP = playerESP
				tbl12.UpdateESP("Player")

				if playerESP then
					tbl12.RefreshESP("Player")
				end
			end,
		})

		toggles.PlrESPT:AddColorPicker("HighlightFill", {
			Default = espConfig.Player.FillColor,
			Title = "Fill Color",
			Callback = function(arg)
				fn21("Player", "FillColor", arg)
			end,
		})

		toggles.PlrESPT:AddColorPicker("HighlightOutline", {
			Default = espConfig.Player.OutlineColor,
			Title = "Outline Color",
			Callback = function(arg)
				fn21("Player", "OutlineColor", arg)
			end,
		})

		toggles.PlrESPT:AddColorPicker("NameEspFill", {
			Default = espConfig.Player.NameColor,
			Title = "Name Color",
			Callback = function(arg)
				fn21("Player", "NameColor", arg)
			end,
		})

		toggles.PlrESPT:AddColorPicker("NameOutline", {
			Default = espConfig.Player.NameOutlineColor,
			Title = "Name Outline",
			Callback = function(arg)
				fn21("Player", "NameOutlineColor", arg)
			end,
		})

		Toggles:AddToggle("PCLDESPT", {
			Text = "Server ESP [PCLD]",
			Default = false,
			Callback = function(arg)
				tbl12.SetRuntimeToggle("PCLDESP", arg)
				tbl12.WakeRuntimeGate("PCLDTracking")
				tbl12.SetSmoothPCLDConnection()
				tbl12.UpdateESP("Server")

				if arg then
					tbl12.RefreshESP("Server")
					task.defer(tbl12.SnapPCLDESP)
				end
			end,
		})

		toggles.PCLDESPT:AddColorPicker("PCLDFill", {
			Default = espConfig.Server.FillColor,
			Title = "Fill Color",
			Callback = function(arg)
				fn21("Server", "FillColor", arg)
			end,
		})

		toggles.PCLDESPT:AddColorPicker("PCLDOutline", {
			Default = espConfig.Server.OutlineColor,
			Title = "Outline Color",
			Callback = function(arg)
				fn21("Server", "OutlineColor", arg)
			end,
		})

		toggles.PCLDESPT:AddColorPicker("PCLDNameEspFill", {
			Default = espConfig.Server.NameColor,
			Title = "Name Color",
			Callback = function(arg)
				fn21("Server", "NameColor", arg)
			end,
		})

		toggles.PCLDESPT:AddColorPicker("PCLDNameOutline", {
			Default = espConfig.Server.NameOutlineColor,
			Title = "Name Outline",
			Callback = function(arg)
				fn21("Server", "NameOutlineColor", arg)
			end,
		})

		Toggles:AddToggle("StickyESPT", {
			Text = "Sticky ESP",
			Default = false,
			Callback = function(stickyESP)
				tbl8.StickyESP = stickyESP
				tbl12.UpdateESP("Sticky")

				if stickyESP then
					tbl12.RefreshESP("Sticky")
				end
			end,
		})

		toggles.StickyESPT:AddColorPicker("StickyFill", {
			Default = espConfig.Sticky.FillColor,
			Title = "Fill Color",
			Callback = function(arg)
				fn21("Sticky", "FillColor", arg)
			end,
		})

		toggles.StickyESPT:AddColorPicker("StickyOutline", {
			Default = espConfig.Sticky.OutlineColor,
			Title = "Outline Color",
			Callback = function(arg)
				fn21("Sticky", "OutlineColor", arg)
			end,
		})

		Toggles:AddToggle("BlackholeESPT", {
			Text = "Blackhole ESP",
			Default = false,
			Callback = function(blackholeESP)
				tbl8.BlackholeESP = blackholeESP
				tbl12.UpdateESP("Blackhole")
			end,
		})

		toggles.BlackholeESPT:AddColorPicker("BlackholeFill", {
			Default = espConfig.Blackhole.FillColor,
			Title = "Fill Color",
			Callback = function(arg)
				fn21("Blackhole", "FillColor", arg)
			end,
		})

		toggles.BlackholeESPT:AddColorPicker("BlackholeOutline", {
			Default = espConfig.Blackhole.OutlineColor,
			Title = "Outline Color",
			Callback = function(arg)
				fn21("Blackhole", "OutlineColor", arg)
			end,
		})

		toggles.BlackholeESPT:AddColorPicker("BlackholeNameFill", {
			Default = espConfig.Blackhole.NameColor,
			Title = "Name Color",
			Callback = function(arg)
				fn21("Blackhole", "NameColor", arg)
			end,
		})

		toggles.BlackholeESPT:AddColorPicker("BlackholeNameOutline", {
			Default = espConfig.Blackhole.NameOutlineColor,
			Title = "Name Outline",
			Callback = function(arg)
				fn21("Blackhole", "NameOutlineColor", arg)
			end,
		})

		local Config = esp:AddTab("Config", "settings")

		Config:AddDropdown("EspConfDD", {
			Values = { "Player ESP", "Server ESP", "Sticky ESP", "Blackhole ESP" },
			Default = 1,
			Multi = false,
			Text = "Select which to configure",
		})

		Config:AddDivider()
		local v20 = Config:AddDependencyBox()
		v20:SetupDependencies({ { options.EspConfDD, "Player ESP" } })
		v20:AddDivider("Highlight")

		v20:AddToggle("PlayerHighlightEnabled", {
			Text = "Enabled",
			Default = espConfig.Player.HighlightEnabled,
			Callback = function(arg)
				fn21("Player", "HighlightEnabled", arg)
			end,
		})

		v20:AddSlider("PlayerFillTrans", {
			Text = "Fill Transparency",
			Default = espConfig.Player.FillTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Player", "FillTransparency", arg)
			end,
		})

		v20:AddSlider("PlayerOutlTrans", {
			Text = "Outline Transparency",
			Default = espConfig.Player.OutlineTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Player", "OutlineTransparency", arg)
			end,
		})

		tbl12.AddRainbowToggle(v20, "PlayerFillRainbow", "Rainbow Fill", "HighlightFill")
		tbl12.AddRainbowToggle(v20, "PlayerOutlineRainbow", "Rainbow Outline", "HighlightOutline")
		local v21 = Config:AddDependencyBox()
		v21:SetupDependencies({ { options.EspConfDD, "Player ESP" } })
		v21:AddDivider("Name")

		v21:AddToggle("NameESPEnabled", {
			Text = "Enabled",
			Default = true,
			Callback = function(arg)
				fn21("Player", "NameEnabled", arg)
			end,
		})

		v21:AddDropdown("FFNameESP", {
			Values = tbl7.ESPFonts,
			Default = 2,
			Multi = false,
			Text = "Font Face",
			Callback = function(arg)
				local value = toggles.BoldToggleFF and toggles.BoldToggleFF.Value
				local v22 = fn21
				local str5

				if value then
					str5 = "|Bold"
				else
					str5 = ""
				end

				v22("Player", "NameFont", arg .. str5)
			end,
		})

		v21:AddToggle("BoldToggleFF", {
			Text = "Bold?",
			Default = true,
			Callback = function(arg)
				local value

				if options.FFNameESP then
					value = options.FFNameESP.Value
				else
					value = "Arial"
				end

				local v22 = fn21
				local str5

				if arg then
					str5 = "|Bold"
				else
					str5 = ""
				end

				v22("Player", "NameFont", value .. str5)
			end,
		})

		v21:AddToggle("NameShowIconToggle", {
			Text = "Show Icon",
			Default = espConfig.Player.NameShowIcon,
			Callback = function(arg)
				fn21("Player", "NameShowIcon", arg)
			end,
		})

		tbl12.AddRainbowToggle(v21, "NameFillRainbow", "Rainbow Name", "NameEspFill")
		tbl12.AddRainbowToggle(v21, "NameOutlineRainbow", "Rainbow Outline", "NameOutline")

		v21:AddSlider("NameOutlTrans", {
			Text = "Outline Transparency",
			Default = espConfig.Player.NameOutlineTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Player", "NameOutlineTransparency", arg)
			end,
		})

		v21:AddSlider("NameESize", {
			Text = "Size",
			Default = espConfig.Player.NameSize,
			Min = 3,
			Max = 30,
			Rounding = 0,
			Compact = true,
			Callback = function(arg)
				fn21("Player", "NameSize", arg)
			end,
		})

		v21:AddSlider("NameYOffsetSlider", {
			Text = "Vertical Offset",
			Default = espConfig.Player.NameYOffset,
			Min = 0,
			Max = 5,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Player", "NameYOffset", arg)
			end,
		})

		local v22 = Config:AddDependencyBox()
		v22:SetupDependencies({ { options.EspConfDD, "Server ESP" } })

		v22:AddToggle("SmoothPCLD", {
			Text = "Smooth Movement",
			Default = true,
			Callback = function(smoothPCLD)
				tbl8.SmoothPCLD = smoothPCLD
				tbl12.SetSmoothPCLDConnection()

				if not smoothPCLD then
					tbl12.SnapPCLDESP()
				end
			end,
		})

		v22:AddDivider("Highlight")

		v22:AddSlider("PCLDFillTrans", {
			Text = "Fill Transparency",
			Default = espConfig.Server.FillTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Server", "FillTransparency", arg)
			end,
		})

		v22:AddSlider("PCLDOutlTrans", {
			Text = "Outline Transparency",
			Default = espConfig.Server.OutlineTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Server", "OutlineTransparency", arg)
			end,
		})

		v22:AddSlider("PCLDOutlThick", {
			Text = "Outline Thickness",
			Default = espConfig.Server.OutlineThickness,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Server", "OutlineThickness", arg)
			end,
		})

		tbl12.AddRainbowToggle(v22, "PCLDFillRainbow", "Rainbow Fill", "PCLDFill")
		tbl12.AddRainbowToggle(v22, "PCLDOutlineRainbow", "Rainbow Outline", "PCLDOutline")
		v22:AddDivider("Owner Name")

		v22:AddToggle("PCLDNameEnabled", {
			Text = "Enabled",
			Default = espConfig.Server.NameEnabled,
			Callback = function(arg)
				fn21("Server", "NameEnabled", arg)
			end,
		})

		v22:AddDropdown("FFPCLDNameESP", {
			Values = tbl7.ESPFonts,
			Default = 2,
			Multi = false,
			Text = "Font Face",
			Callback = function(arg)
				local value = toggles.BoldTogglePCLDFF and toggles.BoldTogglePCLDFF.Value
				local v23 = fn21
				local str5

				if value then
					str5 = "|Bold"
				else
					str5 = ""
				end

				v23("Server", "NameFont", arg .. str5)
			end,
		})

		v22:AddToggle("BoldTogglePCLDFF", {
			Text = "Bold?",
			Default = false,
			Callback = function(arg)
				local value

				if options.FFPCLDNameESP then
					value = options.FFPCLDNameESP.Value
				else
					value = "Arial"
				end

				local v23 = fn21
				local str5

				if arg then
					str5 = "|Bold"
				else
					str5 = ""
				end

				v23("Server", "NameFont", value .. str5)
			end,
		})

		tbl12.AddRainbowToggle(v22, "PCLDNameFillRainbow", "Rainbow Name", "PCLDNameEspFill")
		tbl12.AddRainbowToggle(v22, "PCLDNameOutlineRainbow", "Rainbow Outline", "PCLDNameOutline")

		v22:AddSlider("PCLDNameOutlTrans", {
			Text = "Name Outline Transparency",
			Default = espConfig.Server.NameOutlineTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Server", "NameOutlineTransparency", arg)
			end,
		})

		v22:AddSlider("PCLDOwnerDistance", {
			Text = "Show When Away",
			Default = espConfig.Server.NameDistance,
			Min = 5,
			Max = 100,
			Rounding = 0,
			Compact = true,
			Callback = function(arg)
				fn21("Server", "NameDistance", arg)
			end,
		})

		v22:AddSlider("PCLDNameSize", {
			Text = "Name Size",
			Default = espConfig.Server.NameSize,
			Min = 6,
			Max = 30,
			Rounding = 0,
			Compact = true,
			Callback = function(arg)
				fn21("Server", "NameSize", arg)
			end,
		})

		v22:AddSlider("PCLDNameYOffset", {
			Text = "Name Offset",
			Default = espConfig.Server.NameYOffset,
			Min = 0,
			Max = 8,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Server", "NameYOffset", arg)
			end,
		})

		local v23 = Config:AddDependencyBox()
		v23:SetupDependencies({ { options.EspConfDD, "Sticky ESP" } })

		v23:AddSlider("StickyFillTrans", {
			Text = "Fill Transparency",
			Default = espConfig.Sticky.FillTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Sticky", "FillTransparency", arg)
			end,
		})

		v23:AddSlider("StickyOutlTrans", {
			Text = "Outline Transparency",
			Default = espConfig.Sticky.OutlineTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Sticky", "OutlineTransparency", arg)
			end,
		})

		v23:AddSlider("StickyOutlThick", {
			Text = "Outline Thickness",
			Default = espConfig.Sticky.OutlineThickness,
			Min = 1,
			Max = 10,
			Rounding = 0,
			Compact = true,
			Callback = function(arg)
				fn21("Sticky", "OutlineThickness", arg)
			end,
		})

		tbl12.AddRainbowToggle(v23, "StickyFillRainbow", "Rainbow Fill", "StickyFill")
		tbl12.AddRainbowToggle(v23, "StickyOutlineRainbow", "Rainbow Outline", "StickyOutline")
		local v24 = Config:AddDependencyBox()
		v24:SetupDependencies({ { options.EspConfDD, "Blackhole ESP" } })
		v24:AddDivider("Highlight")

		v24:AddSlider("BlackholeFillTrans", {
			Text = "Fill Transparency",
			Default = espConfig.Blackhole.FillTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Blackhole", "FillTransparency", arg)
			end,
		})

		v24:AddSlider("BlackholeOutlTrans", {
			Text = "Outline Transparency",
			Default = espConfig.Blackhole.OutlineTransparency,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(arg)
				fn21("Blackhole", "OutlineTransparency", arg)
			end,
		})

		tbl12.AddRainbowToggle(v24, "BlackholeFillRainbow", "Rainbow Fill", "BlackholeFill")
		tbl12.AddRainbowToggle(v24, "BlackholeOutlineRainbow", "Rainbow Outline", "BlackholeOutline")
		v24:AddDivider("Text")

		v24:AddDropdown("FFBHESP", {
			Values = tbl7.ESPFonts,
			Default = 2,
			Multi = false,
			Text = "Font Face",
			Callback = function(arg)
				local value = toggles.BoldToggleFF2 and toggles.BoldToggleFF2.Value
				local v25 = fn21
				local str5

				if value then
					str5 = "|Bold"
				else
					str5 = ""
				end

				v25("Blackhole", "NameFont", arg .. str5)
			end,
		})

		v24:AddToggle("BoldToggleFF2", {
			Text = "Bold?",
			Default = false,
			Callback = function(arg)
				local value

				if options.FFBHESP then
					value = options.FFBHESP.Value
				else
					value = "Arial"
				end

				local v25 = fn21
				local str5

				if arg then
					str5 = "|Bold"
				else
					str5 = ""
				end

				v25("Blackhole", "NameFont", value .. str5)
			end,
		})
	end

	do
		local Camera = tbl15.Visual:AddRightGroupbox("Camera", "camera")

		Camera:AddToggle("DisableBlurT", {
			Text = "Disable Ragdoll Blur",
			Default = false,
			Callback = function(arg)
				local blur = currentCamera.Blur

				if blur then
					blur.Enabled = not arg
				end
			end,
		})

		Camera:AddDivider()

		Camera:AddToggle("ThirdpersonT", {
			Text = "Third Person",
			Default = false,
			Callback = function(arg)
				if arg then
					localPlayer.CameraMode = "Classic"
					localPlayer.CameraMaxZoomDistance = "inf"
					localPlayer.CameraMinZoomDistance = 20
					localPlayer.CameraMinZoomDistance = 0.5
				else
					localPlayer.CameraMode = "LockFirstPerson"
				end
			end,
		}):AddKeyPicker("ThirdPersonK", {
			Text = "Third Person",
			Default = "Three",
			Mode = "Toggle",
			NoUI = false,
			SyncToggleState = true,
		})

		Camera:AddToggle("CameraNoclip", { Text = "Camera Noclip", Default = false, Callback = tbl12.SetCameraNoclip })

		Camera:AddSlider("FOVsl", {
			Text = "FOV",
			Default = 70,
			Min = 30,
			Max = 120,
			Callback = function(arg)
				tbl12.SetFOV(arg, false)
			end,
		})

		Camera:AddDivider()

		local function fn21(localTransparencyModifier)
			if not localTransparencyModifier then
				return
			end
			local v20 = tbl12.Char()
			if not (v20 and v20:FindFirstChild("Head")) then
				return
			end

			if (currentCamera.CFrame.Position - currentCamera.Focus.Position).Magnitude > 1.5 then
				localTransparencyModifier = 0
			end

			for _, child in ipairs(v20:GetChildren()) do
				if child:IsA("BasePart") and child.Name ~= "Head" and child.Name ~= "HumanoidRootPart" and child.Name ~= "Torso" then
					child.LocalTransparencyModifier = localTransparencyModifier
				end
			end
		end

		local function fn22()
			fn21(options.RFPTransparency.Value)
		end

		Camera:AddToggle("RealisticFirstPersonT", {
			Text = "Realistic First Person",
			Default = false,
			Callback = function(arg)
				tbl12.SetRuntimeConnection("RealisticFirstPerson", RunService.RenderStepped, arg, fn22)

				if arg then
					fn22()
				else
					fn21(1)
				end
			end,
		})

		Camera:AddSlider("RFPTransparency", {
			Text = "Limb Transparency",
			Default = 0.3,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Callback = function()
				if toggles.RealisticFirstPersonT.Value then
					fn22()
				end
			end,
		})
	end

	do
		local Graphics = tbl15.Visual:AddRightGroupbox("Graphics", "file-image")
		local n36 = 0
		local n37 = 0.004
		local n38 = 128

		local function fn21(arg)
			if os.clock() - arg < n37 then
				return arg
			end
			RunService.Heartbeat:Wait()
			return os.clock()
		end

		local function fn22(arg)
			local now2 = os.clock()

			for i = #tbl7.WaterParts, 1, -1 do
				if arg ~= n36 then
					return false
				end
				local v20 = tbl7.WaterParts[i]
				local v21 = v20[1]
				local transparency = v20[2]

				if v21 and v21.Parent then
					local value = toggles.WaterWalk and toggles.WaterWalk.Value

					if value and transparency ~= 1 then
						transparency = 0.5
					end

					v21.Transparency = transparency

					if not value and tbl7.WaterPartStates[v21] then
						v21.CanCollide = tbl7.WaterPartStates[v21][1]
						tbl7.WaterPartStates[v21] = nil
					end
				end

				tbl7.WaterParts[i] = nil
				now2 = fn21(now2)
			end

			for i = #tbl7.WaterRegions, 1, -1 do
				if arg ~= n36 then
					return false
				end
				terrain:FillRegion(tbl7.WaterRegions[i], 4, Enum.Material.Air)
				tbl7.WaterRegions[i] = nil
				now2 = fn21(now2)
			end

			table.clear(tbl7.WaterRegions)
			table.clear(tbl7.WaterParts)
			return true
		end

		local function fn23(arg, arg2, arg3, arg4)
			local v20 = Region3.new(arg, arg2):ExpandToGrid(4)
			local n39 = v20.CFrame.Position - v20.Size / 2
			local n40 = v20.CFrame.Position + v20.Size / 2
			local x = n39.X

			while x < n40.X do
				local n41 = math.min(x + n38, n40.X)
				local y = n39.Y
				local exitTo = nil

				while true do
					if not (y < n40.Y) then
						exitTo = 1
						break
					else
						local n42 = math.min(y + n38, n40.Y)
						local z = n39.Z
						local exitTo2 = nil

						while true do
							if not (z < n40.Z) then
								exitTo2 = 1
								break
							else
								if arg3 == n36 then
									local n43 = math.min(z + n38, n40.Z)
									local v21 = Region3.new(Vector3.new(x, y, z), Vector3.new(n41, n42, n43))
									tbl7.WaterRegions[#tbl7.WaterRegions + 1] = v21
									terrain:FillRegion(v21, 4, Enum.Material.Water)
									arg4 = fn21(arg4)
									z = n43
									continue
								end

								break
							end
						end

						if exitTo2 == 1 then
							y = n42
							continue
						end
						break
					end
				end

				if exitTo == 1 then
					x = n41
					continue
				end
				return arg4, false
			end

			return arg4, true
		end

		local function fn24(arg)
			n36 += 1
			local v20 = n36

			task.spawn(function()
				if not fn22(v20) or not arg then
					return
				end
				local objectModel = workspace.Map.AlwaysHereTweenedObjects.Ocean.Object.ObjectModel
				local vector = Vector3.new(0, tbl9.WaterYOffset, 0)
				local tbl16 = {}

				for _, v21 in ipairs(objectModel:QueryDescendants("BasePart")) do
					local tbl17 = tbl7.WaterPartStates[v21]

					if not tbl17 then
						if v21.Transparency == 1 then
							continue
						end
						tbl17 = { v21.CanCollide, v21.Transparency }
						tbl7.WaterPartStates[v21] = tbl17
					end

					if tbl17[2] ~= 1 then
						tbl16[#tbl16 + 1] = { v21, tbl17[2], v21.Position - v21.Size / 2 + vector, v21.Position + v21.Size / 2 + vector }
					end
				end

				for _, v21 in ipairs(tbl16) do
					local v22 = v21[1]

					if v22.Parent then
						tbl7.WaterParts[#tbl7.WaterParts + 1] = { v22, v21[2] }
						v22.Transparency = 1
					end
				end

				local now2 = os.clock()

				for _, v21 in ipairs(tbl16) do
					if v20 ~= n36 then
						return
					end
					local v22, v23 = fn23(v21[3], v21[4], v20, now2)
					if not v23 then
						return
					end
					now2 = v22
				end
			end)
		end

		local tbl16 = {}

		local function fn25(arg, humanoid)
			if tbl16.Humanoid ~= humanoid or not arg then
				if tbl16.Connection then
					tbl16.Connection:Disconnect()
				end

				if tbl16.Humanoid and tbl16.Humanoid.Parent and tbl16.Enabled ~= nil then
					tbl16.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, tbl16.Enabled)
				end

				table.clear(tbl16)
			end

			if not arg or not humanoid then
				return
			end

			if not tbl16.Humanoid then
				tbl16.Humanoid = humanoid
				tbl16.Enabled = humanoid:GetStateEnabled(Enum.HumanoidStateType.Swimming)

				tbl16.Connection = humanoid.StateChanged:Connect(function(old, new)
					if new == Enum.HumanoidStateType.Swimming and tbl8.NonSwimmableWater and toggles.CustomWaterT.Value then
						humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
					end
				end)
			end

			humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming, false)
			local swimming = Enum.HumanoidStateType.Swimming

			if humanoid:GetState() == swimming then
				humanoid:ChangeState(Enum.HumanoidStateType.Freefall)
			end
		end

		tbl12.RestoreWaterSettings = function()
			fn24(false)
			fn25(false)

			for k, waterPartState in pairs(tbl7.WaterPartStates) do
				if k.Parent then
					local v20 = waterPartState[2]
					k.CanCollide = waterPartState[1]
					k.Transparency = v20
				end
			end

			table.clear(tbl7.WaterPartStates)

			for k, waterSetting in pairs(tbl7.WaterSettings) do
				terrain[k] = waterSetting
			end
		end

		Graphics:AddDivider("Water")

		Graphics:AddToggle("CustomWaterT", {
			Text = "Realistic Water",
			Default = false,
			Callback = function(arg)
				fn24(arg)
				local v20, v21, v22 = tbl12.Char()
				fn25(arg and tbl8.NonSwimmableWater, v22)
			end,
		}):AddColorPicker("CustomWaterP", {
			Text = "Water Color",
			Default = tbl7.WaterSettings.WaterColor,
			Callback = function(waterColor)
				terrain.WaterColor = waterColor
			end,
		})

		local v20 = Graphics:AddDependencyBox()
		v20:SetupDependencies({ { toggles.CustomWaterT, true } })

		v20:AddToggle("NonSwimmableWater", {
			Text = "Non-Swimmable Water",
			Tooltip = "Makes your character fall through Terrain water instead of swimming",
			Callback = function(nonSwimmableWater)
				tbl8.NonSwimmableWater = nonSwimmableWater
				local v21, v22, v23 = tbl12.Char()
				fn25(nonSwimmableWater and toggles.CustomWaterT.Value, v23)
			end,
		})

		v20:AddSlider("WaterWaveSize", {
			Text = "Wave Size",
			Default = math.round(tbl7.WaterSettings.WaterWaveSize * 100) / 100,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(waterWaveSize)
				terrain.WaterWaveSize = waterWaveSize
			end,
		})

		v20:AddSlider("WaterWaveSpeed", {
			Text = "Wave Speed",
			Default = math.round(tbl7.WaterSettings.WaterWaveSpeed * 10) / 10,
			Min = 0,
			Max = 100,
			Rounding = 1,
			Compact = true,
			Callback = function(waterWaveSpeed)
				terrain.WaterWaveSpeed = waterWaveSpeed
			end,
		})

		v20:AddSlider("WaterTransparency", {
			Text = "Transparency",
			Default = math.round(tbl7.WaterSettings.WaterTransparency * 100) / 100,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(waterTransparency)
				terrain.WaterTransparency = waterTransparency
			end,
		})

		v20:AddSlider("WaterReflectance", {
			Text = "Reflectance",
			Default = math.round(tbl7.WaterSettings.WaterReflectance * 100) / 100,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(waterReflectance)
				terrain.WaterReflectance = waterReflectance
			end,
		})

		localPlayer.CharacterAdded:Connect(function(character)
			if flag11 or not tbl8.NonSwimmableWater or not toggles.CustomWaterT.Value then
				return
			end
			local humanoid = character:WaitForChild("Humanoid", 5)

			if humanoid then
				fn25(true, humanoid)
			end
		end)

		Graphics:AddDivider("Shaders")

		local tbl17 = {
			Lighting = {
				Ambient = Lighting.Ambient,
				Brightness = Lighting.Brightness,
				ColorShift_Bottom = Lighting.ColorShift_Bottom,
				ColorShift_Top = Lighting.ColorShift_Top,
				ExposureCompensation = Lighting.ExposureCompensation,
				FogColor = Lighting.FogColor,
				FogEnd = Lighting.FogEnd,
				FogStart = Lighting.FogStart,
				OutdoorAmbient = Lighting.OutdoorAmbient,
				ShadowSoftness = Lighting.ShadowSoftness,
			},
			Settings = {
				Brightness = 2.14,
				Exposure = 0.24,
				BloomIntensity = 0.1,
				Saturation = 0.05,
				TintColor = Color3.fromRGB(255, 224, 219),
			},
			Effects = {},
		}

		local function fn26()
			for _, child in ipairs(Lighting:GetChildren()) do
				if child:GetAttribute("RSC") then
					child:Destroy()
				end
			end

			table.clear(tbl17.Effects)
		end

		Graphics:AddToggle("ShadersT", {
			Text = "Shaders",
			Default = false,
			Callback = function(shaders)
				tbl8.Shaders = shaders
				fn26()

				if shaders then
					local settings_ = tbl17.Settings

					for k in pairs(tbl17.Lighting) do
						tbl17.Lighting[k] = Lighting[k]
					end

					Lighting.Brightness = settings_.Brightness
					Lighting.ColorShift_Bottom = Color3.fromRGB(11, 0, 20)
					Lighting.ColorShift_Top = Color3.fromRGB(240, 127, 14)
					Lighting.OutdoorAmbient = Color3.fromRGB(34, 0, 49)
					Lighting.FogColor = Color3.fromRGB(94, 76, 106)
					Lighting.FogEnd = 1000
					Lighting.FogStart = 0
					Lighting.ExposureCompensation = settings_.Exposure
					Lighting.ShadowSoftness = 0
					Lighting.Ambient = Color3.fromRGB(59, 33, 27)

					for _, v21 in ipairs({
						{ "BloomEffect", { Intensity = settings_.BloomIntensity, Threshold = 0, Size = 100 } },
						{ "BlurEffect", { Size = 2 } },
						{ "ColorCorrectionEffect", { Saturation = settings_.Saturation, TintColor = settings_.TintColor } },
						{ "SunRaysEffect", { Intensity = 0.05 } },
					}) do
						local instance = Instance.new(v21[1])
						instance.Name = "RSC"
						instance:SetAttribute("RSC", true)

						for k, v22 in pairs(v21[2]) do
							instance[k] = v22
						end

						instance.Parent = Lighting
						tbl17.Effects[v21[1]] = instance
					end
				else
					for k, v21 in pairs(tbl17.Lighting) do
						Lighting[k] = v21
					end
				end
			end,
		}):AddColorPicker("ShaderTintColor", {
			Default = tbl17.Settings.TintColor,
			Title = "Tint Color",
			Callback = function(tintColor)
				tbl17.Settings.TintColor = tintColor
				local colorCorrectionEffect = tbl17.Effects.ColorCorrectionEffect

				if colorCorrectionEffect and colorCorrectionEffect.Parent then
					colorCorrectionEffect.TintColor = tintColor
				end
			end,
		})

		local v21 = Graphics:AddDependencyBox()
		v21:SetupDependencies({ { toggles.ShadersT, true } })

		v21:AddSlider("ShaderBrightness", {
			Text = "Brightness",
			Default = tbl17.Settings.Brightness,
			Min = 0,
			Max = 5,
			Rounding = 2,
			Compact = true,
			Callback = function(brightness)
				tbl17.Settings.Brightness = brightness

				if tbl8.Shaders then
					Lighting.Brightness = brightness
				end
			end,
		})

		v21:AddSlider("ShaderExposure", {
			Text = "Exposure",
			Default = tbl17.Settings.Exposure,
			Min = -3,
			Max = 3,
			Rounding = 2,
			Compact = true,
			Callback = function(exposure)
				tbl17.Settings.Exposure = exposure

				if tbl8.Shaders then
					Lighting.ExposureCompensation = exposure
				end
			end,
		})

		v21:AddSlider("ShaderBloomIntensity", {
			Text = "Bloom Intensity",
			Default = tbl17.Settings.BloomIntensity,
			Min = 0,
			Max = 3,
			Rounding = 2,
			Compact = true,
			Callback = function(bloomIntensity)
				tbl17.Settings.BloomIntensity = bloomIntensity
				local bloomEffect = tbl17.Effects.BloomEffect

				if bloomEffect and bloomEffect.Parent then
					bloomEffect.Intensity = bloomIntensity
				end
			end,
		})

		v21:AddSlider("ShaderSaturation", {
			Text = "Saturation",
			Default = tbl17.Settings.Saturation,
			Min = -1,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(saturation)
				tbl17.Settings.Saturation = saturation
				local colorCorrectionEffect = tbl17.Effects.ColorCorrectionEffect

				if colorCorrectionEffect and colorCorrectionEffect.Parent then
					colorCorrectionEffect.Saturation = saturation
				end
			end,
		})

		Graphics:AddDivider("Particles")
		local particleSettings = tbl7.ParticleSettings

		local function fn27(arg, arg2)
			particleSettings[arg] = arg2

			if particleSettings.Enabled then
				tbl12.UpdateParticles(arg)
			end
		end

		Graphics:AddToggle("ParticlesT", { Text = "Particles", Default = false, Callback = tbl12.SetParticlesEnabled }):AddColorPicker("ParticlesCo", {
			Default = particleSettings.Color,
			Title = "Color",
			Callback = function(arg)
				fn27("Color", arg)
			end,
		})

		local v22 = Graphics:AddDependencyBox()
		v22:SetupDependencies({ { toggles.ParticlesT, true } })

		v22:AddDropdown("ParticlesDropdown", {
			Values = { "Circles", "Snowflakes", "Resonance", "Custom" },
			Multi = false,
			Default = "Circles",
			Searchable = true,
			Text = "Texture",
			Callback = function(arg)
				if arg == "Resonance" then
					fn27("Texture", "rbxassetid://79685990879972")
				elseif arg == "Snowflakes" then
					fn27("Texture", "rbxassetid://14443362047")
				elseif arg == "Circles" then
					fn27("Texture", "rbxassetid://242109931")
				elseif arg == "Custom" and tbl9.CustomParticle then
					fn27("Texture", tbl9.CustomParticle)
				end
			end,
		})

		local v23 = v22:AddDependencyBox()
		v23:SetupDependencies({ { options.ParticlesDropdown, "Custom" } })

		v23:AddInput("customParticleBoxInput", {
			Text = "Custom Image ID/Link",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl12.ResolveAssetInput(arg, "ParticleTexture", "image", function(customParticle)
					tbl9.CustomParticle = customParticle

					if options.ParticlesDropdown.Value == "Custom" then
						fn27("Texture", customParticle or "rbxassetid://242109931")
					end
				end)
			end,
		})

		v22:AddSlider("PDensity", {
			Text = "Density (Count)",
			Default = particleSettings.Count,
			Min = 100,
			Max = 5000,
			Compact = true,
			Callback = function(arg)
				fn27("Count", arg)
			end,
		})

		v22:AddSlider("PSize", {
			Text = "Size",
			Default = particleSettings.ParticleSize,
			Min = 0.1,
			Max = 5,
			Rounding = 1,
			Compact = true,
			Callback = function(arg)
				fn27("ParticleSize", arg)
			end,
		})

		v22:AddSlider("PMaxSp", {
			Text = "Max Speed",
			Default = particleSettings.SpeedMax,
			Min = 0,
			Max = 10,
			Rounding = 1,
			Compact = true,
			Callback = function(arg)
				fn27("SpeedMax", arg)
			end,
		})

		v22:AddSlider("PBoxSize", {
			Text = "Box Size",
			Default = particleSettings.BoxSize,
			Min = 50,
			Max = 2000,
			Compact = true,
			Callback = function(arg)
				fn27("BoxSize", arg)
			end,
		})

		Graphics:AddDivider("Boost FPS")
		Graphics:AddToggle("BoostFPS", { Text = "Boost FPS", Default = false, Callback = tbl12.SetBoostFPS })

		Graphics:AddDropdown("BoostFPSOptions", {
			Text = "Disable",
			Values = { "Materials", "Textures", "Reflections", "Shadows" },
			Default = { "Materials", "Textures", "Reflections", "Shadows" },
			Multi = true,
			AllowNull = true,
			Callback = tbl12.SetBoostFPSOptions,
		})
	end

	do
		local Character = tbl15.Visual:AddRightGroupbox("Character", "person-standing")

		Character:AddToggle("ForcefieldChar", {
			Text = "Highlight Your Character",
			Default = false,
			Callback = tbl12.SetCharacterHighlight,
		}):AddColorPicker("ForcefieldColor", {
			Default = tbl9.ForcefieldColor,
			Title = "Highlight Color",
			Callback = function(forcefieldColor)
				tbl9.ForcefieldColor = forcefieldColor
				tbl12.UpdateCharacterHighlight()
			end,
		})

		tbl12.AddRainbowToggle(Character, "RGBForcefieldChar", "RGB Highlight", "ForcefieldColor")

		Character:AddDropdown("CharacterHighlightAffect", {
			Text = "Affect",
			Values = { "Character", "Coconut Forms", "China Hat", "Anti Kick" },
			Default = { "Character", "Coconut Forms", "China Hat", "Anti Kick" },
			Multi = true,
			AllowNull = true,
			Callback = function(characterHighlightAffects)
				tbl7.CharacterHighlightAffects = characterHighlightAffects
				tbl12.SetCharacterHighlight(tbl8.ForcefieldChar)
			end,
		})

		Character:AddDivider("China Hat")

		Character:AddToggle("ChinaHat", { Text = "China Hat", Default = false, Callback = tbl12.SetChinaHat }):AddColorPicker("ChinaHatColor", {
			Default = tbl9.ChinaHatColor,
			Title = "Hat Color",
			Callback = function(chinaHatColor)
				tbl9.ChinaHatColor = chinaHatColor
				tbl12.UpdateChinaHat()
			end,
		})

		tbl12.AddRainbowToggle(Character, "RGBChinaHat", "RGB China Hat", "ChinaHatColor")
	end

	do
		local v20 = tbl15.Visual:AddLeftTabbox("Game Tweaks")
		local v21 = v20:AddTab(nil, "spline")
		local tbl16 = {}

		for k in tbl7.LineTypes, nil, nil do
			table.insert(tbl16, k)
		end

		v21:AddDropdown("CustomLineDropdown", {
			Values = tbl16,
			Multi = false,
			Default = 1,
			Searchable = true,
			Text = "Line Texture",
			Callback = function(customLine)
				tbl9.CustomLine = customLine
			end,
		})

		v21:AddToggle("EnableCL", {
			Text = "Toggle Custom Line",
			Default = false,
			Callback = function(customLine)
				tbl8.CustomLine = customLine
			end,
		})

		v21:AddDivider()

		v21:AddToggle("GObjectInfo", {
			Text = "Grabbed Object Information",
			Default = false,
			Tooltip = "Shows you info about the object you're currently grabbing, what should I Add in this?",
			Callback = function(goi)
				tbl8.GOI = goi
			end,
		})

		local v22 = v20:AddTab(nil, "crosshair")

		v22:AddToggle("CustomCrosshair", { Text = "Custom Crosshair", Default = false, Callback = tbl12.SetCustomCrosshair }):AddColorPicker("CustomCrosshairColor", {
			Default = tbl9.CustomCrosshairColor,
			Title = "Crosshair Color",
			Callback = function(customCrosshairColor)
				tbl9.CustomCrosshairColor = customCrosshairColor
				tbl12.UpdateCustomCrosshair()
			end,
		})

		v22:AddInput("CustomCrosshairImage", {
			Text = "Image Link/ID",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl12.ResolveAssetInput(arg, "CrosshairImage", "image", function(customCrosshairImage)
					tbl9.CustomCrosshairImage = customCrosshairImage
					tbl12.UpdateCustomCrosshair()
				end)
			end,
		})

		v22:AddSlider("CustomCrosshairSize", {
			Text = "Crosshair Size",
			Default = tbl9.CustomCrosshairSize,
			Min = 8,
			Max = 128,
			Rounding = 0,
			Suffix = " px",
			Compact = true,
			Callback = function(customCrosshairSize)
				tbl9.CustomCrosshairSize = customCrosshairSize
				tbl12.UpdateCustomCrosshair()
			end,
		})

		local v23 = v20:AddTab(nil, 91048141324648)

		tbl12.UpdateBlackHoleImage = function()
			local flag12 = tbl8.CustomBlackHole and tbl9.CustomBlackhole ~= nil

			for _, v24 in workspace:GetChildren() do
				if not (v24.Name ~= "BlackHoleKick" and v24.Name ~= "StayedBH") then
					local hole = v24:FindFirstChild("Hole")
					local billboardGui = hole and hole:FindFirstChild("BillboardGui")
					local large = billboardGui and billboardGui:FindFirstChild("Large")
					billboardGui = billboardGui and billboardGui:FindFirstChild("Small")

					if hole and large and large:IsA("ImageLabel") then
						local customBlackhole

						if flag12 then
							customBlackhole = tbl9.CustomBlackhole
						else
							customBlackhole = "rbxassetid://9920612764"
						end

						large.Image = customBlackhole
						local customBHColor

						if flag12 then
							customBHColor = tbl9.CustomBHColor
						else
							customBHColor = Color3.new(0, 0, 0)
						end

						large.ImageColor3 = customBHColor
						local transparency

						if flag12 then
							transparency = 1
						else
							transparency = 0
						end

						hole.Transparency = transparency

						if billboardGui then
							billboardGui.Visible = not flag12
						end
					end
				end
			end
		end

		v23:AddDivider("Blackhole Sound")

		v23:AddInput("BlackholeSoundLink", {
			Text = "Sound ID/MP3 Link",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl12.ResolveAssetInput(arg, "BlackholeSound", "sound", function(customBlackholeSound)
					tbl9.CustomBlackholeSound = customBlackholeSound
				end)
			end,
		})

		v23:AddToggle("EnableCBHS", {
			Text = "Toggle Custom Sound",
			Default = false,
			Callback = function(customBlackholeSound)
				tbl8.CustomBlackholeSound = customBlackholeSound
			end,
		})

		v23:AddDivider("Blackhole Image")

		v23:AddInput("BlackholeLink", {
			Text = "Image Link/ID",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl12.ResolveAssetInput(arg, "BlackholeImage", "image", function(customBlackhole)
					tbl9.CustomBlackhole = customBlackhole
					tbl12.UpdateBlackHoleImage()
				end)
			end,
		})

		v23:AddToggle("EnableCBH", {
			Text = "Toggle Custom Image",
			Default = false,
			Callback = function(customBlackHole)
				tbl8.CustomBlackHole = customBlackHole
				tbl12.UpdateBlackHoleImage()
			end,
		})

		v23:AddDivider("Misc")

		v23:AddLabel("Blackhole Color"):AddColorPicker("BHColorPicker", {
			Default = Color3.new(1, 1, 1),
			Title = "Blackhole Color",
			Callback = function(customBHColor)
				tbl9.CustomBHColor = customBHColor

				for _, v24 in workspace:GetChildren() do
					if not (v24.Name ~= "BlackHoleKick" and v24.Name ~= "StayedBH") then
						local hole = v24:WaitForChild("Hole", 0.25)

						if hole then
							local billboardGui = hole:WaitForChild("BillboardGui", 1.5)

							if billboardGui then
								local large = billboardGui:WaitForChild("Large", 1.5)
								local small = billboardGui:WaitForChild("Small", 1.5)

								if large and large:IsA("ImageLabel") then
									large.ImageColor3 = customBHColor
								end

								if small and small:IsA("ImageLabel") then
									small.ImageColor3 = customBHColor
								end
							end
						end
					end
				end
			end,
		})

		v23:AddToggle("EnableBHStaying", {
			Text = "Toggle Blackhole Staying",
			Default = false,
			Tooltip = "Makes blackholes not disappear after spinning, until you turn this off.",
			Callback = function(blackholeStaying)
				tbl8.BlackholeStaying = blackholeStaying
			end,
		})

		local v24 = v20:AddTab(nil, "volume-2")
		local mapNoises = map:FindFirstChild("MapNoises")
		local tbl17 = {}

		local tbl18 = {
			{
				"MuteAmbience",
				"Mute Ambience",
				function(arg)
					return mapNoises and arg:IsDescendantOf(mapNoises)
				end,
			},
			{
				"MuteBoomboxes",
				"Mute Boomboxes & Jukeboxes",
				function(arg)
					return arg.Name ~= "SineWave" and arg.Parent and arg.Parent.Name == "Speaker"
				end,
			},
			{
				"MuteScreams",
				"Mute Screams",
				function(arg)
					return arg.Name == "Scream" and arg.Parent and arg.Parent.Name == "HumanoidRootPart"
				end,
				true,
			},
			{
				"MuteExplosions",
				"Mute Explosions",
				function(arg)
					local parent2 = arg.Parent
					return parent2 and parent2:IsA("BasePart") and parent2.Name == "Part" and parent2.Parent == workspace
				end,
			},
			{
				"MuteSoundwaves",
				"Mute Soundwaves",
				function(arg)
					return arg.Name == "SineWave"
				end,
				true,
			},
			{
				"MuteRhythmMakers",
				"Mute Rhythm Makers",
				function(arg)
					return arg.Name:lower():match("^sound[1-8]$") ~= nil
				end,
				true,
			},
			{
				"MuteInstruments",
				"Mute Instruments",
				function(arg)
					return arg.Parent and arg.Parent.Name == "MusicPart"
				end,
				true,
			},
		}

		local function fn21(arg)
			for _, v25 in tbl18, nil, nil do
				local v26 = toggles[v25[1]]
				if v26 and v26.Value and v25[3](arg) then
					return v25
				end
			end

			return false
		end

		local function fn22(arg)
			if not arg:IsA("Sound") then
				return
			end
			local v25 = fn21(arg)
			local v26 = tbl17[arg]

			if v25 then
				if not v26 then
					local tbl19 = { arg.Volume }
					tbl17[arg] = tbl19

					if v25[4] then
						tbl19[2] = arg:GetPropertyChangedSignal("Volume"):Connect(function()
							if fn21(arg) and arg.Volume ~= 0 then
								arg.Volume = 0
							end
						end)
					end
				end

				arg.Volume = 0
			elseif v26 then
				tbl17[arg] = nil

				if v26[2] then
					v26[2]:Disconnect()
				end

				if arg.Parent then
					arg.Volume = v26[1]
				end
			end
		end

		local function fn23(arg)
			local flag12 = false

			for _, v25 in tbl18, nil, nil do
				flag12 = flag12 or toggles[v25[1]].Value
			end

			tbl12.SetRuntimeConnection("MutedSounds", workspace.DescendantAdded, flag12, fn22)

			for k in tbl17, nil, nil do
				fn22(k)
			end

			if arg then
				for _, v25 in workspace:QueryDescendants("Sound") do
					fn22(v25)
				end
			end
		end

		tbl12.ClearMutedSounds = function()
			tbl12.SetRuntimeConnection("MutedSounds", nil, false)

			for k, v25 in tbl17, nil, nil do
				if v25[2] then
					v25[2]:Disconnect()
				end

				if k.Parent then
					k.Volume = v25[1]
				end
			end

			table.clear(tbl17)
		end

		for _, v25 in tbl18, nil, nil do
			v24:AddToggle(v25[1], {
				Text = v25[2],
				Default = false,
				Callback = function(arg)
					fn23(arg)
				end,
			})
		end
	end

	do
		local Sky = tbl15.Visual:AddLeftGroupbox("Sky", "cloudy")
		local sky = Lighting:FindFirstChildOfClass("Sky")
		local flag12 = not sky
		local tbl16 = { Created = flag12, ClockTime = Lighting.ClockTime }

		if flag12 then
			sky = Instance.new("Sky")
			sky.Name = "ResonanceSky"
			sky.Parent = Lighting
		end

		tbl16.Instance = sky
		tbl16.SunAngularSize = sky.SunAngularSize
		tbl16.SkyboxBk = sky.SkyboxBk
		tbl16.SkyboxDn = sky.SkyboxDn
		tbl16.SkyboxFt = sky.SkyboxFt
		tbl16.SkyboxLf = sky.SkyboxLf
		tbl16.SkyboxRt = sky.SkyboxRt
		tbl16.SkyboxUp = sky.SkyboxUp

		local function fn21()
			if sky and sky.Parent == Lighting then
				return sky
			end
			sky = Lighting:FindFirstChildOfClass("Sky") or Instance.new("Sky")
			local v20 = sky
			local name

			if sky.Name ~= "Sky" then
				name = sky.Name
			else
				name = "ResonanceSky"
			end

			v20.Name = name
			sky.Parent = Lighting
			return sky
		end

		local function fn22(arg)
			local v20 = fn21()

			local tbl17 = arg and { SkyboxBk = arg, SkyboxDn = arg, SkyboxFt = arg, SkyboxLf = arg, SkyboxRt = arg, SkyboxUp = arg } or {
				SkyboxBk = tbl16.SkyboxBk,
				SkyboxDn = tbl16.SkyboxDn,
				SkyboxFt = tbl16.SkyboxFt,
				SkyboxLf = tbl16.SkyboxLf,
				SkyboxRt = tbl16.SkyboxRt,
				SkyboxUp = tbl16.SkyboxUp,
			}

			for k, v21 in pairs(tbl17) do
				v20[k] = v21
			end
		end

		Sky:AddDivider("Skybox")

		Sky:AddToggle("CustomSkyboxT", {
			Text = "Custom Skybox",
			Default = false,
			Callback = function(arg)
				if arg and tbl9.SkyboxImage then
					fn22(tbl9.SkyboxImage)
				else
					fn22()
				end
			end,
		})

		Sky:AddInput("SkyboxLink", {
			Text = "Skybox Link/Image ID",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl12.ResolveAssetInput(arg, "SkyboxImage", "image", function(skyboxImage)
					tbl9.SkyboxImage = skyboxImage

					if toggles.CustomSkyboxT.Value then
						fn22(skyboxImage)
					end
				end)
			end,
		})

		Sky:AddDivider("Sun")

		Sky:AddSlider("TimeOfDay", {
			Text = "Time Of Day",
			Default = Lighting.ClockTime,
			Min = 0,
			Max = 23,
			Rounding = 0,
			Callback = function(clockTime)
				Lighting.ClockTime = clockTime
			end,
		})

		Sky:AddSlider("SunSize", {
			Text = "Sun Size",
			Default = sky.SunAngularSize,
			Min = 0,
			Max = 60,
			Rounding = 0,
			Callback = function(sunAngularSize)
				fn21().SunAngularSize = sunAngularSize
			end,
		})

		Sky:AddDivider("Clouds")
		local clouds = terrain:FindFirstChildOfClass("Clouds")
		tbl16.CloudsCreated = not clouds
		clouds = clouds or Instance.new("Clouds")
		clouds.Parent = terrain
		tbl16.Clouds = clouds
		tbl16.CloudColor = clouds.Color
		tbl16.CloudDensity = clouds.Density
		tbl16.CloudCover = clouds.Cover
		tbl16.CloudsEnabled = clouds.Enabled

		Sky:AddLabel("Clouds Color"):AddColorPicker("CloudColor", {
			Default = clouds.Color,
			Title = "Color",
			Callback = function(color)
				clouds.Color = color
			end,
		})

		Sky:AddSlider("CloudsDensity", {
			Text = "Clouds Density",
			Default = math.round(tbl16.CloudDensity * 1000) / 1000,
			Min = 0,
			Max = 1,
			Rounding = 3,
			Callback = function(density)
				clouds.Density = density
			end,
		})

		Sky:AddSlider("CloudsCover", {
			Text = "Clouds Cover",
			Default = math.round(tbl16.CloudCover * 1000) / 1000,
			Min = 0,
			Max = 1,
			Rounding = 3,
			Callback = function(cover)
				clouds.Cover = cover
			end,
		})

		Sky:AddToggle("CloudsEnabled", {
			Text = "Enable Clouds",
			Default = clouds.Enabled,
			Callback = function(enabled)
				clouds.Enabled = enabled
			end,
		})

		tbl12.AddRainbowToggle(Sky, "RGBClouds", "RGB Clouds", "CloudColor")

		tbl12.RestoreSkySettings = function()
			Lighting.ClockTime = tbl16.ClockTime

			if tbl16.Created then
				if tbl16.Instance.Parent then
					tbl16.Instance:Destroy()
				end
			elseif tbl16.Instance.Parent then
				sky = tbl16.Instance
				sky.SunAngularSize = tbl16.SunAngularSize
				fn22()
			end

			if tbl16.CloudsCreated then
				if clouds.Parent then
					clouds:Destroy()
				end
			elseif clouds.Parent then
				clouds.Color = tbl16.CloudColor
				clouds.Density = tbl16.CloudDensity
				clouds.Cover = tbl16.CloudCover
				clouds.Enabled = tbl16.CloudsEnabled
			end
		end
	end

	do
		local selectedPlayersAC = tbl7.SelectedPlayersAC

		tbl12.CreatePlayerDropdown(tbl15.AutoClicker:AddLeftGroupbox("Target", "user"), "AutoClicker", selectedPlayersAC, true, true, function()
			if tbl12.SyncACPoseTargets then
				tbl12.SyncACPoseTargets()
			end
		end)
	end

	do
		local Config = tbl15.AutoClicker:AddLeftGroupbox("Config", "settings")

		Config:AddToggle("AutoClicker", {
			Text = "Toggle",
			Default = false,
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AutoClicker", arg)
			end,
		})

		Config:AddToggle("IndependentACPoses", {
			Text = "Independent Target Poses",
			Default = false,
			Tooltip = "Keeps separate position and limb settings for every selected target",
			Callback = function(arg)
				if arg then
					local selectedACPoseTarget = tbl9.SelectedACPoseTarget
					tbl9.SelectedACPoseTarget = nil
					tbl8.IndependentACPoses = true

					if tbl12.SyncACPoseTargets then
						tbl12.SyncACPoseTargets(selectedACPoseTarget)
					end
				else
					if tbl9.SelectedACPoseTarget then
						tbl12.CaptureACPose(tbl9.SelectedACPoseTarget)
					end

					tbl8.IndependentACPoses = false
				end
			end,
		})

		local v20 = Config:AddDependencyBox()
		v20:SetupDependencies({ { toggles.IndependentACPoses, true } })

		v20:AddDropdown("ACPoseTarget", {
			Values = {},
			Default = nil,
			Multi = false,
			Searchable = true,
			AllowNull = true,
			Text = "Edit Target Pose",
			FormatListValue = tbl12.FormatPlayer,
			FormatDisplayValue = tbl12.FormatPlayer,
			Callback = function(arg)
				local v21

				if type(arg) ~= "string" then
					v21 = arg
				else
					v21 = Players:FindFirstChild(arg)
				end

				local selectedACPoseTarget = tbl9.SelectedACPoseTarget

				if selectedACPoseTarget and selectedACPoseTarget ~= v21 then
					tbl12.CaptureACPose(selectedACPoseTarget)
				end

				tbl9.SelectedACPoseTarget = v21

				if v21 then
					task.defer(tbl12.LoadACEditorPose, tbl7.AutoClickerTargetPoses[v21.UserId] or tbl12.CaptureACPose(v21))
				end
			end,
		})

		tbl12.SyncACPoseTargets = function(arg)
			if not options.ACPoseTarget then
				return
			end

			if tbl8.IndependentACPoses and tbl9.SelectedACPoseTarget then
				tbl12.CaptureACPose(tbl9.SelectedACPoseTarget)
			end

			local tbl16 = {}

			for k in pairs(tbl7.SelectedPlayersAC) do
				if k and k.Parent then
					tbl16[#tbl16 + 1] = k.Name

					if tbl8.IndependentACPoses and not tbl7.AutoClickerTargetPoses[k.UserId] then
						tbl12.CaptureACPose(k)
					end
				end
			end

			table.sort(tbl16, function(arg2, arg3)
				return arg2:lower() < arg3:lower()
			end)

			options.ACPoseTarget:SetValues(tbl16)
			local selectedACPoseTarget = arg or tbl9.SelectedACPoseTarget

			if typeof(selectedACPoseTarget) == "Instance" then
				selectedACPoseTarget = selectedACPoseTarget.Name
			end

			if not tbl8.IndependentACPoses then
				selectedACPoseTarget = selectedACPoseTarget and not table.find(tbl16, selectedACPoseTarget)

				if selectedACPoseTarget then
					options.ACPoseTarget:SetValue(nil)
				end

				return
			end

			if not table.find(tbl16, selectedACPoseTarget) then
				selectedACPoseTarget = tbl16[1]
			end

			options.ACPoseTarget:SetValue(selectedACPoseTarget)
		end

		Config:AddToggle("CustomACPoseCenter", {
			Text = "Custom Pose Center",
			Default = false,
			Tooltip = "Centers every target pose around the selected player instead of you",
			Callback = function(customACPoseCenter)
				tbl8.CustomACPoseCenter = customACPoseCenter
			end,
		})

		local v21 = Config:AddDependencyBox()
		v21:SetupDependencies({ { toggles.CustomACPoseCenter, true } })

		tbl12.CreatePlayerDropdown(v21, "ACPoseCenter", tbl7.SelectedACPoseCenters, false, false, function(selectedACPoseCenter)
			tbl9.SelectedACPoseCenter = selectedACPoseCenter
		end, "Pose Center")

		Config:AddDivider("Position")

		Config:AddSlider("ACCSecXO", {
			Text = "X Offset",
			Default = 0,
			Min = -10,
			Max = 10,
			Compact = true,
			Rounding = 1,
			Callback = function(arg)
				local autoClickerOffset = tbl9.AutoClickerOffset
				tbl9.AutoClickerOffset = CFrame.new(arg, autoClickerOffset.Y, autoClickerOffset.Z)
			end,
		})

		Config:AddSlider("ACCSecYO", {
			Text = "Y Offset",
			Default = 0,
			Min = -5,
			Max = 20,
			Compact = true,
			Rounding = 1,
			Callback = function(arg)
				local autoClickerOffset = tbl9.AutoClickerOffset
				tbl9.AutoClickerOffset = CFrame.new(autoClickerOffset.X, arg, autoClickerOffset.Z)
			end,
		})

		Config:AddSlider("ACCSecZO", {
			Text = "Z Offset",
			Default = -5,
			Min = -10,
			Max = 10,
			Compact = true,
			Rounding = 1,
			Callback = function(arg)
				local autoClickerOffset = tbl9.AutoClickerOffset
				tbl9.AutoClickerOffset = CFrame.new(autoClickerOffset.X, autoClickerOffset.Y, arg)
			end,
		})

		Config:AddSlider("ACCharacterTransparency", {
			Text = "Targets Transparency",
			Default = 0,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(autoClickerTransparency)
				tbl9.AutoClickerTransparency = autoClickerTransparency
			end,
		})
	end

	do
		local v20 = tbl15.AutoClicker:AddRightTabbox()
		local Offset = v20:AddTab("Offset", "move-diagonal")
		local Rotation = v20:AddTab("Rotation", "refresh-cw")

		Offset:AddDropdown("ACLimbO", {
			Values = { "Head", "Right Leg", "Right Arm", "Left Leg", "Left Arm" },
			Default = 1,
			Multi = false,
			Searchable = true,
			Text = "Select limb",
		})

		Rotation:AddDropdown("ACLimbR", {
			Values = { "Head", "Torso", "Right Leg", "Right Arm", "Left Leg", "Left Arm" },
			Default = 1,
			Multi = false,
			Searchable = true,
			Text = "Select limb",
		})

		for _, v21 in { "Head", "Torso", "Right Leg", "Right Arm", "Left Leg", "Left Arm" }, nil, nil do
			local v22 = Rotation:AddDependencyBox()
			v22:SetupDependencies({ { options.ACLimbR, v21 } })

			v22:AddSlider("ACRSecXO" .. v21, {
				Text = "X Rotation",
				Default = 0,
				Min = -180,
				Max = 180,
				Compact = true,
				Rounding = 1,
				Callback = function(arg)
					local v23 = tbl7.ACRotation[v21]
					tbl7.ACRotation[v21] = Vector3.new(arg, v23.Y, v23.Z)
				end,
			})

			v22:AddSlider("ACRSecYO" .. v21, {
				Text = "Y Rotation",
				Default = 0,
				Min = -180,
				Max = 180,
				Compact = true,
				Rounding = 1,
				Callback = function(arg)
					local v23 = tbl7.ACRotation[v21]
					tbl7.ACRotation[v21] = Vector3.new(v23.X, arg, v23.Z)
				end,
			})

			v22:AddSlider("ACRSecZO" .. v21, {
				Text = "Z Rotation",
				Default = 0,
				Min = -180,
				Max = 180,
				Compact = true,
				Rounding = 1,
				Callback = function(arg)
					local v23 = tbl7.ACRotation[v21]
					tbl7.ACRotation[v21] = Vector3.new(v23.X, v23.Y, arg)
				end,
			})

			if v21 ~= "Torso" then
				local v23 = Offset:AddDependencyBox()
				v23:SetupDependencies({ { options.ACLimbO, v21 } })

				v23:AddSlider("ACOSecXO" .. v21, {
					Text = "X Offset",
					Default = tbl7.ACOffset[v21].X,
					Min = -5,
					Max = 5,
					Compact = true,
					Rounding = 1,
					Callback = function(arg)
						local v24 = tbl7.ACOffset[v21]
						tbl7.ACOffset[v21] = Vector3.new(arg, v24.Y, v24.Z)
					end,
				})

				v23:AddSlider("ACOSecYO" .. v21, {
					Text = "Y Offset",
					Default = tbl7.ACOffset[v21].Y,
					Min = -5,
					Max = 5,
					Compact = true,
					Rounding = 1,
					Callback = function(arg)
						local v24 = tbl7.ACOffset[v21]
						tbl7.ACOffset[v21] = Vector3.new(v24.X, arg, v24.Z)
					end,
				})

				v23:AddSlider("ACOSecZO" .. v21, {
					Text = "Z Offset",
					Default = tbl7.ACOffset[v21].Z,
					Min = -5,
					Max = 5,
					Compact = true,
					Rounding = 1,
					Callback = function(arg)
						local v24 = tbl7.ACOffset[v21]
						tbl7.ACOffset[v21] = Vector3.new(v24.X, v24.Y, arg)
					end,
				})
			end
		end
	end

	do
		local Presets = tbl15.AutoClicker:AddRightGroupbox("Presets", "settings-2")
		local tbl16 = {}

		for k in tbl7.AutoClickerPoses, nil, nil do
			table.insert(tbl16, k)
		end

		local v20 = writefile and readfile and isfile and makefolder and isfolder and listfiles and delfile
		local str5 = "Resonance/AutoClickerPresets"

		tbl12.LoadACPreset = function(arg)
			return tbl12.LoadACEditorPose(arg)
		end

		tbl12.SyncACCustomPresets = function(arg)
			if not options.ACCustomPoseS then
				return
			end
			local tbl17 = {}

			for k in tbl7.CustomACPresets, nil, nil do
				table.insert(tbl17, k)
			end

			table.sort(tbl17, function(arg2, arg3)
				return tostring(arg2):lower() < tostring(arg3):lower()
			end)

			options.ACCustomPoseS:SetValues(tbl17)
			local selectedCustomACPose = arg or tbl9.SelectedCustomACPose
			local acCustomPoseS = options.ACCustomPoseS
			local setValue = acCustomPoseS.SetValue

			if not table.find(tbl17, selectedCustomACPose) then
				selectedCustomACPose = nil
			end

			setValue(acCustomPoseS, selectedCustomACPose)
		end

		tbl12.SaveACCustomPresets = function(arg, arg2)
			if not v20 then
				return false, "Your exploit does not support filesystem presets."
			end

			local ok = pcall(function()
				if not isfolder("Resonance") then
					makefolder("Resonance")
				end

				if not isfolder("Resonance/AutoClickerPresets") then
					makefolder("Resonance/AutoClickerPresets")
				end

				writefile(str5 .. "/" .. arg .. ".json", HttpService:JSONEncode(arg2))
			end)

			local str6

			if ok then
				str6 = nil
			else
				str6 = "Couldn't write the preset file."
			end

			return ok, str6
		end

		if v20 then
			if not pcall(function()
				if not isfolder("Resonance") then
					makefolder("Resonance")
				end

				if not isfolder("Resonance/AutoClickerPresets") then
					makefolder("Resonance/AutoClickerPresets")
				end

				for _, v21 in ipairs(listfiles("Resonance/AutoClickerPresets")) do
					if v21:sub(-5) == ".json" then
						local match = v21:match("([^/\\]+)%.json$")

						local ok, result = pcall(function()
							return HttpService:JSONDecode(readfile(v21))
						end)

						if ok and typeof(result) == "table" then
							tbl7.CustomACPresets[match] = result
						end
					end
				end
			end) then
				fn18("Custom Auto-Clicker presets couldn't be loaded.")
			end
		end

		Presets:AddDropdown("ACPoseS", {
			Values = tbl16,
			Default = 2,
			Multi = false,
			Searchable = true,
			Text = "Choose Preset",
			Callback = function(selectedACPose)
				tbl9.SelectedACPose = selectedACPose
			end,
		})

		Presets:AddButton({
			Text = "Load Preset",
			Func = function()
				local v21 = tbl7.AutoClickerPoses[tbl9.SelectedACPose]
				if not v21 then
					return
				end

				if tbl12.LoadACPreset(v21) then
					fn18("Successfully loaded preset!")
				end
			end,
		})

		Presets:AddDivider("Custom")

		Presets:AddInput("ACCustomPresetName", {
			Text = "Preset Name",
			Placeholder = "Type a custom preset name",
			Default = "",
			Callback = function(arg)
				tbl9.CustomACPresetName = tostring(arg or "")
			end,
		})

		Presets:AddDropdown("ACCustomPoseS", {
			Values = {},
			Default = nil,
			Multi = false,
			Searchable = true,
			AllowNull = true,
			Text = "Custom Preset",
			Callback = function(selectedCustomACPose)
				tbl9.SelectedCustomACPose = selectedCustomACPose
			end,
		})

		tbl12.SyncACCustomPresets()
		local flag12 = not v20

		if flag12 then
			options.ACCustomPresetName:SetDisabled(true)
			options.ACCustomPoseS:SetDisabled(true)
		end

		Presets:AddButton({
			Text = "Save Current Preset",
			Disabled = flag12,
			DisabledTooltip = "Your exploit is missing readfile/writefile support.",
			Func = function()
				local str6 = tostring(tbl9.CustomACPresetName or ""):gsub("^%s+", ""):gsub("%s+$", ""):gsub("[%c<>:\"/\\|%?%*]", "")
				if str6 == "" then
					fn18("Enter a preset name first.")
					return
				end
				local v21 = tbl7.CustomACPresets[str6]
				local tbl17 = {}
				local bodyPos = {}
				local num = tonumber(string.format("%.1f", tbl9.AutoClickerOffset.X))
				local num2 = tonumber(string.format("%.1f", tbl9.AutoClickerOffset.Y))
				local v22 = tonumber
				local format = string.format
				local z = tbl9.AutoClickerOffset.Z
				bodyPos[1] = num
				bodyPos[2] = num2

				do
					local values = table.pack(v22(format("%.1f", z)))
					table.move(values, 1, values.n, 3, bodyPos)
				end

				tbl17.BodyPos = bodyPos
				tbl17.LimbOffsets = {}

				for k, v23 in tbl7.ACRotation, nil, nil do
					local tbl18 = {}
					local num3 = tonumber(string.format("%.1f", v23.X))
					local num4 = tonumber(string.format("%.1f", v23.Y))
					local v24 = tonumber
					local format2 = string.format
					local z2 = v23.Z
					tbl18[1] = num3
					tbl18[2] = num4

					do
						local values = table.pack(v24(format2("%.1f", z2)))
						table.move(values, 1, values.n, 3, tbl18)
					end

					tbl17[k] = tbl18
				end

				for k, v23 in tbl7.ACOffset, nil, nil do
					local limbOffsets = tbl17.LimbOffsets
					local tbl18 = {}
					local num3 = tonumber(string.format("%.1f", v23.X))
					local num4 = tonumber(string.format("%.1f", v23.Y))
					local v24 = tonumber
					local format2 = string.format
					local z2 = v23.Z
					tbl18[1] = num3
					tbl18[2] = num4

					do
						local values = table.pack(v24(format2("%.1f", z2)))
						table.move(values, 1, values.n, 3, tbl18)
					end

					limbOffsets[k] = tbl18
				end

				tbl7.CustomACPresets[str6] = tbl17
				local v23, v24 = tbl12.SaveACCustomPresets(str6, tbl17)

				if not v23 then
					tbl7.CustomACPresets[str6] = v21
					fn18("Couldn't save custom preset: " .. v24)
					return
				end

				tbl12.SyncACCustomPresets(str6)
				options.ACCustomPresetName:SetValue(str6)
				local v25 = fn18
				local str7

				if v21 then
					str7 = "Updated custom preset!"
				else
					str7 = "Saved custom preset!"
				end

				v25(str7)
			end,
		})

		Presets:AddButton({
			Text = "Load Custom Preset",
			Disabled = flag12,
			DisabledTooltip = "Your exploit is missing readfile/writefile support.",
			Func = function()
				if not tbl9.SelectedCustomACPose then
					fn18("Select a custom preset first.")
					return
				end
				local v21 = tbl7.CustomACPresets[tbl9.SelectedCustomACPose]

				if not v21 then
					fn18("That custom preset doesn't exist anymore.")
					tbl12.SyncACCustomPresets()
					return
				end

				if tbl12.LoadACPreset(v21) then
					options.ACCustomPresetName:SetValue(tbl9.SelectedCustomACPose)
					fn18("Successfully loaded custom preset!")
				end
			end,
		})

		Presets:AddButton({
			Text = "Delete Custom Preset",
			Disabled = flag12,
			DisabledTooltip = "Your exploit is missing readfile/writefile support.",
			DoubleClick = true,
			Risky = true,
			Func = function()
				if not tbl9.SelectedCustomACPose then
					fn18("Select a custom preset first.")
					return
				end
				local v21 = tbl7.CustomACPresets[tbl9.SelectedCustomACPose]
				tbl7.CustomACPresets[tbl9.SelectedCustomACPose] = nil

				if not pcall(function()
					delfile(str5 .. "/" .. tbl9.SelectedCustomACPose .. ".json")
				end) then
					tbl7.CustomACPresets[tbl9.SelectedCustomACPose] = v21
					fn18("Couldn't delete custom preset.")
					return
				end

				tbl9.SelectedCustomACPose = nil
				options.ACCustomPresetName:SetValue("")
				tbl12.SyncACCustomPresets()
				fn18("Deleted custom preset!")
			end,
		})

		if flag12 then
			Presets:AddLabel("Custom presets require readfile/writefile support.", true)
		end
	end

	tbl12.GetTarget = function()
		if not lib.IsMobile and mouse then
			return mouse.Target
		end
		local viewportSize = currentCamera.ViewportSize
		local v20 = currentCamera:ViewportPointToRay(viewportSize.X / 2, viewportSize.Y / 2)
		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		local v21 = tbl12.Char()

		if v21 then
			raycastParams.FilterDescendantsInstances = { v21 }
		end

		local hit = workspace:Raycast(v20.Origin, v20.Direction * 1000, raycastParams)
		return hit and hit.Instance
	end

	tbl12.GetHit = function()
		if not lib.IsMobile and mouse then
			return mouse.Hit
		end
		local viewportSize = currentCamera.ViewportSize
		local v20 = currentCamera:ViewportPointToRay(viewportSize.X / 2, viewportSize.Y / 2)
		local raycastParams = RaycastParams.new()
		raycastParams.FilterType = Enum.RaycastFilterType.Exclude
		local v21 = tbl12.Char()

		if v21 then
			raycastParams.FilterDescendantsInstances = { v21 }
		end

		local hit = workspace:Raycast(v20.Origin, v20.Direction * 1000, raycastParams)
		local cframe

		if hit then
			cframe = CFrame.new(hit.Position)
		else
			cframe = CFrame.new(v20.Origin + v20.Direction * 1000)
		end

		return cframe
	end

	tbl12.AddKeybind = function(arg, arg2, arg3, arg4, arg5, arg6)
		arg:AddLabel(arg3):AddKeyPicker(arg2, { Text = arg3, Default = arg4, NoUI = true, Mode = arg5, Callback = arg6 })

		if arg5 == "Toggle" then
			tbl7.ToggleStates[arg3] = false
		end

		tbl7.RegisteredKeybinds[arg3] = function()
			if arg5 == "Toggle" then
				tbl7.ToggleStates[arg3] = not tbl7.ToggleStates[arg3]
				arg6(tbl7.ToggleStates[arg3])
			else
				arg6(true)
			end
		end

		table.insert(tbl7.KeybindNames, arg3)
	end

	tbl12.AddMobileButton = function(arg, position)
		if not tbl7.RegisteredKeybinds[arg] or tbl7.ActiveDraggableButtons[arg] then
			return
		end

		local v20 = lib:AddDraggableButton(arg, function()
			local v20 = tbl7.RegisteredKeybinds[arg]

			if v20 then
				v20()
			end
		end)

		if typeof(position) == "UDim2" then
			v20.Button.Position = position
		end

		tbl7.ActiveDraggableButtons[arg] = v20
		return v20
	end

	tbl12.RemoveMobileButton = function(arg)
		local v20 = tbl7.ActiveDraggableButtons[arg]
		if not v20 then
			return
		end
		v20:Destroy()
		tbl7.ActiveDraggableButtons[arg] = nil
	end

	do
		local LocalPlayer = tbl15.Keybinds:AddLeftGroupbox("LocalPlayer", "user")

		LocalPlayer:AddToggle("SmoothClickTP", {
			Text = "Smooth Click TP",
			Default = true,
			Callback = function(smoothClickTP)
				tbl8.SmoothClickTP = smoothClickTP
			end,
		})

		local n36 = 0

		tbl12.AddKeybind(LocalPlayer, "ClickTPKey", "Click TP", "Z", "Press", function()
			if not tbl12.GetTarget() then
				return
			end
			n36 += 1
			local v20 = n36
			local v21, assemblyRootPart = tbl12.Char()
			assemblyRootPart = assemblyRootPart and assemblyRootPart.AssemblyRootPart
			local v22 = tbl12.GetHit()
			if not assemblyRootPart or not v22 then
				return
			end
			local position = assemblyRootPart.Position
			local n37 = v22.Position + Vector3.new(0, 3, 0)
			local n38 = assemblyRootPart.CFrame - assemblyRootPart.Position
			if not tbl8.SmoothClickTP then
				tbl12.Teleport(assemblyRootPart, CFrame.new(n37) * n38)
				return
			end
			local now2 = tick()

			while true do
				if v20 ~= n36 then
					return
				else
					local n39 = math.min((tick() - now2) / 0.3, 1)
					local n40 = n39 * (2 - n39)
					tbl12.Teleport(assemblyRootPart, CFrame.new(position:Lerp(n37, n40)) * n38)
					task.wait()
					if not (n40 >= 1) then
						continue
					end
					break
				end
			end
		end)

		tbl12.AddKeybind(LocalPlayer, "ResetCharKey", "Reset Character", nil, "Press", function()
			local v20, v21, v22 = tbl12.Char()

			if v22 and v22.Health ~= 0 then
				v22.Health = 0
				v22:ChangeState(Enum.HumanoidStateType.Dead)
			end
		end)

		tbl12.AddKeybind(LocalPlayer, "SitOnBlobmanKey", "Sit on Blobman", nil, "Press", function()
			tbl14.Sit()
		end)

		tbl12.AddKeybind(LocalPlayer, "ZoomKey", "Zoom", nil, "Toggle", function(zoom)
			tbl8.Zoom = zoom

			if zoom then
				pcall(function()
					RunService:UnbindFromRenderStep("RSCZoom")
				end)

				RunService:BindToRenderStep("RSCZoom", Enum.RenderPriority.Camera.Value + 1, tbl12.UpdateZoomCamera)
				cFrame = currentCamera.CFrame
				tbl12.TweenFOV(tbl9.ZoomFOV, 0.35)
			else
				pcall(function()
					RunService:UnbindFromRenderStep("RSCZoom")
				end)

				cFrame = nil
				tbl12.TweenFOV(fieldOfView, 0.35)
			end
		end)

		tbl12.AddKeybind(LocalPlayer, "OwnSelfKey", "Escape any Grab", nil, "Press", tbl12.ExtraEscape)
		LocalPlayer:AddDivider()

		tbl12.AddKeybind(LocalPlayer, "RemoveLegsKey1", "Remove legs", nil, "Press", function()
			tbl12.BreakLimb(localPlayer, "Legs")
		end)

		tbl12.AddKeybind(LocalPlayer, "RemoveArmsKey1", "Remove arms", nil, "Press", function()
			tbl12.BreakLimb(localPlayer, "Arms")
		end)

		tbl12.AddKeybind(LocalPlayer, "RemoveAllKey1", "Remove legs and arms", nil, "Press", function()
			tbl12.BreakLimb(localPlayer, "All")
		end)

		LocalPlayer:AddDivider()

		tbl12.AddKeybind(LocalPlayer, "FrontflipKey", "Frontflip", nil, "Press", function()
			local v20, v21, v22 = tbl12.Char()

			if v20 and v21 and v22 and v22.Health ~= 0 and not tbl8.GucciAntiGrab and not tbl8.Invisibility then
				v22:ChangeState("Jumping")
				task.wait()
				v22.Sit = true

				for i = 1, 360 do
					task.delay(i / 720, function()
						v22.Sit = true
						v21.CFrame = v21.CFrame * CFrame.Angles(-0.0174533, 0, 0)
					end)
				end

				task.wait(0.55)
				v22.Sit = false
			end
		end)

		tbl12.AddKeybind(LocalPlayer, "BackflipKey", "Backflip", nil, "Press", function()
			local v20, v21, v22 = tbl12.Char()

			if v20 and v21 and v22 and v22.Health ~= 0 and not tbl8.GucciAntiGrab and not tbl8.Invisibility then
				v22:ChangeState("Jumping")
				task.wait()
				v22.Sit = true

				for i = 1, 360 do
					task.delay(i / 720, function()
						v22.Sit = true
						v21.CFrame = v21.CFrame * CFrame.Angles(0.0174533, 0, 0)
					end)
				end

				task.wait(0.55)
				v22.Sit = false
			end
		end)
	end

	do
		local Players2 = tbl15.Keybinds:AddRightGroupbox("Players", "users-round")

		tbl12.AddKeybind(Players2, "rmgucciplr", "Remove Gucci Plr", nil, "Press", function()
			local v20 = tbl12.GetTarget()

			if v20 and v20.Parent and Players:FindFirstChild(v20.Parent.Name) then
				tbl12.RemoveGucci(Players:FindFirstChild(v20.Parent.Name))
			end
		end)

		tbl12.AddKeybind(Players2, "bringplr", "Bring Player", nil, "Press", function()
			local v20 = tbl12.GetTarget()
			local playerFromCharacter = v20 and v20.Parent and Players:GetPlayerFromCharacter(v20.Parent)

			if playerFromCharacter then
				tbl12.BringPlayer(playerFromCharacter)
			end
		end)

		tbl12.AddKeybind(Players2, "killplr", "Kill Player", nil, "Press", function()
			local v20 = tbl12.GetTarget()

			if v20 and Players:FindFirstChild(v20.Parent.Name) then
				local v21 = Players:FindFirstChild(v20.Parent.Name)
				tbl12.Kill(v21)
			end
		end)

		tbl12.AddKeybind(Players2, "bkickplr", "Blob Kick Player", nil, "Press", function()
			local v20 = tbl12.GetTarget()

			if v20 and Players:FindFirstChild(v20.Parent.Name) then
				local v21 = Players:FindFirstChild(v20.Parent.Name)
				tbl14.Sit()

				repeat
					task.wait()
				until parent

				tbl14.Kick(v21)
				task.wait(0.1)

				if parent then
					tbl12.DestroyToy(parent)
				end
			end
		end)

		Players2:AddDivider()

		tbl12.AddKeybind(Players2, "RemoveLegsKey", "Remove Legs Mouse", nil, "Press", function()
			local v20 = tbl12.GetTarget()
			if not v20 then
				return
			end
			local v21 = Players:FindFirstChild(v20.Parent.Name)
			if not v21 then
				return
			end
			tbl12.BreakLimb(v21, "Legs")
		end)

		tbl12.AddKeybind(Players2, "RemoveArmsKey", "Remove Arms Mouse", nil, "Press", function()
			local v20 = tbl12.GetTarget()
			if not v20 then
				return
			end
			local v21 = Players:FindFirstChild(v20.Parent.Name)
			if not v21 then
				return
			end
			tbl12.BreakLimb(v21, "Arms")
		end)

		tbl12.AddKeybind(Players2, "RemoveAllKey", "Remove Legs & Arms Mouse", nil, "Press", function()
			local v20 = tbl12.GetTarget()
			if not v20 then
				return
			end
			local v21 = Players:FindFirstChild(v20.Parent.Name)
			if not v21 then
				return
			end
			tbl12.BreakLimb(v21, "All")
		end)
	end

	do
		local Objects = tbl15.Keybinds:AddRightGroupbox("Objects", "boxes")

		tbl12.AddKeybind(Objects, "SpawnPallet", "Spawn Pallet", nil, "Press", function()
			tbl11.SpawnToy:InvokeServer("PalletLightBrown", currentCamera.CFrame, workspace.RotateOrientPart.Rotation)
		end)

		tbl12.AddKeybind(Objects, "anchorobject", "Anchor Object", nil, "Press", tbl12.ToggleAnchor)

		tbl12.AddKeybind(Objects, "destroyobject", "Destroy Object", nil, "Press", function()
			local parent2 = tbl12.GetTarget()
			parent2 = parent2 and parent2.Parent

			if parent2 then
				tbl12.DestroyObject(parent2)
			end
		end)

		tbl12.AddKeybind(Objects, "AutoClicker", "Auto Clicker", nil, "Press", function()
			local v20 = tbl12.GetTarget()
			local parent2 = v20 and v20.Parent

			if not parent2 or tbl7.AutoClicker[parent2] or parent2:IsDescendantOf(map) then
				if parent2 then
					tbl7.AutoClicker[parent2] = nil
				end

				return
			end

			local flag12 = nil

			if Players:FindFirstChild(parent2.Name) then
				flag12 = true
			end

			local highlight = Instance.new("Highlight")
			highlight.Adornee = parent2
			highlight.Parent = parent2
			highlight.FillColor = Color3.fromRGB(152, 171, 28)
			tbl7.AutoClicker[parent2] = true

			if flag12 and parent2:FindFirstChild("HumanoidRootPart") then
				local humanoidRootPart = parent2:FindFirstChild("HumanoidRootPart")
				local humanoid = parent2:FindFirstChild("Humanoid")
				local bodyPosition = Instance.new("BodyPosition")
				bodyPosition.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
				bodyPosition.D = 100
				bodyPosition.Position = humanoidRootPart.Position
				bodyPosition.Parent = humanoidRootPart

				task.spawn(function()
					while true do
						if tbl7.AutoClicker[parent2] and humanoidRootPart.Parent and humanoid and humanoid.Parent and humanoid.Health ~= 0 and fn20() then
							local v21, v22 = tbl12.Char()

							if not v22 then
								continue
							elseif not humanoidRootPart:IsDescendantOf(workspace.PlotItems) then
								task.spawn(tbl12.Ragdoll, parent2)

								if tbl12.GetMagnitude(v22, humanoidRootPart) <= 32 then
									bodyPosition.Parent = humanoidRootPart
									highlight.Enabled = true
									tbl12.Grab(humanoidRootPart)
								else
									bodyPosition.Parent = nil
									bodyPosition.Position = humanoidRootPart.Position
									highlight.Enabled = false
								end

								continue
							end
						end

						break
					end

					tbl7.AutoClicker[parent2] = nil
					tbl12.RNO(humanoidRootPart)
					highlight:Destroy()
					bodyPosition:Destroy()
				end)
			elseif not flag12 then
				if not tbl12.FindNicePart(parent2) then
					tbl7.AutoClicker[parent2] = false
					return
				end

				task.spawn(function()
					while tbl7.AutoClicker[parent2] and v20.Parent and fn20() do
						local v21, v22 = tbl12.Char()

						if v22 then
							if tbl12.GetMagnitude(v22, v20) <= 20 then
								highlight.Enabled = true
								tbl12.Grab(v20)
							else
								highlight.Enabled = false
							end
						end
					end

					tbl7.AutoClicker[parent2] = nil
					tbl12.RNO(v20)
					highlight:Destroy()
				end)
			end
		end)

		tbl12.AddKeybind(Objects, "ControlObject", "Control Object", nil, "Press", function()
			local parent2 = tbl12.GetTarget()
			parent2 = parent2 and parent2.Parent

			if parent2 or tbl8.ControllingSomeone then
				tbl12.ControlCharacter(parent2)
			end
		end)

		tbl12.AddKeybind(Objects, "ExpOnMouse", "Explode on Mouse", nil, "Press", function()
			tbl12.ExplodeMissile(tbl12.GetHit().Position, "BombMissile")
		end)
	end

	do
		local v20 = tbl15.Keybinds:AddLeftGroupbox("Mobile Buttons", "smartphone")
		local MobileKeybindsList = v20:AddDropdown("MobileKeybindsList", { Values = tbl7.KeybindNames, Default = 1, Multi = false, Text = "Select Keybind to Map" })

		v20:AddButton({
			Text = "Create Button",
			Func = function()
				tbl12.AddMobileButton(MobileKeybindsList.Value)
			end,
		}):AddButton({
			Text = "Remove Button",
			Func = function()
				tbl12.RemoveMobileButton(MobileKeybindsList.Value)
			end,
		})
	end

	do
		local Gamepasses = tbl15.Misc:AddLeftTabbox("Gamepasses")
		local Gamepasses2 = Gamepasses:AddTab("Gamepasses", "dollar-sign")
		local tbl16 = { Enabled = false }

		Gamepasses2:AddToggle("FartherReach", {
			Text = "Further Reach Line",
			Default = false,
			Tooltip = "Increases your reach",
			Callback = function(arg)
				local flag12 = arg and not flag11
				if tbl16.Enabled == flag12 then
					return
				end

				if flag12 then
					local gamepassEvents = ReplicatedStorage:FindFirstChild("GamepassEvents")
					local menuToys = ReplicatedStorage:FindFirstChild("MenuToys")
					local furtherReachBoughtNotifier = gamepassEvents and gamepassEvents:FindFirstChild("FurtherReachBoughtNotifier")
					local limitedTimeToyEvent = menuToys and menuToys:FindFirstChild("LimitedTimeToyEvent")
					local fartherReach = localPlayer:FindFirstChild("FartherReach")
					if not (furtherReachBoughtNotifier and furtherReachBoughtNotifier:IsA("RemoteEvent") and limitedTimeToyEvent and limitedTimeToyEvent:IsA("RemoteEvent")) or fartherReach and not fartherReach:IsA("BoolValue") then
						toggles.FartherReach:SetValue(false)
						return fn18("Further Reach is unavailable: required game objects are missing or invalid.")
					end
					local v20 = tbl16
					local v21 = tbl16
					local v22 = tbl16
					local v23 = tbl16
					tbl16.Enabled = true
					v20.Notifier = furtherReachBoughtNotifier
					v21.Event = limitedTimeToyEvent
					v22.Events = gamepassEvents
					v23.Toys = menuToys
					local v24 = tbl16
					local v25 = tbl16
					local boolValue = fartherReach or Instance.new("BoolValue")
					fartherReach = fartherReach and fartherReach.Value
					v24.Line = boolValue
					v25.LineValue = fartherReach
					local line = tbl16.Line
					local line2 = tbl16.Line
					local v26 = localPlayer
					tbl16.Line.Name = "FartherReach"
					line.Value = true
					line2.Parent = v26
					furtherReachBoughtNotifier.Parent = workspace
					limitedTimeToyEvent.Name = "FurtherReachBoughtNotifier"
					limitedTimeToyEvent.Parent = gamepassEvents
					local connection = nil

					local function fn21(character)
						if not connection.Connected or flag11 then
							return
						end
						local grabbingScript = character and character:WaitForChild("GrabbingScript", 5)
						if not (connection.Connected and not flag11 and character == localPlayer.Character and grabbingScript and grabbingScript.Parent == character and grabbingScript:IsA("LocalScript")) then
							return
						end

						if tbl16.Script then
							tbl16.Script:Disconnect()
						end

						local function fn22()
							if connection.Connected and not flag11 and character == localPlayer.Character and grabbingScript.Parent == character and grabbingScript.Enabled and limitedTimeToyEvent.Parent then
								limitedTimeToyEvent:FireServer()
							end
						end

						grabbingScript.Enabled = false
						grabbingScript.Enabled = true

						tbl16.Script = grabbingScript:GetPropertyChangedSignal("Enabled"):Connect(function()
							if grabbingScript.Enabled then
								task.delay(1, fn22)
							end
						end)

						task.delay(1, fn22)
					end

					connection = localPlayer.CharacterAdded:Connect(fn21)
					tbl16.Connection = connection
					task.spawn(fn21, localPlayer.Character)
				else
					tbl16.Enabled = false

					if tbl16.Connection then
						tbl16.Connection:Disconnect()
					end

					if tbl16.Script then
						tbl16.Script:Disconnect()
					end

					if tbl16.Line and tbl16.Line.Parent then
						if tbl16.LineValue == nil then
							tbl16.Line:Destroy()
						else
							tbl16.Line.Value = tbl16.LineValue
						end
					end

					if tbl16.Event and tbl16.Event.Parent and tbl16.Toys.Parent then
						local event = tbl16.Event
						local toys = tbl16.Toys
						tbl16.Event.Name = "LimitedTimeToyEvent"
						event.Parent = toys
					end

					if tbl16.Notifier and tbl16.Notifier.Parent and tbl16.Events.Parent then
						tbl16.Notifier.Parent = tbl16.Events
					end

					local v20 = tbl16
					local v21 = tbl16
					local v22 = tbl16
					local v23 = tbl16
					tbl16.Connection = nil
					v20.Script = nil
					v21.Line = nil
					v22.Event = nil
					v23.Notifier = nil
					local grabbingScript = localPlayer.Character and localPlayer.Character:FindFirstChild("GrabbingScript")

					if grabbingScript and grabbingScript:IsA("LocalScript") then
						grabbingScript.Enabled = false
						grabbingScript.Enabled = true
					end
				end

				local grabParts = workspace:FindFirstChild("GrabParts")

				if grabParts then
					grabParts:Destroy()
				end
			end,
		})

		Gamepasses2:AddToggle("GradientLineT", {
			Text = "Gradient Line",
			Default = false,
			Tooltip = "Changes the color of your line to the selected gradient in Config",
			Callback = function(gradientLine)
				tbl8.GradientLine = gradientLine

				task.spawn(function()
					local gradients = tbl7.Gradients

					while task.wait(0.5) and tbl8.GradientLine and not flag11 do
						local updateLineColorsEvent = ReplicatedStorage.DataEvents.UpdateLineColorsEvent
						local fireServer = updateLineColorsEvent.FireServer
						local colorSequence = ColorSequence.new
						local tbl17 = {}
						local v20 = ColorSequenceKeypoint.new(0, gradients.Color1)
						local v21 = ColorSequenceKeypoint.new(0.125, gradients.Color2)
						local v22 = ColorSequenceKeypoint.new(0.25, gradients.Color3)
						local v23 = ColorSequenceKeypoint.new(0.375, gradients.Color4)
						local v24 = ColorSequenceKeypoint.new(0.5, gradients.Color5)
						local v25 = ColorSequenceKeypoint.new(0.625, gradients.Color6)
						local v26 = ColorSequenceKeypoint.new(0.75, gradients.Color7)
						local v27 = ColorSequenceKeypoint.new(0.875, gradients.Color8)
						local new = ColorSequenceKeypoint.new
						local dotColor = gradients.DotColor
						tbl17[1] = v20
						tbl17[2] = v21
						tbl17[3] = v22
						tbl17[4] = v23
						tbl17[5] = v24
						tbl17[6] = v25
						tbl17[7] = v26
						tbl17[8] = v27

						do
							local values = table.pack(new(1, dotColor))
							table.move(values, 1, values.n, 9, tbl17)
						end

						local color1 = gradients.Color1
						local color2 = gradients.Color2
						local color3 = gradients.Color3
						local color4 = gradients.Color4
						local color5 = gradients.Color5
						local color6 = gradients.Color6
						local color7 = gradients.Color7
						local color8 = gradients.Color8
						local dotColor2 = gradients.DotColor
						fireServer(updateLineColorsEvent, colorSequence(tbl17), color1, color2, color3, color4, color5, color6, color7, color8, dotColor2)
					end
				end)
			end,
		})

		Gamepasses2:AddToggle("FasterEscapeT", {
			Text = "Faster Escape",
			Default = false,
			Tooltip = "Allows you to escape in 3 seconds instead of 12",
			Callback = function(fasterEscape)
				tbl8.FasterEscape = fasterEscape
			end,
		})

		local Config = Gamepasses:AddTab("Config", "settings")

		Config:AddSlider("FastEscapeSlider", {
			Text = "Faster Escape",
			Default = 3,
			Min = 0,
			Max = 12,
			Rounding = 0,
			Compact = true,
			Callback = function(fasterEscape)
				tbl9.FasterEscape = fasterEscape
			end,
		})

		Config:AddDivider()

		Config:AddLabel("Line Color 1"):AddColorPicker("LineC1", {
			Default = tbl7.Gradients.Color1,
			Title = "Line Color 1",
			Callback = function(color1)
				tbl7.Gradients.Color1 = color1
			end,
		})

		Config:AddLabel("Line Color 2"):AddColorPicker("LineC2", {
			Default = tbl7.Gradients.Color2,
			Title = "Line Color 2",
			Callback = function(color2)
				tbl7.Gradients.Color2 = color2
			end,
		})

		Config:AddLabel("Line Color 3"):AddColorPicker("LineC3", {
			Default = tbl7.Gradients.Color3,
			Title = "Line Color 3",
			Callback = function(color3)
				tbl7.Gradients.Color3 = color3
			end,
		})

		Config:AddLabel("Line Color 4"):AddColorPicker("LineC4", {
			Default = tbl7.Gradients.Color4,
			Title = "Line Color 4",
			Callback = function(color4)
				tbl7.Gradients.Color4 = color4
			end,
		})

		Config:AddLabel("Line Color 5"):AddColorPicker("LineC5", {
			Default = tbl7.Gradients.Color5,
			Title = "Line Color 5",
			Callback = function(color5)
				tbl7.Gradients.Color5 = color5
			end,
		})

		Config:AddLabel("Line Color 6"):AddColorPicker("LineC6", {
			Default = tbl7.Gradients.Color6,
			Title = "Line Color 6",
			Callback = function(color6)
				tbl7.Gradients.Color6 = color6
			end,
		})

		Config:AddLabel("Line Color 7"):AddColorPicker("LineC7", {
			Default = tbl7.Gradients.Color7,
			Title = "Line Color 7",
			Callback = function(color7)
				tbl7.Gradients.Color7 = color7
			end,
		})

		Config:AddLabel("Line Color 8"):AddColorPicker("LineC8", {
			Default = tbl7.Gradients.Color8,
			Title = "Line Color 8",
			Callback = function(color8)
				tbl7.Gradients.Color8 = color8
			end,
		})

		Config:AddLabel("Dot Color"):AddColorPicker("Dot Color", {
			Default = tbl7.Gradients.DotColor,
			Title = "Dot Color",
			Callback = function(dotColor)
				tbl7.Gradients.DotColor = dotColor
			end,
		})
	end

	do
		local v20 = tbl15.Misc:AddRightGroupbox("Sound Spam", "volume-2")

		v20:AddDropdown("SoundsToSpam", {
			Values = {
				"Hello",
				"Hi",
				"Hey",
				"Oi",
				"Yo",
				"Heyo",
				"Ayo",
				"UwU",
				"OwO",
				"🙂",
				"😄",
				"Hooray",
				"Yay",
				"Weee",
				":]",
				"<:",
				":>",
				"Fun",
				"Mountain",
				"Yodel",
				"Yodeling",
				"Sing",
				"Oof",
				"Ouch",
				"Dead",
				"Ded",
				"Kill",
				"D:",
				"Ow",
				"D,:",
				"Oops",
				"Oop",
				"😦",
				"Cry",
				"Crying",
				"Weep",
				"Weeping",
				":[",
				";-;",
				"😢",
				"Hmm",
				"What?",
				"?",
				"Uhh",
				"Huh",
				"Ree",
				"Lol",
				"XD",
				"Haha",
				"imao",
				"Ha",
				">:)",
				">:D",
				"Tehe",
				"Hehe",
				"Fling",
				"Flung",
				"Kick",
				"Punch",
				"Fight",
				"Karate",
				"Hit",
				"Aaa",
				"Ahh",
				"Monke",
				"Banana",
				"Monkey",
				"Ooo",
				"Ooh",
				"Spooky",
				"Ghost",
				"Spooked",
				"Spook",
				"Spooks",
				"Grr",
				"Growl",
				"Growling",
				"Growled",
				"Mad",
				"Annoy",
				"Annoying",
				"Annoyed",
				"Ew",
				"Poo",
				"Stinky",
				"Gross",
				"Disgusting",
				"Stench",
				"Om",
				"Nom",
				"Eat",
				"Eating",
				"Ate",
				"Yum",
				"Yummy",
				"1",
				"One",
				"2",
				"Two",
				"3",
				"Three",
				"4",
				"Four",
				"5",
				"Five",
				"Shh",
				"Shush",
				"Hush",
				"Quiet",
				"Silence",
				"Dad",
				"Daddy",
				"Dada",
				"Papa",
				"Father",
				"Mama",
				"Mom",
				"Mum",
				"Mommy",
				"Mother",
				"Gun",
				"Pistol",
				"Shoot",
				"Pew",
				"Shot",
				"Bullet",
				"Grab",
				"Grabbed",
				"Grabbing",
				"Hold",
				"Drink",
				"Drinks",
				"Drinking",
				"Drank",
				"Slurp",
				"Lick",
				"Soda",
				"Burp",
				"Belch",
				"Yeehaw",
				"Bird",
				"Birdy",
				"Birdie",
				"Birds",
				"Birb",
				"Chicken",
				"Fly",
				"Flying",
				"Flew",
				"Cough",
				"Sneeze",
				"Ahem",
			},
			Default = nil,
			ExcludeLocalPlayer = true,
			Multi = true,
			AllowNull = true,
			Searchable = true,
			Text = "Sounds to spam",
			Callback = function(sounds)
				tbl7.Sounds = sounds
			end,
		})

		v20:AddDivider()

		v20:AddSlider("SoundSpamS", {
			Text = "Delay",
			Default = 0.1,
			Min = 0,
			Max = 2,
			Rounding = 2,
			Compact = true,
			Callback = function(soundsExternalDelay)
				tbl9.SoundsExternalDelay = soundsExternalDelay
			end,
		})

		v20:AddToggle("SoundSpamT", {
			Text = "Sound Spam",
			Default = false,
			Callback = function(arg)
				tbl12.SetRuntimeToggle("SoundSpam", arg)
			end,
		})
	end

	do
		local Auto = tbl15.Misc:AddLeftGroupbox("Auto", "bot")

		Auto:AddToggle("autohouse", {
			Text = "Auto-House Teleport",
			Default = false,
			Tooltip = "Teleports you to the house you own at a small amount of time left",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AutoHouse", arg)
			end,
		})

		Auto:AddToggle("AutoSlotsT", {
			Text = "Auto-Slots",
			Default = false,
			Tooltip = "Makes you claim the casino automatically",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("AutoSlot", arg)
			end,
		})
	end

	do
		local v20 = tbl15.Misc:AddRightGroupbox("Aim Assist", "crosshair")

		v20:AddToggle("AimbotToggle", {
			Text = "Toggle",
			Default = false,
			Tooltip = "Aims for you smoothly",
			Callback = function(aimbotEnabled)
				tbl7.AimSettings.AimbotEnabled = aimbotEnabled
				tbl12.UpdateAimConnection()
			end,
		})

		if not lib.IsMobile then
			toggles.AimbotToggle:AddKeyPicker("AimbotKeybind", {
				Text = "Aim Key",
				Default = "X",
				Mode = "Hold",
				NoUI = false,
				ChangedCallback = function(aimKey)
					tbl7.AimSettings.AimKey = aimKey
				end,
			})
		end

		v20:AddDivider("Configuration")

		v20:AddDropdown("TargetPartDD", {
			Values = { "Torso", "Head", "Left Arm", "Right Arm", "Right Leg", "Left Leg" },
			Text = "Target Part",
			Default = "Head",
			Callback = function(targetPart)
				tbl7.AimSettings.TargetPart = targetPart
			end,
		})

		v20:AddToggle("AlwaysOnToggleAB", {
			Text = "Always On",
			Default = lib.IsMobile,
			Tooltip = "Aimbot is always on instead of being on-bind",
			Callback = function(arg)
				tbl7.AimSettings.AlwaysOn = lib.IsMobile or arg
			end,
		})

		if lib.IsMobile then
			toggles.AlwaysOnToggleAB:SetDisabled(true)
		end

		v20:AddToggle("FovCircle", {
			Text = "FOV Circle",
			Default = false,
			Tooltip = "Enables a circle of where the aim will be working",
			Callback = function(fovEnabled)
				tbl7.AimSettings.FOVEnabled = fovEnabled
				tbl12.UpdateAimConnection()
			end,
		}):AddColorPicker("FovCircColor", {
			Default = Color3.new(1, 1, 1),
			Title = "Circle Color",
			Callback = function(color)
				tbl6.Stroke.Color = color
			end,
		})

		v20:AddSlider("AimDistance", {
			Text = "Distance",
			Default = 40,
			Min = 10,
			Max = 150,
			Rounding = 0,
			Compact = true,
			Suffix = " studs",
			Callback = function(saDist)
				tbl7.AimSettings.SADist = saDist
			end,
		})

		v20:AddSlider("AimSmoothness", {
			Text = "Smoothness",
			Default = 0.15,
			Min = 0,
			Max = 1,
			Rounding = 2,
			Compact = true,
			Callback = function(smoothness)
				tbl7.AimSettings.Smoothness = smoothness
			end,
		})

		v20:AddSlider("FOVSize", {
			Text = "FOV Radius",
			Default = 150,
			Min = 10,
			Max = 1000,
			Rounding = 0,
			Compact = true,
			Callback = function(fovRadius)
				tbl7.AimSettings.FOVRadius = fovRadius
			end,
		})
	end

	do
		local Triggerbot = tbl15.Misc:AddLeftGroupbox("Triggerbot", "mouse-left")

		Triggerbot:AddToggle("TriggerToggle", {
			Text = "Toggle",
			Default = false,
			Tooltip = "Clicks when you are aiming at a target",
			Callback = function(triggerbotEnabled)
				local aimSettings = tbl7.AimSettings

				if aimSettings.TriggerbotEnabled ~= triggerbotEnabled then
					aimSettings.TriggerVersion = aimSettings.TriggerVersion + 1
				end

				aimSettings.TriggerbotEnabled = triggerbotEnabled
				tbl12.UpdateAimConnection()
			end,
		})

		if not lib.IsMobile then
			toggles.TriggerToggle:AddKeyPicker("TriggerKeybind", {
				Text = "Triggerbot",
				Default = nil,
				Mode = "Toggle",
				NoUI = false,
				SyncToggleState = true,
			})
		end

		Triggerbot:AddDivider("Configuration")

		Triggerbot:AddSlider("TriggerDelay", {
			Text = "Delay",
			Default = 0.05,
			Min = 0,
			Max = 1,
			Suffix = " seconds",
			Rounding = 2,
			Compact = true,
			Callback = function(triggerDelay)
				tbl7.AimSettings.TriggerDelay = triggerDelay
			end,
		})

		Triggerbot:AddSlider("TriggerDistance", {
			Text = "Distance",
			Default = 33,
			Min = 1,
			Max = 40,
			Rounding = 0,
			Compact = true,
			Suffix = " studs",
			Callback = function(triggerDist)
				tbl7.AimSettings.TriggerDist = triggerDist
			end,
		})

		Triggerbot:AddSlider("TriggerCooldown", {
			Text = "Cooldown",
			Default = 0.4,
			Min = 0,
			Max = 2,
			Rounding = 2,
			Compact = true,
			Suffix = " seconds",
			Callback = function(triggerCooldown)
				tbl7.AimSettings.TriggerCooldown = triggerCooldown
			end,
		})

		local TriggerTricks = Triggerbot:AddToggle("TriggerTricks", {
			Text = "Camera Tricks",
			Default = false,
			Callback = function(triggerTricks)
				tbl7.AimSettings.TriggerTricks = triggerTricks
			end,
		})

		local v20 = Triggerbot:AddDependencyBox()
		v20:SetupDependencies({ { TriggerTricks, true } })

		v20:AddDropdown("TriggerTrick", {
			Text = "Trick",
			Values = { "360 Spin", "720 Spin", "180 Flick" },
			Default = "360 Spin",
			Multi = false,
			Callback = function(triggerTrick)
				tbl7.AimSettings.TriggerTrick = triggerTrick
			end,
		})

		v20:AddSlider("TriggerTrickSpeed", {
			Text = "Trick Speed",
			Default = 1,
			Min = 0.75,
			Max = 2,
			Rounding = 2,
			Compact = true,
			Suffix = "x",
			Callback = function(triggerTrickSpeed)
				tbl7.AimSettings.TriggerTrickSpeed = triggerTrickSpeed
			end,
		})
	end

	do
		local v20 = tbl15.Misc:AddRightGroupbox("Silent Aim", "crosshair")

		v20:AddToggle("SilentAim", {
			Text = "Silent Aim",
			Default = false,
			Tooltip = "Uses the game's raycast when supported, with a hitbox fallback",
			Callback = tbl12.SetSilentAim,
		}):AddKeyPicker("SAIMKeybind", {
			Text = "Silent Aim",
			Default = nil,
			Mode = "Toggle",
			NoUI = false,
			SyncToggleState = true,
		})

		v20:AddToggle("SilentAimIgnoreWhitelist", {
			Text = "Ignore Whitelisted",
			Default = true,
			Callback = function(silentAimIgnoreWhitelist)
				tbl8.SilentAimIgnoreWhitelist = silentAimIgnoreWhitelist
				tbl12.RefreshSilentAim()
			end,
		})

		local SilentAimTargetsOnly = v20:AddToggle("SilentAimTargetsOnly", {
			Text = "Selected Targets Only",
			Default = false,
			Callback = function(silentAimTargetsOnly)
				tbl8.SilentAimTargetsOnly = silentAimTargetsOnly
				tbl12.RefreshSilentAim()
			end,
		})

		local v21 = v20:AddDependencyBox()
		v21:SetupDependencies({ { SilentAimTargetsOnly, true } })
		tbl12.CreatePlayerDropdown(v21, "SilentAimTargets", tbl7.SelectedSilentAimPlayers, true, false, tbl12.RefreshSilentAim)

		v20:AddToggle("SilentAimFOV", {
			Text = "Show FOV Circle",
			Default = false,
			Callback = function(silentAimFOV)
				tbl8.SilentAimFOV = silentAimFOV
				tbl12.UpdateSilentAimFOV()
			end,
		})

		v20:AddLabel("SilentAimMethod", { Text = "Method: Hitbox (Compatibility)", DoesWrap = true })

		v20:AddSlider("SilentAimRadius", {
			Text = "Aim Radius",
			Default = tbl9.SAIMRadius,
			Min = 10,
			Max = 400,
			Rounding = 0,
			Compact = true,
			Suffix = " px",
			Callback = function(saimRadius)
				tbl9.SAIMRadius = saimRadius
				tbl12.UpdateSilentAimFOV()
			end,
		})

		v20:AddSlider("SilentAimSize", {
			Text = "Hitbox Size",
			Default = 10,
			Min = 1,
			Max = 30,
			Rounding = 0,
			Compact = true,
			Suffix = " studs",
			Callback = function(saimHitbox)
				tbl9.SAIMHitbox = saimHitbox

				if tbl8.SilentAim then
					tbl12.RefreshSilentAim()
				end
			end,
		})
	end

	tbl12.SetSilentAim(tbl8.SilentAim)

	do
		local Plots = tbl15.Misc:AddLeftGroupbox("Plots", "table")

		Plots:AddDropdown("SelectedPlotDropdown", {
			Values = { "Green House", "Yellow House", "Purple House", "Blue House", "Chinese House" },
			Text = "Select Plot",
			Default = nil,
			AllowNull = true,
			Callback = function(arg)
				tbl9.SelectedPlot = ({
					["Green House"] = "Plot1",
					["Yellow House"] = "Plot2",
					["Purple House"] = "Plot3",
					["Blue House"] = "Plot4",
					["Chinese House"] = "Plot5",
				})[arg]
			end,
		})

		Plots:AddToggle("AutoClaimPlot", {
			Text = "Auto-Claim Plot",
			Default = false,
			Tooltip = "Automatically claims the plot you select if possible",
			Callback = function(autoClaimPlot)
				tbl8.AutoClaimPlot = autoClaimPlot

				task.spawn(function()
					while tbl8.AutoClaimPlot and task.wait(0.1) do
						if tbl9.SelectedPlot then
							tbl12.ClaimPlot(tbl9.SelectedPlot)
						end
					end
				end)
			end,
		})

		Plots:AddButton({
			Text = "Break Plot Area",
			Tooltip = "Breaks the plot's area, making the game think that the players inside the plot are outside",
			Callback = function()
				tbl12.BreakPlot(workspace.Plots:FindFirstChild(tbl9.SelectedPlot))
			end,
		})

		Plots:AddButton({
			Text = "Fix Plot Area",
			Tooltip = "Fixes the plot area that was broken by using the button above",
			Callback = function()
				local v20 = tbl7.BrokenPlots[tbl9.SelectedPlot]

				if v20 then
					tbl12.DestroyToy(v20)
				end
			end,
		})

		Plots:AddButton({
			Text = "Fling all toys in plot",
			Tooltip = "Flings all toys in the selected plot if possible",
			Callback = function()
				tbl12.DestroyPlot(tbl9.SelectedPlot)
			end,
		})
	end

	tbl15.Misc:AddLeftGroupbox("Cheaters", "drama"):AddButton({
		Text = "Find Cheaters",
		Func = function()
			local tbl16 = {}

			for _, v20 in tbl7.PlayerList, nil, nil do
				if v20 ~= localPlayer then
					local v21, v22, v23 = tbl12.Char(v20)
					local fn21, ragdollTouchedHitbox, firePlayerPart, v24, v25

					if v23 then
						local seatPart = v23.SeatPart

						if seatPart then
							local seatWeld = seatPart:FindFirstChild("SeatWeld")

							if not seatWeld or not seatWeld.Enabled then
								tbl16[v20] = "Has Gucci"
							elseif v22 then
								fn21 = function(arg)
									if not arg or not arg.Parent then
										return
									end

									for _, v26 in arg:GetConnectedParts() do
										if v26.Name == "StickyPart" then
											return true
										end
									end
								end

								ragdollTouchedHitbox = v22:FindFirstChild("RagdollTouchedHitbox")
								firePlayerPart = v22:FindFirstChild("FirePlayerPart")
								v24 = fn21(v22) or fn21(ragdollTouchedHitbox)
								v25 = v24 or fn21(firePlayerPart)

								if v25 then
									tbl16[v20] = "Shuriken in HRP"
								end
							end
						elseif v22 then
							fn21 = function(arg)
								if not arg or not arg.Parent then
									return
								end

								for _, v26 in arg:GetConnectedParts() do
									if v26.Name == "StickyPart" then
										return true
									end
								end
							end

							ragdollTouchedHitbox = v22:FindFirstChild("RagdollTouchedHitbox")
							firePlayerPart = v22:FindFirstChild("FirePlayerPart")
							v24 = fn21(v22) or fn21(ragdollTouchedHitbox)
							v25 = v24 or fn21(firePlayerPart)

							if v25 then
								tbl16[v20] = "Shuriken in HRP"
							end
						end
					elseif v22 then
						fn21 = function(arg)
							if not arg or not arg.Parent then
								return
							end

							for _, v26 in arg:GetConnectedParts() do
								if v26.Name == "StickyPart" then
									return true
								end
							end
						end

						ragdollTouchedHitbox = v22:FindFirstChild("RagdollTouchedHitbox")
						firePlayerPart = v22:FindFirstChild("FirePlayerPart")
						v24 = fn21(v22) or fn21(ragdollTouchedHitbox)
						v25 = v24 or fn21(firePlayerPart)

						if v25 then
							tbl16[v20] = "Shuriken in HRP"
						end
					end
				end
			end

			if not next(tbl16) then
				return fn18("Cheaters not found!")
			end
			local str5 = "Cheaters Found\n\n"

			for k, v20 in pairs(tbl16) do
				str5 ..= ("[%*]\n%*\n\n"):format(tbl12.FormatPlayer(k), v20)
			end

			fn18(str5:sub(1, -3))
		end,
	})

	do
		local Whitelist = tbl15.Lists:AddLeftGroupbox("Whitelist", "shield-check")
		local v20 = tbl12.CreatePlayerDropdown(Whitelist, "Whitelist", tbl7.Whitelisted)

		v20:OnChanged(function()
			if tbl8.SilentAim then
				tbl12.RefreshSilentAim()
			end
		end)

		local tbl16 = {}
		local friendStatusChanged = nil

		pcall(function()
			friendStatusChanged = localPlayer.FriendStatusChanged
		end)

		local function fn21(arg, arg2)
			if flag11 or not tbl8.AutoWhitelistFriends or arg == localPlayer or arg.Parent ~= Players or tbl12.IsProtectedPlayer(arg) then
				return
			end
			local flag12 = v20.Value[arg] == true

			if arg2 then
				if flag12 then
					return
				end
				tbl16[arg.UserId] = true
			else
				if not tbl16[arg.UserId] then
					return
				end
				tbl16[arg.UserId] = nil
				if not flag12 then
					return
				end
			end

			local tbl17 = {}

			for k, v21 in v20.Value, nil, nil do
				if k ~= arg then
					tbl17[k] = v21
				end
			end

			if arg2 then
				tbl17[arg] = true
			end

			v20:SetValue(tbl17)
		end

		local function fn22(arg)
			if arg == localPlayer or arg.Parent ~= Players or not tbl8.AutoWhitelistFriends then
				return
			end
			local ok, result = pcall(localPlayer.IsFriendsWith, localPlayer, arg.UserId)

			if ok then
				fn21(arg, result)
			end
		end

		Whitelist:AddDivider("Settings")

		Whitelist:AddToggle("AutoWhitelistFriends", {
			Text = "Auto Whitelist Friends",
			Default = false,
			Tooltip = "Adds your friends to the whitelist",
			Callback = function(autoWhitelistFriends)
				if tbl8.AutoWhitelistFriends == autoWhitelistFriends then
					return
				end
				tbl8.AutoWhitelistFriends = autoWhitelistFriends
				tbl12.SetRuntimeConnection("AutoWhitelistFriends", Players.PlayerAdded, autoWhitelistFriends, fn22)

				if friendStatusChanged then
					pcall(tbl12.SetRuntimeConnection, "AutoWhitelistStatus", friendStatusChanged, autoWhitelistFriends, function(arg, arg2)
						if arg2 == Enum.FriendStatus.Friend or arg2 == Enum.FriendStatus.NotFriend then
							fn21(arg, arg2 == Enum.FriendStatus.Friend)
						end
					end)
				end

				if not autoWhitelistFriends then
					return
				end

				task.spawn(function()
					for _, v21 in Players:GetPlayers() do
						if flag11 or not tbl8.AutoWhitelistFriends then
							return
						end
						fn22(v21)
					end
				end)
			end,
		})

		Whitelist:AddToggle("WhitelistToggle", {
			Text = "Toggle Whitelist",
			Default = false,
			Tooltip = "Prevents server-wide features from affecting people in the list above",
			Callback = function(whitelistedBypass)
				tbl8.WhitelistedBypass = whitelistedBypass

				if tbl8.SilentAim then
					tbl12.RefreshSilentAim()
				end
			end,
		})
	end

	toggles.WhitelistToggle:SetValue(true)
	toggles.AutoWhitelistFriends:SetValue(true)

	do
		local Immunity = tbl15.Lists:AddRightGroupbox("Immunity", "shield-user")
		tbl12.CreatePlayerDropdown(Immunity, "Immunity", tbl7.ImmunePlayers)
		Immunity:AddDivider("Modes")

		Immunity:AddToggle("ImmunityAGToggle", {
			Text = "Give Anti-Grab",
			Default = false,
			Tooltip = "Makes sure that selected players will not get grabbed",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("ImmunityAntiGrab", arg)
				tbl12.WakeRuntimeGate("ImmunityPosition")
			end,
		})

		Immunity:AddToggle("ImmunityAKToggle", {
			Text = "Give Anti-Kick",
			Default = false,
			Tooltip = "Makes sure that selected players will not get kicked",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("ImmunityAntiKick", arg)
			end,
		})

		Immunity:AddToggle("ImmunityAEToggle", {
			Text = "Give Anti-Explosion",
			Default = false,
			Tooltip = "Restores selected players if an explosion moves them",
			Callback = function(arg)
				tbl12.SetRuntimeToggle("ImmunityAntiExplosion", arg)
				tbl12.WakeRuntimeGate("ImmunityPosition")
			end,
		})
	end

	do
		local Menu = tbl15.Settings:AddLeftGroupbox("Menu", "wrench")
		Menu:AddLabel("Menu Keybind"):AddKeyPicker("menukey", { Text = "Menu Keybind", Mode = "Toggle", Default = "RightShift", NoUI = false })
		lib.ToggleKeybind = options.menukey

		Menu:AddToggle("WatermarkT", {
			Default = true,
			Text = "Watermark",
			Callback = function(arg)
				Watermark:SetVisible(arg)
			end,
		})

		Menu:AddDivider("Keybind Menu")

		Menu:AddToggle("KeybindMenuOpen", {
			Default = false,
			Text = "Open Keybind Menu",
			Callback = function(visible)
				lib.KeybindFrame.Visible = visible
			end,
		})

		if not lib.IsMobile then
			Menu:AddToggle("OnlyAssignedKeybinds", {
				Default = false,
				Text = "Only Show Assigned",
				Callback = function(onlyAssignedKeybinds)
					tbl8.OnlyAssignedKeybinds = onlyAssignedKeybinds
					tbl12.UpdateKeybindMenu()
				end,
			})
		end

		Menu:AddDivider("Mouse")

		Menu:AddToggle("UnlockMouse", {
			Text = "Unlock Mouse",
			Default = false,
			Callback = function(modal)
				textButton.Modal = modal
				UserInputService.MouseIconEnabled = modal
			end,
		}):AddKeyPicker("unlockmousekey", { Text = "Unlock Mouse", Mode = "Toggle", NoUI = false, SyncToggleState = true })

		Menu:AddToggle("MouseLockT", {
			Default = false,
			Text = "Mouse-Lock",
			Callback = function(arg)
				local shiftLockKey = tbl9.ShiftLockKey
				local playerModule = localPlayer.PlayerScripts:FindFirstChild("PlayerModule")
				if not playerModule then
					return
				end
				local cameraModule = playerModule:FindFirstChild("CameraModule")
				if not cameraModule then
					return
				end
				local mouseLockController = cameraModule:FindFirstChild("MouseLockController")
				if not mouseLockController then
					return
				end
				local boundKeys = mouseLockController:FindFirstChild("BoundKeys")

				if not boundKeys then
					boundKeys = Instance.new("StringValue")
					boundKeys.Name = "BoundKeys"
					boundKeys.Parent = mouseLockController
				end

				local value

				if arg then
					value = shiftLockKey
				else
					value = ""
				end

				boundKeys.Value = value
			end,
		}):AddKeyPicker("MouseLockKey", {
			Text = "Mouse-Lock Key",
			Mode = "Toggle",
			Default = "LeftAlt",
			NoUI = true,
			ChangedCallback = function(arg)
				tbl9.ShiftLockKey = arg.Name

				if toggles.MouseLockT and toggles.MouseLockT.Value then
					local mouseLockController = localPlayer.PlayerScripts:FindFirstChild("PlayerModule") and localPlayer.PlayerScripts.PlayerModule:FindFirstChild("CameraModule") and localPlayer.PlayerScripts.PlayerModule.CameraModule:FindFirstChild("MouseLockController")
					local boundKeys = mouseLockController and mouseLockController:FindFirstChild("BoundKeys")

					if boundKeys then
						boundKeys.Value = arg.Name
					end
				end
			end,
		})
	end

	do
		local Network = tbl15.Settings:AddRightGroupbox("Network", "radio-tower")

		Network:AddToggle("PositionPrediction", {
			Text = "Position Prediction",
			Default = false,
			Tooltip = "Predicts the next server position of the target before teleporting to them and trying to grab them. This can cause issues if target's movement sequence isn't linear",
			Callback = function(positionPrediction)
				tbl8.PositionPrediction = positionPrediction
			end,
		})

		Network:AddToggle("DirectGrab", {
			Text = "Direct Grab CFrame",
			Default = false,
			Tooltip = "Changes the position of the second argument to use direct part position instead of your head's LookAt CFrame. This can either help or just reduce your grab distance",
			Callback = function(directGrab)
				tbl8.DirectGrab = directGrab
			end,
		})
	end

	do
		local Display = tbl15.Settings:AddLeftGroupbox("Display", "monitor")
		Display:AddDivider("Cursor")

		Display:AddToggle("ShowCustomCursor", {
			Text = "Custom Cursor",
			Default = true,
			Callback = function(showCustomCursor)
				lib.ShowCustomCursor = showCustomCursor
			end,
		}):AddColorPicker("CursorIconColor", {
			Default = tbl9.CursorIconColor,
			Title = "Cursor Color",
			Callback = tbl12.SetCursorIconColor,
		})

		Display:AddInput("CursorImage", {
			Text = "Image Link/ID",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl12.ResolveAssetInput(arg, "CursorIcon", "image", function(cursorIcon)
					tbl9.CursorIcon = cursorIcon

					if cursorIcon then
						lib:ChangeCursorIcon(cursorIcon)
						lib:ChangeCursorIconSize(UDim2.fromOffset(tbl9.CursorIconSize, tbl9.CursorIconSize))
					else
						lib:ResetCursorIcon()
					end
				end)
			end,
		})

		Display:AddSlider("CursorIconSize", {
			Text = "Custom Cursor Size",
			Default = tbl9.CursorIconSize,
			Min = 8,
			Max = 64,
			Rounding = 0,
			Suffix = " px",
			Compact = true,
			Callback = function(cursorIconSize)
				tbl9.CursorIconSize = cursorIconSize
				lib:ChangeCursorIconSize(UDim2.fromOffset(cursorIconSize, cursorIconSize))
			end,
		})

		Display:AddButton({
			Text = "Reset to Default",
			Func = function()
				options.CursorImage:SetValue("")
				options.CursorIconSize:SetValue(20)
				options.CursorIconColor:SetValue(Color3.new(1, 1, 1))
				lib:ResetCursorIcon()
			end,
		})

		Display:AddDivider("Scale")

		Display:AddDropdown("DPIDropdown", {
			Values = { "50%", "75%", "100%", "125%", "150%", "175%", "200%" },
			Default = "100%",
			Text = "UI Scale",
			Callback = function(arg)
				local str5 = arg:gsub("%%", "")
				local num = tonumber(str5)
				lib:SetDPIScale(num)
			end,
		})

		Display:AddSlider("UICornerSlider", {
			Text = "Corner Radius",
			Default = lib.CornerRadius,
			Min = 0,
			Max = 20,
			Rounding = 0,
			Callback = function(arg)
				v19:SetCornerRadius(arg)
			end,
		})
	end

	do
		local Notifications = tbl15.Settings:AddRightGroupbox("Notifications", "bell-ring")

		local tbl16 = {
			Default = 97643101798871,
			Pop = 124815381429574,
			["Bubble Pop"] = 106994752352532,
			Steam = 18317665126,
			Loaded = 71450094482101,
		}

		Notifications:AddToggle("NotificationMaster", {
			Text = "Master Switch",
			Default = true,
			Tooltip = "Enables or disables every Resonance notification",
			Callback = function(enabled)
				tbl7.NotificationSettings.Enabled = enabled
			end,
		})

		Notifications:AddDropdown("NotificationReceivers", {
			Text = "Event Notifications",
			Values = { "Kicked Player", "Player Left", "Player Rejoined" },
			Default = { "Kicked Player", "Player Left", "Player Rejoined" },
			Multi = true,
			AllowNull = true,
			Callback = function(arg)
				for k in pairs(tbl7.NotificationSettings.Events) do
					tbl7.NotificationSettings.Events[k] = arg[k] == true
				end
			end,
		})

		Notifications:AddDivider("Appearance")

		Notifications:AddDropdown("NotifDropdown", {
			Text = "Presets",
			Values = { "Default", "Pop", "Steam", "Bubble Pop", "Loaded" },
			Default = "Default",
			Multi = false,
			Callback = function(arg)
				if tbl16[arg] then
					options.CustomNotificationSound:SetValue(tbl16[arg])
					fn18("Successfully set sound!")
				end
			end,
		})

		Notifications:AddInput("CustomNotificationSound", {
			Text = "Sound ID/MP3 Link",
			Placeholder = "Roblox sound ID or direct .mp3 link",
			Default = "97643101798871",
			ClearTextOnFocus = false,
			Callback = function(arg)
				tbl9.CustomNotificationSound = tostring(arg or "")

				tbl12.ResolveAssetInput(tbl9.CustomNotificationSound, "NotificationSound", "sound", function(arg2, arg3)
					n34 = arg2 or 97643101798871

					if arg3 then
						fn18("Successfully loaded notification MP3!")
					end
				end, 97643101798871, true)
			end,
		})

		Notifications:AddDropdown("NotificationSide", {
			Values = { "Left", "Right" },
			Default = "Right",
			Text = "Notification Side",
			Callback = function(arg)
				lib:SetNotifySide(arg)
			end,
		})

		Notifications:AddSlider("NotifVolumeSlider", {
			Text = "Volume",
			Default = n35,
			Min = 0,
			Max = 10,
			Rounding = 1,
			Callback = function(arg)
				n35 = arg
			end,
		})

		Notifications:AddButton({
			Text = "Test Notification",
			Func = function()
				fn18("This is how your notifications currently look.", "Notification Test", nil, nil, true)
			end,
		})

		Notifications:AddDivider("Event Messages")

		Notifications:AddLabel({
			Text = [[Variables are replaced automatically:
Kicked: %kickedPlayer%
Left: %leftPlayer%, %listCount%
Rejoined: %rejoinedPlayer%, %listCount%]],
			DoesWrap = true,
		})

		Notifications:AddInput("KickedPlayerNotification", {
			Text = "Kicked Player Message",
			Default = tbl7.NotificationSettings.Templates["Kicked Player"],
			ClearTextOnFocus = false,
			AllowEmpty = false,
			EmptyReset = "%kickedPlayer% has been kicked.",
			Callback = function(arg)
				tbl7.NotificationSettings.Templates["Kicked Player"] = tostring(arg)
			end,
		})

		Notifications:AddInput("LeftPlayerNotification", {
			Text = "Player Left Message",
			Default = tbl7.NotificationSettings.Templates["Player Left"],
			ClearTextOnFocus = false,
			AllowEmpty = false,
			EmptyReset = "%leftPlayer% left and was removed from %listCount% list(s).",
			Callback = function(arg)
				tbl7.NotificationSettings.Templates["Player Left"] = tostring(arg)
			end,
		})

		Notifications:AddInput("RejoinedPlayerNotification", {
			Text = "Player Rejoined Message",
			Default = tbl7.NotificationSettings.Templates["Player Rejoined"],
			ClearTextOnFocus = false,
			AllowEmpty = false,
			EmptyReset = "%rejoinedPlayer% rejoined and was restored to %listCount% list(s).",
			Callback = function(arg)
				tbl7.NotificationSettings.Templates["Player Rejoined"] = tostring(arg)
			end,
		})
	end

	do
		local function fn21(arg)
			if typeof(arg) ~= "UDim2" then
				return
			end
			return { arg.X.Scale, arg.X.Offset, arg.Y.Scale, arg.Y.Offset }
		end

		local function fn22(arg)
			if typeof(arg) ~= "table" then
				return
			end

			for i = 1, 4 do
				if typeof(arg[i]) ~= "number" then
					return
				end
			end

			return UDim2.new(arg[1], arg[2], arg[3], arg[4])
		end

		local function fn23(arg)
			local viewportSize = currentCamera.ViewportSize
			local n36 = arg.AbsolutePosition + arg.AbsoluteSize / 2
			local tbl16 = {}
			local n37 = n36.X / math.max(viewportSize.X, 1)
			local n38 = n36.Y / math.max(viewportSize.Y, 1)
			tbl16[1] = n37
			tbl16[2] = n38
			return tbl16
		end

		local function fn24(arg, arg2, position)
			if not arg or not arg.Parent then
				return
			end

			if position then
				arg.Position = position
			end

			local viewportSize = currentCamera.ViewportSize
			local absoluteSize = arg.AbsoluteSize
			local x = arg.AbsolutePosition.X
			local y = arg.AbsolutePosition.Y

			if typeof(arg2) == "table" and typeof(arg2[1]) == "number" and typeof(arg2[2]) == "number" then
				x = arg2[1] * viewportSize.X - absoluteSize.X / 2
				y = arg2[2] * viewportSize.Y - absoluteSize.Y / 2
			end

			local n36 = math.clamp(x, 6, math.max(6, viewportSize.X - absoluteSize.X - 6))
			local n37 = math.clamp(y, 6, math.max(6, viewportSize.Y - absoluteSize.Y - 6))
			local absolutePosition

			if arg.Parent:IsA("GuiObject") then
				absolutePosition = arg.Parent.AbsolutePosition
			else
				absolutePosition = Vector2.zero
			end

			arg.Position = UDim2.fromOffset(math.round(n36 - absolutePosition.X + arg.AnchorPoint.X * absoluteSize.X), math.round(n37 - absolutePosition.Y + arg.AnchorPoint.Y * absoluteSize.Y))
		end

		local function fn25(arg, arg2)
			if not arg or not arg.Parent or not arg2 then
				return
			end
			local viewportSize = currentCamera.ViewportSize
			local absoluteSize

			if arg.Parent:IsA("GuiObject") then
				absoluteSize = arg.Parent.AbsoluteSize
			else
				absoluteSize = viewportSize
			end

			local uiScale = arg:FindFirstChildOfClass("UIScale")
			uiScale = uiScale and uiScale.Scale or 1
			local n36 = (absoluteSize.Y * arg2.Y.Scale + arg2.Y.Offset) * uiScale
			local n37 = math.min(1, (viewportSize.X - 12) / math.max((absoluteSize.X * arg2.X.Scale + arg2.X.Offset) * uiScale, 1), (viewportSize.Y - 12) / math.max(n36, 1))
			local n38 = arg2.Y.Scale * n37
			local round = math.round
			local n39 = arg2.Y.Offset * n37
			arg.Size = UDim2.new(arg2.X.Scale * n37, math.round(arg2.X.Offset * n37), n38, round(n39))
		end

		local function fn26()
			local mainFrame = v19.MainFrame
			local sidebarWidth = v19:GetSidebarWidth()

			local tbl16 = {
				Position = mainFrame and fn21(mainFrame.Position),
				ScreenPosition = mainFrame and fn23(mainFrame),
				Size = mainFrame and fn21(mainFrame.Size),
				SidebarWidth = sidebarWidth,
				SidebarScale = sidebarWidth / math.max(mainFrame.Size.X.Offset, 1),
				WatermarkPosition = Watermark and Watermark.Label and fn21(Watermark.Label.Position),
				WatermarkScreenPosition = Watermark and Watermark.Label and fn23(Watermark.Label),
				MobileButtons = {},
			}

			for k, v20 in tbl7.ActiveDraggableButtons, nil, nil do
				if v20 and v20.Button and v20.Button.Parent then
					tbl16.MobileButtons[k] = { Position = fn21(v20.Button.Position), ScreenPosition = fn23(v20.Button) }
				end
			end

			return tbl16
		end

		local function fn27(arg)
			if typeof(arg) ~= "table" then
				return
			end
			local mainFrame = v19.MainFrame
			local v20 = fn22(arg.Size)
			local v21 = fn22(arg.Position)
			local v22 = fn22(arg.WatermarkPosition)
			fn25(mainFrame, v20)
			fn24(mainFrame, arg.ScreenPosition, v21)
			fn24(Watermark and Watermark.Label, arg.WatermarkScreenPosition, v22)
			local n36

			if typeof(arg.SidebarScale) == "number" then
				n36 = mainFrame.Size.X.Offset * arg.SidebarScale
			else
				n36 = arg.SidebarWidth
			end

			if typeof(n36) == "number" then
				v19:SetSidebarWidth(n36)
			end

			local tbl16 = {}

			for k in tbl7.ActiveDraggableButtons, nil, nil do
				table.insert(tbl16, k)
			end

			for _, v23 in tbl16, nil, nil do
				tbl12.RemoveMobileButton(v23)
			end

			if typeof(arg.MobileButtons) ~= "table" then
				return
			end

			for k, v23 in arg.MobileButtons, nil, nil do
				if typeof(v23) == "table" then
					local v24 = tbl12.AddMobileButton(k, fn22(v23.Position or v23))

					if v24 then
						fn24(v24.Button, v23.ScreenPosition)
					end
				end
			end
		end

		lib2:SetLibrary(lib)
		lib2:SetFolder("Resonance")
		lib3:SetLibrary(lib)
		local saveJSON = lib3.SaveJSON
		local loadJSON = lib3.LoadJSON

		lib3.SaveJSON = function(arg, arg2)
			local v20, v21, v22 = saveJSON(arg, arg2)
			if not v21 then
				return v20, v21, v22
			end
			local ok, result = pcall(HttpService.JSONDecode, HttpService, v20)
			if not ok or typeof(result) ~= "table" then
				return v20, v21, v22
			end
			result.ResonanceUI = fn26()
			local ok2, result2 = pcall(HttpService.JSONEncode, HttpService, result)
			if ok2 then
				return result2, true
			end
			return v20, v21, v22
		end

		lib3.LoadJSON = function(arg, arg2)
			local ok, result = pcall(HttpService.JSONDecode, HttpService, arg2)
			local v20, v21 = loadJSON(arg, arg2)

			if v20 and ok and typeof(result) == "table" and typeof(result.ResonanceUI) == "table" then
				task.defer(fn27, result.ResonanceUI)
			end

			return v20, v21
		end
	end

	lib3:IgnoreThemeSettings()

	lib3:SetIgnoreIndexes({
		"WhitelistDropdown",
		"ObjectGroup",
		"GroupNoclip",
		"GroupHighlight",
		"GroupFill",
		"GroupOutline",
	})

	lib3:SetFolder("Resonance/FTAP")
	lib3:BuildConfigSection(tbl15.Settings)
	lib3:LoadAutoloadConfig()

	if lib.IsMobile then
		toggles.AlwaysOnToggleAB:SetValue(true)
		toggles.AlwaysOnToggleAB:SetDisabled(true)
	end

	lib2:SetDefaultTheme({
		BackgroundColor = Color3.fromRGB(15, 15, 15),
		MainColor = Color3.fromRGB(25, 25, 25),
		AccentColor = Color3.fromRGB(255, 255, 0),
		OutlineColor = Color3.fromRGB(70, 70, 70),
		FontColor = Color3.fromRGB(255, 255, 255),
		FontFace = "Code",
	})

	task.spawn(function()
		lib2:ApplyToTab(tbl15.Settings)
	end)

	task.defer(function()
		local function fn21(arg)
			if not arg.Value or arg.Value == "None" then
				return nil
			end
			local v20 = table.clone(arg.Modifiers or {})
			table.sort(v20)
			local str5 = ":" .. arg.Value
			return table.concat(v20, "+") .. str5
		end

		for _, v20 in options, nil, nil do
			if v20.Type == "KeyPicker" and v20.OnChanged then
				local changed = v20.Changed
				local v21 = fn21(v20)
				local tbl16 = {}
				local value = v20.Value
				local mode = v20.Mode
				local clone = table.clone
				local modifiers = v20.Modifiers or {}
				local v22 = table.pack(clone(modifiers))
				tbl16[1] = value
				tbl16[2] = mode

				do
					local values = table.pack(table.unpack(v22, 1, v22.n))
					table.move(values, 1, values.n, 3, tbl16)
				end

				local flag12 = false

				v20:OnChanged(function(...)
					if changed then
						changed(...)
					end

					tbl12.UpdateKeybindMenu()
					local v23 = fn21(v20)
					local v24 = tbl16
					local tbl17 = {}
					local value2 = v20.Value
					local mode2 = v20.Mode
					local clone2 = table.clone
					local modifiers2 = v20.Modifiers or {}
					local v25 = table.pack(clone2(modifiers2))
					tbl17[1] = value2
					tbl17[2] = mode2

					do
						local values = table.pack(table.unpack(v25, 1, v25.n))
						table.move(values, 1, values.n, 3, tbl17)
					end

					tbl16 = tbl17
					if v23 == v21 then
						return
					end
					v21 = v23
					if flag12 or not v23 or flag11 then
						return
					end
					local tbl18 = {}

					for k, v26 in options, nil, nil do
						if v26 ~= v20 and v26.Type == "KeyPicker" and fn21(v26) == v23 then
							table.insert(tbl18, v26.Text or k)
						end
					end

					if #tbl18 > 0 then
						table.sort(tbl18)

						v19:AddDialog("KeybindConflict", {
							Title = "Keybind already assigned",
							Description = "This binding is also assigned to: " .. table.concat(tbl18, ", ") .. ". What would you like to do?",
							OutsideClickDismiss = false,
							FooterButtons = {
								{
									Title = "Cancel",
									Order = 1,
									Variant = "Secondary",
									Callback = function()
										if flag11 or fn21(v20) ~= v23 then
											return
										end
										flag12 = true
										v20:SetValue(v24)
										flag12 = false
									end,
								},
								{
									Title = "Replace",
									Order = 2,
									Callback = function()
										if flag11 or fn21(v20) ~= v23 then
											return
										end

										for _, v26 in options, nil, nil do
											if v26 ~= v20 and v26.Type == "KeyPicker" and fn21(v26) == v23 then
												v26:SetValue({ "None", v26.Mode, {} })
											end
										end
									end,
								},
								{ Title = "Keep Both", Order = 3, Variant = "Secondary" },
							},
						})
					end
				end)
			end
		end

		for _, v20 in toggles, nil, nil do
			if v20 and v20.OnChanged then
				v20:OnChanged(tbl12.UpdateEnabledToggleCount)
			end
		end

		tbl12.UpdateKeybindMenu()
		tbl12.UpdateEnabledToggleCount()
	end)

	lib:OnUnload(function()
		local now2 = os.clock()
		flag11 = true
		pcall(tbl12.SetGucciAntiGrab, false)
		pcall(tbl12.CancelServerHop)
		pcall(tbl12.SetSilentAim, false)
		pcall(tbl12.SetDesync, false)
		pcall(tbl12.SetLookFigures, false)
		pcall(tbl12.SetAntiShurikenLag, false)
		pcall(tbl12.SetBrokenPartHighlights, false)
		pcall(tbl12.ClearFling)

		pcall(function()
			tbl12.DestroyToy(v17:FindFirstChild("RSCMicrowave"))
		end)

		pcall(tbl12.CleanupAutoClicker)
		pcall(tbl12.SetCharacterHighlight, false)
		pcall(tbl12.SetBoostFPS, false)
		pcall(tbl12.SetChinaHat, false)
		pcall(tbl12.SetCustomCrosshair, false)
		pcall(tbl12.SetCameraNoclip, false)
		pcall(tbl12.ClearDestroyObjects)
		pcall(tbl12.ClearObjectGroups)
		pcall(tbl12.ClearAnchors)
		pcall(tbl12.ClearAuraVisuals)
		pcall(tbl12.ClearCoconutForms)
		pcall(tbl12.CleanupESP)
		pcall(tbl12.ClearMutedSounds)
		pcall(tbl12.WakeRuntimeGates)
		pcall(tbl12.DisconnectRuntimeConnections)
		pcall(tbl12.StopControlCharacter)
		pcall(tbl12.StopFly)
		pcall(tbl10.CancelAll)
		pcall(tbl13.ClearModels, true)
		pcall(tbl13.CleanupCandidates)

		if v18 then
			pcall(tbl12.DestroyToy, v18)
			v18 = nil
		end

		tbl12.ClearCustomAssets()

		pcall(function()
			RunService:UnbindFromRenderStep("RSCZoom")
		end)

		pcall(function()
			RunService:UnbindFromRenderStep("RSC-AR")
		end)

		for _, toggle in pairs(toggles) do
			if toggle and toggle.SetValue then
				pcall(function()
					toggle:SetValue(toggle.Default or false)
				end)
			end
		end

		table.clear(tbl7.AutoClicker)
		table.clear(tbl7.AutoClickerTargetPoses)

		for k in pairs(tbl8) do
			tbl8[k] = false
		end

		for _, option in pairs(options) do
			if option.SetValue and option.Default ~= nil then
				pcall(function()
					option:SetValue(option.Default)
				end)
			end
		end

		pcall(tbl12.RestoreWaterSettings)
		pcall(tbl12.RestoreSkySettings)

		if Watermark and typeof(Watermark.Label) == "Instance" then
			Watermark.Label:Destroy()
		end

		if typeof(screenGui) == "Instance" then
			screenGui:Destroy()
		end

		if typeof(part2) == "Instance" then
			part2:Destroy()
		end

		if typeof(part3) == "Instance" then
			part3:Destroy()
		end

		getgenv().ResonanceRunning = false
        pcall(function() workspace.FallenPartsDestroyHeight = getgenv().ResonanceOriginalFallenHeight end)
		local v20 = print
		local str5 = ("Successfully Unloaded in %* seconds"):format(string.format("%.3f", os.clock() - now2))
		v20(str5)
	end)

	task.spawn(function()
		for _, v20 in lib.Tabs, nil, nil do
			for _, v21 in v20.Groupboxes, nil, nil do
				v21:Resize()
			end
		end
	end)

	do
		local tbl16 = {}

		Players.PlayerRemoving:Connect(function(player)
			if flag11 then
				return
			end

			if tbl9.SelectedACPoseCenter == player then
				tbl9.SelectedACPoseCenter = nil
			end

			local tbl17 = {}
			local flag12 = tbl7.SelectedPlayersAC[player] == true

			for _, playerDropdown in ipairs(tbl7.PlayerDropdowns) do
				if playerDropdown.Selected[player] then
					playerDropdown.Selected[player] = nil
					playerDropdown.Values[player] = nil
					table.insert(tbl17, playerDropdown)
				end
			end

			if flag12 and tbl12.SyncACPoseTargets then
				task.defer(tbl12.SyncACPoseTargets)
			end

			if #tbl17 == 0 then
				return
			end
			tbl12.NotifyEvent("Player Left", { leftPlayer = tbl12.FormatPlayer(player), listCount = #tbl17 }, "Player Left")
			tbl16[player.UserId] = tbl17
		end)

		Players.PlayerAdded:Connect(function(player)
			local v20 = tbl16[player.UserId]
			if not v20 or flag11 or not getgenv().ResonanceRunning then
				return
			end
			tbl16[player.UserId] = nil

			for _, v21 in ipairs(v20) do
				if not table.find(v21.Dropdown.Values, player) then
					v21.Dropdown:AddValues({ player })
				end

				if v21.Multi == false then
					v21.Dropdown:SetValue(player)
					table.clear(v21.Values)
					v21.Values[player] = true
					table.clear(v21.Selected)
					v21.Selected[player] = true
				else
					local tbl17 = {}

					for k, v22 in pairs(v21.Selected) do
						tbl17[k] = v22
					end

					tbl17[player] = true
					v21.Dropdown:SetValue(tbl17)
					table.clear(v21.Values)

					for k, v22 in pairs(tbl17) do
						v21.Values[k] = v22
					end

					v21.Selected[player] = true
				end
			end

			tbl12.NotifyEvent("Player Rejoined", { rejoinedPlayer = tbl12.FormatPlayer(player), listCount = #v20 }, "Player Rejoined")
		end)
	end

	fn18("Script loaded in " .. math.round((tick() - getgenv().LoadTime) * 100) / 100 .. " seconds", "Resonance", 71450094482101)
	getgenv().LoadTime = nil

	return {
		copyright = "Copyright (c) 2026 Project Resonance. All rights reserved.",
	}
end
]====]
sources.Notices = ""
local run, message = loadstring(sources.Bootstrap, "@Resonance/Bootstrap")
assert(run, message)
return run(sources)
