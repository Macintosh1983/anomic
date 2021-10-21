getgenv().Printer = true

repeat wait()
    for i,v in pairs(workspace.Entities:GetDescendants()) do
        if v.Name == "PRINTERESP" then
            v:Destroy()
        end
    end
for i,v in pairs(workspace.Entities:GetChildren()) do
    if v.Name == "Simple Printer" then
        for i,b in pairs(v:GetChildren()) do
            if b.Name == "hitbox" then
                if b.Name == "BoxHandleAdornment" then
                    b:Destroy()
                end
                local funny = Instance.new("SelectionBox")
                funny.Name = "PRINTERESP"
                funny.Parent = b
                funny.Adornee = b
                funny.LineThickness = 0.03
                funny.Color3 = Color3.fromRGB(82, 255, 99)
            if b.Parent.Properties.ItemLocked.Value == false then
                funny.Color3 = Color3.fromRGB(82, 255, 99)
                else if b.Parent.Properties.ItemLocked.Value == true then
                funny.Color3 = Color3.fromRGB(255, 82, 82)
                end
            end
                local funny2 = Instance.new("BoxHandleAdornment")
                funny2.Name = "PRINTERESP"
                funny2.Parent = b
                funny2.Adornee = b
                funny2.AlwaysOnTop = true
                funny2.Transparency = 0.8
                funny2.ZIndex = 0
                funny2.Size = b.size
            if b.Parent.Properties.ItemLocked.Value == false then
                funny2.Color3 = Color3.fromRGB(82, 255, 99)
                else if b.Parent.Properties.ItemLocked.Value == true then
                funny2.Color3 = Color3.fromRGB(255, 82, 82)
                end
            end
                local bill = Instance.new("BillboardGui", b)
                bill.Name = "PRINTERESP"
                bill.AlwaysOnTop = true
                bill.StudsOffset = Vector3.new(0,2.5,0)
                bill.Adornee = b
                bill.Size = UDim2.new(2,1,2)
                local text = Instance.new("TextLabel", bill)
                text.Name = "PRINTERESP"
                text.BackgroundTransparency = 1
                text.Size = UDim2.new(1,0,1,0)
                text.Text = "$"..b.Parent.Properties.CurrentPrinted.Value
                text.TextColor3 = Color3.fromRGB(252, 173, 3)
                text.Font = "GothamSemibold"
                text.TextSize = 15
                text.TextStrokeTransparency = 0.440
                        end
                    end
                end
            end
until getgenv().Printer == false
for i,v in pairs(workspace.Entities:GetDescendants()) do
    if v.Name == "PRINTERESP" then
        v:Destroy()
    end
end