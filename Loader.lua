loadstring([[
    function LPH_NO_VIRTUALIZE(f) return f end;
]])(); 
if (not LPH_OBFUSCATED) then
    LPH_NO_VIRTUALIZE = function(...) return (...) end;
    LPH_JIT_MAX = function(...) return (...) end;
    LPH_JIT_ULTRA = function(...) return (...) end;
end


-- Ui Loader
loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Adonis-Anticheat-Bypass-11111"))()

repeat wait() until game:IsLoaded() 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/RewritingScripter1/ScriptPlace/refs/heads/main/BelugaCatUi.lua"))()

-- Intro?
local function PlayThatBitch()
        local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "IntroScreen"
        screenGui.Parent = playerGui

        local frame = Instance.new("Frame")
        frame.Name = "IntroFrame"
        frame.Parent = screenGui
        frame.Size = UDim2.new(1, 0, 1, 0)
        frame.BackgroundTransparency = 1

        local imageLabel = Instance.new("ImageLabel")
        imageLabel.Name = "IntroImage"
        imageLabel.Parent = frame
        imageLabel.Size = UDim2.new(0.2, 0, 0.2, 0)  
        imageLabel.Position = UDim2.new(0.5, -0.1, 0.5, -0.1) 
        imageLabel.Image = "rbxassetid://129110636922467"
        imageLabel.BackgroundTransparency = 1
        imageLabel.ImageTransparency = 100
        imageLabel.AnchorPoint = Vector2.new(0.5, 0.5)

        local sound = Instance.new("Sound")
        sound.Name = "IntroSound"
        sound.Parent = frame
        sound.SoundId = "rbxassetid://7116606826"
        sound.Volume = 5
        sound:Play()

        local tweenService = game:GetService("TweenService")

        local blurEffect = Instance.new("BlurEffect")
        blurEffect.Parent = game.Lighting
        blurEffect.Size = 60

        local zoomTweenInfo = TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)  
        local blurTweenInfo = TweenInfo.new(4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)  

        local fadeIn = tweenService:Create(imageLabel, zoomTweenInfo, {ImageTransparency = 0.5})
        local fadeOut = tweenService:Create(imageLabel, zoomTweenInfo, {ImageTransparency = 1})
        local blurTween = tweenService:Create(blurEffect, blurTweenInfo, {Size = 0})  
        local zoomTween = tweenService:Create(imageLabel, zoomTweenInfo, {Size = UDim2.new(0.35, 0, 0.35, 0)})

        fadeIn:Play()
        fadeIn.Completed:Wait()

        zoomTween:Play()
        blurTween:Play()

        wait(3)  

        fadeOut:Play()
        fadeOut.Completed:Wait()

        blurTween:Play()
        blurTween.Completed:Wait()

        blurEffect:Destroy()
        screenGui:Destroy()
    end

    PlayThatBitch()
 
--bitch script Homemade Bruh


getgenv().Evolved = {
    Enabled = false,
    Camera = false,
    HorizontalPrediction = 0.1,
    VerticalPrediction = 0.1,
    jumpoffset = -1,
    ResolverEnabled = false,
    SelectedPart = "HumanoidRootPart",
    AutoPrediction = false,
    AutoPredMode = "PingBased",  
    Macro = "OFF", -- OFF or ON
    ShootDelay = 0,
    NoGroundShot = false,
    AutoAir = false,
    LookAt = false,
    smoothness = 0.1,
    TracerEnabled = false
}



getgenv().Notify = false

local NotificationLoad = loadstring(game:HttpGet('https://raw.githubusercontent.com/treeofplant/Notif/main/library.lua', true))()

function SendNotification(message)
    if getgenv().Notify then
        NotificationLoad:NewNotification({
    ["Mode"] = "Custom", -- Leave like this
    ["Title"] = "Solved | Evolved .cc", -- Title of notification
    ["Description"] = message, -- Description of notification
    ["Notification_Image"] = "rbxassetid://18985517155", -- Side image of notification
    ["Notification_Sound"] = "rbxassetid://5153734608", -- Sound when notification open
    ["Timeout"] = 1.5, -- Timer how long notification lasts
    ["Audio"] = true -- Sound when notifications open
})
    end
end

game:GetService("RunService").Heartbeat:Connect(function()
    local player = game.Players.LocalPlayer
    local character = player.Character

    if character and character:FindFirstChild("HumanoidRootPart") then
        local humanoidRootPart = character.HumanoidRootPart
        local vel = humanoidRootPart.Velocity

        if getgenv().cframespeedtoggle == true then
            humanoidRootPart.CFrame = humanoidRootPart.CFrame +
                character.Humanoid.MoveDirection * getgenv().speedvalue / 0.5
        end

        if getgenv().Evolved.AntiEnabled then
            if getgenv().Evolved.AntiLock == "Predbreaker" then
                humanoidRootPart.Velocity = Vector3.new(0, 0, 0)
            elseif getgenv().Evolved.AntiLock == "Sky" then
                humanoidRootPart.Velocity = Vector3.new(0, 100, 0)
            elseif getgenv().Evolved.AntiLock == "Ground" then
                humanoidRootPart.Velocity = Vector3.new(0, -400, 0)
            end
        end

        game:GetService("RunService").RenderStepped:Wait()
        humanoidRootPart.Velocity = vel
    end
end)


local UserInputService = game:GetService("UserInputService")
local VirtualInputManager = game:GetService("VirtualInputManager")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local CoreGui = game:GetService("CoreGui")
local dragging, dragInput, dragStart, startPos

