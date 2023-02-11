local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
if game.PlaceId == 6516141723 then
OrionLib:MakeNotification({
	Name = "Oops!",
	Content = "Please execute in game",
	Image = "rbxassetid://10856448685",
	Time = 5
})
end
local CF = CFrame.new
local Window = OrionLib:MakeWindow({Name = "Doors Hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})
local MainScripts = Window:MakeTab({
	Name = "MainScripts",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
local Section = MainScripts:AddSection({
	Name = "OPTIONAL!"
MainScripts:AddButton({
	Name = "Delete humanoidrootpart",
	Callback = function()
      		local plr = game.Players.LocalPlayer
		workspace:WaitForChild(plr.Name).HumanoidRootPart:Remove()
  	end    
local Section = MainScripts:AddSection({
	Name = "Speed"
MainScripts:AddButton({
	Name = "Normal",
	Callback = function()
      		local plr = game.Players.LocalPlayer
		workspace:WaitForChild(plr.Name).Humanoid.WalkSpeed = 16
  	end    
MainScripts:AddButton({
	Name = "30",
	Callback = function()
      		local plr = game.Players.LocalPlayer
		workspace:WaitForChild(plr.Name).Humanoid.WalkSpeed = 30
  	end    
MainScripts:AddButton({
	Name = "50",
	Callback = function()
      		local plr = game.Players.LocalPlayer
		workspace:WaitForChild(plr.Name).Humanoid.WalkSpeed = 50
  	end 
MainScripts:AddButton({
	Name = "100",
	Callback = function()
      		local plr = game.Players.LocalPlayer
		workspace:WaitForChild(plr.Name).Humanoid.WalkSpeed = 100
  	end 
local Section = MainScripts:AddSection({
	Name = "Main"
MainScripts:AddButton({
	Name = "Skip Door",
	Callback = function()
        pcall(function()
            local HasKey = false
            local CurrentDoor = workspace.CurrentRooms[tostring(game:GetService("ReplicatedStorage").GameData.LatestRoom.Value)]:WaitForChild("Door")
            for i,v in ipairs(CurrentDoor.Parent:GetDescendants()) do
                if v.Name == "KeyObtain" then
                    HasKey = v
                end
            end
            if HasKey then
                game.Players.LocalPlayer.Character:PivotTo(CF(HasKey.Hitbox.Position))
                wait(0.3)
                fireproximityprompt(HasKey.ModulePrompt,0)
                game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
                wait(0.3)
                fireproximityprompt(CurrentDoor.Lock.UnlockPrompt,0)
            end
            if LatestRoom == 50 then
                CurrentDoor = workspace.CurrentRooms[tostring(LatestRoom+1)]:WaitForChild("Door")
            end
            game.Players.LocalPlayer.Character:PivotTo(CF(CurrentDoor.Door.Position))
            wait(0.3)
            CurrentDoor.ClientOpen:FireServer()
        end)
  	end    
local Tab = Window:MakeTab({
	Name = "fr",
	Icon = "rbxassetid://8908340771",
	PremiumOnly = false
Tab:AddToggle({
	Name = "i use wearedevs",
	Default = false,
	Callback = function(iuwrd)
		idhv:Set(false)
	end  
Tab:AddToggle({
	Name = "i dont have viruses",
	Default = false,
	Callback = function(idhv)
		iuwrd:Set(false)
	end    
})
})
})
})   
})
})
})
})
})
})
})
})
})
OrionLib:Init()