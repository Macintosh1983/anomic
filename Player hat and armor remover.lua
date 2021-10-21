local target = "Wildun25"

for i,v in pairs (game:GetService("Workspace")[target]:GetChildren()) do
    local args = {
        [1] = v,
        [2] = "PickUp"
    }
    
    game:GetService("ReplicatedStorage")["_CS.Events"].Dropper:FireServer(unpack(args))
end