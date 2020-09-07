local epic = {}
if(game.CoreGui:FindFirstChild("uiwindow")) then
  game.CoreGui.uiwindow:Destroy()
end
function epic:CreateWindow(name)

  local epic2 = {}
  local Library = Instance.new("ScreenGui")
  local TopBar = Instance.new("ImageLabel")
  local TextLabel = Instance.new("TextLabel")
  local EmptyContainer = Instance.new("ImageLabel")

  local minimize = Instance.new("TextButton")
  local minimize2 = Instance.new("TextButton")
  local Frame = Instance.new("ScrollingFrame")
  local UIGridLayout_2 = Instance.new("UIGridLayout")






  minimize.Name = "minimize"
  minimize.Parent = TopBar
  minimize.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  minimize.BackgroundTransparency = 1.000
  minimize.BorderSizePixel = 0
  minimize.Position = UDim2.new(0.0222886205, 0, - 0.0169060677, 0)
  minimize.Rotation = 90.000
  minimize.Size = UDim2.new(0, 42, 0, 42)
  minimize.Font = Enum.Font.SourceSans
  minimize.Text = "<"
  minimize.TextColor3 = Color3.fromRGB(150, 150, 150)
  minimize.TextScaled = true
  minimize.TextSize = 14.000
  minimize.TextWrapped = true

  minimize2.Name = "minimize2"
  minimize2.Parent = TopBar
  minimize2.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  minimize2.BackgroundTransparency = 1.000
  minimize2.BorderSizePixel = 0
  minimize2.Position = UDim2.new(0.926121354, 0, - 0.00591705646, 0)
  minimize2.Size = UDim2.new(0, 42, 0, 42)
  minimize2.Font = Enum.Font.SourceSans
  minimize2.Text = "<"
  minimize2.TextColor3 = Color3.fromRGB(150, 150, 150)
  minimize2.TextScaled = true
  minimize2.TextSize = 14.000
  minimize2.TextWrapped = true

  Frame.Parent = TopBar
  Frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
  Frame.BorderSizePixel = 0
  Frame.Position = UDim2.new(0.987, 0, 0, 0)
  Frame.Size = UDim2.new(0, 129, 0, 380)
  Frame.CanvasPosition = Vector2.new(0, 0)
  Frame.CanvasSize = UDim2.new(0.25, 0, 10, 0)
  Frame.ZIndex = 5000
  Frame.Name = "EmptyContainer"

  UIGridLayout_2.Parent = Frame
  UIGridLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
  UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
  UIGridLayout_2.CellSize = UDim2.new(0, 129, 0, 50)


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
  TopBar.ZIndex = 500

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
  TextLabel.ZIndex = 600

  EmptyContainer.Name = "EmptyContainer"
  EmptyContainer.Parent = TopBar
  EmptyContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  EmptyContainer.BackgroundTransparency = 1.000
  EmptyContainer.Position = UDim2.new(-0.000635266304, 0, 0.455411822, 0)
  EmptyContainer.Size = UDim2.new(0, 609, 0, 338)
  EmptyContainer.ZIndex = -1
  EmptyContainer.Image = "rbxassetid://3570695787"
  EmptyContainer.ImageColor3 = Color3.fromRGB(25, 25, 25)
  EmptyContainer.ScaleType = Enum.ScaleType.Slice
  EmptyContainer.SliceCenter = Rect.new(100, 100, 100, 100)
  EmptyContainer.SliceScale = 0.120
  EmptyContainer.ZIndex = 501


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
local db = false
minimize.MouseButton1Click:Connect(function()
if(db == true) then return false else db = true end
minimized = not minimized
if(minimized == true) then
for i, v in pairs(TopBar:GetChildren()) do
spawn(function()
  if(v:IsA("ScrollingFrame") and v.Name ~= "EmptyContainer") then
  v.Visible = false
end
end)
end
minimize.Rotation = -90.000
EmptyContainer:TweenSize(
UDim2.new(0, 0, 0, 0),
Enum.EasingDirection.In,
Enum.EasingStyle.Quad,
1,
true
)
wait(2)
db = false
else
minimize.Rotation = 90.000
EmptyContainer:TweenSize(
UDim2.new(0, 609, 0, 338),
Enum.EasingDirection.Out,
Enum.EasingStyle.Quad,
1,
true
)
wait(2)
db = false
end
end)

