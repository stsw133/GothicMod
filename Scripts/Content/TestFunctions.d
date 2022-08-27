///******************************************************************************************
///	TestFunctions
///******************************************************************************************

/// give items
///******************************************************************************************
func string Give_All (var string parameter)
{
	Func_All_Items_MeleeWeapons(hero);
	Func_All_Items_RangedWeapons(hero);
	Func_All_Items_Armor(hero);
	Func_All_Items_Helms(hero);
	Func_All_Items_Spells(hero);
	Func_All_Items_Artifacts(hero);
	Func_All_Items_Food(hero);
	Func_All_Items_Potions(hero);
	Func_All_Items_Plants(hero);
	Func_All_Items_AnimalTrophy(hero);
	Func_All_Items_Written(hero);
	Func_All_Items_Misc(hero);
	Func_All_Items_Meshes(hero);
	
	return "Otrzymano wszystkie przedmioty";
};

func string Give_Gold (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	CreateInvItems (hero, ItMi_Gold, paramInt);
	
	return ConcatStrings(ConcatStrings("Otrzymano ", IntToString(paramInt)), " sztuk z³ota");
};

/// give abilities
///******************************************************************************************
func string Give_Attributes (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_RaiseAttribute (hero, ATR_HITPOINTS_MAX, paramInt*HP_PER_LP);
	B_RaiseAttribute (hero, ATR_MANA_MAX, paramInt);
	B_RaiseAttribute (hero, ATR_STRENGTH, paramInt);
	B_RaiseAttribute (hero, ATR_DEXTERITY, paramInt);
	B_RaiseAttribute (hero, ATR_POWER, paramInt);
	
	return ConcatStrings(ConcatStrings("Otrzymano ", IntToString(paramInt)), " punktów podstawowych atrybutów");
};

func string Give_FightSkills (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_AddFightSkill (hero, NPC_TALENT_1H, paramInt);
	B_AddFightSkill (hero, NPC_TALENT_2H, paramInt);
	B_AddFightSkill (hero, NPC_TALENT_BOW, paramInt);
	B_AddFightSkill (hero, NPC_TALENT_CROSSBOW, paramInt);
	
	return ConcatStrings(ConcatStrings("Otrzymano ", IntToString(paramInt)), "% talentu do ka¿dej broni");
};

func string Give_MagicSkills (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	Npc_SetTalentSkill (hero, NPC_TALENT_MAGIC, paramInt);
	
	return ConcatStrings(ConcatStrings("Otrzymano ", IntToString(paramInt)), " kr¹g magii");
};

func string Give_Talents (var string parameter)
{
	Npc_SetTalentSkill (hero, NPC_TALENT_2ndH, 3);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_ACROBATIC, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_LONGRUN, 1);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKLOCK, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKPOCKET, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PERSUASION, 2);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_SMITH, 2);
	Npc_SetTalentSkill (hero, NPC_TALENT_ENCHANTING, 2);
	Npc_SetTalentSkill (hero, NPC_TALENT_ALCHEMY, 2);
	Npc_SetTalentSkill (hero, NPC_TALENT_HUNTING, 2);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_LANGUAGE, 1);
	
	return "Otrzymano wszystkie talenty";
};

func string Give_Exp (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_GivePlayerXP(paramInt);
	
	return ConcatStrings(ConcatStrings("Otrzymano ", IntToString(paramInt)), " punktów doœwiadczenia");
};

/// set diff level & movie mode
///******************************************************************************************
func string Set_Diff (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	DIFF_Select(paramInt);
	
	if		(dLevel == DIFF_E)	{	return "Ustawiono ³atwy poziom trudnoœci";	}
	else if (dLevel == DIFF_H)	{	return "Ustawiono trudny poziom trudnoœci";	}
	else						{	return "Ustawiono œredni poziom trudnoœci";	};
};

func string Set_GameMode (var string parameter)
{
	if (movieMode)
	{
		movieMode = false;
		return "Tryb gry zosta³ w³¹czony";
	}
	else
	{
		movieMode = true;
		return "Tryb filmowy zosta³ w³¹czony";
	};
};

/// set time scaling
///******************************************************************************************
func string Set_ScaleTime (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	scaleTime = paramInt;
	
	return ConcatStrings("Ustawiono skalowanie czasu na ", IntToString(paramInt));
};

/// update hero visual
///******************************************************************************************
func string Update_Visual (var string parameter)
{
	B_UpdateNpcVisual(hero);
	
	return "Odœwie¿ono wygl¹d";
};

func string Set_Visual_Hero (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_SetHeroVisual (hero, paramInt);
	
	return ConcatStrings("Ustawiono skórkê na ", IntToString(paramInt));
};

func string Set_Visual_BodyTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	hero.aivar[AIV_BodyTex] = paramInt;
	B_UpdateNpcVisual(hero);
	
	return ConcatStrings("Ustawiono teksturê cia³a na ", IntToString(paramInt));
};

func string Set_Visual_SkinTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	hero.aivar[AIV_SkinTex] = paramInt;
	B_UpdateNpcVisual(hero);
	
	return ConcatStrings("Ustawiono teksturê skóry na ", IntToString(paramInt));
};

