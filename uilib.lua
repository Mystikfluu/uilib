local epic = {}

_G.settings = _G.settings or {}
for i, v in pairs(_G.settings) do
  _G[i] = v or _G[i] or ""
end
local ColorElements = _G.elementcolor or Color3.fromRGB(20, 20, 20)
local Colorbackground = _G.backgroundcolor or Color3.fromRGB(15, 15, 15)
local minimizertextcolor = _G.textcolor or Color3.fromRGB(150, 150, 150)
local dropdowncolor = _G.dropdowncolor or Color3.fromRGB(40, 40, 40)
local toggleoff = _G.togglecoloroff or Color3.fromRGB(20, 0, 0)
local toggleon = _G.togglecoloron or Color3.fromRGB(0, 20, 0)
local SettingsColor = _G.settingscolor or Color3.fromRGB(14, 14, 14)
if(_G.red) then
  Colorbackground = Color3.fromRGB(25, 10, 10)
  ColorElements = Color3.fromRGB(30, 15, 15)
  SettingsColor = Color3.fromRGB(23, 8, 8)
end
function epic:CreateWindow(name)
  if(game.CoreGui:FindFirstChild("uiwindow")) then
    game.CoreGui.uiwindow:Destroy()
  end
  for i, v in pairs(game.CoreGui:GetChildren()) do
    if(v.Name == "uiwindow") then
      v:Destroy()
    end
  end
  local epic2 = {}
  local Library = Instance.new("ScreenGui")
  local TopBar = Instance.new("ImageLabel")
  local TextLabel = Instance.new("TextLabel")
  local EmptyContainer = Instance.new("ImageLabel")

  local minimize = Instance.new("TextButton")
  local minimize2 = Instance.new("TextButton")
  local Frame = Instance.new("ScrollingFrame")
  local UIGridLayout_2 = Instance.new("UIGridLayout")
  local UIGridLayout_3 = Instance.new("UIGridLayout")

  local Settings = Instance.new("TextButton")
  local SettingsTopBar = Instance.new("ImageLabel")
  local SettingsContainer = Instance.new("ImageLabel")
  local ScrollingFrame_2 = Instance.new("ScrollingFrame")
  local SettingsLabel = Instance.new("TextLabel")




  minimize.Name = "minimize"
  minimize.Parent = TopBar
  minimize.BackgroundColor3 = ColorElements
  minimize.BackgroundTransparency = 1.000
  minimize.BorderSizePixel = 0
  minimize.Position = UDim2.new(0.104121678, 0, 0.0050719548, 0)
  minimize.Rotation = 90.000
  minimize.Size = UDim2.new(0, 42, 0, 42)
  minimize.Font = Enum.Font.SourceSans
  minimize.Text = "<"
  minimize.TextColor3 = minimizertextcolor
  minimize.TextScaled = true
  minimize.TextSize = 14.000
  minimize.TextWrapped = true

  minimize2.Name = "minimize2"
  minimize2.Parent = TopBar
  minimize2.BackgroundColor3 = ColorElements
  minimize2.BackgroundTransparency = 1.000
  minimize2.BorderSizePixel = 0
  minimize2.Position = UDim2.new(0.926121354, 0, - 0.00591705646, 0)
  minimize2.Size = UDim2.new(0, 42, 0, 42)
  minimize2.Font = Enum.Font.SourceSans
  minimize2.Text = "<"
  minimize2.TextColor3 = minimizertextcolor
  minimize2.TextScaled = true
  minimize2.TextSize = 14.000
  minimize2.TextWrapped = true

  Frame.Parent = TopBar
  Frame.BackgroundColor3 = Colorbackground
  Frame.BorderSizePixel = 0
  Frame.Position = UDim2.new(0.987, 0, 0, 0)
  Frame.Size = UDim2.new(0, 129, 0, 380)
  Frame.CanvasPosition = Vector2.new(0, 0)
  Frame.CanvasSize = UDim2.new(0.25, 0, 10, 0)
  Frame.ZIndex = 5000
  Frame.ScrollingDirection = Enum.ScrollingDirection.Y
  Frame.Name = "EmptyContainer"

  UIGridLayout_2.Parent = Frame
  UIGridLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Left
  UIGridLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
  UIGridLayout_2.CellSize = UDim2.new(0, 115, 0, 50)


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
  TopBar.ImageColor3 = Colorbackground
  TopBar.ScaleType = Enum.ScaleType.Slice
  TopBar.SliceCenter = Rect.new(100, 100, 100, 100)
  TopBar.SliceScale = 0.120
  TopBar.ZIndex = 500

  TextLabel.Parent = TopBar
  TextLabel.BackgroundColor3 = Colorbackground
  TextLabel.BorderSizePixel = 0
  TextLabel.Position = UDim2.new(0.334975362, 0, 0, 0)
  TextLabel.Size = UDim2.new(0, 200, 0, 42)
  TextLabel.Font = Enum.Font.SourceSans
  TextLabel.Text = name or ""
  TextLabel.TextColor3 = minimizertextcolor
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
  EmptyContainer.ImageColor3 = Colorbackground
  EmptyContainer.ScaleType = Enum.ScaleType.Slice
  EmptyContainer.SliceCenter = Rect.new(100, 100, 100, 100)
  EmptyContainer.SliceScale = 0.120
  EmptyContainer.ZIndex = 501

  Settings.Name = "Settings"
  Settings.Parent = TopBar
  Settings.BackgroundColor3 = Color3.fromRGB(30, 20, 20)
  Settings.BackgroundTransparency = 1.000
  Settings.BorderSizePixel = 0
  Settings.Position = UDim2.new(0.0255619362, 0, 0.0050719548, 0)
  Settings.Size = UDim2.new(0, 42, 0, 42)
  Settings.Font = Enum.Font.SourceSans
  Settings.Text = _G.CustomCredits or "❔"
  Settings.TextColor3 = Color3.fromRGB(150, 150, 150)
  Settings.TextScaled = true
  Settings.TextSize = 14.000
  Settings.TextWrapped = true

  SettingsTopBar.Name = "SettingsTopBar"
  SettingsTopBar.Parent = TopBar
  SettingsTopBar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  SettingsTopBar.BackgroundTransparency = 1.000
  SettingsTopBar.Position = UDim2.new(-0.446972167, 0, 0.00324043632, 0)
  SettingsTopBar.Size = UDim2.new(0, 235, 0, 51)
  SettingsTopBar.Visible = false
  SettingsTopBar.ZIndex = -1
  SettingsTopBar.Image = "rbxassetid://3570695787"
  SettingsTopBar.ImageColor3 = SettingsColor
  SettingsTopBar.ScaleType = Enum.ScaleType.Slice
  SettingsTopBar.SliceCenter = Rect.new(100, 100, 100, 100)
  SettingsTopBar.SliceScale = 0.120

  SettingsContainer.Name = "SettingsContainer"
  SettingsContainer.Parent = SettingsTopBar
  SettingsContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  SettingsContainer.BackgroundTransparency = 1.000
  SettingsContainer.Position = UDim2.new(-0.00155314989, 0, 0.671097994, 0)
  SettingsContainer.Size = UDim2.new(0, 235, 0, 345)
  SettingsContainer.ZIndex = -1
  SettingsContainer.Image = "rbxassetid://3570695787"
  SettingsContainer.ImageColor3 = SettingsColor
  SettingsContainer.ScaleType = Enum.ScaleType.Slice
  SettingsContainer.SliceCenter = Rect.new(100, 100, 100, 100)
  SettingsContainer.SliceScale = 0.120

  ScrollingFrame_2.Parent = SettingsContainer
  ScrollingFrame_2.Active = true
  ScrollingFrame_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
  ScrollingFrame_2.BackgroundTransparency = 1.000
  ScrollingFrame_2.BorderSizePixel = 0
  ScrollingFrame_2.Size = UDim2.new(0, 211, 0, 344)

  UIGridLayout_3.Parent = ScrollingFrame_2
  UIGridLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Left
  UIGridLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
  UIGridLayout_3.CellSize = UDim2.new(0, 190, 0, 50)

  UIGridLayout_3:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
    local absoluteContentSize = UIGridLayout_3.AbsoluteContentSize
    ScrollingFrame_2.CanvasSize = UDim2.new(0, 0, 0, absoluteContentSize.Y + 0.1)
  end)

  SettingsLabel.Parent = SettingsTopBar
  SettingsLabel.BackgroundColor3 = Color3.fromRGB(35, 15, 15)
  SettingsLabel.BackgroundTransparency = 1.000
  SettingsLabel.BorderSizePixel = 0
  SettingsLabel.Position = UDim2.new(0.0724548995, 0, - 0.000600230938, 0)
  SettingsLabel.Size = UDim2.new(0, 200, 0, 37)
  SettingsLabel.Font = Enum.Font.SourceSans
  SettingsLabel.Text = "CREDITS"
  SettingsLabel.TextColor3 = Color3.fromRGB(150, 150, 150)
  SettingsLabel.TextScaled = true
  SettingsLabel.TextSize = 14.000
  SettingsLabel.TextWrapped = true
  _G.Credits = _G.Credits or {}
  --
  for i, v in pairs(_G.Credits) do
    if(string.lower(i) ~= "discord") then
      local Text = Instance.new("TextLabel")
      Text.Name = "Text"
      Text.Parent = ScrollingFrame_2
      Text.BackgroundColor3 = ColorElements
      Text.BorderSizePixel = 0
      Text.Size = UDim2.new(0, 200, 0, 50)
      Text.Font = Enum.Font.SourceSans
      Text.Text = v
      Text.TextColor3 = minimizertextcolor
      Text.TextScaled = true
      Text.TextSize = 14.000
      Text.TextWrapped = true
    else
      local discord = v
      if(discord) then
        local link = (string.split(discord, "discord.gg/")[2])
        if(link == nil) then
          link = discord
          discord = "discord.gg/"..discord
        end
        local text = "Discord server: "..link
        local callback = function()
          setclipboard(discord)
        end
        local Button = Instance.new("TextButton")
        callback = callback or function() end
        text = text or ""
        Button.Name = "Button"
        Button.Parent = ScrollingFrame_2
        Button.BackgroundColor3 = ColorElements
        Button.BorderSizePixel = 0
        Button.Position = UDim2.new(0, 0, 0.147928998, 0)
        Button.Size = UDim2.new(0, 200, 0, 50)
        Button.Font = Enum.Font.SourceSans
        Button.Text = text
        Button.TextColor3 = minimizertextcolor
        Button.TextScaled = true
        Button.TextSize = 14.000
        Button.TextWrapped = true
        Button.MouseButton1Click:Connect(function()
          callback()
        end)
      end
    end
  end
  Settings.MouseButton1Click:Connect(function()
    SettingsTopBar.Visible = not SettingsTopBar.Visible
  end)

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









