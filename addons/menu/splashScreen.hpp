class RscControlsGroup;
class RscPictureKeepAspect;
class RscPicture;
class RscText;

class RscDisplayStart: RscStandardDisplay
{
    class controls
    {
        delete Text;
        delete Progress;
        delete Progress2;
        class LoadingStart: RscControlsGroup
        {
            idc=2310;
            x="0 * safezoneW + safezoneX";
            y="0 * safezoneH + safezoneY";
            w="1 * safezoneW";
            h="1 * safezoneH";
            class controls
            {
                class Black: RscText
                {
                    idc=1000;
                    x="0 * safezoneW";
                    y="0 * safezoneH";
                    w="1 * safezoneW";
                    h="1 * safezoneH";
                    colorBackground[]={0,0,0,1};
                };
                class Noise: RscPicture
                {
                    idc=1201;
                    //text=QPATHTOEF(common,data\logo_5cav_ca.paa);
                    x="0 * safezoneW";
                    y="0 * safezoneH";
                    w="1 * safezoneW";
                    h="1 * safezoneH";
                };
                class Logo: RscPictureKeepAspect
                {
                    idc=1200;
                    text=QPATHTOEF(common,data\logo_5cav_ca.paa);
                    x = "0.325 * safezoneW";
                    y = "0.25 * safezoneH";
                    w = "0.35 * safezoneW";
                    h = "0.35 * safezoneH";
                    onLoad="";
                };
            };
        };
    };
};
