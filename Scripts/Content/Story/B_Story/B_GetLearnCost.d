///******************************************************************************************
///	B_GetLearnCost
///******************************************************************************************

var int LearnedAttribute_STR;
var int LearnedAttribute_DEX;
var int LearnedAttribute_POW;
var int LearnedAttribute_MP;
var int LearnedAttribute_HP;
var int LearnedCraftTalent;

///******************************************************************************************
func int B_GetLearnCostAttribute (var C_Npc oth, var int atr)
{
	var int kosten; kosten = 0;
	
	if (atr == ATR_STRENGTH)
	{
		if		(LearnedAttribute_STR >= 200)	{	kosten = 5;	}
		else if	(LearnedAttribute_STR >= 150)	{	kosten = 4;	}
		else if	(LearnedAttribute_STR >= 100)	{	kosten = 3;	}
		else if	(LearnedAttribute_STR >= 50)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_DEXTERITY)
	{
		if		(LearnedAttribute_DEX >= 200)	{	kosten = 5;	}
		else if	(LearnedAttribute_DEX >= 150)	{	kosten = 4;	}
		else if	(LearnedAttribute_DEX >= 100)	{	kosten = 3;	}
		else if	(LearnedAttribute_DEX >= 50)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_POWER)
	{
		if		(LearnedAttribute_POW >= 200)	{	kosten = 5;	}
		else if	(LearnedAttribute_POW >= 150)	{	kosten = 4;	}
		else if	(LearnedAttribute_POW >= 100)	{	kosten = 3;	}
		else if	(LearnedAttribute_POW >= 50)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_MANA_MAX)
	{
		if		(LearnedAttribute_MP >= 200)	{	kosten = 5;	}
		else if	(LearnedAttribute_MP >= 150)	{	kosten = 4;	}
		else if	(LearnedAttribute_MP >= 100)	{	kosten = 3;	}
		else if	(LearnedAttribute_MP >= 50)		{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_HITPOINTS_MAX)
	{
		if		(LearnedAttribute_HP >= 200)	{	kosten = 5;	}
		else if	(LearnedAttribute_HP >= 150)	{	kosten = 4;	}
		else if	(LearnedAttribute_HP >= 100)	{	kosten = 3;	}
		else if	(LearnedAttribute_HP >= 50)		{	kosten = 2;	}
		else									{	kosten = 1;	};
	};
	
	return kosten;
};

///******************************************************************************************
func int B_GetLearnCostTalent (var C_Npc oth, var int talent, var int skill)
{
	var int kosten; kosten = 0;
	
	/// FIGHT
	if (talent == NPC_TALENT_1H)
	{
		kosten = 20;
	}
	else if	(talent == NPC_TALENT_2H)
	{
		kosten = 20;
	}
	else if	(talent == NPC_TALENT_BOW)
	{
		kosten = 20;
	}
	else if	(talent == NPC_TALENT_CROSSBOW)
	{
		kosten = 20;
	}
	else if	(talent == NPC_TALENT_2ndH)
	{
		kosten = 20;
	}
	/// MAGIC
	else if	(talent == NPC_TALENT_MAGIC)
	{
		kosten = 25;
	}
	else if	(talent == NPC_TALENT_ENCHANTING)
	{
		kosten = 10;
	}
	else if	(talent == NPC_TALENT_LANGUAGE)
	{
		kosten = 15;
	}
	/// MOVEMENT
	else if	(talent == NPC_TALENT_SNEAK)
	||		(talent == NPC_TALENT_ACROBATIC)
	||		(talent == NPC_TALENT_PRORUN)
	{
		kosten = 5;
	}
	/// THIEF
	else if	(talent == NPC_TALENT_PICKLOCK)
	||		(talent == NPC_TALENT_PICKPOCKET)
	||		(talent == NPC_TALENT_PERSUASION)
	{
		if (Npc_GetTalentSkill(oth, NPC_TALENT_PICKLOCK) + Npc_GetTalentSkill(oth, NPC_TALENT_PICKPOCKET) + Npc_GetTalentSkill(oth, NPC_TALENT_PERSUASION) == 0)
		{
			kosten = 15;
		}
		else if (Npc_GetTalentSkill(oth, NPC_TALENT_PICKLOCK) + Npc_GetTalentSkill(oth, NPC_TALENT_PICKPOCKET) + Npc_GetTalentSkill(oth, NPC_TALENT_PERSUASION) == 1)
		{
			kosten = 20;
		}
		else
		{
			kosten = 25;
		};
	}
	/// CRAFT
	else if	(talent == NPC_TALENT_SMITH)
	||		(talent == NPC_TALENT_ALCHEMY)
	||		(talent == NPC_TALENT_HUNTING)
	{
		kosten = 30;
	}
	/// OTHER
	else if (talent == NPC_TALENT_COOKING)
	{
		kosten = 10;
	};
	
	return kosten;
};
