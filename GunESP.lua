getgenv().Gun = true

for i,v in pairs(workspace.Entities:GetChildren()) do
    if v.Name == "ToolModel" then
        for i,b in pairs(v:GetChildren()) do
            if b.Name == "PlayerWhoDropped" then
                v:Destroy()
            end
        end
    end
end
task.wait(1)
repeat wait()
    for i,v in pairs(workspace.Entities:GetDescendants()) do
        if v.Name == "GUNESP" then
            v:Destroy()
        end
    end
for i,v in pairs(workspace.Entities:GetChildren()) do
    if v.Name == "ToolModel" then
        for i,b in pairs(v:GetChildren()) do
            if b.Name == "hitbox" then
                if b.Name == "BoxHandleAdornment" then
                    b:Destroy()
                end
                local funny = Instance.new("BoxHandleAdornment")
                funny.Name = "GUNESP"
                funny.Parent = b
                funny.Adornee = b
                funny.AlwaysOnTop = true
                funny.Transparency = .6
                funny.ZIndex = 0
                funny.Size = b.size
                funny.Color3 = Color3.fromRGB(82, 255, 99)
                local funny2 = Instance.new("SelectionBox")
                funny2.Name = "GUNESP"
                funny2.Parent = b
                funny2.Adornee = b
                funny2.LineThickness = 0.02
                funny2.Color3 = Color3.fromRGB(82, 255, 99)
                local bill = Instance.new("BillboardGui", b)
                bill.Name = "GUNESP"
                bill.AlwaysOnTop = true
                bill.StudsOffset = Vector3.new(0,2.5,0)
                bill.Adornee = b
                bill.Size = UDim2.new(2,1,2)
                local text = Instance.new("TextLabel", bill)
                text.Name = "GUNESP"
                text.BackgroundTransparency = 1
                text.Size = UDim2.new(1,0,1,0)
                text.Text = b.Parent.Handle.ToolBG.ToolName.Value
                text.TextColor3 = Color3.fromRGB(205, 117, 255)
                text.Font = "GothamSemibold"
                text.TextSize = 15
                text.TextStrokeTransparency = 0.440
                        end
                    end
                end
            end
until getgenv().Gun == false
for i,v in pairs(workspace.Entities:GetDescendants()) do
    if v.Name == "GUNESP" then
        v:Destroy()
    end
end