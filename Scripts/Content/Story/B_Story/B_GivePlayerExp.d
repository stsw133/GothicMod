///******************************************************************************************
/// B_GivePlayerExp
///******************************************************************************************
func void B_GivePlayerExp (var int points)
{
	hero.exp += points;
	
	if (points != 0)
	{
		PrintS_Ext (ConcatStrings(PRINT_addExp, IntToString(points)), COL_Exp);
		//Print_ExtPrcnt (-1, YPOS_ExpGained, ConcatStrings(PRINT_addExp, IntToString(points)), FONT_ScreenSmall, COL_Exp, TIME_Print);
	};
	
	if (hero.exp >= hero.exp_next)
	{
		hero.level += 1;
		hero.exp -= hero.exp_next;
		hero.exp_next += (hero.level+1)*XP_PER_LEVEL;
		
		hero.lp += MOD_GetLpPerLevel();
		hero.attribute[ATR_HITPOINTS_MAX] += MOD_GetHpPerLevel();
		hero.attribute[ATR_HITPOINTS] += MOD_GetHpPerLevel();
		hero.attribute[ATR_MANA_MAX] += MOD_GetMpPerLevel();
		hero.attribute[ATR_MANA] += MOD_GetMpPerLevel();
		hero.aivar[AIV_Stamina_MAX] += MOD_GetSpPerLevel();
		hero.aivar[AIV_Stamina] += MOD_GetSpPerLevel();
		
		Print_ExtPrcnt (-1, YPOS_LevelUp, PRINT_LevelUp, FONT_Screen, COL_White, TIME_Print);
		Snd_Play("LevelUp");
	};
};
