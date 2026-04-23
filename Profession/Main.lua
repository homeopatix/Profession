------------------------------------------------------------------------------------------
-- Import librarys --
------------------------------------------------------------------------------------------
import "Homeopatix.Profession.Librarys"; 


--CreateLocalizationInfo();
------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
CreateMainWindow();
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
ClosingTheWindow();
------------------------------------------------------------------------------------------
-- create the option window
------------------------------------------------------------------------------------------
GenerateOptionsWindow();
------------------------------------------------------------------------------------------
-- handle minimizeIcon
------------------------------------------------------------------------------------------
Write = Turbine.Shell.WriteLine;

local player = Turbine.Gameplay.LocalPlayer.GetInstance();
local playerAttr = player:GetAttributes();
local PlayerAlignement = player:GetAlignment();
local vocation = 0;

if(PlayerAlignement == 1)then
	vocation = playerAttr:GetVocation();
end

local class = player:GetClass();

vocation = settings["vocation"]["nbr"];

--class = 40; -- debug for burglar
if(vocation == 0) then
	DisplayIconNoProfession(class);
	CreateEmptyWindow();
end
if(vocation == 1) then
	DisplayIconExplorateur(class);

	MainMinimizedIcon.Update = function()
		if( player:GetMorale() <= 0)then
			DisplayIconExplorateur(class);
		end
	end
end
if(vocation == 2) then
	DisplayIconJoaillier(class);	

	MainMinimizedIcon.Update = function()
		if( player:GetMorale() <= 0)then
			DisplayIconJoaillier(class);
		end
	end
end
if(vocation == 3) then
	DisplayIconFranc_tenancier(class);	

	MainMinimizedIcon.Update = function()
		if( player:GetMorale() <= 0)then
			DisplayIconFranc_tenancier(class);
		end
	end
end
if(vocation == 4) then
	DisplayIconHistorien(class);

	MainMinimizedIcon.Update = function()
		if( player:GetMorale() <= 0)then
			DisplayIconHistorien(class);
		end
	end
end
if(vocation == 5) then
	DisplayIconFourbisseur(class);	

	MainMinimizedIcon.Update = function()
		if( player:GetMorale() <= 0)then
			DisplayIconFourbisseur(class);
		end
	end
end
if(vocation == 6) then
	DisplayIconBucheron(class);	

	MainMinimizedIcon.Update = function()
		if( player:GetMorale() <= 0)then
			DisplayIconBucheron(class);
		end
	end
end
if(vocation == 7) then
	DisplayIconArmurier(class);	

	MainMinimizedIcon.Update = function()
		if( player:GetMorale() <= 0)then
			DisplayIconArmurier(class);
		end
	end
end


------------------------------------------------------------------------------------------
-- event handling
------------------------------------------------------------------------------------------
ProfessionWindow.KeyDown=function(sender, args)
	if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
		if(settings["escEnable"]["escEnable"] == true) then
			HideMainWindow();
		end
	end
	
	-- https://www.lotro.com/forums/showthread.php?493466-How-to-hide-a-window-on-F12&p=6581962#post6581962
	if ( args.Action == 268435635 ) then
		hudVisible=not hudVisible;
		if hudVisible then
			ProfessionWindow:SetVisible(false);
			MainMinimizedIcon:SetVisible(false);
		else
			ProfessionWindow:SetVisible(settings["isWindowVisible"]["isWindowVisible"]);
			MainMinimizedIcon:SetVisible(true);
		end
	end
end
------------------------------------------------------------------------------------------
-- if the position changes, save the new window location
------------------------------------------------------------------------------------------
ProfessionWindow.PositionChanged = function( sender, args )
    local x,y = ProfessionWindow:GetPosition();
    settings["windowPosition"]["xPos"] = x;
    settings["windowPosition"]["yPos"] = y;
	SaveSettings();
end