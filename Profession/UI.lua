------------------------------------------------------------------------------------------
-- create the main window
------------------------------------------------------------------------------------------
function CreateSmallWindow()
	ProfessionWindow=Turbine.UI.Lotro.GoldWindow(); 
	ProfessionWindow:SetSize(225,100); 
	ProfessionWindow:SetText( T[ "PluginName" ] ); 

	ProfessionWindow.Message=Turbine.UI.Label(); 
	ProfessionWindow.Message:SetParent(ProfessionWindow); 
	ProfessionWindow.Message:SetSize(150,10); 
	ProfessionWindow.Message:SetPosition(ProfessionWindow:GetWidth()/2 - 75, ProfessionWindow:GetHeight()/2 + 32); 
	ProfessionWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	ProfessionWindow.Message:SetText( T[ "PluginVocation" .. settings["vocation"]["nbr"]] ); 

	ProfessionWindow:SetZOrder(0);
	ProfessionWindow:SetWantsKeyEvents(true);
	ProfessionWindow:SetAllowDrop(false);

	ProfessionWindow:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);

	------------------------------------------------------------------------------------------
	-- center window for quickslot
	------------------------------------------------------------------------------------------
	centerWindow = Turbine.UI.Extensions.SimpleWindow();
	centerWindow:SetSize( 40 , 40 );
	centerWindow:SetParent( ProfessionWindow );
	centerWindow:SetPosition( 95 ,ProfessionWindow:GetHeight()/2 - 10);
	centerWindow:SetVisible( true );
	centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	centerWindow:SetAllowDrop(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);
	centerLabel:SetAllowDrop(false);

	centerQS1 = Turbine.UI.Lotro.Quickslot();
	centerQS1:SetParent( centerWindow );
	centerQS1:SetPosition( 1, 1 );
	centerQS1:SetSize( 36, 36 );
	centerQS1:SetUseOnRightClick(false);
	centerQS1:SetAllowDrop(false);
end
function CreateEmptyWindow()
	ProfessionWindow=Turbine.UI.Lotro.GoldWindow(); 
	ProfessionWindow:SetSize(225,100); 
	ProfessionWindow:SetText(T[ "PluginName" ]); 

	ProfessionWindow.Message=Turbine.UI.Label(); 
	ProfessionWindow.Message:SetParent(ProfessionWindow); 
	ProfessionWindow.Message:SetSize(150,10); 
	ProfessionWindow.Message:SetPosition(ProfessionWindow:GetWidth()/2 - 75, ProfessionWindow:GetHeight()/2); 
	ProfessionWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	ProfessionWindow.Message:SetText( T[ "PluginVocation" ] ); 

	ProfessionWindow:SetZOrder(0);
	ProfessionWindow:SetWantsKeyEvents(true);
	ProfessionWindow:SetAllowDrop(false);

	ProfessionWindow:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);
end
function CreateMediumWindow()
	ProfessionWindow=Turbine.UI.Lotro.GoldWindow(); 
	ProfessionWindow:SetSize(225,100); 
	ProfessionWindow:SetText(T[ "PluginName" ]); 

	ProfessionWindow.Message=Turbine.UI.Label(); 
	ProfessionWindow.Message:SetParent(ProfessionWindow); 
	ProfessionWindow.Message:SetSize(150,10); 
	ProfessionWindow.Message:SetPosition(ProfessionWindow:GetWidth()/2 - 75, ProfessionWindow:GetHeight()/2 + 32); 
	ProfessionWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	ProfessionWindow.Message:SetText(T[ "PluginVocation" .. settings["vocation"]["nbr"]]); 

	ProfessionWindow:SetZOrder(0);
	ProfessionWindow:SetWantsKeyEvents(true);
	ProfessionWindow:SetAllowDrop(false);

	ProfessionWindow:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);

	------------------------------------------------------------------------------------------
	-- center window for quickslot
	------------------------------------------------------------------------------------------
	centerWindow = Turbine.UI.Extensions.SimpleWindow();
	centerWindow:SetSize( 40 , 40 );
	centerWindow:SetParent( ProfessionWindow );
	centerWindow:SetPosition( 70 ,ProfessionWindow:GetHeight()/2 - 10);
	centerWindow:SetVisible( true );
	centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	centerWindow:SetAllowDrop(false);

	centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow2:SetSize( 40 , 40 );
	centerWindow2:SetParent( ProfessionWindow );
	centerWindow2:SetPosition( 120 ,ProfessionWindow:GetHeight()/2 - 10);
	centerWindow2:SetVisible( true );
	centerWindow2:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	centerWindow2:SetAllowDrop(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);
	centerLabel:SetAllowDrop(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow2);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);
	centerLabel:SetAllowDrop(false);

	centerQS1 = Turbine.UI.Lotro.Quickslot();
	centerQS1:SetParent( centerWindow );
	centerQS1:SetPosition( 1, 1 );
	centerQS1:SetSize( 36, 36 );
	centerQS1:SetUseOnRightClick(false);
	centerQS1:SetAllowDrop(false);

	centerQS2 = Turbine.UI.Lotro.Quickslot();
	centerQS2:SetParent( centerWindow2 );
	centerQS2:SetPosition( 1, 1 );
	centerQS2:SetSize( 36, 36 );
	centerQS2:SetUseOnRightClick(false);
	centerQS2:SetAllowDrop(false);
