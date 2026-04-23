------------------------------------------------------------------------------------------
-- import librarys
------------------------------------------------------------------------------------------
import "Turbine";
import "Turbine.UI";
import "Turbine.UI.Lotro";
import "Turbine.UI.Extensions";
import "Turbine.Gameplay";
import "Turbine.Gameplay.Attributes";
--import "Turbine.Gameplay.Vocation";
--import "Turbine.Gameplay.Profession";
------------------------------------------------------------------------------------------
-- Import Globals --
------------------------------------------------------------------------------------------
--import "Homeopatix.Profession.Globals";
------------------------------------------------------------------------------------------
-- Import Globals --
------------------------------------------------------------------------------------------
if Turbine.Engine.GetLanguage() == Turbine.Language.German then
	import "Homeopatix.Profession.Localization.GlobalsDE";
	GLocale = "de";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.French then
	import "Homeopatix.Profession.Localization.GlobalsFR";
	GLocale = "fr";
elseif Turbine.Engine.GetLanguage() == Turbine.Language.English then
	import "Homeopatix.Profession.Localization.GlobalsEN";
	GLocale = "en";
end
------------------------------------------------------------------------------------------
-- Import Utility --
------------------------------------------------------------------------------------------
import "Homeopatix.Profession.Notification";
import "Homeopatix.Profession.LoadAndSave";
import "Homeopatix.Profession.MinimizedIcon";
import "Homeopatix.Profession.VindarPatch";
import "Homeopatix.Profession.FCT";
------------------------------------------------------------------------------------------
-- Import initialization --
------------------------------------------------------------------------------------------
import "Homeopatix.Profession.Init";
import "Homeopatix.Profession.Activation";
------------------------------------------------------------------------------------------
-- Import Scripts --
------------------------------------------------------------------------------------------
import "Homeopatix.Profession.Main";
------------------------------------------------------------------------------------------
-- Import UI elements --
------------------------------------------------------------------------------------------
import "Homeopatix.Profession.UI";
import "Homeopatix.Profession.OptionsWindow";
------------------------------------------------------------------------------------------
-- Import Commands --
------------------------------------------------------------------------------------------
import "Homeopatix.Profession.Commands";