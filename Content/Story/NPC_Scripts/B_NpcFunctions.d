///******************************************************************************************
///	B_SetFightSkills
///******************************************************************************************
func void B_SetFightSkills (var C_NPC slf, var int percent)
{
	if (slf.aivar[AIV_Race] == RACE_HUMAN)
	{
		slf.hitchance[NPC_TALENT_1H]		=	0;
		slf.hitchance[NPC_TALENT_2H]		=	0;
		slf.hitchance[NPC_TALENT_BOW]		=	0;
		slf.hitchance[NPC_TALENT_CROSSBOW]	=	0;
		
		B_AddFightSkill	(slf, NPC_TALENT_1H, percent);
		B_AddFightSkill	(slf, NPC_TALENT_2H, percent);
		B_AddFightSkill	(slf, NPC_TALENT_BOW, percent);
		B_AddFightSkill	(slf, NPC_TALENT_CROSSBOW, percent);
	}
	else
	{
		slf.hitchance[NPC_TALENT_1H]		=	percent;
		slf.hitchance[NPC_TALENT_2H]		=	percent;
		slf.hitchance[NPC_TALENT_BOW]		=	percent;
		slf.hitchance[NPC_TALENT_CROSSBOW]	=	percent;
	};
};

///******************************************************************************************
///	B_SetProtection
///******************************************************************************************
func void B_SetProtection (var C_NPC slf, var int points)
{
	slf.protection[PROT_BLUNT]	=	points;
	slf.protection[PROT_EDGE]	=	points;
	slf.protection[PROT_POINT]	=	points;
	slf.protection[PROT_FIRE]	=	(points*MR_PER_LEVEL) / AR_PER_LEVEL;
	slf.protection[PROT_FLY]	=	(points*MR_PER_LEVEL) / AR_PER_LEVEL;
	slf.protection[PROT_MAGIC]	=	(points*MR_PER_LEVEL) / AR_PER_LEVEL;
};

///******************************************************************************************
///	B_SetLevelName
///******************************************************************************************
func string B_SetLevelName (var oCNpc slf, var string txt)
{
	slf.name_1 = txt;
	slf.name_2 = ConcatStrings("(",ConcatStrings(IntToString(slf.level),") "));
	return ConcatStrings(slf.name_2,slf.name_1);
};
