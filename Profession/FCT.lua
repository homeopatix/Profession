------------------------------------------------------------------------------------------
-- FCT file
-- Written by Homeopatix
-- 22 Décembre 2023
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- Initialize datas
------------------------------------------------------------------------------------------
function HideMainWindow()
	if (settings["alwaysShow"]["value"] == false) then
		ProfessionWindow:SetVisible(false);
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- display icon fourbisseur
------------------------------------------------------------------------------------------
function DisplayIconFourbisseur(value)
	local clicked1 = false;
	local clicked2 = false;
	MainMinimizedIcon2 = MinimizedIcon(ResourcePath .. "Fourbisseur_Prospecteur.tga", 32, 32);
	MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon2:SetOpacity(0);
	MainMinimizedIcon2:SetZOrder(-1);
	MainMinimizedIcon3 = MinimizedIcon(ResourcePath .. "Fourbisseur_Tresor.tga", 32, 32);
	MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon3:SetOpacity(0);
	MainMinimizedIcon3:SetZOrder(-1);

	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Fourbisseur.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Fourbisseur.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon2.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon2:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon2:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon3.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon3:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon3:GetTop();
		SaveSettings();
	end

	centerQS1.MouseClick = function(sender, args)
		if(clicked1 == false)then
			HideMainWindow();
			MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(1);
			MainMinimizedIcon2:SetZOrder(1000);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = true;
			clicked2 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
		end
	end
	if(value == 40)then
		centerQS2.MouseClick = function(sender, args)
			if(clicked2 == false)then
				HideMainWindow();
				MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(0);
				MainMinimizedIcon:SetZOrder(-1);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(1);
				MainMinimizedIcon3:SetZOrder(1000);			
				clicked1 = false;
				clicked2 = true;
			else
				MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(1);
				MainMinimizedIcon:SetZOrder(1000);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);
				clicked1 = false;
				clicked2 = false;
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- display icon explorateur
------------------------------------------------------------------------------------------
function DisplayIconExplorateur(value)
	local clicked1 = false;
	local clicked2 = false;
	local clicked3 = false;
	MainMinimizedIcon2 = MinimizedIcon(ResourcePath .. "Explorateur_Forestier.tga", 32, 32);
	MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon2:SetOpacity(0);
	MainMinimizedIcon2:SetZOrder(-1);
	MainMinimizedIcon3 = MinimizedIcon(ResourcePath .. "Explorateur_Prospecteur.tga", 32, 32);
	MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon3:SetOpacity(0);
	MainMinimizedIcon3:SetZOrder(-1);
	MainMinimizedIcon4 = MinimizedIcon(ResourcePath .. "Explorateur_Tresor.tga", 32, 32);
	MainMinimizedIcon4:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon4:SetOpacity(0);
	MainMinimizedIcon4:SetZOrder(-1);

	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Explorateur.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Explorateur.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon2.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon2:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon2:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon3.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon3:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon3:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon4.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon4:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon4:GetTop();
		SaveSettings();
	end

	centerQS1.MouseClick = function(sender, args)
		if(clicked1 == false)then
			HideMainWindow();
			MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(1);
			MainMinimizedIcon2:SetZOrder(1000);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = true;
			clicked2 = false;
			clicked3 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
			clicked3 = false;
		end
	end
	centerQS2.MouseClick = function(sender, args)
		if(clicked2 == false)then
			HideMainWindow();
			MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(1);
			MainMinimizedIcon3:SetZOrder(1000);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = true;
			clicked3 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
			clicked3 = false;
		end
	end
	if(value == 40)then
		centerQS3.MouseClick = function(sender, args)
			if(clicked3 == false)then
				HideMainWindow();
				MainMinimizedIcon4:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(0);
				MainMinimizedIcon:SetZOrder(-1);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);	
				MainMinimizedIcon4:SetOpacity(1);
				MainMinimizedIcon4:SetZOrder(1000);
				clicked1 = false;
				clicked2 = false;
				clicked3 = true;
			else
				MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(1);
				MainMinimizedIcon:SetZOrder(1000);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);
				MainMinimizedIcon4:SetOpacity(0);
				MainMinimizedIcon4:SetZOrder(-1);
				clicked1 = false;
				clicked2 = false;
				clicked3 = false;
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- display icon Joaillier
------------------------------------------------------------------------------------------
function DisplayIconJoaillier(value)
	local clicked1 = false;
	local clicked2 = false;
	MainMinimizedIcon2 = MinimizedIcon(ResourcePath .. "Joaillier_Prospecteur.tga", 32, 32);
	MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon2:SetOpacity(0);
	MainMinimizedIcon2:SetZOrder(-1);
	MainMinimizedIcon3 = MinimizedIcon(ResourcePath .. "Joaillier_Tresor.tga", 32, 32);
	MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon3:SetOpacity(0);
	MainMinimizedIcon3:SetZOrder(-1);

	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Joaillier.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Joaillier.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon2.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon2:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon2:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon3.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon3:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon3:GetTop();
		SaveSettings();
	end

	centerQS1.MouseClick = function(sender, args)
		if(clicked1 == false)then
			HideMainWindow();
			MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(1);
			MainMinimizedIcon2:SetZOrder(1000);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = true;
			clicked2 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
		end
	end
	if(value == 40)then
		centerQS2.MouseClick = function(sender, args)
			if(clicked2 == false)then
				HideMainWindow();
				MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(0);
				MainMinimizedIcon:SetZOrder(-1);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(1);
				MainMinimizedIcon3:SetZOrder(1000);			
				clicked1 = false;
				clicked2 = true;
			else
				MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(1);
				MainMinimizedIcon:SetZOrder(1000);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);
				clicked1 = false;
				clicked2 = false;
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- display icon franc-tenancier
------------------------------------------------------------------------------------------
function DisplayIconFranc_tenancier(value)
	local clicked1 = false;
	local clicked2 = false;
	MainMinimizedIcon2 = MinimizedIcon(ResourcePath .. "Franc-tenancier_Fermier.tga", 32, 32);
	MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon2:SetOpacity(0);
	MainMinimizedIcon2:SetZOrder(-1);
	MainMinimizedIcon3 = MinimizedIcon(ResourcePath .. "Franc-tenancier_Tresor.tga", 32, 32);
	MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon3:SetOpacity(0);
	MainMinimizedIcon3:SetZOrder(-1);

	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Franc-tenancier.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Franc-tenancier.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon2.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon2:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon2:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon3.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon3:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon3:GetTop();
		SaveSettings();
	end

	centerQS1.MouseClick = function(sender, args)
		if(clicked1 == false)then
			HideMainWindow();
			MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(1);
			MainMinimizedIcon2:SetZOrder(1000);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = true;
			clicked2 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
		end
	end
	if(value == 40)then
		centerQS2.MouseClick = function(sender, args)
			if(clicked2 == false)then
				HideMainWindow();
				MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(0);
				MainMinimizedIcon:SetZOrder(-1);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(1);
				MainMinimizedIcon3:SetZOrder(1000);			
				clicked1 = false;
				clicked2 = true;
			else
				MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(1);
				MainMinimizedIcon:SetZOrder(1000);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);
				clicked1 = false;
				clicked2 = false;
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- display icon historien
------------------------------------------------------------------------------------------
function DisplayIconHistorien(value)
	local clicked1 = false;
	local clicked2 = false;
	local clicked3 = false;
	MainMinimizedIcon2 = MinimizedIcon(ResourcePath .. "Historien_Artefact.tga", 32, 32);
	MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon2:SetOpacity(0);
	MainMinimizedIcon2:SetZOrder(-1);
	MainMinimizedIcon3 = MinimizedIcon(ResourcePath .. "Historien_Fermier.tga", 32, 32);
	MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon3:SetOpacity(0);
	MainMinimizedIcon3:SetZOrder(-1);
	MainMinimizedIcon4 = MinimizedIcon(ResourcePath .. "Historien_Tresor.tga", 32, 32);
	MainMinimizedIcon4:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon4:SetOpacity(0);
	MainMinimizedIcon4:SetZOrder(-1);

	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Historien.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Historien.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon2.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon2:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon2:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon3.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon3:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon3:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon4.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon4:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon4:GetTop();
		SaveSettings();
	end

	centerQS1.MouseClick = function(sender, args)
		if(clicked1 == false)then
			HideMainWindow();
			MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(1);
			MainMinimizedIcon2:SetZOrder(1000);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = true;
			clicked2 = false;
			clicked3 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
			clicked3 = false;
		end
	end
	centerQS2.MouseClick = function(sender, args)
		if(clicked2 == false)then
			HideMainWindow();
			MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(1);
			MainMinimizedIcon3:SetZOrder(1000);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = true;
			clicked3 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
			clicked3 = false;
		end
	end
	if(value == 40)then
		centerQS3.MouseClick = function(sender, args)
			if(clicked3 == false)then
				HideMainWindow();
				MainMinimizedIcon4:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(0);
				MainMinimizedIcon:SetZOrder(-1);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);	
				MainMinimizedIcon4:SetOpacity(1);
				MainMinimizedIcon4:SetZOrder(1000);
				clicked1 = false;
				clicked2 = false;
				clicked3 = true;
			else
				MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(1);
				MainMinimizedIcon:SetZOrder(1000);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);
				MainMinimizedIcon4:SetOpacity(0);
				MainMinimizedIcon4:SetZOrder(-1);
				clicked1 = false;
				clicked2 = false;
				clicked3 = false;
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- display icon Bucheron
------------------------------------------------------------------------------------------
function DisplayIconBucheron(value)
	local clicked1 = false;
	local clicked2 = false;
	local clicked2 = false;
	MainMinimizedIcon2 = MinimizedIcon(ResourcePath .. "Bucheron_Forestier.tga", 32, 32);
	MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon2:SetOpacity(0);
	MainMinimizedIcon2:SetZOrder(-1);
	MainMinimizedIcon3 = MinimizedIcon(ResourcePath .. "Bucheron_Fermier.tga", 32, 32);
	MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon3:SetOpacity(0);
	MainMinimizedIcon3:SetZOrder(-1);
	MainMinimizedIcon4 = MinimizedIcon(ResourcePath .. "Bucheron_Tresor.tga", 32, 32);
	MainMinimizedIcon4:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon4:SetOpacity(0);
	MainMinimizedIcon4:SetZOrder(-1);

	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Bucheron.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Bucheron.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon2.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon2:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon2:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon3.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon3:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon3:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon4.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon4:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon4:GetTop();
		SaveSettings();
	end

	centerQS1.MouseClick = function(sender, args)
		if(clicked1 == false)then
			HideMainWindow();
			MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(1);
			MainMinimizedIcon2:SetZOrder(1000);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = true;
			clicked2 = false;
			clicked3 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
			clicked3 = false;
		end
	end
	centerQS2.MouseClick = function(sender, args)
		if(clicked2 == false)then
			HideMainWindow();
			MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(1);
			MainMinimizedIcon3:SetZOrder(1000);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = true;
			clicked3 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			MainMinimizedIcon4:SetOpacity(0);
			MainMinimizedIcon4:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
			clicked3 = false;
		end
	end
	if(value == 40)then
		centerQS3.MouseClick = function(sender, args)
			if(clicked3 == false)then
				HideMainWindow();
				MainMinimizedIcon4:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(0);
				MainMinimizedIcon:SetZOrder(-1);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);	
				MainMinimizedIcon4:SetOpacity(1);
				MainMinimizedIcon4:SetZOrder(1000);
				clicked1 = false;
				clicked2 = false;
				clicked3 = true;
			else
				MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(1);
				MainMinimizedIcon:SetZOrder(1000);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);
				MainMinimizedIcon4:SetOpacity(0);
				MainMinimizedIcon4:SetZOrder(-1);
				clicked1 = false;
				clicked2 = false;
				clicked3 = false;
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- display icon armurier
------------------------------------------------------------------------------------------
function DisplayIconArmurier(value)
	local clicked1 = false;
	local clicked2 = false;
	MainMinimizedIcon2 = MinimizedIcon(ResourcePath .. "Armurier_Prospecteur.tga", 32, 32);
	MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon2:SetOpacity(0);
	MainMinimizedIcon2:SetZOrder(-1);
	MainMinimizedIcon3 = MinimizedIcon(ResourcePath .. "Armurier_Tresor.tga", 32, 32);
	MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon3:SetOpacity(0);
	MainMinimizedIcon3:SetZOrder(-1);

	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Armurier.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Armurier.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon2.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon2:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon2:GetTop();
		SaveSettings();
	end
	MainMinimizedIcon3.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon3:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon3:GetTop();
		SaveSettings();
	end

	centerQS1.MouseClick = function(sender, args)
		if(clicked1 == false)then
			HideMainWindow();
			MainMinimizedIcon2:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(0);
			MainMinimizedIcon:SetZOrder(-1);
			MainMinimizedIcon2:SetOpacity(1);
			MainMinimizedIcon2:SetZOrder(1000);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = true;
			clicked2 = false;
		else
			MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
			MainMinimizedIcon:SetOpacity(1);
			MainMinimizedIcon:SetZOrder(1000);
			MainMinimizedIcon2:SetOpacity(0);
			MainMinimizedIcon2:SetZOrder(-1);
			MainMinimizedIcon3:SetOpacity(0);
			MainMinimizedIcon3:SetZOrder(-1);
			clicked1 = false;
			clicked2 = false;
		end
	end
	if(value == 40)then
		centerQS2.MouseClick = function(sender, args)
			if(clicked2 == false)then
				HideMainWindow();
				MainMinimizedIcon3:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(0);
				MainMinimizedIcon:SetZOrder(-1);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(1);
				MainMinimizedIcon3:SetZOrder(1000);			
				clicked1 = false;
				clicked2 = true;
			else
				MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
				MainMinimizedIcon:SetOpacity(1);
				MainMinimizedIcon:SetZOrder(1000);
				MainMinimizedIcon2:SetOpacity(0);
				MainMinimizedIcon2:SetZOrder(-1);
				MainMinimizedIcon3:SetOpacity(0);
				MainMinimizedIcon3:SetZOrder(-1);
				clicked1 = false;
				clicked2 = false;
			end
		end
	end