end
function CreateBigWindow()
	ProfessionWindow=Turbine.UI.Lotro.GoldWindow(); 
	ProfessionWindow:SetSize(225,100); 
	ProfessionWindow:SetText(T[ "PluginName" ]); 

	ProfessionWindow.Message=Turbine.UI.Label(); 
	ProfessionWindow.Message:SetParent(ProfessionWindow); 
	ProfessionWindow.Message:SetSize(150,10); 
	ProfessionWindow.Message:SetPosition(ProfessionWindow:GetWidth()/2 - 75, ProfessionWindow:GetHeight()/2 + 32); 
	ProfessionWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
	ProfessionWindow.Message:SetText(T[ "PluginVocation" .. settings["vocation"]["nbr"]]); 

	ProfessionWindow:SetZOrder(0);
	ProfessionWindow:SetWantsKeyEvents(true);
	ProfessionWindow:SetAllowDrop(false);

	ProfessionWindow:SetPosition(settings["windowPosition"]["xPos"], settings["windowPosition"]["yPos"]);

	------------------------------------------------------------------------------------------
	-- center window for quickslot
	------------------------------------------------------------------------------------------
	centerWindow = Turbine.UI.Extensions.SimpleWindow();
	centerWindow:SetSize( 40 , 40 );
	centerWindow:SetParent( ProfessionWindow );
	centerWindow:SetPosition( 50 ,ProfessionWindow:GetHeight()/2 - 10);
	centerWindow:SetVisible( true );
	centerWindow:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	centerWindow:SetAllowDrop(false);

	centerWindow2 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow2:SetSize( 40 , 40 );
	centerWindow2:SetParent( ProfessionWindow );
	centerWindow2:SetPosition( 92 ,ProfessionWindow:GetHeight()/2 - 10);
	centerWindow2:SetVisible( true );
	centerWindow2:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	centerWindow2:SetAllowDrop(false);

	centerWindow3 = Turbine.UI.Extensions.SimpleWindow();
	centerWindow3:SetSize( 40 , 40 );
	centerWindow3:SetParent( ProfessionWindow );
	centerWindow3:SetPosition( 134 ,ProfessionWindow:GetHeight()/2 - 10);
	centerWindow3:SetVisible( true );
	centerWindow3:SetBackColor( Turbine.UI.Color( .6, .5, .7, .5) );
	centerWindow3:SetAllowDrop(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);
	centerLabel:SetAllowDrop(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow2);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);
	centerLabel:SetAllowDrop(false);

	centerLabel = Turbine.UI.Label();
	centerLabel:SetParent(centerWindow3);
	centerLabel:SetPosition( 0, 0 );
	centerLabel:SetSize( 40, 40  );
	centerLabel:SetText( "" );
	centerLabel:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
	centerLabel:SetZOrder(-1);
	centerLabel:SetMouseVisible(false);
	centerLabel:SetAllowDrop(false);

	centerQS1 = Turbine.UI.Lotro.Quickslot();
	centerQS1:SetParent( centerWindow );
	centerQS1:SetPosition( 1, 1 );
	centerQS1:SetSize( 36, 36 );
	centerQS1:SetUseOnRightClick(false);
	centerQS1:SetAllowDrop(false);

	centerQS2 = Turbine.UI.Lotro.Quickslot();
	centerQS2:SetParent( centerWindow2 );
	centerQS2:SetPosition( 1, 1 );
	centerQS2:SetSize( 36, 36 );
	centerQS2:SetUseOnRightClick(false);
	centerQS2:SetAllowDrop(false);

	centerQS3 = Turbine.UI.Lotro.Quickslot();
	centerQS3:SetParent( centerWindow3 );
	centerQS3:SetPosition( 1, 1 );
	centerQS3:SetSize( 36, 36 );
	centerQS3:SetUseOnRightClick(false);
	centerQS3:SetAllowDrop(false);
