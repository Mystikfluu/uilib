local epic = {}
if(game.CoreGui:FindFirstChild("uiwindow")) then
  game.CoreGui.uiwindow:Destroy()
end
function epic:CreateWindow(name)
  local gui = {}
  local Library = Instance.new("ScreenGui")
  local TopBar = Instance.new("ImageLabel")
  local Container = Instance.new("ImageLabel")
  local UIGridLayout = Instance.new("UIGridLayout")
  local TextLabel = Instance.new("TextLabel")
  local minimize = Instance.new("TextButton")
  Library.Name = "uiwindow"
  Library.Parent = game.CoreGui
  Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

  TopBar.Name = "TopBar"
  TopBar.Parent = Library
  TopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  TopBar.BackgroundTransparency = 1.000
  TopBar.Position = UDim2.new(0.248900056, 0, 0.169032261, 0)
  TopBar.Size = UDim2.new(0, 609, 0, 91)
  TopBar.Image = "rbxassetid://3570695787"
  TopBar.ImageColor3 = Color3.fromRGB(15, 15, 15)
  TopBar.ScaleType = Enum.ScaleType.Slice
  TopBar.SliceCenter = Rect.new(100, 100, 100, 100)
  TopBar.SliceScale = 0.120

  Container.Name = "Container"
  Container.Parent = TopBar
  Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  Container.BackgroundTransparency = 1.000
  Container.Position = UDim2.new(-0.000635266304, 0, 0.466400832, 0)
  Container.Size = UDim2.new(0, 609, 0, 338)
  Container.Image = "rbxassetid://3570695787"
  Container.ImageColor3 = Color3.fromRGB(25, 25, 25)
  Container.ScaleType = Enum.ScaleType.Slice
  Container.SliceCenter = Rect.new(100, 100, 100, 100)
  Container.SliceScale = 0.120

  TextLabel.Parent = TopBar
  TextLabel.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
  TextLabel.BorderSizePixel = 0
  TextLabel.Position = UDim2.new(0.334975362, 0, 0, 0)
  TextLabel.Size = UDim2.new(0, 200, 0, 42)
  TextLabel.Font = Enum.Font.SourceSans
  TextLabel.Text = name or ""
  TextLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
  TextLabel.TextSize = 14.000
  TextLabel.TextScaled = true

  UIGridLayout.Parent = Container
  UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
  UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
  UIGridLayout.CellSize = UDim2.new(0, 140, 0, 100)
  spawn(function()
    local turned1 = false
    while wait() and turned1 == false do
      if(#Container:GetChildren() >= 9 and turned1 == false) then
        turned1 = true
        UIGridLayout.CellSize = UDim2.new(0, 70, 0, 50)
      end
    end
    local turned2 = false
    while wait() and turned2 == false do
      if(#Container:GetChildren() >= 50 and turned2 == false) then
        turned2 = true
        UIGridLayout.CellSize = UDim2.new(0, 35, 0, 25)
      end
    end
  end)
  minimize.Name = "minimize"
  minimize.Parent = TopBar
  minimize.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  minimize.BackgroundTransparency = 1
  minimize.BorderSizePixel = 0
  minimize.Position = UDim2.new(0.929392457, 0, - 0.00591705646, 0)
  minimize.Size = UDim2.new(0, 42, 0, 42)
  minimize.Font = Enum.Font.SourceSans
  minimize.Text = "<"
  minimize.TextColor3 = Color3.fromRGB(150, 150, 150)
  minimize.TextScaled = true
  minimize.TextSize = 14.000
  minimize.TextWrapped = true

  local UserInputService = game:GetService("UserInputService")

  local guigot = TopBar

  local dragging
  local dragInput
  local dragStart
  local startPos

  local function update(input)
    local delta = input.Position - dragStart
    guigot.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
  end

  guigot.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
    dragging = true
    dragStart = input.Position
    startPos = guigot.Position

    input.Changed:Connect(function()
      if input.UserInputState == Enum.UserInputState.End then
      dragging = false
    end
  end)
end
end)

guigot.InputChanged:Connect(function(input)
if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
dragInput = input
end
end)

UserInputService.InputChanged:Connect(function(input)
if input == dragInput and dragging then
update(input)
end
end)

local minimized = false
minimize.MouseButton1Click:Connect(function()
if(db == true) then return false else db = true end
minimized = not minimized
if(minimized == true) then
for i, v in pairs(Container:GetChildren()) do
spawn(function()
  if(not v:IsA("UIGridLayout")) then
  v.Visible = false
end
end)
end
minimize.Text = ">"
Container:TweenSize(
UDim2.new(0, 0, 0, 0),
Enum.EasingDirection.In,
Enum.EasingStyle.Quad,
1,
true
)
wait(2)
db = false
else
minimize.Text = "<"
Container:TweenSize(
UDim2.new(0, 609, 0, 338),
Enum.EasingDirection.Out,
Enum.EasingStyle.Quad,
1,
true
)
wait(1)
for i, v in pairs(Container:GetChildren()) do
spawn(function()
if(not v:IsA("UIGridLayout")) then
v.Visible = true
end
end)
end
wait(1)
db = false
end
end)



function gui:Text(text)
local Text = Instance.new("TextLabel")
Text.Name = "Text"
Text.Parent = Container
Text.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Text.BorderSizePixel = 0
Text.Size = UDim2.new(0, 200, 0, 50)
Text.Font = Enum.Font.SourceSans
Text.Text = text or ""
Text.TextColor3 = Color3.fromRGB(150, 150, 150)
Text.TextScaled = true
Text.TextSize = 14.000
Text.TextWrapped = true
end
function gui:Button(text, callback)
local Button = Instance.new("TextButton")
callback = callback or function() end
text = text or ""
Button.Name = "Button"
Button.Parent = Container
Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 0, 0.147928998, 0)
Button.Size = UDim2.new(0, 200, 0, 50)
Button.Font = Enum.Font.SourceSans
Button.Text = text
Button.TextColor3 = Color3.fromRGB(150, 150, 150)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true
Button.MouseButton1Click:Connect(function()
callback()
end)
end
function gui:Box(textholder, type, callback)
local Box = Instance.new("TextBox")
Box.Name = "Box"
Box.Parent = Container
Box.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.656814456, 0, 0, 0)
Box.Size = UDim2.new(0, 200, 0, 50)
Box.Font = Enum.Font.SourceSans
Box.Text = ""
Box.TextColor3 = Color3.fromRGB(150, 150, 150)
Box.TextScaled = true
Box.TextSize = 14.000
Box.TextWrapped = true
Box.PlaceholderText = textholder or ""
Box.FocusLost:Connect(function()
local callbackval = Box.Text or ""
if(type == "number" or type == "int" or type == "num") then
callbackval = tonumber(callbackval)
end
callback(callbackval)
end)
end
function gui:Image(url)
local ImageLabel = Instance.new("ImageLabel")
url = url or " "
ImageLabel.Parent = Container
ImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.328407228, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 200, 0, 50)
ImageLabel.Image = url
return ImageLabel
end
function gui:Toggle(text, callback)
local Toggle = Instance.new("TextButton")
callback = callback or function() end
Toggle.Name = "Toggle"
Toggle.Parent = Container
Toggle.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(-0.000656783581, 0, - 0.00934904814, 0)
Toggle.Size = UDim2.new(0, 140, 0, 100)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = text or ""
Toggle.TextColor3 = Color3.fromRGB(150, 150, 150)
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextWrapped = true
local toggle = false
local nottoggle = Color3.fromRGB(20, 0, 0)
local yestoggle = Color3.fromRGB(0, 20, 0)
Toggle.MouseButton1Click:Connect(function()
toggle = not toggle
if(toggle == true) then
Toggle.BackgroundColor3 = yestoggle
else
Toggle.BackgroundColor3 = nottoggle
end
if(callback) then
callback(toggle)
end
end)
end
return gui
end
return epic
