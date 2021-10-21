local counter = 500
for i = counter, 0, -1 do
    for i,v in pairs(workspace.PlayerVehicles:GetChildren()) do
        local args = {
            [1] = "Vehicle",
            [2] = v.Body.Part,
            [3] = "Sawed Off",
            [5] = 9
        }

        game:GetService("ReplicatedStorage"):FindFirstChild("_CS.Events").WeaponServer:FireServer(unpack(args))
    end
end