local minimized2 = false
local db2 = false
minimize2.MouseButton1Click:Connect(function()
if(db2 == true) then return false else db2 = true end
minimized2 = not minimized2
if(minimized2 == true) then
for i, v in pairs(Frame:GetChildren()) do
spawn(function()
if(not v:IsA("UIGridLayout")) then
v.Visible = false
end
end)
end
minimize2.Rotation = 180
Frame:TweenSize(
UDim2.new(0, 0, 0, 0),
Enum.EasingDirection.In,
Enum.EasingStyle.Quad,
0.5,
true
)
wait(1)
db2 = false
else
minimize2.Rotation = 0
Frame:TweenSize(
UDim2.new(0, 129, 0, 380),
Enum.EasingDirection.Out,
Enum.EasingStyle.Quad,
0.5,
true
)

wait(0.5)
for i, v in pairs(Frame:GetChildren()) do
spawn(function()
if(not v:IsA("UIGridLayout")) then
v.Visible = true
end
end)
end
wait(0.5)
db2 = false
end
end)










function epic2:CreateFolder(name, halfthesize)
halfthesize = halfthesize or false
name = name or ""
local gui = {}
local Container = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local TextButton = Instance.new("TextButton")
Container.Name = name
Container.Parent = TopBar
Container.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Container.BackgroundTransparency = 1.000
Container.Position = UDim2.new(-0.000635266304, 0, 0.466400832, 0)
Container.Size = UDim2.new(0, 609, 0, 338)
Container.Visible = false
Container.ZIndex = 501
Container.CanvasPosition = Vector2.new(0, 0)
Container.CanvasSize = UDim2.new(2, 0, 5, 0)


UIGridLayout.Parent = Container
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 140, 0, 100)
UIGridLayout.FillDirectionMaxCells = 8

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = name
TextButton.TextColor3 = Color3.fromRGB(130, 130, 130)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true
TextButton.ZIndex = 502
TextButton.MouseButton1Click:Connect(function()
if(Container.Visible == false) then
for i, v in pairs(TopBar:GetChildren()) do
if(v.Name ~= "EmptyContainer" and v:IsA("ScrollingFrame")) then
v.Visible = false
end
end
Container.Visible = true
end
end)










if(halfthesize == true) then
UIGridLayout.CellSize = UDim2.new(0, 70, 0, 50)
end












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
function gui:ImageButton(url, callback)
local ImageLabel = Instance.new("ImageButton")
url = url or " "
callback = callback or function() end
ImageLabel.Parent = Container
ImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.328407228, 0, 0, 0)
ImageLabel.Size = UDim2.new(0, 200, 0, 50)
ImageLabel.Image = url
ImageLabel.MouseButton1Click:Connect(callback)
return ImageLabel
end

function gui:Dropdown(name, list, somebool, callback)
name = name or ""
list = list or {}
somebool = somebool or false
callback = callback or function() end
local Dropdown = Instance.new("TextButton")
local UISizeConstraint = Instance.new("UISizeConstraint")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
Dropdown.Name = "Dropdown"
Dropdown.Parent = Container
Dropdown.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Dropdown.BorderSizePixel = 0
Dropdown.Size = UDim2.new(0, 200, 0, 50)
Dropdown.Font = Enum.Font.SourceSans
Dropdown.Text = name
Dropdown.TextColor3 = Color3.fromRGB(150, 150, 150)
Dropdown.TextScaled = true
Dropdown.TextSize = 14.000
Dropdown.TextWrapped = true
Dropdown.ZIndex = 90000

UISizeConstraint.Parent = Dropdown
UISizeConstraint.MaxSize = Vector2.new(200, 40)

ScrollingFrame.Parent = Dropdown
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(1, 0, 0.125, 0)
ScrollingFrame.Size = UDim2.new(0, 145, 0, 140)
ScrollingFrame.CanvasPosition = Vector2.new(0, 260)
ScrollingFrame.CanvasSize = UDim2.new(10, 0, 10, 0)
ScrollingFrame.Visible = false

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 145, 0, 35)
UIGridLayout.FillDirectionMaxCells = 1
Dropdown.MouseButton1Click:Connect(function()
ScrollingFrame.Visible = not ScrollingFrame.Visible
end)
for i, v in pairs(list) do
local Button = Instance.new("TextButton")
callback = callback or function() end
text = (v or v.Name or "")
if(not somebool) then
text = name .. "\\" .. text
end
Button.Name = "Button"
Button.Parent = ScrollingFrame
Button.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
Button.BorderSizePixel = 0
Button.Size = UDim2.new(0, 200, 0, 50)
Button.Font = Enum.Font.SourceSans
Button.Text = text
Button.TextColor3 = Color3.fromRGB(150, 150, 150)
Button.TextScaled = true
Button.TextSize = 14.000
Button.TextWrapped = true
Button.MouseButton1Click:Connect(function()
ScrollingFrame.Visible = false
callback(v)
end)
end
return false
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
return epic2
end
return epic
