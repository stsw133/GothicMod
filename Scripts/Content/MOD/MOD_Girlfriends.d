///******************************************************************************************
///	MOD_Girlfriends
///******************************************************************************************

const int MAX_LOVE				=	100000;	/// 100k = 100%

const int gf_name0				=	0;

var int girlfriend[1];

///******************************************************************************************
func void MOD_StopTalkingWithGirl (var C_Npc slf)
{
	talkingWithGirl = false;
	Bar_Delete(Bar_expBar);
	AI_StopProcessInfos(slf);
};

///******************************************************************************************
///	B_GivePlayerLove
///******************************************************************************************
func void B_GivePlayerLove (var C_Npc slf, var int points)
{
	slf.aivar[AIV_Love] += points;
	
	if (slf.aivar[AIV_Love] > MAX_LOVE)
	{
		slf.aivar[AIV_Love] = MAX_LOVE;
	};
	
	if (talkingWithGirl)
	{
		gLevelA = slf.aivar[AIV_Love];
	};
	
	Print_ExtPrcnt (-1, YPOS_ProgGained, ConcatStrings(PRINT_addLove, IntToString(points)), FONT_ScreenSmall, COL_LoveGained, TIME_Print);
//	GIRLFRIENDS_CHECK();
};
