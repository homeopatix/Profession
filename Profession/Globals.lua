
function CreateLocalizationInfo()
	Strings = {};

	if Turbine.Engine.GetLanguage() == Turbine.Language.German then
		Strings.PluginName = "Profession";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginEscEnable = "Escape-Taste aktiviert";
		Strings.PluginEscDesable = "Escape-Taste deaktiviert";
		Strings.PluginNoProfession = "Du hast noch keinen Beruf";
		Strings.PluginAltEnable = "Alt-Taste aktiviert";
		Strings.PluginAltDesable = "Alt-Taste deaktiviert";
		Strings.PluginWindowShow = "Schaufenster.";
		Strings.PluginWindowHide = "Verstecke das Fenster.";
		Strings.PluginNoVocation = "Kein Beruf";
		-- vocation
		Strings.PluginVocation = { 
		"EntDecker",
		"KesselFlicker",
		"FreiBauer",
		"Historiker",
		"WaffenBauer",
		"WaldH\195\188ter",
		"R\195\188stungsschmied",
		"Keine Berufung"};
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = " *** Profession Hilfe ***\n";
		Strings.PluginHelp2 = "/Pro show zeigt das Fenster an\n";
		Strings.PluginHelp3 = "/Pro hide verstecke das Fenster\n";
		Strings.PluginHelp4 = "/Pro alt ALT-Taste gedr\195\188ckt halten, um das Symbol zu verschieben.\n";
		Strings.PluginHelp5 = "/Pro toggle - Fenster ein-oder ausblenden\n";
		Strings.PluginHelp6 = "/Pro esc Aktiviert oder deaktiviert das Fenster, das mit der Escape-Taste geschlossen wird\n";
		Strings.PluginHelp7 = "/Pro options - \195\150ffnet das Optionsfenster\n";
		Strings.PluginHelp8 = "/Pro always - Zeigt immer das Fenster an";
		Strings.PluginHelp9 = "Klicken Sie mit der rechten Maustaste auf das Symbol, um das Optionsfeld anzuzeigen";
		------------------------------------------------------------------------------------------
		-- option windows --
		------------------------------------------------------------------------------------------
		Strings.PluginOption10 = "Validieren von \195\132nderungen";
		Strings.PluginOption1 = "Zeigen Sie die Optionen Fenster an";
		Strings.PluginOption2 = "W\195\164hlen Sie die aktuelle Berufung";
		Strings.PluginOption3 = "Permanente Anzeige des Fensters";
		Strings.PluginWindowsAlwaysShowOn = "Fenster immer eingeschaltet anzeigen";
		Strings.PluginWindowsAlwaysShowOff = "Fenster immer AUS anzeigen";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
		Strings.PluginName = "Profession";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginEscEnable = "Touche Escape activ\195\169";
		Strings.PluginEscDesable = "Touche Escape desactiv\195\169";
		Strings.PluginAltEnable = "Touche Alt activ\195\169";
		Strings.PluginAltDesable = "Touche Alt desactiv\195\169";
		Strings.PluginNoProfession = "Vous n'avez pas encore de profession";
		Strings.PluginWindowShow = "Affiche la fen\195\168tre.";
		Strings.PluginWindowHide = "Cache la fen\195\168tre.";
		Strings.PluginNoVocation = "Aucune profession";
		-- vocation
		Strings.PluginVocation = { 
		"Explorateur",
		"Joaillier",
		"Franc-tenancier",
		"Historien",
		"Fourbisseur",
		"Bucheron",
		"Armurier",
		"Aucune vocation"};
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = " *** Profession Aide ***\n";
		Strings.PluginHelp2 = "/Pro show affiche La fenetre\n";
		Strings.PluginHelp3 = "/Pro hide cache la fenetre\n";
		Strings.PluginHelp4 = "/Pro alt Active ou d\195\169sactive la touche alt pour le d\195\169placement de l'icon.\n";
		Strings.PluginHelp5 = "/Pro toggle - Affiche ou cache la fenetre.\n";
		Strings.PluginHelp6 = "/Pro esc Active ou d\195\169sactive la fermeture de fenetre avec la touche escape\n";
		Strings.PluginHelp7 = "/Pro options - Ouvre la fen\195\168tre d'options\n";
		Strings.PluginHelp8 = "/Pro always - Affiche toujours la fen\195\168tre";
		Strings.PluginHelp9 = "Cliquez avec le bouton droit de la souris sur l'ic\195\180ne pour afficher la case d'option";
		------------------------------------------------------------------------------------------
		-- option windows --
		------------------------------------------------------------------------------------------
		Strings.PluginOption10 = "Valider les changements";
		Strings.PluginOption1 = "Afficher la fen\195\170tre d'options";
		Strings.PluginOption2 = "Choisissez la Vocation courante";
		Strings.PluginOption3 = "Affichage permament de la fen\195\168tre";
		Strings.PluginWindowsAlwaysShowOn = "Afficher toujours la fen\195\168tre ON";
		Strings.PluginWindowsAlwaysShowOff = "Afficher toujours la fen\195\168tre OFF";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
		Strings.PluginName = "Profession";
		Strings.PluginText = "Par Homeopatix";
		Strings.PluginEscEnable = "Escape key Activated";
		Strings.PluginEscDesable = "Escape key Desactivated";
		Strings.PluginAltEnable = "Alt key Activated";
		Strings.PluginAltDesable = "Alt key Desactivated";
		Strings.PluginNoProfession = "You don't have a profession yet";
		Strings.PluginWindowShow = "Show the window.";
		Strings.PluginWindowHide = "Hide the window.";
		Strings.PluginNoVocation = "No profession";
		-- vocation
		Strings.PluginVocation = {
		"Explorer",
		"Tinker",
		"YeoMan",
		"Historian",
		"ArmsMan",
		"WoodsMan",
		"Armourer",
		"No vocation"};
		------------------------------------------------------------------------------------------
		-- help --
		------------------------------------------------------------------------------------------
		Strings.PluginHelp1 = " *** Profession Help ***\n";
		Strings.PluginHelp2 = "/Pro show displays the window\n";
		Strings.PluginHelp3 = "/Pro hide hide the window\n";
		Strings.PluginHelp4 = "/Pro alt Activate or deactivate the alt key to move the icon.\n";
		Strings.PluginHelp5 = "/Pro toggle - Display or hide the window.\n";
		Strings.PluginHelp6 = "/Pro esc Activates or deactivates window closing with the escape key\n";
		Strings.PluginHelp7 = "/Pro options - Opens the options window\n";
		Strings.PluginHelp8 = "/Pro always - Always shows the window";
		Strings.PluginHelp9 = "Right-click the icon to display the radio button";
		------------------------------------------------------------------------------------------
		-- option windows --
		------------------------------------------------------------------------------------------
		Strings.PluginOption10 = "Validate changes";
		Strings.PluginOption1 = "Display the options Window";
		Strings.PluginOption2 = "Choose the current Vocationm";
		Strings.PluginOption3 = "Permanent display of the window";
		Strings.PluginWindowsAlwaysShowOn = "Always display windows ON";
		Strings.PluginWindowsAlwaysShowOff = "Always display windows OFF";
	end
end