class RscDisplayMain: RscStandardDisplay
{
	class Spotlight
	{
		class customServer
		{
			text = "5th Cavalry Server"; // Text displayed on the square button, converted to upper-case
			textIsQuote = 0; // 1 to add quotation marks around the text
			picture = QPATHTOEF(common,data\1stbatlogoBlacked.paa); // Square picture, ideally 512x512
            //picture = "\y\cav\common\data\logo_5cav_ca.paa";
			//video = "\a3\Ui_f\Video\spotlight_1_Apex.ogv"; // Video played on mouse hover
            action = "[_this, '193.70.81.9', '2302', 'bat']  execVM 'y\cav\addons\menu\joinServer.sqf';";
			actionText = "Join The 5th Cavalry Server"; // Text displayed in top left corner of on-hover white frame
			condition = "true"; // Condition for showing the spotlight
		};
	};
};