getgenv().Evolved.LockType = "Namecall"
getgenv().Evolved.RESOLVER = "MoveDirection"

local game_support = {
    [2788229376] = { Remote = "MainEvent", Argument = "UpdateMousePosI2" },
    [12238627497] = { Remote = "MainEvent", Argument = "UpdateMousePos" },
    [5602055394] = { Remote = "MAINEVENT", Argument = "MousePos" },
    [17403265390] = { Remote = "MAINEVENT", Argument = "MOUSE" },
    [17403166075] = { Remote = "MAINEVENT", Argument = "MOUSE" },
    [18111448661] = { Remote = "MAINEVENT", Argument = "MOUSE" },
    [15186202290] = { Remote = "MAINEVENT", Argument = "MOUSE" },
    [11143225577] = { Remote = "MainEvent", Argument = "UpdateMousePos" },
    [15763494605] = { Remote = "MAINEVENT", Argument = "MOUSE" },
    [125825216602676] = { Remote = "MAINEVENT", Argument = "MOUSE" },
    [15166543806] = { Remote = "MAINEVENT", Argument = "MoonUpdateMousePos" },
    [17897702920] = { Remote = "MainEvent", Argument = "UpdateMousePos" },
    [16033173781] = { Remote = "MainEvent", Argument = "UpdateMousePosI2" },
    [7213786345] = { Remote = "MainEvent", Argument = "UpdateMousePosI2" },
    [9825515356] = { Remote = "MainEvent", Argument = "MousePosUpdate" },
    [16859411452] = { Remote = "MainEvent", Argument = "UpdateMousePos" },
    [117734153242642] = { Remote = "MainEvent", Argument = "UpdateMousePos" },
    [14277620939] = { Remote = "MainEvent", Argument = "UpdateMousePos" },
    [17344804827] = { Remote = "MainEvent", Argument = "UpdateMousePos" }
}


    local Sigmaballs = Instance.new("ScreenGui")
Sigmaballs.Name = "Sigmaballs"
Sigmaballs.Parent = game.CoreGui
Sigmaballs.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Sigmaballs.ResetOnSpawn = false

local Button = Instance.new("TextButton")
Button.Name = "FlyButton"
Button.Parent = Sigmaballs
Button.Active = true
Button.Draggable = true
Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Button.BackgroundTransparency = 0
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0, 150, 0, 50)
Button.Position = UDim2.new(0.5, -75, 0.5, -25)
Button.Font = Enum.Font.ArialBold
Button.Text = "Lock: " .. "<font color='rgb(255, 0, 0)'>OFF</font>"
Button.TextColor3 = Color3.fromRGB(255, 255, 255)
Button.TextSize = 25
Button.RichText = true
Button.TextStrokeTransparency = 0.5

local UICorner = Instance.new("UICorner")
UICorner.CornerRadius = UDim.new(0, 8)
UICorner.Parent = Button

local UIStroke = Instance.new("UIStroke")
UIStroke.Parent = Button
UIStroke.Thickness = 2
UIStroke.Color = Color3.fromRGB(25, 25, 25)


local stk = Instance.new("UIStroke")
stk.Parent = Button
stk.Thickness = 3
stk.Color = Color3.fromRGB(255, 255, 255)
stk.ApplyStrokeMode = Enum.ApplyStrokeMode.Border


local player = game.Players.LocalPlayer
local Plr = nil
local enabled = false


local FOV43 = Drawing.new("Circle")
FOV43.Transparency = 0.5
FOV43.Thickness = 2
FOV43.Color = Color3.new(1, 0, 0)
FOV43.Filled = false
FOV43.Radius = 250
FOV43.Position = Vector2.new(workspace.CurrentCamera.ViewportSize.X / 2, workspace.CurrentCamera.ViewportSize.Y / 2)
FOV43.Visible = false

function SigmaOhioPlayer()
    local mouse = player:GetMouse()
    local closestPlayer
    local shortestDistance = math.huge
    local CC = game:GetService("Workspace").CurrentCamera
    local screenCenter = Vector2.new(CC.ViewportSize.X / 2, CC.ViewportSize.Y / 2)
    local fovRadius = FOV43.Radius
    local viewportSize = CC.ViewportSize

    for i, v in pairs(game.Players:GetPlayers()) do
        if v ~= player and v.Character and v.Character:FindFirstChild("Humanoid") and v.Character.Humanoid.Health ~= 0 and v.Character:FindFirstChild("HumanoidRootPart") then
            local pos, onScreen = CC:WorldToViewportPoint(v.Character.PrimaryPart.Position)
            
            if onScreen and pos.X > 0 and pos.Y > 0 and pos.X < viewportSize.X and pos.Y < viewportSize.Y then
                local magnitude = (Vector2.new(pos.X, pos.Y) - screenCenter).magnitude
                if magnitude < fovRadius and magnitude < shortestDistance then
                    closestPlayer = v
                    shortestDistance = magnitude
                end
            end
        end
    end
    return closestPlayer
end

