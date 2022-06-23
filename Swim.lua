--Simple Swim script made by casanova 
--Github cfreemepq

local Flying = false
local Key = "f"
local FlySpeed = 100
local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()

game:GetService("RunService").Stepped:Connect(function()
	if Flying == true then
		Player.Character.Humanoid:ChangeState(4)
		Player.Character.Humanoid.WalkSpeed = FlySpeed
	end
end)

Mouse.KeyDown:Connect(function(Input)
	if Input == string.lower(Key) then
		Flying = not Flying
		Player.Character.Humanoid:ChangeState(4)
		Player.Character.Humanoid.WalkSpeed = game.StarterPlayer.CharacterWalkSpeed
	end
end)