end
function CreateMainWindow()
	local player = Turbine.Gameplay.LocalPlayer.GetInstance();
	local localPlayerName = player:GetName();
	local PlayerAlignement = player:GetAlignment();

	local playerAttr = player:GetAttributes();
	local vocation = 0;

	--if(PlayerAlignement == 1)then
	--	vocation = playerAttr:GetVocation();
	--end

	vocation = settings["vocation"]["nbr"];

	local class = player:GetClass();

	--class = 40; -- debug for burglar
	if(vocation == 0) then
		CreateEmptyWindow();
	end

	if(vocation == 1) then
		if(class == 40)then -- this a burglar
			CreateBigWindow();
			centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003F15") ); -- detection de tresor
			centerQS3:SetAllowDrop(false);
		else
			CreateMediumWindow();
		end
		--Turbine.Shell.WriteLine("Explorateur");
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x7000397A") );	
		centerQS1:SetAllowDrop(false);
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003953") );
		centerQS2:SetAllowDrop(false);
	end
	if(vocation == 2) then
		if(class == 40)then -- this a burglar
			CreateMediumWindow();
			centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003F15") ); -- detection de tresor
			centerQS2:SetAllowDrop(false);
		else
			CreateSmallWindow();
		end
		--Turbine.Shell.WriteLine("Joaillier");
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003953") );	
		centerQS1:SetAllowDrop(false);
	end
	if(vocation == 3) then
		if(class == 40)then -- this a burglar
			CreateMediumWindow();
			centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003F15") ); -- detection de tresor
			centerQS2:SetAllowDrop(false);
		else
			CreateSmallWindow();
		end
		--Turbine.Shell.WriteLine("Franc-tenancier");
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003A03") );	
		centerQS1:SetAllowDrop(false);
	end
	if(vocation == 4) then
		if(class == 40)then -- this a burglar
			CreateBigWindow();
			centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003F15") ); -- detection de tresor
			centerQS3:SetAllowDrop(false);
		else
			CreateMediumWindow();
		end
		--Turbine.Shell.WriteLine("Erudit");
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x7000AF34") );	
		centerQS1:SetAllowDrop(false);
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003A03") );	
		centerQS2:SetAllowDrop(false);
	end
	if(vocation == 5) then
		if(class == 40)then -- this a burglar
			CreateMediumWindow();
			centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003F15") ); -- detection de tresor
			centerQS2:SetAllowDrop(false);
		else
			CreateSmallWindow();
		end
		--Turbine.Shell.WriteLine("Fourbisseur");
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003953") );	
		centerQS1:SetAllowDrop(false);
	end
	if(vocation == 6) then
		if(class == 40)then -- this a burglar
			CreateBigWindow();
			centerQS3:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003F15") ); -- detection de tresor
			centerQS3:SetAllowDrop(false);
		else
			CreateMediumWindow();
		end
		--Turbine.Shell.WriteLine("Menuisier");
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x7000397A") );	
		centerQS1:SetAllowDrop(false);
		centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003A03") );	
		centerQS2:SetAllowDrop(false);
	end
	if(vocation == 7) then
		if(class == 40)then -- this a burglar
			CreateMediumWindow();
			centerQS2:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003F15") ); -- detection de tresor
			centerQS2:SetAllowDrop(false);
		else
			CreateSmallWindow();
		end
		--Turbine.Shell.WriteLine("Armurier");
		centerQS1:SetShortcut( Turbine.UI.Lotro.Shortcut( 6, "0x70003953") );
		centerQS1:SetAllowDrop(false);
	end

	--ProfessionCommand.ShellCommand().GetShortHelp = function(sender, ProfessionCommand)
		--return("Profession - usage: /Pro show|hide|esc");
	--end
end
------------------------------------------------------------------------------------------
-- updating the window
------------------------------------------------------------------------------------------
function UpdateWindow()
	CreateMainWindow();
end
------------------------------------------------------------------------------------------
-- updating the icons
------------------------------------------------------------------------------------------
function UpdateIcons(vocation)
	--class = 40; -- debug for burglar
	local player = Turbine.Gameplay.LocalPlayer.GetInstance();

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

	MainMinimizedIcon:SetDefaultOpacity(.90);

end