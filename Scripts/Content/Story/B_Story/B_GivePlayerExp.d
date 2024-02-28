///******************************************************************************************
///	B_GivePlayerExp
///******************************************************************************************
func void B_GivePlayerExp (var int points)
{
	//points += points * hero.attribute[ATR_POWER]/2000;
	hero.exp += points;
	
	if (points != 0)
	{
		PrintS_Ext (ConcatStrings(PRINT_addExp, IntToString(points)), COL_ExpGained);
		//Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(PRINT_addExp, IntToString(points)), FONT_ScreenSmall, COL_ExpGained, TIME_Print);
	};
	
	if (hero.exp >= hero.exp_next)
	&& (hero.level < MAX_LEVEL)
	{
		hero.exp -= hero.exp_next;
		if (hero.level >= MAX_LEVEL-1)	{	hero.exp_next = 1;												}
		else							{	hero.exp_next += (hero.level * XP_PER_LEVEL) + XP_PER_LEVEL;	};
		
		hero.level += 1;
		hero.LP += LP_PER_LEVEL;
		
		hero.attribute[ATR_HITPOINTS_MAX] += HP_PER_LEVEL;
		hero.attribute[ATR_HITPOINTS] += HP_PER_LEVEL;
		hero.aivar[AIV_Stamina_MAX] += 1;
		
		Print_ExtPrcnt (-1, YPOS_LevelUp, PRINT_LevelUp, FONT_Screen, COL_White, TIME_Print);
		Snd_Play("LevelUp");
	};
};
