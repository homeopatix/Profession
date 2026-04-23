------------------------------------------------------------------------------------------
-- create or load the settings
------------------------------------------------------------------------------------------
function LoadSettings()
	local _settings = PatchDataLoad(dataScope, settingsFileName, settings);
    if (_settings ~= nil) then 
		settings = _settings; 
	end

	if (not settings.altEnable or
    not settings.vocation or
    not settings.isOptionsWindowVisible or
    not settings.alwaysShow) then
		settings = {
            windowPosition = { 
                xPos = settings["windowPosition"]["xPos"], 
                yPos = settings["windowPosition"]["yPos"] 
            },
            IconPosition = { 
                xPosIcon = settings["IconPosition"]["xPosIcon"], 
                yPosIcon = settings["IconPosition"]["yPosIcon"] 
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
	end
end
------------------------------------------------------------------------------------------
-- create the save settings
------------------------------------------------------------------------------------------
function SaveSettings()
	settings["windowPosition"]["xPos"] = tostring(ProfessionWindow:GetLeft());
    settings["windowPosition"]["yPos"] = tostring(ProfessionWindow:GetTop());
    settings["IconPosition"]["xPosIcon"] = tostring(MainMinimizedIcon:GetLeft());
   	settings["IconPosition"]["yPosIcon"] = tostring(MainMinimizedIcon:GetTop());
	settings["isMinimizeEnabled"]["isMinimizeEnabled"] = settings["isMinimizeEnabled"]["isMinimizeEnabled"];
	settings["isWindowVisible"]["isWindowVisible"] = settings["isWindowVisible"]["isWindowVisible"];
	settings["escEnable"]["escEnable"] = settings["escEnable"]["escEnable"];
	settings["altEnable"]["altEnable"] = settings["altEnable"]["altEnable"];
    settings["vocation"]["nbr"] = settings["vocation"]["nbr"];
    settings["alwaysShow"]["value"] = settings["alwaysShow"]["value"];
    settings["isOptionsWindowVisible"]["value"] = settings["isOptionsWindowVisible"]["value"];
   
   -- save the settings
	PatchDataSave( dataScope, settingsFileName, settings);
end