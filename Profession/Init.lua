------------------------------------------------------------------------------------------
-- Plugin's name --
------------------------------------------------------------------------------------------
pluginName = "Profession";
------------------------------------------------------------------------------------------
-- datascope for account save --
------------------------------------------------------------------------------------------
dataScope = Turbine.DataScope.Character;

-- File names --
settingsFileName = "Profession_Settings";

-- Default settings --
settings = {
    windowPosition = { 
        xPos = 0, 
        yPos = 0 
    },
    IconPosition = { 
        xPosIcon = 100, 
        yPosIcon = 100 
    },
    isMinimizeEnabled = { 
        isMinimizeEnabled = true 
    },
    isWindowVisible = { 
        isWindowVisible = true 
    },
    escEnable = { 
        escEnable = true 
    },
    altEnable = { 
        altEnable = true 
    },
    vocation = { 
        nbr = 0 
    },
    alwaysShow = {
        value = false
    },
    isOptionsWindowVisible = {
        value = false
    }
};

-- Resources settings --
ResourcePath = "Homeopatix/Profession/Resources/";

Images = {
	MinimizedIcon = ResourcePath .. "Profession.tga",
};
------------------------------------------------------------------------------------------
-- RGB color codes --
------------------------------------------------------------------------------------------
rgb = {
    start = "<rgb=#DAA520>",
    gold = "<rgb=#FFD700>",
    orange = "<rgb=#EE8F12>",
    white = "<rgb=#FFFFFF>",
    green = "<rgb=#1FE126>",
    blue = "<rgb=#1FCDE1>",
    purple = "<rgb=#9B41CE>",
    yellow = "<rgb=#FFFF00>",
    grey = "<rgb=#C7C7BE>",
    red = "<rgb=#FF0000>",
    error = "<rgb=#FF0000>",
    clear = "</rgb>"
};

-- Load settings --
LoadSettings();