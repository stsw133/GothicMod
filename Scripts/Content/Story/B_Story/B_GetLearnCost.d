///******************************************************************************************

var int LearnedAttribute_Hp;
var int LearnedAttribute_Mp;
var int LearnedAttribute_Str;
var int LearnedAttribute_Dex;
var int LearnedAttribute_Pow;

var int LearnedHitchance_Throw;
var int LearnedHitchance_1h;
var int LearnedHitchance_2h;
var int LearnedHitchance_Bow;
var int LearnedHitchance_Cbow;

///******************************************************************************************
/// B_GetLearnCostAttribute
///******************************************************************************************
func int B_GetLearnCostAttribute (var C_Npc oth, var int attrib)
{
	var int kosten; kosten = 0;
	
	if (attrib == ATR_HITPOINTS_MAX)
	{
		if		(LearnedAttribute_Hp >= 160 && oth.guild != GIL_MIL)	{	kosten = 5;	}
		else if	(LearnedAttribute_Hp >= 120)							{	kosten = 4;	}
		else if	(LearnedAttribute_Hp >= 80)								{	kosten = 3;	}
		else if	(LearnedAttribute_Hp >= 40)								{	kosten = 2;	}
		else															{	kosten = 1;	};
	}
	else if (attrib == ATR_MANA_MAX)
	{
		if		(LearnedAttribute_Mp >= 160 && oth.guild != GIL_PAL)	{	kosten = 5;	}
		else if	(LearnedAttribute_Mp >= 120)							{	kosten = 4;	}
		else if	(LearnedAttribute_Mp >= 80)								{	kosten = 3;	}
		else if	(LearnedAttribute_Mp >= 40)								{	kosten = 2;	}
		else															{	kosten = 1;	};
	}
	else if (attrib == ATR_STRENGTH)
	{
		if		(LearnedAttribute_Str >= 160 && oth.guild != GIL_DJG)	{	kosten = 5;	}
		else if	(LearnedAttribute_Str >= 120)							{	kosten = 4;	}
		else if	(LearnedAttribute_Str >= 80)							{	kosten = 3;	}
		else if	(LearnedAttribute_Str >= 40)							{	kosten = 2;	}
		else															{	kosten = 1;	};
	}
	else if (attrib == ATR_DEXTERITY)
	{
		if		(LearnedAttribute_Dex >= 160 && oth.guild != GIL_SLD)	{	kosten = 5;	}
		else if	(LearnedAttribute_Dex >= 120)							{	kosten = 4;	}
		else if	(LearnedAttribute_Dex >= 80)							{	kosten = 3;	}
		else if	(LearnedAttribute_Dex >= 40)							{	kosten = 2;	}
		else															{	kosten = 1;	};
	}
	else if (attrib == ATR_POWER)
	{
		if		(LearnedAttribute_Pow >= 160 && oth.guild != GIL_KDF)	{	kosten = 5;	}
		else if	(LearnedAttribute_Pow >= 120)							{	kosten = 4;	}
		else if	(LearnedAttribute_Pow >= 80)							{	kosten = 3;	}
		else if	(LearnedAttribute_Pow >= 40)							{	kosten = 2;	}
		else															{	kosten = 1;	};
	};
	
	return kosten;
};

