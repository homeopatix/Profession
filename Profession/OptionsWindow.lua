------------------------------------------------------------------------------------------
-- OptionWindow file
-- Written by Homeopatix
-- 7 january 2021
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
-- define size of the window
------------------------------------------------------------------------------------------
local windowWidth = 0;
local windowHeight = 0;
local positionInitiale = 0;

windowWidth = 600;
windowHeight = 480;
positionInitiale = 40;
------------------------------------------------------------------------------------------
-- create the options window
------------------------------------------------------------------------------------------
function GenerateOptionsWindow()
		OptionsWindow=Turbine.UI.Lotro.GoldWindow(); 
		OptionsWindow:SetSize(windowWidth, windowHeight); 
		OptionsWindow:SetText(T[ "PluginOptionsText" ]); 

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(150,10); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 75, windowHeight - 17 ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText(T[ "PluginText" ]); 

		OptionsWindow:SetZOrder(0);
		OptionsWindow:SetWantsKeyEvents(true);

		OptionsWindow:SetPosition((Turbine.UI.Display:GetWidth()-OptionsWindow:GetWidth())/2,(Turbine.UI.Display:GetHeight()-OptionsWindow:GetHeight())/2);
		OptionsWindow:SetVisible(false);

		------------------------------------------------------------------------------------------
		-- center window
		-----------------------------------------------------------------------------------------
		textColor = Turbine.UI.Color.Lime;

		posy = 60;

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 175, posy ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText(T[ "PluginVocation9" ]);

		posy = posy + 30 ;

		checkBoxVocation0 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation0:SetParent( OptionsWindow );
		checkBoxVocation0:SetSize(450, 20); 
		checkBoxVocation0:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation0:SetText(" " .. T[ "PluginVocation" ] );
		checkBoxVocation0:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation0:SetVisible(true);
		if(settings["vocation"]["nbr"] == 0)then
			checkBoxVocation0:SetChecked(true);
		else
			checkBoxVocation0:SetChecked(false);
		end
		checkBoxVocation0:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession" ] .. ")");

		posy = posy + 30;

		checkBoxVocation1 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation1:SetParent( OptionsWindow );
		checkBoxVocation1:SetSize(450, 20); 
		checkBoxVocation1:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation1:SetText(" " .. T[ "PluginVocation1" ] );
		checkBoxVocation1:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation1:SetVisible(true);
		if(settings["vocation"]["nbr"] == 1)then
			checkBoxVocation1:SetChecked(true);
		else
			checkBoxVocation1:SetChecked(false);
		end
		checkBoxVocation1:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession2" ] .. " - " .. T[ "PluginProfession3" ] .. " - " .. T[ "PluginProfession8" ] .. ")");

		posy = posy + 30;

		checkBoxVocation2 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation2:SetParent( OptionsWindow );
		checkBoxVocation2:SetSize(450, 20); 
		checkBoxVocation2:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation2:SetForeColor(textColor);
		checkBoxVocation2:SetText(" " .. T[ "PluginVocation2" ]);
		checkBoxVocation2:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation2:SetVisible(true);
		if(settings["vocation"]["nbr"] == 2)then
			checkBoxVocation2:SetChecked(true);
		else
			checkBoxVocation2:SetChecked(false);
		end
		checkBoxVocation2:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession5" ] .. " - " .. T[ "PluginProfession3" ] .. " - " .. T[ "PluginProfession4" ] .. ")");

		posy = posy + 30;

		checkBoxVocation3 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation3:SetParent( OptionsWindow );
		checkBoxVocation3:SetSize(450, 20); 
		checkBoxVocation3:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation3:SetForeColor(textColor);
		checkBoxVocation3:SetText(" " .. T[ "PluginVocation3" ]);
		checkBoxVocation3:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation3:SetVisible(true);
		if(settings["vocation"]["nbr"] == 3)then
			checkBoxVocation3:SetChecked(true);
		else
			checkBoxVocation3:SetChecked(false);
		end
		checkBoxVocation3:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession4" ] .. " - " .. T[ "PluginProfession1" ] .. " - " .. T[ "PluginProfession8" ] .. ")");

		posy = posy + 30;

		checkBoxVocation4 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation4:SetParent( OptionsWindow );
		checkBoxVocation4:SetSize(450, 20); 
		checkBoxVocation4:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation4:SetForeColor(textColor);
		checkBoxVocation4:SetText(" " .. T[ "PluginVocation4" ]);
		checkBoxVocation4:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation4:SetVisible(true);
		if(settings["vocation"]["nbr"] == 4)then
			checkBoxVocation4:SetChecked(true);
		else
			checkBoxVocation4:SetChecked(false);
		end
		checkBoxVocation4:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession7" ] .. " - " .. T[ "PluginProfession1" ] .. " - " .. T[ "PluginProfession9" ] .. ")");

		posy = posy + 30;

		checkBoxVocation5 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation5:SetParent( OptionsWindow );
		checkBoxVocation5:SetSize(450, 20); 
		checkBoxVocation5:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation5:SetForeColor(textColor);
		checkBoxVocation5:SetText(" " .. T[ "PluginVocation5" ]);
		checkBoxVocation5:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation5:SetVisible(true);
		if(settings["vocation"]["nbr"] == 5)then
			checkBoxVocation5:SetChecked(true);
		else
			checkBoxVocation5:SetChecked(false);
		end
		checkBoxVocation5:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession6" ] .. " - " .. T[ "PluginProfession3" ] .. " - " .. T[ "PluginProfession8" ] .. ")");

		posy = posy + 30;

		checkBoxVocation6 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation6:SetParent( OptionsWindow );
		checkBoxVocation6:SetSize(450, 20); 
		checkBoxVocation6:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation6:SetForeColor(textColor);
		checkBoxVocation6:SetText(" " .. T[ "PluginVocation6" ]);
		checkBoxVocation6:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation6:SetVisible(true);
		if(settings["vocation"]["nbr"] == 6)then
			checkBoxVocation6:SetChecked(true);
		else
			checkBoxVocation6:SetChecked(false);
		end
		checkBoxVocation6:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession10" ] .. " - " .. T[ "PluginProfession2" ] .. " - " .. T[ "PluginProfession1" ] .. ")");

		posy = posy + 30;

		checkBoxVocation7 = Turbine.UI.Lotro.CheckBox();
		checkBoxVocation7:SetParent( OptionsWindow );
		checkBoxVocation7:SetSize(450, 20); 
		checkBoxVocation7:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		checkBoxVocation7:SetForeColor(textColor);
		checkBoxVocation7:SetText(" " .. T[ "PluginVocation7" ]);
		checkBoxVocation7:SetPosition(windowWidth/2 - 160, posy);
		checkBoxVocation7:SetVisible(true);
		if(settings["vocation"]["nbr"] == 7)then
			checkBoxVocation7:SetChecked(true);
		else
			checkBoxVocation7:SetChecked(false);
		end
		checkBoxVocation7:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 100, posy ); 
		OptionsWindow.Message:SetFont(Turbine.UI.Lotro.Font.Verdana12);
		OptionsWindow.Message:SetForeColor(textColor);
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText("(" .. T[ "PluginProfession10" ] .. " - " .. T[ "PluginProfession9" ] .. " - " .. T[ "PluginProfession3" ] .. ")");


		buttonValider = Turbine.UI.Lotro.GoldButton();
		buttonValider:SetParent( OptionsWindow );
		buttonValider:SetPosition(windowWidth/2 - 125, windowHeight - 50);
		buttonValider:SetSize( 300, 20 );
		buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		buttonValider:SetText( T[ "PluginOptionValidate" ] );
		buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		buttonValider:SetVisible(true);
		buttonValider:SetMouseVisible(true);

		function checkBoxVocation0:CheckedChanged()
			if(checkBoxVocation0:IsChecked(true))then
				checkBoxVocation1:SetChecked(false);
				checkBoxVocation2:SetChecked(false);
				checkBoxVocation3:SetChecked(false);
				checkBoxVocation4:SetChecked(false);
				checkBoxVocation5:SetChecked(false);
				checkBoxVocation6:SetChecked(false);
				checkBoxVocation7:SetChecked(false);
			end
		end
		function checkBoxVocation1:CheckedChanged()
			if(checkBoxVocation1:IsChecked(true))then
				checkBoxVocation0:SetChecked(false);
				checkBoxVocation2:SetChecked(false);
				checkBoxVocation3:SetChecked(false);
				checkBoxVocation4:SetChecked(false);
				checkBoxVocation5:SetChecked(false);
				checkBoxVocation6:SetChecked(false);
				checkBoxVocation7:SetChecked(false);
			end
		end
		function checkBoxVocation2:CheckedChanged()
			if(checkBoxVocation2:IsChecked(true))then
				checkBoxVocation1:SetChecked(false);
				checkBoxVocation0:SetChecked(false);
				checkBoxVocation3:SetChecked(false);
				checkBoxVocation4:SetChecked(false);
				checkBoxVocation5:SetChecked(false);
				checkBoxVocation6:SetChecked(false);
				checkBoxVocation7:SetChecked(false);
			end
		end
		function checkBoxVocation3:CheckedChanged()
			if(checkBoxVocation3:IsChecked(true))then
				checkBoxVocation2:SetChecked(false);
				checkBoxVocation1:SetChecked(false);
				checkBoxVocation0:SetChecked(false);
				checkBoxVocation4:SetChecked(false);
				checkBoxVocation5:SetChecked(false);
				checkBoxVocation6:SetChecked(false);
				checkBoxVocation7:SetChecked(false);
			end
		end
		function checkBoxVocation4:CheckedChanged()
			if(checkBoxVocation4:IsChecked(true))then
				checkBoxVocation2:SetChecked(false);
				checkBoxVocation3:SetChecked(false);
				checkBoxVocation1:SetChecked(false);
				checkBoxVocation0:SetChecked(false);
				checkBoxVocation5:SetChecked(false);
				checkBoxVocation6:SetChecked(false);
				checkBoxVocation7:SetChecked(false);
			end
		end
		function checkBoxVocation5:CheckedChanged()
			if(checkBoxVocation5:IsChecked(true))then
				checkBoxVocation2:SetChecked(false);
				checkBoxVocation3:SetChecked(false);
				checkBoxVocation4:SetChecked(false);
				checkBoxVocation1:SetChecked(false);
				checkBoxVocation0:SetChecked(false);
				checkBoxVocation6:SetChecked(false);
				checkBoxVocation7:SetChecked(false);
			end
		end
		function checkBoxVocation6:CheckedChanged()
			if(checkBoxVocation6:IsChecked(true))then
				checkBoxVocation2:SetChecked(false);
				checkBoxVocation3:SetChecked(false);
				checkBoxVocation4:SetChecked(false);
				checkBoxVocation5:SetChecked(false);
				checkBoxVocation1:SetChecked(false);
				checkBoxVocation0:SetChecked(false);
				checkBoxVocation7:SetChecked(false);
			end
		end
		function checkBoxVocation7:CheckedChanged()
			if(checkBoxVocation7:IsChecked(true))then
				checkBoxVocation2:SetChecked(false);
				checkBoxVocation3:SetChecked(false);
				checkBoxVocation4:SetChecked(false);
				checkBoxVocation5:SetChecked(false);
				checkBoxVocation6:SetChecked(false);
				checkBoxVocation1:SetChecked(false);
				checkBoxVocation0:SetChecked(false);
			end
		end

		posy = posy + 60 ;

		OptionsWindow.Message=Turbine.UI.Label(); 
		OptionsWindow.Message:SetParent(OptionsWindow); 
		OptionsWindow.Message:SetSize(350, 20); 
		OptionsWindow.Message:SetPosition(windowWidth/2 - 175, posy ); 
		OptionsWindow.Message:SetTextAlignment(Turbine.UI.ContentAlignment.MiddleCenter); 
		OptionsWindow.Message:SetText(T[ "PluginOption3" ]);

		checkBoxAlwaysShow = Turbine.UI.Lotro.CheckBox();
		checkBoxAlwaysShow:SetParent( OptionsWindow );
		checkBoxAlwaysShow:SetSize(380, 20); 
		checkBoxAlwaysShow:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		
		posy = posy + 30 ;

		if(settings["alwaysShow"]["value"] == true)then
			checkBoxAlwaysShow:SetChecked(true);
			checkBoxAlwaysShow:SetText(" " .. T[ "PluginWindowsAlwaysShowOn" ]);
		else
			checkBoxAlwaysShow:SetChecked(false);
			checkBoxAlwaysShow:SetText(" " .. T[ "PluginWindowsAlwaysShowOff" ]);
		end
		checkBoxAlwaysShow:SetPosition(windowWidth/2 - 120, posy);
		checkBoxAlwaysShow:SetVisible(true);
		checkBoxAlwaysShow:SetForeColor( Turbine.UI.Color( 0.7, 0.6, 0.2 ));


		buttonValider = Turbine.UI.Lotro.GoldButton();
		buttonValider:SetParent( OptionsWindow );
		buttonValider:SetPosition(windowWidth/2 - 125, windowHeight - 50);
		buttonValider:SetSize( 300, 20 );
		buttonValider:SetFont(Turbine.UI.Lotro.Font.Verdana16);
		buttonValider:SetText( T[ "PluginOptionValidate" ] );
		buttonValider:SetTextAlignment( Turbine.UI.ContentAlignment.MiddleCenter );
		buttonValider:SetVisible(true);
		buttonValider:SetMouseVisible(true);

		EscapeKeyPressed();
		ValidateChanges();	
