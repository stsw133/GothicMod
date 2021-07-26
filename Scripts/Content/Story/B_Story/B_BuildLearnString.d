///******************************************************************************************
///	B_BuildLearnString
///******************************************************************************************

var string PRINT_LearnFight_1H;
var string PRINT_LearnFight_2H;
var string PRINT_LearnFight_Bow;
var string PRINT_LearnFight_Crossbow;
var string PRINT_LearnMagic;
var string PRINT_LearnTalent_Jewelery;
var string PRINT_LearnTalent_Smith;
var string PRINT_LearnTalent_Enchanting;
var string PRINT_LearnTalent_Alchemy;
var string PRINT_LearnTalent_Hunting;

///******************************************************************************************
func void MOD_PrintLearn()
{
	if		(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 0)		{	PRINT_LearnMagic = PRINT_LearnMagic_1;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 1)		{	PRINT_LearnMagic = PRINT_LearnMagic_2;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 2)		{	PRINT_LearnMagic = PRINT_LearnMagic_3;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 3)		{	PRINT_LearnMagic = PRINT_LearnMagic_4;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 4)		{	PRINT_LearnMagic = PRINT_LearnMagic_5;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC) == 5)		{	PRINT_LearnMagic = PRINT_LearnMagic_6;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 30)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 50)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 70)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_1H) < 90)			{	PRINT_LearnFight_1H = PRINT_LearnFight_1H_4;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 30)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 50)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 70)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_2H) < 90)			{	PRINT_LearnFight_2H = PRINT_LearnFight_2H_4;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 30)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 50)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 70)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_BOW) < 90)			{	PRINT_LearnFight_Bow = PRINT_LearnFight_Bow_4;	};
	
	if		(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 30)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_1;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 50)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_2;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 70)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_3;	}
	else if	(Npc_GetTalentValue(hero, NPC_TALENT_CROSSBOW) < 90)	{	PRINT_LearnFight_Crossbow = PRINT_LearnFight_Crossbow_4;	};
	
	if		(Npc_GetTalentSkill(hero, NPC_TALENT_JEWELERY) == 0)	{	PRINT_LearnTalent_Jewelery = PRINT_LearnTalent_Jewelery_1;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_JEWELERY) == 1)	{	PRINT_LearnTalent_Jewelery = PRINT_LearnTalent_Jewelery_2;	};
	
	if		(Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) == 0)		{	PRINT_LearnTalent_Smith = PRINT_LearnTalent_Smith_1;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_SMITH) == 1)		{	PRINT_LearnTalent_Smith = PRINT_LearnTalent_Smith_2;	};
	
	if		(Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) == 0)	{	PRINT_LearnTalent_Enchanting = PRINT_LearnTalent_Enchanting_1;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) == 1)	{	PRINT_LearnTalent_Enchanting = PRINT_LearnTalent_Enchanting_2;	};
	
	if		(Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) == 0)		{	PRINT_LearnTalent_Alchemy = PRINT_LearnTalent_Alchemy_1;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_ALCHEMY) == 1)		{	PRINT_LearnTalent_Alchemy = PRINT_LearnTalent_Alchemy_2;	};
	
	if		(Npc_GetTalentSkill(hero, NPC_TALENT_HUNTING) == 0)		{	PRINT_LearnTalent_Hunting = PRINT_LearnTalent_Hunting_1;	}
	else if	(Npc_GetTalentSkill(hero, NPC_TALENT_HUNTING) == 1)		{	PRINT_LearnTalent_Hunting = PRINT_LearnTalent_Hunting_2;	};
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