function createTracer(localPlayer, targetPlayer)
    if localPlayer and localPlayer.Character and localPlayer.Character:FindFirstChild("HumanoidRootPart") and
       targetPlayer and targetPlayer.Character and targetPlayer.Character:FindFirstChild("HumanoidRootPart") then

        local tracerAttachment1 = Instance.new("Attachment", localPlayer.Character.HumanoidRootPart)
        local tracerAttachment2 = Instance.new("Attachment", targetPlayer.Character.HumanoidRootPart)

        local tracerBeam = Instance.new("Beam")
        tracerBeam.Attachment0 = tracerAttachment1
        tracerBeam.Attachment1 = tracerAttachment2
        tracerBeam.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
        tracerBeam.Width0 = 0.150
        tracerBeam.Width1 = 0.150
        tracerBeam.Parent = localPlayer.Character.HumanoidRootPart

        tracernigger = tracerBeam  

        targetPlayer.CharacterAdded:Connect(function(newCharacter)
            if tracernigger then
                tracernigger:Destroy()  
                tracernigger = nil
            end

            newCharacter:WaitForChild("HumanoidRootPart")
            tracerAttachment2.Parent = newCharacter.HumanoidRootPart
            tracernigger = tracerBeam  
        end)
    end
end

function destroyTracer()
    if tracernigger then
        tracernigger:Destroy()
        tracernigger = nil
    end
end




function LookAtPlayer(Target)
    local localChar = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
    local localHumanoidRootPart = localChar:FindFirstChild("HumanoidRootPart")

    if localHumanoidRootPart then
        if getgenv().Evolved and getgenv().Evolved.LookAt then
            if Target and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart") then
                local targetHumanoidRootPart = Target.Character.HumanoidRootPart
                
                local targetPosition = targetHumanoidRootPart.Position
                local localPosition = localHumanoidRootPart.Position
                
                local horizontalDirection = Vector3.new(targetPosition.X - localPosition.X, 0, targetPosition.Z - localPosition.Z).unit
                
                localHumanoidRootPart.CFrame = CFrame.new(localPosition, localPosition + horizontalDirection)
                localChar.Humanoid.AutoRotate = false
            end
        else
            localChar.Humanoid.AutoRotate = true
        end
    end
    
    if not (Target and Target.Character and Target.Character:FindFirstChild("HumanoidRootPart")) then
        localChar.Humanoid.AutoRotate = true
    end
end

local function toggleLock()
    if enabled then
        Button.Text = "Lock: " .. "<font color='rgb(255, 0, 0)'>OFF</font>"
        enabled = false
        Plr = nil
        destroyTracer()  

        SendNotification("Locking To : Target Unknown")        
    else
        Plr = SigmaOhioPlayer()
        if Plr then
            enabled = true
            if getgenv().Evolved.TracerEnabled then
            createTracer(game.Players.LocalPlayer, Plr)  
        end
            
            Button.Text = "Lock: " .. "<font color='rgb(0, 255, 0)'>ON</font>"
SendNotification("Locking To :" .. tostring(Plr.Character.Humanoid.DisplayName)
            
            )
        end
    end
end

Button.MouseButton1Click:Connect(toggleLock)

UserInputService.InputBegan:Connect(function(input, processed)
    if not processed and input.KeyCode == Enum.KeyCode.DPadUp then
        toggleLock()
    end
end)

local function getRemoteInfo()
    local placeId = game.PlaceId
    return game_support[placeId] or { Remote = "MainEvent", Argument = "UpdateMousePos" }
end

local remoteInfo = getRemoteInfo()
local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

local Vect3 = Vector3.new


local mt = getrawmetatable(game)
local old = mt.__namecall
setreadonly(mt, false)

mt.__namecall = newcclosure(function(...)
    local args = {...}
    local method = getnamecallmethod()

    if getgenv().Evolved.Enabled and getgenv().Evolved.LockType == "Namecall" then
        if Plr and Plr.Character and method == "FireServer" and (args[2] == remoteInfo.Argument) then
            local selectedPart = getgenv().Evolved.SelectedPart
            local targetPart = Plr.Character[selectedPart]

            if targetPart then
                local velocity
                if getgenv().Evolved.ResolverEnabled then
                    if getgenv().Evolved.RESOLVER == "MoveDirection" then
                        velocity = Plr.Character.Humanoid.MoveDirection * Plr.Character.Humanoid.WalkSpeed
                    elseif getgenv().Evolved.RESOLVER == "LookVector" then
                        velocity = targetPart.CFrame.LookVector * getgenv().Evolved.HorizontalPrediction * 1.0
                    else
                        velocity = targetPart.Velocity
                    end
                else
                    velocity = targetPart.Velocity
                end

                local horizontalPrediction = getgenv().Evolved.HorizontalPrediction
                local verticalPrediction = getgenv().Evolved.VerticalPrediction
                local jumpOffset = getgenv().Evolved.jumpoffset or 0

                if not getgenv().Evolved.ResolverEnabled then
                    args[3] = Vector3.new(
                        targetPart.Position.X + (velocity.X * horizontalPrediction),
                        targetPart.Position.Y + (velocity.Y * verticalPrediction) + jumpOffset,
                        targetPart.Position.Z + (velocity.Z * horizontalPrediction)
                    )
                else
                    args[3] = targetPart.Position + (velocity or Vector3.new()) * horizontalPrediction + Vector3.new(0, jumpOffset, 0)
                end

                return old(unpack(args))
            end
        end
    end

    return old(...)
end)

setreadonly(mt, true)

local Stas = game:GetService("Stats")

local RunService = game:GetService("RunService")


