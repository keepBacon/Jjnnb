-- Luna UI / Right-side dual-column layout preview
-- Loads the modified source.lua from this repository.
-- This URL requires the repository to be PUBLIC for anonymous HttpGet.
local Luna = loadstring(game:HttpGet(
    "https://raw.githubusercontent.com/keepBacon/Jjnnb/main/source.lua",
    true
))()

local Window = Luna:CreateWindow({
    Name = "Luna UI · Dual Column",
    Subtitle = "Right Panel Preview",
    LoadingEnabled = false,
    KeySystem = false,
    ContentLayout = {
        Columns = 2,
        MinColumnWidth = 205,
        ColumnGap = 10,
        RowGap = 7
    }
})

local Main = Window:CreateTab({
    Name = "Controls",
    Icon = "dashboard",
    ImageSource = "Material",
    ShowTitle = true
})

local Settings = Window:CreateTab({
    Name = "Settings",
    Icon = "settings",
    ImageSource = "Material",
    ShowTitle = true
})

Main:CreateSection("Basic Controls")
Main:CreateButton({
    Name = "Test Button",
    Description = "Check button interaction",
    Callback = function()
        print("Luna UI button clicked")
    end
})

Main:CreateToggle({
    Name = "Example Toggle",
    Description = "Switch this feature on or off",
    CurrentValue = false,
    Callback = function(value)
        print("Toggle:", value)
    end
}, "PreviewToggle")

Main:CreateSlider({
    Name = "Example Slider",
    Range = {0, 100},
    Increment = 1,
    CurrentValue = 45,
    Callback = function(value)
        print("Slider:", value)
    end
}, "PreviewSlider")

Main:CreateDropdown({
    Name = "Quality",
    Options = {"Comfort", "Balanced", "Realistic"},
    CurrentOption = {"Balanced"},
    MultipleOptions = false,
    Callback = function(value)
        print("Quality:", value)
    end
}, "PreviewDropdown")

Main:CreateSection("Additional Controls")
Main:CreateInput({
    Name = "Text Input",
    PlaceholderText = "Type something...",
    CurrentValue = "",
    Numeric = false,
    Enter = false,
    Callback = function(value)
        print("Input:", value)
    end
}, "PreviewInput")

Main:CreateLabel({
    Text = "Responsive right-hand two-column layout",
    Style = 2
})

Settings:CreateSection("Appearance")
Settings:CreateColorPicker({
    Name = "Accent Color",
    Color = Color3.fromRGB(160, 190, 255),
    Callback = function(color)
        print("Color:", color)
    end
}, "PreviewColor")

Settings:BuildThemeSection()
return Window
