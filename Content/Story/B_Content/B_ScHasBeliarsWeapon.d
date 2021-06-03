///******************************************************************************************
///	C_ScHasBeliarsWeapon
///******************************************************************************************
func int C_ScHasBeliarsWeapon()
{
	if (Npc_HasItems(hero, ItMw_BeliarWeapon_Raven))
	|| (Npc_HasItems(hero, ItMw_BeliarWeapon))
	|| (Npc_HasItems(hero, ItRu_BeliarRage))
	{
		return true;
	};
	return false;
};	

///******************************************************************************************
///	C_IsItemBeliarsWeapon
///******************************************************************************************
func int C_IsItemBeliarsWeapon(var C_ITEM Weap)
{
	if (Hlp_IsItem(Weap,ItMw_BeliarWeapon_Raven) == true)
	|| (Hlp_IsItem(Weap,ItMw_BeliarWeapon) == true)
	|| (Hlp_IsItem(Weap,ItRu_BeliarRage) == true)
	{
		return true;
	};
	return false;
};	

///******************************************************************************************
///	C_ScHasReadiedBeliarsWeapon
///******************************************************************************************
func int C_ScHasReadiedBeliarsWeapon()
{
	var C_ITEM ReadyWeap;
	ReadyWeap = Npc_GetReadiedWeapon(hero);
	
	if (C_IsItemBeliarsWeapon(ReadyWeap))
	{
		return true;
	};
	return false;
};

///******************************************************************************************
///	C_ScHasEquippedBeliarsWeapon
///******************************************************************************************
func int C_ScHasEquippedBeliarsWeapon()
{
	var C_ITEM EquipWeap;
	EquipWeap = Npc_GetEquippedMeleeWeapon(hero);
	
	if (C_IsItemBeliarsWeapon(EquipWeap))
	{
		return true;
	};
	return false;
};

///******************************************************************************************
///	B_ClearBeliarsWeapon
///******************************************************************************************
func void B_ClearBeliarsWeapon()
{
	Npc_RemoveInvItems (hero, ItMw_BeliarWeapon_Raven, Npc_HasItems(hero, ItMw_BeliarWeapon_Raven));
	Npc_RemoveInvItems (hero, ItMw_BeliarWeapon, Npc_HasItems(hero, ItMw_BeliarWeapon));
	Npc_RemoveInvItems (hero, ItRu_BeliarRage, Npc_HasItems(hero, ItRu_BeliarRage));
};

///******************************************************************************************
///	C_ScCanUpgrateBeliarsWeapon
///******************************************************************************************
func int C_ScCanUpgrateBeliarsWeapon()
{
	if (BeliarWeapon_LastUpgradeLvl < hero.level)
	{
		return true;
	};
};

///******************************************************************************************
///	B_UpgrateBeliarsWeapon
///******************************************************************************************
func void B_UpgrateBeliarsWeapon()
{
	var int BeliarsTribute;
	var string concatText;
	
	BeliarsTribute = (hero.level - BeliarWeapon_LastUpgradeLvl)*HP_PER_LP;
	hero.attribute[ATR_HITPOINTS_MAX] -= BeliarsTribute;
	
	if (BeliarsTribute > 0)
	{
		concatText = ConcatStrings("Odebrane max. punkty ¿ycia: ", IntToString(BeliarsTribute));
		PrintScreen	(concatText, -1, -1, FONT_Screen, 4);
	};
	
	BeliarDamageChance = 25 + (hero.level/2);
	BeliarWeapon_LastUpgradeLvl = hero.level;
	
	if (hero.guild == GIL_KDF)
	{
		CreateInvItem (hero, ItRu_BeliarRage);
		
		Wld_PlayEffect ("spellFX_BeliarsWeapon_Upgrate", self, self, 0, 0, 0, false);
		Snd_Play("CS_Prayer_WaveOfInsanity");
		BeliarsWeaponUpgrated = true;
	}
	else
	{
		CreateInvItem (hero, ItMw_BeliarWeapon);
		
		Wld_PlayEffect ("spellFX_BeliarsWeapon_Upgrate", self, self, 0, 0, 0, false);
		Snd_Play("CS_Prayer_WaveOfInsanity");
		BeliarsWeaponUpgrated = true;
	};
};