local Blatant = {
    {50, 0.12758545757236864},
    {60, 0.12593338424986178},
    {70, 0.1416310605747206},
    {80, 0.1441481061236737},
    {90, 0.14306050263254388},
    {100, 0.14698413210558095},
    {110, 0.14528324362031425},
    {120, 0.14556534594403},
    {130, 0.14614337395777216},
    {140, 0.14645603036905414},
    {150, 0.14736848095666674},
    {160, 0.14696985547996216},
    {170, 0.14718530231216217},
    {180, 0.1471532933015037},
    {190, 0.1471212842908452},
    {200, 0.14708927528018672},
    {210, 0.14705726626952823},
    {220, 0.14702525725886974},
    {230, 0.14699324824821125},
    {240, 0.14696123923755276},
    {250, 0.14692923022689427},
    {260, 0.14689722121623578},
    {270, 0.1468652122055773},
    {280, 0.1468332031949188},
    {290, 0.1468011941842603},
    {300, 0.1467691851736018},
}

local predictionTable = {
    {0, 0.1332},
    {10, 0.1234555},
    {20, 0.12435},
    {30, 0.124123},
    {40, 0.12766},
    {50, 0.128643},
    {60, 0.1264236},
    {70, 0.12533},
    {80, 0.1321042},
    {90, 0.1421951},
    {100, 0.134143},
    {105, 0.141199},
    {110, 0.142199},
    {125, 0.15465},
    {130, 0.12399},
    {135, 0.1659921},
    {140, 0.1659921},
    {145, 0.129934},
    {150, 0.1652131},
    {155, 0.125333},
    {160, 0.1223333},
    {165, 0.1652131},
    {170, 0.16863},
    {175, 0.16312},
    {180, 0.1632},
    {185, 0.16823},
    {190, 0.18659},
    {205, 0.17782},
    {215, 0.16937},
    {225, 0.176332},
}

local function calculateAdvancePrediction(target, cameraPosition, pingBase)
    local character = Plr.Character and Plr.Character.Parent
    if character then
        local GoodPartTheCom = character:FindFirstChild("HumanoidRootPart")
        if GoodPartTheCom then
            local Velop = GoodPartTheCom.Velocity
            local distanc11 = (cameraPosition - GoodPartTheCom.Position).Magnitude
            local advancePrediction = pingBase + (distanc11 / 1000) * (Velop.Magnitude / 50)
            return advancePrediction
        end
    end
    return pingBase
end

local function updatePredictionValue()
    if getgenv().Evolved.AutoPrediction then
        local pingValue = Stas.Network.ServerStatsItem["Data Ping"]:GetValueString()
        local split = string.split(pingValue, '(')
        local ping = tonumber(split[1])

        if ping then
            if getgenv().Evolved.AutoPredMode == "PingBased" then
                for i = 1, #predictionTable do
                    if ping < predictionTable[i][1] then
                        local value = predictionTable[i][2]
                        getgenv().Evolved.HorizontalPrediction = value
                        getgenv().Evolved.VerticalPrediction = value
                        break
                    end
                end
            elseif getgenv().Evolved.AutoPredMode == "Calculation" then
                local calculatedValue = 0.1 + (ping / 1000) * 0.32
                getgenv().Evolved.HorizontalPrediction = calculatedValue
                getgenv().Evolved.VerticalPrediction = calculatedValue
            elseif getgenv().Evolved.AutoPredMode == "AdvanceCalculation" then
                for i = 1, #predictionTable do
                    if ping < predictionTable[i][1] then
                        local pingBase = predictionTable[i][2]
                        local advancePredictionValue = calculateAdvancePrediction(Plr, workspace.CurrentCamera.CFrame.Position, pingBase)
                        getgenv().Evolved.HorizontalPrediction = advancePredictionValue
                        getgenv().Evolved.VerticalPrediction = advancePredictionValue
                        break
                    end
                end
            elseif getgenv().Evolved.AutoPredMode == "Blatant" then
                for i = 1, #Blatant do
                    if ping < Blatant[i][1] then
                        local value = Blatant[i][2]
                        getgenv().Evolved.HorizontalPrediction = value
                        getgenv().Evolved.VerticalPrediction = value
                        break
                    end
                end
            end
        end
    end
end


RunService.Heartbeat:Connect(function()
    if getgenv().Evolved.Flick and Plr and Plr.Character then
        local playerHumanoid = Plr.Character:FindFirstChild("Humanoid")
        if playerHumanoid and playerHumanoid.Health > 0 then
       
            local targetPart = Plr.Character:FindFirstChild("UpperTorso") or Plr.Character:FindFirstChild("Head")
            if targetPart and playerHumanoid.FloorMaterial == Enum.Material.Air then
                local camera = workspace.CurrentCamera
                local targetPosition = targetPart.Position + targetPart.Velocity * getgenv().Evolved.VerticalPrediction
                camera.CFrame = CFrame.new(camera.CFrame.Position, targetPosition)
            end
        end
    end
end)



