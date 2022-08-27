///******************************************************************************************
///	B_GetLearnCost
///******************************************************************************************

var int LearnedAttribute_STR;
var int LearnedAttribute_DEX;
var int LearnedAttribute_Power;
var int LearnedAttribute_Mana;
var int LearnedAttribute_HP;
var int LearnedCraftTalent;

///******************************************************************************************
func int B_GetLearnCostAttribute (var C_Npc oth, var int atr)
{
	var int kosten; kosten = 0;
	
	if (atr == ATR_STRENGTH)
	{
		if		(LearnedAttribute_STR >= 400)	{	kosten = 5;	}
		else if	(LearnedAttribute_STR >= 300)	{	kosten = 4;	}
		else if	(LearnedAttribute_STR >= 200)	{	kosten = 3;	}
		else if	(LearnedAttribute_STR >= 100)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_DEXTERITY)
	{
		if		(LearnedAttribute_DEX >= 400)	{	kosten = 5;	}
		else if	(LearnedAttribute_DEX >= 300)	{	kosten = 4;	}
		else if	(LearnedAttribute_DEX >= 200)	{	kosten = 3;	}
		else if	(LearnedAttribute_DEX >= 100)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_POWER)
	{
		if		(LearnedAttribute_Power >= 400)	{	kosten = 5;	}
		else if	(LearnedAttribute_Power >= 300)	{	kosten = 4;	}
		else if	(LearnedAttribute_Power >= 200)	{	kosten = 3;	}
		else if	(LearnedAttribute_Power >= 100)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_MANA_MAX)
	{
		if		(LearnedAttribute_Mana >= 400)	{	kosten = 5;	}
		else if	(LearnedAttribute_Mana >= 300)	{	kosten = 4;	}
		else if	(LearnedAttribute_Mana >= 200)	{	kosten = 3;	}
		else if	(LearnedAttribute_Mana >= 100)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (atr == ATR_HITPOINTS_MAX)
	{
		if		(LearnedAttribute_HP >= 400)	{	kosten = 5;	}
		else if	(LearnedAttribute_HP >= 300)	{	kosten = 4;	}
		else if	(LearnedAttribute_HP >= 200)	{	kosten = 3;	}
		else if	(LearnedAttribute_HP >= 100)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	};
	
	return kosten;
};

///******************************************************************************************
func int B_GetLearnCostTalent (var C_Npc oth, var int talent, var int skill)
{
	var int kosten; kosten = 0;
	
	if (talent == NPC_TALENT_1H)
	{
		var int skill_1h; skill_1h = 1; //(oth.hitchance[NPC_TALENT_1H]-10)/20;
		kosten = 20 * (skill_1h + 1) - SelfFightTeach_Level[NPC_TALENT_1H] * (skill_1h + 1);
	}
	else if (talent == NPC_TALENT_2H)
	{
		var int skill_2h; skill_2h = 1; //(oth.hitchance[NPC_TALENT_2H]-10)/20;
		kosten = 20 * (skill_2h + 1) - SelfFightTeach_Level[NPC_TALENT_2H] * (skill_2h + 1);
	}
	else if (talent == NPC_TALENT_BOW)
	{
		var int skill_bow; skill_bow = 1; //(oth.hitchance[NPC_TALENT_BOW]-10)/20;
		kosten = 20 * (skill_bow + 1) - SelfFightTeach_Level[NPC_TALENT_BOW] * (skill_bow + 1);
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		var int skill_cbow; skill_cbow = 1; //(oth.hitchance[NPC_TALENT_CROSSBOW]-10)/20;
		kosten = 20 * (skill_cbow + 1) - SelfFightTeach_Level[NPC_TALENT_CROSSBOW] * (skill_cbow + 1);
	}
	else if (talent == NPC_TALENT_2ndH)
	{
		kosten = 20;
	}
	else if (talent == NPC_TALENT_MAGIC)
	{
		kosten = 25;
	}
	else if (talent == NPC_TALENT_LANGUAGE)
	{
		kosten = 15;
	}
	else if (talent == NPC_TALENT_SMITH)
	|| (talent == NPC_TALENT_ENCHANTING)
	|| (talent == NPC_TALENT_ALCHEMY)
	|| (talent == NPC_TALENT_HUNTING)
	{
		//if (talent == LearnedCraftTalent)
		//{
		//	kosten = 15;
		//}
		//else
		//{
			kosten = 30;	/// kosten=15 is in DIA_TEACH
		//};
	}
	else if (talent == NPC_TALENT_SNEAK)
	|| (talent == NPC_TALENT_ACROBATIC)
	|| (talent == NPC_TALENT_LONGRUN)
	{
		kosten = 5;
	}
	else if (talent == NPC_TALENT_PICKLOCK)
	|| (talent == NPC_TALENT_PICKPOCKET)
	|| (talent == NPC_TALENT_PERSUASION)
	{
		if (Npc_GetTalentSkill(oth, NPC_TALENT_PICKLOCK) + Npc_GetTalentSkill(oth, NPC_TALENT_PICKPOCKET) + Npc_GetTalentSkill(oth, NPC_TALENT_PERSUASION) == 0)
		{
			kosten = 10;
		}
		else if (Npc_GetTalentSkill(oth, NPC_TALENT_PICKLOCK) + Npc_GetTalentSkill(oth, NPC_TALENT_PICKPOCKET) + Npc_GetTalentSkill(oth, NPC_TALENT_PERSUASION) == 1)
		{
			kosten = 20;
		}
		else
		{
			kosten = 30;
		};
	};
	
	return kosten;
};
