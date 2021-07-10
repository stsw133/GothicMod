///******************************************************************************************
///	B_GivePlayerExp
///******************************************************************************************
func void B_GivePlayerXP (var int points)
{
	if (hero.level < MAX_LEVEL)
	{
		hero.exp += points;
	};
	Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(PRINT_addExp, IntToString(points)), FONT_ScreenSmall, COL_ExpGained, TIME_Print * 1000);
	
	if (hero.exp >= hero.exp_next)
	&& (hero.level < MAX_LEVEL)
	{
		hero.exp -= hero.exp_next;
		hero.exp_next += (hero.level * XP_PER_LEVEL) + XP_PER_LEVEL;
		
		if (hero.level == MAX_LEVEL-1)
		{
			hero.exp = 1;
			hero.exp_next = 1;
		};
		
		hero.level += 1;
		hero.LP += DIFF_Multiplier(LP_PER_LEVEL, DECREASE);
		
		hero.attribute[ATR_HITPOINTS_MAX] += HP_PER_LEVEL;
		hero.attribute[ATR_HITPOINTS] += HP_PER_LEVEL;
		hero.aivar[AIV_Energy_MAX] += 1;
		
		Print_ExtPrcnt (-1, YPOS_LevelUp, PRINT_LevelUp, FONT_Screen, COL_White, TIME_Print * 1000);
		Snd_Play("LevelUp");
	};
};
