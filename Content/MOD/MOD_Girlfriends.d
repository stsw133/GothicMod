///******************************************************************************************
///	MOD_Girlfriends
///******************************************************************************************

const int MAX_LOVE				=	100000;	/// 100k = 100%

const int gf_name0				=	0;

var int girlfriend[1];

///******************************************************************************************
func void MOD_StopTalkingWithGirl (var C_NPC slf)
{
	talkingWithGirl = false;
	Bar_Delete(Bar_expBar);
	AI_StopProcessInfos(slf);
};

///******************************************************************************************
///	B_GivePlayerLove
///******************************************************************************************
func void B_GivePlayerLove (var C_NPC slf, var int points)
{
	if (talkingWithGirl)
	{
		gLevelA += points;
		if (gLevelA > MAX_LOVE)
		{
			gLevelA = MAX_LOVE;
		};
	};

	slf.aivar[AIV_Love] += points;

	if (slf.aivar[AIV_Love] > MAX_LOVE)
	{
		slf.aivar[AIV_Love] = MAX_LOVE;
	};

	Print_ExtPrcnt (-1, YPOS_ProgGained, ConcatStrings(PRINT_addLove, IntToString(points)), FONT_ScreenSmall, COL_LoveGained, TIME_Print*1000);
//	GIRLFRIENDS_CHECK();
};