RunService.Heartbeat:Connect(function()
    if getgenv().Evolved.Camera and Plr and Plr.Character and getgenv().Evolved.SelectedPart then
        local camera = Workspace.CurrentCamera
        local selectedPart = getgenv().Evolved.SelectedPart
        local targetPart = Plr.Character[selectedPart]

        if targetPart then
            local velocity
            if getgenv().Evolved.ResolverEnabled then
                if getgenv().Evolved.RESOLVER == "MoveDirection" then
                    velocity = Plr.Character.Humanoid.MoveDirection * Plr.Character.Humanoid.WalkSpeed
                elseif getgenv().Evolved.RESOLVER == "LookVector" then
                    velocity = targetPart.CFrame.LookVector * getgenv().Evolved.HorizontalPrediction * 1.0
                else
                    velocity = targetPart.Velocity
                end
            else
                velocity = targetPart.Velocity
            end

            local jumpOffset = getgenv().Evolved.jumpoffset or 0
            local fallOffset = getgenv().Evolved.FallOffset or 0

            local verticalVelocity = velocity.Y
            local appliedVerticalOffset = 0

            if verticalVelocity > 0 then
                appliedVerticalOffset = jumpOffset
            elseif verticalVelocity < 0 then
                appliedVerticalOffset = -fallOffset
            end

            local horizontalPrediction = getgenv().Evolved.HorizontalPrediction
            local verticalPrediction = getgenv().Evolved.VerticalPrediction

            local targetPosition = Vector3.new(
                targetPart.Position.X + (velocity.X * horizontalPrediction),
                targetPart.Position.Y + (velocity.Y * verticalPrediction) + appliedVerticalOffset,
                targetPart.Position.Z + (velocity.Z * horizontalPrediction)
            )

            local smoothness = getgenv().Evolved.smoothness or 0.1 
            camera.CFrame = camera.CFrame:Lerp(CFrame.new(camera.CFrame.Position, targetPosition), smoothness)
        end
    end
end)

local players = game:GetService("Players")
local client = players.LocalPlayer

local function AutoShoot()
    if Plr then
        local character = client.Character
        if character then
            local tool = character:FindFirstChildOfClass("Tool")
            if tool and tool:IsA("Tool") then
                tool:Activate()
            end
        else
            warn("Character not found for client")
        end
    else
        warn("No target (Plr) found")
    end
end

local Shot2ing = false

local function ApplyAntiGround()
    local character = Plr.Character
    local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")
    
    if humanoidRootPart then
        local velocity = humanoidRootPart.Velocity
        local SigmaAir = humanoidRootPart.Position.Y > 2

        if not SigmaAir and velocity.Y < -3 then
            if getgenv().Evolved.NoGroundShot then
                humanoidRootPart.Velocity = Vector3.new(velocity.X, 0, velocity.Z)
            end
        else
            if not getgenv().Evolved.NoGroundShot then
                humanoidRootPart.Velocity = Vector3.new(velocity.X, velocity.Y, velocity.Z)
            end
        end
    end
end

local targetSigm99928 = getgenv().Evolved.ShootDelay 
local targetSigmaPOBALLs = nil

local function checkTarget()
    if Plr and Plr.Character then
        local humanoid = Plr.Character:FindFirstChildOfClass("Humanoid")
        local humanoidRootPart = Plr.Character:FindFirstChild("HumanoidRootPart")
        
        if humanoid and humanoidRootPart then
            local SigmaAir = humanoid:GetState() == Enum.HumanoidStateType.Freefall or humanoidRootPart.Velocity.Y > 2
            
         
            if SigmaAir and getgenv().Evolved.AutoAir then
                if not targetSigmaPOBALLs then
                    
                    targetSigmaPOBALLs = tick()
                else
                   
                    local airDuration = tick() - targetSigmaPOBALLs
                    if airDuration >= targetSigm99928 then
                        if not Shot2ing then
                            Shot2ing = true
                            while Plr and Plr.Character and (SigmaAir) do
                                AutoShoot()
                                wait(0.001)
                               
                                SigmaAir = humanoid:GetState() == Enum.HumanoidStateType.Freefall or humanoidRootPart.Velocity.Y > 2
                                
                                
                                if not SigmaAir then
                                    Shot2ing = false
                                    targetSigmaPOBALLs = nil -- Reset the start time
                                    break
                                end
                            end
                            Shot2ing = false
                        end
                    end
                end
            else
                
                targetSigmaPOBALLs = nil
                Shot2ing = false
            end
        end
    end
end





game:GetService("RunService").RenderStepped:Connect(function()
    LookAtPlayer(Plr)
    checkTarget()
    if Plr then
        updatePredictionValue()
        ApplyAntiGround()
    end
end)


local Camera = workspace.CurrentCamera

getgenv().Filled = false
getgenv().FOVTransparency = 0.8
getgenv().FOVThickness = 1
getgenv().FOVColor = Color3.new(1, 1, 1)
getgenv().ShowFOV = false
getgenv().FOVSize = 25

local FOV = Drawing.new("Circle")
FOV.Transparency = getgenv().FOVTransparency
FOV.Thickness = getgenv().FOVThickness
FOV.Color = getgenv().FOVColor
FOV.Filled = getgenv().Filled
FOV.Radius = getgenv().FOVSize
FOV.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)

local function IsPlayerInFOV(player)
    if not player.Character or not player.Character:FindFirstChild("HumanoidRootPart") then
        return false
    end

    local characterRootPart = player.Character.HumanoidRootPart
    local screenPosition, onScreen = Camera:WorldToViewportPoint(characterRootPart.Position)
    local centerScreenPosition = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    local distance = (centerScreenPosition - Vector2.new(screenPosition.X, screenPosition.Y)).Magnitude

    if onScreen and distance <= FOV.Radius then
        local ray = Ray.new(Camera.CFrame.Position, (characterRootPart.Position - Camera.CFrame.Position).unit * 500)
        local part, position = workspace:FindPartOnRay(ray, LocalPlayer.Character)
        return not part or part:IsDescendantOf(player.Character)
    end
    return false
end


