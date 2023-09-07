local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "gai xinh cug phai di ia", HidePremium = false, IntroText = "nuh uh", IntroIcon = "rbxassetid://4483345998",   SaveConfig = false, ConfigFolder = "CetTest"})
--value
_G.Toggle = true


--function
function Toggle()
while _G.Toggle == true do 
  task.wait(0.01)
   for i = 1, 20 do
  task.spawn(function()
  game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shattering Vain").RemoteFunction:InvokeServer("hit", {100000000000, 1, game:GetService("Players").LocalPlayer.Character.Humanoid})
        wait()
  end)
    end 
  end 
end

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

Tab:AddToggle({
	Name = "ShatteringVain Kill Aura",
	Default = false,
	Callback = function(Value)
		_G.Toggle = Value
      Toggle()
	end
})

--tabs 2
local Tab = Window:MakeTab({
	Name = "lol",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OrionLib:Init()