function epic2:Destroy()
Library:Destroy()
return true
end
function epic2:CreateFolder(name, halfthesize)
halfthesize = halfthesize or false
name = name or ""
local gui = {}
local Container = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local TextButton = Instance.new("TextButton")
Container.Name = name
Container.Parent = TopBar
Container.BackgroundColor3 = Colorbackground
Container.BackgroundTransparency = 1.000
Container.Position = UDim2.new(-0.000635266304, 0, 0.466400832, 0)
Container.Size = UDim2.new(0, 609, 0, 338)
Container.Visible = false
Container.ZIndex = 501
Container.CanvasPosition = Vector2.new(0, 0)
Container.CanvasSize = UDim2.new(2, 0, 10, 0)
Container.ScrollingDirection = Enum.ScrollingDirection.Y

UIGridLayout.Parent = Container
UIGridLayout.HorizontalAlignment = Enum.HorizontalAlignment.Left
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 140, 0, 100)
UIGridLayout.FillDirectionMaxCells = 4

UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
local absoluteContentSize = UIGridLayout.AbsoluteContentSize
Container.CanvasSize = UDim2.new(0, 0, 0, absoluteContentSize.Y + 0.1)
end)

TextButton.Parent = Frame
TextButton.BackgroundColor3 = ColorElements
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = name
TextButton.TextColor3 = minimizertextcolor
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
Text.BackgroundColor3 = ColorElements
Text.BorderSizePixel = 0
Text.Size = UDim2.new(0, 200, 0, 50)
Text.Font = Enum.Font.SourceSans
Text.Text = text or ""
Text.TextColor3 = minimizertextcolor
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
Button.BackgroundColor3 = ColorElements
Button.BorderSizePixel = 0
Button.Position = UDim2.new(0, 0, 0.147928998, 0)
Button.Size = UDim2.new(0, 200, 0, 50)
Button.Font = Enum.Font.SourceSans
Button.Text = text
Button.TextColor3 = minimizertextcolor
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
Box.BackgroundColor3 = ColorElements
Box.BorderSizePixel = 0
Box.Position = UDim2.new(0.656814456, 0, 0, 0)
Box.Size = UDim2.new(0, 200, 0, 50)
Box.Font = Enum.Font.SourceSans
Box.Text = ""
Box.TextColor3 = minimizertextcolor
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
ImageLabel.BackgroundColor3 = ColorElements
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
ImageLabel.BackgroundColor3 = ColorElements
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
local drop = {}
local cons = {}
somebool = somebool or false
callback = callback or function() end
local Dropdown = Instance.new("TextButton")
local UISizeConstraint = Instance.new("UISizeConstraint")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
Dropdown.Name = name
Dropdown.Parent = Container
Dropdown.BackgroundColor3 = ColorElements
Dropdown.BorderSizePixel = 0
Dropdown.Size = UDim2.new(0, 200, 0, 50)
Dropdown.Font = Enum.Font.SourceSans
Dropdown.Text = name
Dropdown.TextColor3 = minimizertextcolor
Dropdown.TextScaled = true
Dropdown.TextSize = 14.000
Dropdown.TextWrapped = true
Dropdown.ZIndex = 90000

