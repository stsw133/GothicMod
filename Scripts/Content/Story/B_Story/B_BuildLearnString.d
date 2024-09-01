///******************************************************************************************
/*
var string PRINT_LearnFight_1H;
var string PRINT_LearnFight_2H;
var string PRINT_LearnFight_Bow;
var string PRINT_LearnFight_Crossbow;

///******************************************************************************************
/// B_PreBuildLearnString
///******************************************************************************************
func void B_PreBuildLearnString()
{
	if		(Npc_GetTalentValue(hero, NPC_TALENT_1H) < FightTalent_Weak)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < FightTalent_Initiate)		{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < FightTalent_Medium)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < FightTalent_Strong)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < FightTalent_Master)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_5;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_2H) < FightTalent_Weak)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < FightTalent_Initiate)		{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < FightTalent_Medium)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < FightTalent_Strong)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < FightTalent_Master)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_5;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < FightTalent_Weak)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < FightTalent_Initiate)		{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < FightTalent_Medium)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < FightTalent_Strong)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < FightTalent_Master)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_5;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < FightTalent_Weak)		{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < FightTalent_Initiate)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < FightTalent_Medium)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < FightTalent_Strong)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_4;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < FightTalent_Master)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_5;	};
};
*/
///******************************************************************************************
/// B_BuildLearnString
///******************************************************************************************
func string B_BuildLearnString (var string text, var int kosten, var int money)
{
	var string concatText; concatText = ConcatStrings(text, PRINT_Kosten);
	
	if (kosten > 0)
	{
		concatText = ConcatStrings(concatText, IntToString(kosten));
		concatText = ConcatStrings(concatText, PRINT_LP);
	};
	if (money)
	{
		concatText = ConcatStrings(concatText, IntToString(kosten * GOLD_PER_LP));
		concatText = ConcatStrings(concatText, PRINT_MONEY);
	};
	
	return concatText;
};