RunService.RenderStepped:Connect(function()
    FOV.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
    FOV.Radius = getgenv().FOVSize
    FOV.Visible = getgenv().ShowFOV
targetSigm99928 = getgenv().Evolved.ShootDelay

    if getgenv().Evolved.SilentAim then
        local NiggerLocated = false

        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and IsPlayerInFOV(player) then
                NiggerLocated = true
                Plr = player
                break
            end
        end

        if not NiggerLocated then
            Plr = nil
        end
    end
end)

--forcefield self
local ForcefieldSettings = {
    Enabled = false,
    Color = Color3.fromRGB(255, 255, 255)
}

local Player = game.Players.LocalPlayer
local RunService = game:GetService("RunService")
local Character = Player.Character or Player.CharacterAdded:Wait()

local function ApplyForcefield(Char)
    for _, Item in ipairs(Char:GetDescendants()) do
        if Item:IsA("BasePart") or Item:IsA("MeshPart") then
            Item.Material = Enum.Material.ForceField
            Item.Color = ForcefieldSettings.Color
        end
    end
end

local function ResetCharacter(Char)
    for _, Item in ipairs(Char:GetDescendants()) do
        if Item:IsA("BasePart") or Item:IsA("MeshPart") then
            Item.Material = Enum.Material.Plastic
            Item.Color = Item.BrickColor.Color
        end
    end
end

Player.CharacterAdded:Connect(function(NewCharacter)
    Character = NewCharacter
    if ForcefieldSettings.Enabled then
        ApplyForcefield(Character)
    end
end)

RunService.Heartbeat:Connect(function()
    if ForcefieldSettings.Enabled then
        ApplyForcefield(Character)
    else
        ResetCharacter(Character)
    end
end)

-- Esp 

local aaaa = {
    BoxOutlineColor = Color3.new(0, 0, 0),
    BoxColor = Color3.new(1, 1, 1),
    NameColor = Color3.new(1, 1, 1),
    HealthOutlineColor = Color3.new(0, 0, 0),
    HealthHighColor = Color3.new(0, 1, 0.164706),
    HealthLowColor = Color3.new(1, 0, 0),
    Teamcheck = false,
    Enabled = false,
    ShowBox = false,
    ShowName = false,
    ShowHealth = false,
    ShowDistance = false,
}

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local localPlayer = Players.LocalPlayer
local camera = workspace.CurrentCamera
local Memory = {}

local Utility = {}

Utility.create = function(class, properties)
    local drawing = Drawing.new(class)
    for property, value in pairs(properties) do
        drawing[property] = value
    end
    return drawing
end

Utility.createEsp = function(player)
    local esp = {
        boxOutline = Utility.create("Square", {Color = aaaa.BoxOutlineColor, Thickness = 3, Filled = false}),
        box = Utility.create("Square", {Color = aaaa.BoxColor, Thickness = 1, Filled = false, Transparency = 1}),
        name = Utility.create("Text", {Color = aaaa.NameColor, Outline = true, Center = true, Size = 13}),
        healthOutline = Utility.create("Line", {Thickness = 1.5, Color = aaaa.HealthOutlineColor}),
        health = Utility.create("Line", {Thickness = 1}),
        distance = Utility.create("Text", {Color = Color3.new(1, 1, 1), Size = 12, Outline = true, Center = true}),
    }

    Memory[player] = esp
end

Utility.removeEsp = function(player)
    local esp = Memory[player]
    if not esp then return end

    for _, drawing in pairs(esp) do
        drawing:Remove()
    end

    Memory[player] = nil
end

Utility.updateEsp = function()
    for player, esp in pairs(Memory) do
        local character = player.Character
        local team = player.Team
        if character and (not aaaa.Teamcheck or (team and team ~= localPlayer.Team)) then
            local rootPart = character:FindFirstChild("HumanoidRootPart")
            local head = character:FindFirstChild("Head")
            local humanoid = character:FindFirstChild("Humanoid")
            local shouldShow = aaaa.Enabled

            if rootPart and head and humanoid and shouldShow then
                local position, onScreen = camera:WorldToViewportPoint(rootPart.Position)
                if onScreen then
                    local hrp2D = camera:WorldToViewportPoint(rootPart.Position)
                    local charSize = (camera:WorldToViewportPoint(rootPart.Position - Vector3.new(0, 3.25, 0)).Y - camera:WorldToViewportPoint(rootPart.Position + Vector3.new(0, 2.9, 0)).Y) / 2
                    local boxSize = Vector2.new(math.floor(charSize * 1.8), math.floor(charSize * 2.0))
                    local boxPosition = Vector2.new(math.floor(hrp2D.X - charSize * 1.8 / 2), math.floor(hrp2D.Y - charSize * 1.75 / 2))

                    if aaaa.ShowName then
                        esp.name.Visible = true
                        esp.name.Text = string.lower(player.DisplayName)
                        esp.name.Position = Vector2.new(boxPosition.X + boxSize.X / 2, boxPosition.Y - 16)
                        esp.name.Color = aaaa.NameColor
                    else
                        esp.name.Visible = false
                    end

                    if aaaa.ShowBox then
                        esp.boxOutline.Size = boxSize
                        esp.boxOutline.Position = boxPosition
                        esp.boxOutline.Color = aaaa.BoxOutlineColor
                        esp.box.Size = boxSize
                        esp.box.Position = boxPosition
                        esp.box.Color = aaaa.BoxColor
                        esp.box.Visible = true
                        esp.boxOutline.Visible = true
                    else
                        esp.box.Visible = false
                        esp.boxOutline.Visible = false
                    end

                    if aaaa.ShowHealth then
                        local healthPercentage = humanoid.Health / humanoid.MaxHealth
                        esp.healthOutline.Visible = true
                        esp.health.Visible = true
                        esp.healthOutline.From = Vector2.new(boxPosition.X - 6, boxPosition.Y + boxSize.Y)
                        esp.healthOutline.To = Vector2.new(esp.healthOutline.From.X, boxPosition.Y)
                        esp.healthOutline.Color = aaaa.HealthOutlineColor
                        esp.health.From = Vector2.new(boxPosition.X - 5, boxPosition.Y + boxSize.Y)
                        esp.health.To = Vector2.new(esp.health.From.X, boxPosition.Y + boxSize.Y - boxSize.Y * healthPercentage)
                        esp.health.Color = aaaa.HealthLowColor:Lerp(aaaa.HealthHighColor, healthPercentage)
                    else
                        esp.healthOutline.Visible = false
                        esp.health.Visible = false
                    end

                    if aaaa.ShowDistance then
                        local distance = (camera.CFrame.Position - rootPart.Position).Magnitude
                        esp.distance.Text = string.format("%d studs", distance)
                        esp.distance.Position = Vector2.new(boxPosition.X + boxSize.X / 2, boxPosition.Y + boxSize.Y + 5)
                        esp.distance.Visible = true
                    else
                        esp.distance.Visible = false
                    end
                else
                    for _, drawing in pairs(esp) do
                        drawing.Visible = false
                    end
                end
            else
                for _, drawing in pairs(esp) do
                    drawing.Visible = false
                end
            end
        else
            for _, drawing in pairs(esp) do
                drawing.Visible = false
            end
        end
    end
