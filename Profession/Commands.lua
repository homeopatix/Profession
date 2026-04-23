
ProfessionCommand = Turbine.ShellCommand();

------------------------------------------------------------------------------------------
-- commands
------------------------------------------------------------------------------------------
function ProfessionCommand:Execute( command, arguments )

-- Turn arguments to lower case characters --
	arguments = string.lower(arguments);

	-- Help command--
	if ( arguments == "help" ) then
		commandsHelp();
	elseif ( arguments == "show" ) then
		--Turbine.Shell.WriteLine("Show the Profession Window");
		ProfessionWindow:SetVisible(true);
		settings["isWindowVisible"]["isWindowVisible"] = true;
		SaveSettings();
	elseif ( arguments == "hide" ) then
		--Turbine.Shell.WriteLine("Hide the Profession Window");
		ProfessionWindow:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
------------------------------------------------------------------------------------------
-- toggle command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "toggle" ) then
		if(settings["isWindowVisible"]["isWindowVisible"] == true)then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowHide" ]);
			ProfessionWindow:SetVisible(false);
			settings["isWindowVisible"]["isWindowVisible"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowShow" ]);
			ProfessionWindow:SetVisible(true);
			settings["isWindowVisible"]["isWindowVisible"] = true;
		end
		SaveSettings();
	elseif ( arguments == "always" ) then
		--Turbine.Shell.WriteLine("Hide the PopoHelper Window");
		if(settings["alwaysShow"]["value"] == false)then
			settings["alwaysShow"]["value"] = true;
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowsAlwaysShowOn" ]);
		else
			settings["alwaysShow"]["value"] = false;
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginWindowsAlwaysShowOff" ]);
		end
		SaveSettings();
	elseif ( arguments == "options" ) then
		Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginOption1" ]);
		OptionsWindow:SetVisible(true);
		ProfessionWindow:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
		settings["isOptionsWindowVisible"]["value"] = true;
		SaveSettings();
	elseif ( arguments == "esc" ) then
		if(settings["escEnable"]["escEnable"] == true) then
			Turbine.Shell.WriteLine(T[ "PluginName" ] .. " - " .. T[ "PluginEscDesable" ]);
			settings["escEnable"]["escEnable"] = false;
		else
			Turbine.Shell.WriteLine(T[ "PluginName" ] .. " - " .. T[ "PluginEscEnable" ]);
			settings["escEnable"]["escEnable"] = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- alt command--
------------------------------------------------------------------------------------------
	elseif ( arguments == "alt" ) then
		if(settings["altEnable"]["altEnable"] == true) then
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginAltDesable" ]);
			settings["altEnable"]["altEnable"] = false;
		else
			Turbine.Shell.WriteLine(rgb["start"] .. T[ "PluginName" ] .. rgb["clear"] .. " - " .. T[ "PluginAltEnable" ]);
			settings["altEnable"]["altEnable"] = true;
		end
		SaveSettings();
------------------------------------------------------------------------------------------
-- default if nothing is right command --
------------------------------------------------------------------------------------------
	elseif ( arguments ~= "help" or 
			arguments ~= "show" or 
			arguments ~= "hide" or 
			arguments ~= "toggle" or 
			arguments ~= "always" or 
			arguments ~= "options" or 
			arguments ~= "esc" or 
			arguments ~= "alt") then
			-- nothing found, so display the help
		commandsHelp();
	end
end

Turbine.Shell.AddCommand( "Pro;Profession", ProfessionCommand );