///******************************************************************************************
/// B_GetLearnCostHitchance
///******************************************************************************************
func int B_GetLearnCostHitchance (var C_Npc oth, var int talent)
{
	var int kosten; kosten = 0;
	
	if (talent == NPC_TALENT_THROW)
	{
		if		(LearnedHitchance_Throw >= 80)	{	kosten = 3;	}
		else if	(LearnedHitchance_Throw >= 40)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (talent == NPC_TALENT_1H)
	{
		if		(LearnedHitchance_1h >= 80)		{	kosten = 3;	}
		else if	(LearnedHitchance_1h >= 40)		{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (talent == NPC_TALENT_2H)
	{
		if		(LearnedHitchance_2h >= 80)		{	kosten = 3;	}
		else if	(LearnedHitchance_2h >= 40)		{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (talent == NPC_TALENT_BOW)
	{
		if		(LearnedHitchance_Bow >= 80)	{	kosten = 3;	}
		else if	(LearnedHitchance_Bow >= 40)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		if		(LearnedHitchance_Cbow >= 80)	{	kosten = 3;	}
		else if	(LearnedHitchance_Cbow >= 40)	{	kosten = 2;	}
		else									{	kosten = 1;	};
	};
	
	return kosten;
};

///******************************************************************************************
/// B_GetLearnCostTalent
///******************************************************************************************
func int B_GetLearnCostTalent (var C_Npc oth, var int talent, var int skill)
{
	var int kosten; kosten = 0;
	
	/// FIGHT
	if (talent == NPC_TALENT_1H)
	{
		kosten = 30;
	}
	else if (talent == NPC_TALENT_2H)
	{
		kosten = 30;
	}
	else if (talent == NPC_TALENT_BOW)
	{
		kosten = 30;
	}
	else if (talent == NPC_TALENT_CROSSBOW)
	{
		kosten = 30;
	}
	else if (talent == NPC_TALENT_DUAL)
	{
		kosten = 30;
	}
	else if (talent == NPC_TALENT_SHIELD)
	{
		kosten = 30;
	}
	/// MAGIC
	else if (talent == NPC_TALENT_MAGIC)
	{
		kosten = 25;
	}
	else if (talent == NPC_TALENT_LANGUAGE)
	{
		kosten = 10;
	}
	/*
	else if (talent == NPC_TALENT_WISPDETECTOR)
	{
		if		(skill == WISPSKILL_NF)				{	kosten = 0;		}
		else if	(skill == WISPSKILL_FF)				{	kosten = 1;		}
		else if	(skill == WISPSKILL_NONE)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_RUNE)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_MAGIC)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_FOOD)			{	kosten = 1;		}
		else if	(skill == WISPSKILL_POTIONS)		{	kosten = 1;		};
	}
	/// MOVEMENT
	else if (talent == NPC_TALENT_SNEAK)
	{
		kosten = 5;
	}
	else if (talent == NPC_TALENT_ACROBATIC)
	{
		kosten = 5;
	}
	*/
	/// THIEF
	else if (talent == NPC_TALENT_PICKLOCK)
	{
		kosten = 10;
	}
	else if (talent == NPC_TALENT_PICKPOCKET)
	{
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
	}
	else if (talent == NPC_TALENT_PERSUASION)
	{
		kosten = 10;
	}
	/// FLETCHERY
	else if (talent == NPC_TALENT_FLETCHERY)
	{
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
	}
	/// SMITH
	else if (talent == NPC_TALENT_SMITH)
	{
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
	}
	/// ENCHANTING
	else if (talent == NPC_TALENT_ENCHANTING)
	{
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
	}
	/// ALCHEMY
	else if (talent == NPC_TALENT_ALCHEMY)
	{
		if		(skill == 1)	{	kosten = 5;		}
		else if	(skill == 2)	{	kosten = 10;	}
		else if	(skill == 3)	{	kosten = 15;	};
	}
	/// HUNTING
	else if (talent == NPC_TALENT_HUNTING)
	{
		if		(skill == HUNTING_Blood) 			{	kosten = 3;		}
		else if	(skill == HUNTING_Claws)			{	kosten = 3;		}
		else if	(skill == HUNTING_Furs) 			{	kosten = 5;		}
		else if	(skill == HUNTING_Hearts)			{	kosten = 3;		}
		else if	(skill == HUNTING_Horns)			{	kosten = 2;		}
		else if	(skill == HUNTING_Mandibles)		{	kosten = 2;		}
		else if	(skill == HUNTING_Plates)			{	kosten = 1;		}
		else if	(skill == HUNTING_Scales)			{	kosten = 2;		}
		else if	(skill == HUNTING_Skins)			{	kosten = 3;		}
		else if	(skill == HUNTING_Stings)			{	kosten = 1;		}
		else if	(skill == HUNTING_Teeth)			{	kosten = 3;		}
		else if	(skill == HUNTING_Tongues)			{	kosten = 1;		}
		else if	(skill == HUNTING_Wings)			{	kosten = 1;		};
	}
	/// COOKING
	else if (talent == NPC_TALENT_COOKING)
	{
		kosten = 10;
	}
	/// MINING
	else if (talent == NPC_TALENT_MINING)
	{
		kosten = 10;
	}
	/// ARMORY
	else if (talent == NPC_TALENT_ARMORY)
	{
		kosten = 10;
	};
	
	return kosten;
};
/*
///******************************************************************************************
/// B_GetMostLearnAttribute
///******************************************************************************************
func int B_GetMostLearnAttribute()
{
	if (LearnedAttribute_HP >= LearnedAttribute_MP)
	&& (LearnedAttribute_HP >= LearnedAttribute_STR)
	&& (LearnedAttribute_HP >= LearnedAttribute_DEX)
	&& (LearnedAttribute_HP >= LearnedAttribute_POW)
	{
		return ATR_HITPOINTS_MAX;
	}
	else if (LearnedAttribute_MP >= LearnedAttribute_HP)
	&& (LearnedAttribute_MP >= LearnedAttribute_STR)
	&& (LearnedAttribute_MP >= LearnedAttribute_DEX)
	&& (LearnedAttribute_MP >= LearnedAttribute_POW)
	{
		return ATR_MANA_MAX;
	}
	else if (LearnedAttribute_STR >= LearnedAttribute_HP)
	&& (LearnedAttribute_STR >= LearnedAttribute_MP)
	&& (LearnedAttribute_STR >= LearnedAttribute_DEX)
	&& (LearnedAttribute_STR >= LearnedAttribute_POW)
	{
		return ATR_STRENGTH;
	}
	else if (LearnedAttribute_DEX >= LearnedAttribute_HP)
	&& (LearnedAttribute_DEX >= LearnedAttribute_MP)
	&& (LearnedAttribute_DEX >= LearnedAttribute_STR)
	&& (LearnedAttribute_DEX >= LearnedAttribute_POW)
	{
		return ATR_DEXTERITY;
	}
	else if (LearnedAttribute_POW >= LearnedAttribute_HP)
	&& (LearnedAttribute_POW >= LearnedAttribute_MP)
	&& (LearnedAttribute_POW >= LearnedAttribute_STR)
	&& (LearnedAttribute_POW >= LearnedAttribute_DEX)
	{
		return ATR_POWER;
	};
	
	return 0;
};
*/