end

for _, player in ipairs(Players:GetPlayers()) do
    if player ~= localPlayer then
        Utility.createEsp(player)
    end
end

Players.PlayerAdded:Connect(function(player)
    if player ~= localPlayer then
        Utility.createEsp(player)
    end
end)

Players.PlayerRemoving:Connect(function(player)
    Utility.removeEsp(player)
end)

RunService.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function(s)
    Utility.updateEsp(s)
end))




-- Dont Delete This
local v96 = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name;
local v97 = os.date("%Y-%m-%d");
local v19 = game:GetService("Players");
local v98 = v19.LocalPlayer;
local v99 = "Buyer";
if (v98.Name == "computerplayer442") then
	v99 = "BurritoCat";
elseif (v98.Name == "pzoz853") then
	v99 = "Taco";
end
local v102 = game.Players.LocalPlayer.Name;


local Window = Library:Window({["Name"]=('Evolved.lol | ' .. v96 .. " | " .. v97 .. ' | ' .. v99 .. ': ' .. v102 .. ''),["Amount"]=(7)})


local Watermark = Library:Watermark({Name = string.format("$$ Evolved.lol | FreeUser | Build in Lua $$")})
Watermark:SetVisible(true)


local Indicator = Library:Indicator({Name = "New Indicator"})

-- Indicator Options

local TextIndicator = Indicator:NewValue({Name = "New Text", Value = "value here"})
local BarIndicator = Indicator:NewBar({Name = "New Bar", Value = 10, Min = 50, Max = 100})

--
local Page = Window:Page({Name = "Main"})
local Visual = Window:Page({Name = "Esp/Visual"})
local Players = Window:Page({Name = "Players"})
local Settings = Window:Page({Name = "Settings"})


local Main = Page:Section({Name = "Camlock", Side = "Left"})
local Set = Page:Section({Name = "Settings", Side = "Right"})
local Idk = Visual:Section({Name = "Cframe", Side = "Left"})
local fck = Visual:Section({Name = "Self Esp", Side = "Right"})
local ggs = Visual:Section({Name = "Enemy Esp", Side = "Left"})


Main:Toggle({
    Name = "Target",
    Default = false,
    Callback = function(v)
      getgenv().Evolved.Enabled = v
end})

Main:Toggle({
    Name = "Cam",
    Default = false,
    Callback = function(v)
      getgenv().Evolved.Camera = v
end})

Main:List({
    Name = "Select Aimpart",
    Options = {"Head", "UpperTorso", "HumanoidRootPart", "LowerTorso"},
    Default = "HumanoidRootPart",
    Callback = function(v)
        getgenv().Evolved.SelectedPart = v
    end
})

Main:Toggle({
    Name = "Notification",
    Default = false,
    Callback = function(v)
      getgenv().Notify = v
end})

Main:Toggle({
    Name = "Auto Pred",
    Default = false,
    Callback = function(v)
     getgenv().Evolved.AutoPrediction = v
end})

Main:Toggle({
    Name = "NoGroundshot",
    Default = false,
    Callback = function(v)
      getgenv().Evolved.NoGroundShot = v
end})

Main:Toggle({
    Name = "Resolver",
    Default = false,
    Callback = function(v)
      getgenv().Evolved.ResolverEnabled = v
end})

Main:Toggle({
    Name = "Flick Air",
    Default = false,
    Callback = function(v)
     getgenv().Evolved.Flick = v
end})

Main:Toggle({
    Name = "Look At",
    Default = false,
    Callback = function(v)
     getgenv().Evolved.LookAt = v
end})

Main:Toggle({
    Name = "Auto Air",
    Default = false,
    Callback = function(v)
     getgenv().Evolved.AutoAir = v
end})

Set:List({
    Name = "Select AutoPred Type",
    Options = {"PingBased", "Blatant"},
    Default = "PingBased",
    Callback = function(v)
        getgenv().Evolved.AutoPredMode = v
    end
})