UISizeConstraint.Parent = Dropdown
UISizeConstraint.MaxSize = Vector2.new(200, 40)

ScrollingFrame.Parent = Dropdown
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = dropdowncolor
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(1, 0, 0.125, 0)
ScrollingFrame.Size = UDim2.new(0, 145, 0, 140)
ScrollingFrame.CanvasPosition = Vector2.new(0, 260)
ScrollingFrame.CanvasSize = UDim2.new(10, 0, 10, 0)
ScrollingFrame.Visible = false

UIGridLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
local absoluteContentSize = UIGridLayout.AbsoluteContentSize
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, absoluteContentSize.Y + 0.1)
end)

UIGridLayout.Parent = ScrollingFrame
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 130, 0, 35)
UIGridLayout.FillDirectionMaxCells = 1
Dropdown.MouseButton1Click:Connect(function()
ScrollingFrame.Visible = not ScrollingFrame.Visible
end)

function drop:Update(list, somebool, callback)
  for i,v in pairs(cons) do
    v:Disconnect()
  end
  for i,v in pairs(ScrollingFrame:GetChildren()) do
    if(v.Name == "Button") then
      v:Destroy()
    end
  end
  for i, v in pairs(list) do
    local Button = Instance.new("TextButton")
    callback = callback or function() end
    text = v or ""
    if(type(text) == type(game.Workspace)) then
      text = v.Name
    end
    Button.Name = "Button"
    Button.Parent = ScrollingFrame
    Button.BackgroundColor3 = ColorElements
    Button.BorderSizePixel = 0
    Button.Size = UDim2.new(0, 200, 0, 50)
    Button.Font = Enum.Font.SourceSans
    Button.Text = text
    Button.TextColor3 = minimizertextcolor
    Button.TextScaled = true
    Button.TextSize = 14.000
    Button.TextWrapped = true
    cons[#cons+1] = Button.MouseButton1Click:Connect(function()
      ScrollingFrame.Visible = false
      if(somebool) then
        Dropdown.Text = Dropdown.Name .." / " .. Button.Text
      end
      callback(v)
    end)
  end
end
drop:Update(list,somebool,callback)


return drop
end

function gui:Toggle(text, callback)
local Toggle = Instance.new("TextButton")
callback = callback or function() end
Toggle.Name = "Toggle"
Toggle.Parent = Container
Toggle.BackgroundColor3 = toggleoff
Toggle.BorderSizePixel = 0
Toggle.Position = UDim2.new(-0.000656783581, 0, - 0.00934904814, 0)
Toggle.Size = UDim2.new(0, 140, 0, 100)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = text or ""
Toggle.TextColor3 = minimizertextcolor
Toggle.TextScaled = true
Toggle.TextSize = 14.000
Toggle.TextWrapped = true
local toggle = false
local nottoggle = toggleoff
local yestoggle = toggleon
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