func string Set_Visual_TeethTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	hero.aivar[AIV_TeethTex] = paramInt;
	B_UpdateNpcVisual(hero);
	
	return ConcatStrings("Ustawiono teksturê zêbów na ", IntToString(paramInt));
};

/// reset abilities & inventory
///******************************************************************************************
func string Reset_Hero (var string parameter)
{
	MOD_HeroReset(hero);
	
	return "Zresetowano umiejêtnoœci";
};

func string Reset_Inventory (var string parameter)
{
	B_ClearRuneInv(hero);
	Npc_ClearInventory(hero);
	
	return "Zresetowano ekwipunek";
};

/// reset animations
///******************************************************************************************
func string Reset_OverlayMDS (var string parameter)
{
	Mdl_RemoveOverlayMDS (hero, "HUMANS_PLAYER.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_SPRINT.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_FLEE.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_ACROBATIC.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_BABE.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_ARROGANCE.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_MILITIA.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_MAGE.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_TIRED.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_RELAXED.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_SKELETON.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_SKELETON_FLY.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_WOUNDZ.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_DRUNKEN.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_DRUNKENEXT.MDS");
	
	return "Zresetowano animacje poruszania siê";
};
func string Reset_FightOverlayMDS (var string parameter)
{
	Mdl_RemoveOverlayMDS (hero, "HUMANS_1HST1.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_1HST2.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_1HST3.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_2HST1.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_2HST2.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_2HST3.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_BOWT1.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_BOWT2.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_CBOWT1.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_CBOWT2.MDS");
	Mdl_RemoveOverlayMDS (hero, "HUMANS_CBOWT1_FASTER.MDS");
	
	return "Zresetowano animacje walki";
};

/// events
///******************************************************************************************
func string Action_KillMe (var string parameter)
{
	hero.attribute[ATR_HITPOINTS] = 0;
	
	return "Pope³ni³eœ samobójstwo";
};

func string Action_TeleportAway (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	AI_Teleport(o_other, "TOT");
	
	return ConcatStrings(ConcatStrings("Wys³a³eœ ", o_other.name), " w zaœwiaty");
};

func string Action_Mass_Fear (var string parameter)
{
	AI_SetNpcsToState (self, ZS_MagicFlee, 1000);
	
	return "Jesteœ obiektem strachu ca³ej okolicy";
};

func string Action_Mass_DrawWeapon (var string parameter)
{
	return "(jeszcze niezaimplementowane) Wszyscy w okolicy wyci¹gnêli broñ";
};

func string Action_Mass_UndrawWeapon (var string parameter)
{
	return "(jeszcze niezaimplementowane) Wszyscy w okolicy schowali broñ";
};

func string Action_Mass_LookAtMe (var string parameter)
{
	return "(jeszcze niezaimplementowane) Patrzcie na mnie wszyscy";
};

func string Action_Mass_TurnToMe (var string parameter)
{
	return "(jeszcze niezaimplementowane) Podziwiajcie mnie wszyscy";
};

///******************************************************************************************
///	ConsoleCommands
///******************************************************************************************
func void ConsoleCommands()
{
	CC_Register(Give_All, "Give All", "");
	CC_Register(Give_Gold, "Give Gold", "");
	
	CC_Register(Give_Attributes, "Give Attributes", "");
	CC_Register(Give_FightSkills, "Give FightSkills", "");
	CC_Register(Give_MagicSkills, "Give MagicSkills", "");
	CC_Register(Give_Talents, "Give Talents", "");
	CC_Register(Give_Exp, "Give Exp", "");
	
	CC_Register(Set_Diff, "Set Diff", "");
	CC_Register(Set_GameMode, "Set GameMode", "");
	
	CC_Register(Set_ScaleTime, "Set ScaleTime", "");
	
	CC_Register(Update_Visual, "Update Visual", "");
	CC_Register(Set_Visual_Hero, "Set Visual Hero", "");
	CC_Register(Set_Visual_BodyTex, "Set Visual BodyTex", "");
	CC_Register(Set_Visual_SkinTex, "Set Visual SkinTex", "");
	CC_Register(Set_Visual_TeethTex, "Set Visual TeethTex", "");
	
	CC_Register(Reset_Hero, "Reset Hero", "");
	CC_Register(Reset_Inventory, "Reset Inventory", "");
	
	CC_Register(Reset_OverlayMDS, "Reset OverlayMDS", "");
	CC_Register(Reset_FightOverlayMDS, "Reset FightOverlayMDS", "");
	
	CC_Register(Action_KillMe, "Action KillMe", "");
	CC_Register(Action_TeleportAway, "Action TeleportAway", "");
	CC_Register(Action_Mass_Fear, "Action Mass Fear", "");
	CC_Register(Action_Mass_DrawWeapon, "Action Mass DrawWeapon", "");
	CC_Register(Action_Mass_UndrawWeapon, "Action Mass UndrawWeapon", "");
	CC_Register(Action_Mass_LookAtMe, "Action Mass LookAtMe", "");
	CC_Register(Action_Mass_TurnToMe, "Action Mass TurnToMe", "");
};
