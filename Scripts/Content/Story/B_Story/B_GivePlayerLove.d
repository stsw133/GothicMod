///******************************************************************************************
///	B_GivePlayerLove
///******************************************************************************************
func void B_GivePlayerLove (var C_Npc slf, var int points)
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
	
	Print_ExtPrcnt (-1, YPOS_ProgGained, ConcatStrings(PRINT_addLove,IntToString(points)), FONT_ScreenSmall, COL_LoveGained, TIME_Print * 1000);
//	GIRLFRIENDS_CHECK();
};
