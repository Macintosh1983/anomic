local counter = 600
for i = counter, 0, -1 do
    game:GetService("ReplicatedStorage")["_CS.Events"].PaintTool:FireServer(workspace, Color3.new(0, 0, 0))
end
task.wait(1)
game:shutdown("Rejoin and enjoy your 50k!")