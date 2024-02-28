///******************************************************************************************
///	B_BuildLearnString
///******************************************************************************************

var string PRINT_LearnFight_1H;
var string PRINT_LearnFight_2H;
var string PRINT_LearnFight_Bow;
var string PRINT_LearnFight_Crossbow;
var string PRINT_LearnMagic;

///******************************************************************************************
func void MOD_PrintLearn()
{
	if		(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 20)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 40)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 60)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 80)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 100)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_5;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 20)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 40)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 60)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 80)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 100)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_5;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 20)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 40)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 60)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 80)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 100)		{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_5;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 20)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 40)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 60)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 80)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 100)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_5;	};
	
	if		(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 0)		{	PRINT_LearnMagic = PRINT_LearnMagic_1;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 1)		{	PRINT_LearnMagic = PRINT_LearnMagic_2;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 2)		{	PRINT_LearnMagic = PRINT_LearnMagic_3;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 3)		{	PRINT_LearnMagic = PRINT_LearnMagic_4;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 4)		{	PRINT_LearnMagic = PRINT_LearnMagic_5;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 5)		{	PRINT_LearnMagic = PRINT_LearnMagic_6;	};
};

///******************************************************************************************
///	B_BuildLearnString
///******************************************************************************************
func string B_BuildLearnString (var string text, var int kosten)
{
	var string concatText;
	concatText = ConcatStrings(text, PRINT_Kosten);
	concatText = ConcatStrings(concatText, IntToString(kosten));
	concatText = ConcatStrings(concatText, PRINT_LP);
	
	return concatText;
};
///******************************************************************************************
func string B_BuildRecipeString (var string text, var int money)
{
	var string concatText;
	concatText = ConcatStrings(text, PRINT_Kosten);
	concatText = ConcatStrings(concatText, IntToString(money));
	concatText = ConcatStrings(concatText, PRINT_MONEY);
	
	return concatText;
};