end
------------------------------------------------------------------------------------------
-- display icon no profession
------------------------------------------------------------------------------------------
function DisplayIconNoProfession(value)
	if(settings["isWindowVisible"]["isWindowVisible"] == true)then
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Empty.tga", 32, 32, ProfessionWindow:SetVisible(true));
	else
		MainMinimizedIcon = MinimizedIcon(ResourcePath .. "Empty.tga", 32, 32, ProfessionWindow:SetVisible(false));
	end

	MainMinimizedIcon:SetPosition(settings["IconPosition"]["xPosIcon"], settings["IconPosition"]["yPosIcon"]);
	MainMinimizedIcon:SetZOrder(1000);
	MainMinimizedIcon.PositionChanged = function()
		settings["IconPosition"]["xPosIcon"] = MainMinimizedIcon:GetLeft();
		settings["IconPosition"]["yPosIcon"] = MainMinimizedIcon:GetTop();
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheWindow()
	function ProfessionWindow:Closing(sender, args)
		settings["isWindowVisible"]["isWindowVisible"] = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- event handler for escape key
------------------------------------------------------------------------------------------
function EscapeKeyPressed()
	ProfessionWindow.KeyDown=function(sender, args)
		if ( args.Action == Turbine.UI.Lotro.Action.Escape ) then
			if(settings["escEnable"]["escEnable"] == false) then
				ProfessionWindow:SetVisible(false);
				settings["isWindowVisible"]["isWindowVisible"] = false;
				SaveSettings();
			end
			OptionsWindow:SetVisible(false);
			settings["isOptionsWindowVisible"]["isOptionsWindowVisible"] = false;
			SaveSettings();
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
end
------------------------------------------------------------------------------------------
-- display the list of command
------------------------------------------------------------------------------------------
function commandsHelp()
	notification(
		rgb["start"] .. 
		T[ "PluginHelp1" ] ..
		rgb["clear"] ..
		T[ "PluginHelp2" ] ..
		T[ "PluginHelp3" ] ..
		T[ "PluginHelp4" ] ..
		T[ "PluginHelp5" ] ..
		T[ "PluginHelp6" ] ..
		T[ "PluginHelp7" ] ..
		T[ "PluginHelp8" ] ..
		T[ "PluginHelp9" ]
	);
end