local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "gai xinh cug phai di ia", HidePremium = false, IntroText = "nuh uh", IntroIcon = "rbxassetid://4483345998",   SaveConfig = false, ConfigFolder = "CetTest"})
--tabs 1
local Tab = Window:MakeTab({
	Name = "cac",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "On",
	Callback = function()
      		local service = game.GetService
local players = game.Players
local client = players.LocalPlayer
local character = client.Character or client.CharacterAdded:Wait()
local rs = service(game, "RunService")

function get_enemy()
    local hrp
    for _,v in next, workspace:GetChildren() do
        if v:FindFirstChildOfClass("Humanoid") and v:FindFirstChild("Head") and v:FindFirstChild("EnemyMain") and v.Humanoid.Health > 0 and not v:FindFirstChild("ForceField") then
           hrp = v:FindFirstChild("HumanoidRootPart")
        end
    end
    return hrp
end

local uis = game:GetService("UserInputService")
local toggle = true

function m()
    if client.Character then
        if toggle and get_enemy() and character:FindFirstChildOfClass("Tool") then
            task.spawn(function()
                character:FindFirstChildOfClass("Tool").RemoteFunction:InvokeServer("shoot", {[1]=get_enemy().CFrame,[2]=math.huge})
            end)
        elseif not character:FindFirstChildOfClass("Tool") then
            client.Backpack:FindFirstChild("Torrent").Parent = character
        end
    end
end

rs.Heartbeat:Connect(m)
  	end
})

--tabs 2
local Tab = Window:MakeTab({
	Name = "lol",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:Init()