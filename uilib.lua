local gui = {}

local Library = Instance.new("ScreenGui")
local TopBar = Instance.new("Frame")
local Container = Instance.new("Frame")

local Text = Instance.new("TextLabel")
local Button = Instance.new("TextButton")
local Box = Instance.new("TextBox")
local ImageLabel = Instance.new("ImageLabel")

--Properties:

Library.Name = "Library"
Library.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Library.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TopBar.Name = "TopBar"
TopBar.Parent = Library
TopBar.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
TopBar.BorderSizePixel = 0
TopBar.Position = UDim2.new(0.262090474, 0, 0.237419352, 0)
TopBar.Size = UDim2.new(0, 609, 0, 34)

Container.Name = "Container"
Container.Parent = TopBar
Container.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Container.BorderSizePixel = 0
Container.Position = UDim2.new(-0.000635266304, 0, 0.987172723, 0)
Container.Size = UDim2.new(0, 609, 0, 338)
function gui:Text(text)
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
  callback = callback or function() end
  text = text or ""
  Button.Name = "Button"
  Button.Parent = Container
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
    callback()
  end)
end
function gui:Box(textholder, type, callback)
  Box.Name = "Box"
  Box.Parent = Container
  Box.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  Box.BorderSizePixel = 0
  Box.Size = UDim2.new(0, 200, 0, 50)
  Box.Font = Enum.Font.SourceSans
  Box.Text = ""
  Box.TextHolder = textholder or ""
  Box.TextColor3 = Color3.fromRGB(150, 150, 150)
  Box.TextScaled = true
  Box.TextSize = 14.000
  Box.TextWrapped = true
  Box.FocusLost:Connect(function()
    local callbackval = script.Parent.Text or ""
    if(type == "number" or type == "int" or type == "num") then
      callbackval = tonumber(callbackval)
    end
    callback(callbackval)
  end)
end
function gui:Image(url)
  url = url or " "
  ImageLabel.Parent = Container
  ImageLabel.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
  ImageLabel.BorderSizePixel = 0
  ImageLabel.Size = UDim2.new(0, 200, 0, 50)
  ImageLabel.Image = url
end
end
return gui
