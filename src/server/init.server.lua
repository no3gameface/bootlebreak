local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = ReplicatedStorage:WaitForChild("Packages")
local Knit = require(Packages.Knit)

Knit.AddServices(script:WaitForChild("Services"))

Knit.Start()
	:andThen(function()
		print("[Server] Knit started")
	end)
	:catch(warn)