end
------------------------------------------------------------------------------------------
-- boutton valider
------------------------------------------------------------------------------------------
function ValidateChanges()
	buttonValider.MouseClick = function(sender, args)

			if (checkBoxVocation0:IsChecked()) then
				settings["vocation"]["nbr"] = 0;
			end
			if (checkBoxVocation1:IsChecked()) then
				settings["vocation"]["nbr"] = 1;
			end
			if (checkBoxVocation2:IsChecked()) then
				settings["vocation"]["nbr"] = 2;
			end
			if (checkBoxVocation3:IsChecked()) then
				settings["vocation"]["nbr"] = 3;
			end
			if (checkBoxVocation4:IsChecked()) then
				settings["vocation"]["nbr"] = 4;
			end
			if (checkBoxVocation5:IsChecked()) then
				settings["vocation"]["nbr"] = 5;
			end
			if (checkBoxVocation6:IsChecked()) then
				settings["vocation"]["nbr"] = 6;
			end
			if (checkBoxVocation7:IsChecked()) then
				settings["vocation"]["nbr"] = 7;
			end

			if (checkBoxAlwaysShow:IsChecked()) then
				settings["alwaysShow"]["value"] = true;
			else
				settings["alwaysShow"]["value"] = false;
			end

			OptionsWindow:SetVisible(false);
			settings["isOptionsWindowVisible"]["value"] = false;

			SaveSettings();
			UpdateWindow();
			MainMinimizedIcon:SetDefaultOpacity(0);
			UpdateIcons(settings["vocation"]["nbr"]);
			--UpdateOptionsWindow();
			ClosingTheOptionsWindow();
		end
end
------------------------------------------------------------------------------------------
-- Closing window handler
------------------------------------------------------------------------------------------
function ClosingTheOptionsWindow()
	function OptionsWindow:Closing(sender, args)
		settings["isOptionsWindowVisible"]["value"] = false;
		SaveSettings();
	end
end
------------------------------------------------------------------------------------------
-- updating the options window
------------------------------------------------------------------------------------------
function UpdateOptionsWindow()
	GenerateOptionsWindow();
	EscapeKeyPressed();
	ClosingTheWindow();
	ClosingTheOptionsWindow();
end