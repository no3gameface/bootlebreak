local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Knit = require(ReplicatedStorage.Packages.Knit)

local HelloService = Knit.CreateService({
    Name = "HelloService",
    Client = {}
})

function HelloService:KnitStart()
    print("HelloService started")
end

return HelloService