Set:Textbox({
    Name = "Horizontal",
    Default = "0.1",
    Callback = function(v)
      getgenv().Evolved.HorizontalPrediction = v
end})

Set:Textbox({
    Name = "Vertical",
    Default = "0.1",
    Callback = function(v)
      getgenv().Evolved.VerticalPrediction = v
end})

Set:Textbox({
    Name = "OffSet",
    Default = "-1.5",
    Callback = function(v)
      getgenv().Evolved.jumpoffset = v
end})

Set:Textbox({
    Name = "Smoothness",
    Default = "0.1",
    Callback = function(v)
      getgenv().Evolved.smoothness = v
end})

Set:Textbox({
    Name = "Air Delay Shoot",
    Default = "0",
    Callback = function(v)
      getgenv().Evolved.ShootDelay = tonumber(v)
end})

Players:PlayerList({})

Idk:Toggle({
    Name = "Enable Cframe",
    Default = false,
    Callback = function(v)
     getgenv().cframespeedtoggle = v
end})

Idk:Slider({
    Name = "Cframe Speed",
    Min = 0,
    Max = 15,
    Default = 10,
    Decimals = 1,
    Callback = function(State)
     getgenv().speedvalue = State
end})

fck:Toggle({
    Name = "Enable Trail",
    Default = false,
    Callback = function(v)
             getgenv().trail = v

        local function createTrail(character)
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
            if not humanoidRootPart:FindFirstChild("Trail") then
                local Trail = Instance.new("Trail", humanoidRootPart)
                Trail.Name = "Trail"
                humanoidRootPart.Material = Enum.Material.Neon

                local Atch0 = Instance.new("Attachment", humanoidRootPart)
                Atch0.Position = Vector3.new(0, 1, 0)
                local Atch1 = Instance.new("Attachment", humanoidRootPart)
                Atch1.Position = Vector3.new(0, -1, 0)

                Trail.Attachment0 = Atch0
                Trail.Attachment1 = Atch1
                Trail.Color = ColorSequence.new(trailColor)
                Trail.Lifetime = 1
                Trail.Transparency = NumberSequence.new(0, 0)
                Trail.LightEmission = 1
                Trail.WidthScale = NumberSequence.new(0.08)
            end
        end

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()

        character:WaitForChild("HumanoidRootPart")

        if getgenv().trail then
            createTrail(character)
        else
            local existingTrail = character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Trail")
            if existingTrail then
                existingTrail:Destroy()
            end
        end

        player.CharacterAdded:Connect(function(newCharacter)
            wait(1)
            if getgenv().trail then
                createTrail(newCharacter)
            end
        end)
end}):Colorpicker({
     Name = "Trail Color",
     Flag = "Trail Color", 
     Default = Color3.new(1, 1, 1),
     Callback = function(State)
       trailColor = State

        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local existingTrail = humanoidRootPart:FindFirstChild("Trail")
        if existingTrail then
            existingTrail.Color = ColorSequence.new(Value)
        end
end})


fck:Slider({
    Name = "Trail Time",
    Min = 0,
    Max = 15,
    Default = 10,
    Decimals = 1,
    Callback = function(State)
      local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

        local existingTrail = humanoidRootPart:FindFirstChild("Trail")
        if existingTrail then
            existingTrail.Lifetime = State
        end
end})

fck:Toggle({
    Name = "Enable ForceField",
    Default = false,
    Callback = function(v)
      ForcefieldSettings.Enabled = v
end}):Colorpicker({
     Name = "Trail Color",
     Flag = "Trail Color", 
     Default = Color3.new(1, 1, 1),
     Callback = function(State)
       ForcefieldSettings.Color = State
end})

ggs:Toggle({
    Name = "Enable",
    Default = false,
    Callback = function(v)
      aaaa.Enabled = v
end})

ggs:Toggle({
    Name = "Box",
    Default = false,
    Callback = function(v)
      aaaa.ShowBox = v
end})

ggs:Toggle({
    Name = "Health",
    Default = false,
    Callback = function(v)
      aaaa.ShowHealth = v
end})

ggs:Toggle({
    Name = "Name",
    Default = false,
    Callback = function(v)
       aaaa.ShowName = v
end})

ggs:Toggle({
    Name = "Distance",
    Default = false,
    Callback = function(v)
      aaaa.ShowDistance = v
end})





-- Ui Close / Open Button
Library:SetOpen(false);
local v135 = Instance.new("ScreenGui");
v135.Name = "Ui22";
v135.Parent = game.CoreGui;
v135.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
v135.ResetOnSpawn = false;
local v142 = Instance.new("ImageButton");
v142.Name = "Image3";
v142.Parent = v135;
v142.Active = true;
v142.Draggable = true;
v142.BackgroundColor3 = Color3.fromRGB(1279 - (1147 + 112), 5 + 15, 40 - 20);
v142.BackgroundTransparency = 1;
v142.Size = UDim2.new(0, 90, 0, 24 + 66);
v142.Image = "rbxassetid://129110636922467";
v142.Position = UDim2.new(698 - (335 + 362), -(90 + 5), 0 - 0, 5);
local v152 = Instance.new("UICorner");
v152.CornerRadius = UDim.new(0.2, 0);
v152.Parent = v142;
v142.MouseButton1Click:Connect(function()
	local v347 = 0;
	while true do
		if (v347 == (0 - 0)) then
			Open = not Open;
			Library:SetOpen(Open);
			break;
		end
	end
end);
