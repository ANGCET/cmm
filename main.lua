local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "mhm", HidePremium = false, IntroText = "nuh uh", IntroIcon = "rbxassetid://4483345998",   SaveConfig = false, ConfigFolder = "CetTest"})
--tabs 1
local Tab = Window:MakeTab({
	Name = "cac",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
  	end
})
--tabs 2
local Tab = Window:MakeTab({
	Name = "lol",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      		print("button pressed")
  	end
})

OrionLib:Init()