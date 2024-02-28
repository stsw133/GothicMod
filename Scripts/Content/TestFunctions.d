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
	B_RaiseAttribute (hero, ATR_MANA_MAX, paramInt*MP_PER_LP);
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
	
	Npc_SetTalentSkill (hero, NPC_TALENT_ENCHANTING, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_LANGUAGE, 1);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_ACROBATIC, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PRORUN, 1);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKLOCK, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKPOCKET, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PERSUASION, 2);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_SMITH, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_ALCHEMY, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_HUNTING, 1);
	
	return "Otrzymano wszystkie talenty";
};

func string Give_Exp (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_GivePlayerExp(paramInt);
	
	return ConcatStrings(ConcatStrings("Otrzymano ", IntToString(paramInt)), " punktów doœwiadczenia");
};

/// set diff level & movie mode
///******************************************************************************************
func string Set_Diff (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	DIFF_Select(paramInt);
	
	if		(dLevel == DIFF_E)	{	return "Ustawiono ³atwy poziom trudnoœci";		}
	else if (dLevel == DIFF_M)	{	return "Ustawiono œredni poziom trudnoœci";		}
	else if (dLevel == DIFF_H)	{	return "Ustawiono trudny poziom trudnoœci";		}
	else if (dLevel == DIFF_V)	{	return "Ustawiono b. trudny poziom trudnoœci";	}
	else						{	return "Nieprawid³owy poziom trudnoœci";		};
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
func string Set_Speed (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		NPC_SetTimeScale (o_other, paramInt);
	}
	else
	{
		NPC_SetTimeScale (hero, paramInt);
	};
	
	return ConcatStrings(ConcatStrings("Ustawiono ", IntToString(paramInt)), "% szybkoœci postaci");
};

/// set body visibility
///******************************************************************************************
func string Set_BodyVisibility (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	//o_other = MEM_PtrToInst(o_hero.focus_vob);
	//if (Hlp_IsValidNpc(o_other))
	//{
	//	B_SetVisibilityPercent (o_other, paramInt);
	//}
	//else
	//{
		B_SetVisibilityPercent (o_hero, paramInt);
	//};
	
	return ConcatStrings(ConcatStrings("Ustawiono ", IntToString(paramInt)), "% widocznoœci postaci");
};

/// set selling value percent
///******************************************************************************************
func string Set_SetSellingValuePercent (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_SetSellingValuePercent(paramInt);
	
	return ConcatStrings(ConcatStrings("Ustawiono ", IntToString(paramInt)), "% przelicznika sprzeda¿y");
};

/// update npc's visual
///******************************************************************************************
func string Update_Visual_All (var string parameter)
{
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		NpcFn_UpdateVisual(o_other);
	}
	else
	{
		NpcFn_UpdateVisual(hero);
	};
	
	return "Zaktualizowano wygl¹d postaci";
};

func string Update_Visual_HeroTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	NpcFn_SetHeroVisual (hero, paramInt);
	
	return ConcatStrings("Ustawiono skórkê na ", IntToString(paramInt));
};

func string Update_Visual_BodyTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		o_other.aivar[AIV_BodyTex] = paramInt;
		NpcFn_UpdateVisual(o_other);
	}
	else
	{
		hero.aivar[AIV_BodyTex] = paramInt;
		NpcFn_UpdateVisual(hero);
	};
	
	return ConcatStrings("Ustawiono teksturê cia³a na ", IntToString(paramInt));
};

func string Update_Visual_SkinTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		o_other.aivar[AIV_SkinTex] = paramInt;
		NpcFn_UpdateVisual(o_other);
	}
	else
	{
		hero.aivar[AIV_SkinTex] = paramInt;
		NpcFn_UpdateVisual(hero);
	};
	
	return ConcatStrings("Ustawiono teksturê skóry na ", IntToString(paramInt));
};
/* THIS FUNCTION THROWS ERROR
func string Update_Visual_HeadMesh (var string parameter)
{
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		o_other.name[4] = parameter;
		NpcFn_UpdateVisual(o_other);
	}
	else
	{
		hero.name[4] = parameter;
		NpcFn_UpdateVisual(hero);
	};
	
	return ConcatStrings("Ustawiono model g³owy na ", parameter);
};
*/
func string Update_Visual_FaceTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		o_other.aivar[AIV_FaceTex] = paramInt;
		NpcFn_UpdateVisual(o_other);
	}
	else
	{
		hero.aivar[AIV_FaceTex] = paramInt;
		NpcFn_UpdateVisual(hero);
	};
	
	return ConcatStrings("Ustawiono teksturê twarzy na ", IntToString(paramInt));
};

func string Update_Visual_TeethTex (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		o_other.aivar[AIV_TeethTex] = paramInt;
		NpcFn_UpdateVisual(o_other);
	}
	else
	{
		hero.aivar[AIV_TeethTex] = paramInt;
		NpcFn_UpdateVisual(hero);
	};
	
	return ConcatStrings("Ustawiono teksturê zêbów na ", IntToString(paramInt));
};

/// reset abilities & inventory
///******************************************************************************************
func string Reset_Hero (var string parameter)
{
	MOD_HeroReset(hero);
	
	return "Zresetowano statystyki";
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
	Mdl_RemoveOverlayMDS (hero, "HUMANS_WOUNDED.MDS");
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
func string Action_DrawWeapon (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	AI_DrawWeapon (o_other);
	
	return "";
};

func string Action_KillMe (var string parameter)
{
	hero.attribute[ATR_HITPOINTS] = 0;
	
	return "";
};

func string Action_LookAtMe (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	B_LookAtNpc (o_other, hero);
	
	return "";
};

func string Action_ObserveMe (var string parameter)
{
	B_StopLookAt(o_other);
	AI_StartState (o_other, ZS_ObservePlayer, true, "");
	
	return "";
};

func string Action_PointAtMe (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	AI_PointAtNpc (o_other, hero);
	
	return "";
};

func string Action_RemoveWeapon (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	AI_RemoveWeapon (o_other);
	
	return "";
};

func string Action_StopLookAtMe (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	B_StopLookAt (o_other);
	
	return "";
};

func string Action_StopPointAtMe (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	AI_StopPointAt (o_other);
	
	return "";
};

func string Action_TeleportAway (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	AI_Teleport(o_other, "TOT");
	
	return ConcatStrings(ConcatStrings("Wys³a³eœ ", o_other.name), " w zaœwiaty");
};

func string Action_TurnAway (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	AI_TurnAway (o_other, hero);
	
	return "";
};

func string Action_TurnToMe (var string parameter)
{
	Npc_ClearAIQueue(o_other);
	B_TurnToNpc (o_other, hero);
	B_LookAtNpc (o_other, hero);
	
	return "";
};
///******************************************************************************************
func string Action_Mass_Fear (var string parameter)
{
	AI_SetNpcsToState (hero, ZS_MagicFlee, 1000);
	
	return "";
};

func string Action_Mass_DrawWeapon (var string parameter)
{
	return "";
};

func string Action_Mass_UndrawWeapon (var string parameter)
{
	return "";
};

func string Action_Mass_LookAtMe (var string parameter)
{
	return "";
};

func string Action_Mass_TurnToMe (var string parameter)
{
	return "";
};

///******************************************************************************************
func string Test (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		Set_AniFPS (o_other, "T_STAND_2_IGET", 1000);
		Set_AniFPS (o_other, "T_IGET_2_STAND", 1000);
		Set_AniFPS (o_other, "T_RUNSTRAFEL", 22);
		Set_AniFPS (o_other, "T_RUNSTRAFER", 22);
		Set_AniFPS (o_other, "S_1HATTACK", paramInt);
		Set_AniFPS (o_other, "S_1HATTACKL", paramInt);
		Set_AniFPS (o_other, "S_1HATTACKR", paramInt);
		Set_AniFPS (o_other, "S_2HATTACK", paramInt);
		Set_AniFPS (o_other, "S_2HATTACKL", paramInt);
		Set_AniFPS (o_other, "S_2HATTACKR", paramInt);
		Set_AniFPS (o_other, "T_BOWRELOAD", paramInt);
		Set_AniFPS (o_other, "T_CBOWRELOAD", paramInt);
	}
	else
	{
		Set_AniFPS (hero, "T_STAND_2_IGET", 1000);
		Set_AniFPS (hero, "T_IGET_2_STAND", 1000);
		Set_AniFPS (hero, "T_RUNSTRAFEL", 22);
		Set_AniFPS (hero, "T_RUNSTRAFER", 22);
		Set_AniFPS (hero, "S_1HATTACK", paramInt);
		Set_AniFPS (hero, "S_1HATTACKL", paramInt);
		Set_AniFPS (hero, "S_1HATTACKR", paramInt);
		Set_AniFPS (hero, "S_2HATTACK", paramInt);
		Set_AniFPS (hero, "S_2HATTACKL", paramInt);
		Set_AniFPS (hero, "S_2HATTACKR", paramInt);
		Set_AniFPS (hero, "T_BOWRELOAD", paramInt);
		Set_AniFPS (hero, "T_CBOWRELOAD", paramInt);
	};
	
	return "";
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
	CC_Register(Set_Speed, "Set Speed", "");
	CC_Register(Set_BodyVisibility, "Set BodyVisibility", "");
	CC_Register(Set_SetSellingValuePercent, "Set SellingValuePercent", "");
	
	CC_Register(Update_Visual_All, "Update Visual All", "");
	CC_Register(Update_Visual_HeroTex, "Update Visual HeroTex", "");
	CC_Register(Update_Visual_BodyTex, "Update Visual BodyTex", "");
	CC_Register(Update_Visual_SkinTex, "Update Visual SkinTex", "");
	CC_Register(Update_Visual_FaceTex, "Update Visual FaceTex", "");
	CC_Register(Update_Visual_TeethTex, "Update Visual TeethTex", "");
	
	CC_Register(Reset_Hero, "Reset Hero", "");
	CC_Register(Reset_Inventory, "Reset Inventory", "");
	
	CC_Register(Reset_OverlayMDS, "Reset OverlayMDS", "");
	CC_Register(Reset_FightOverlayMDS, "Reset FightOverlayMDS", "");
	
	CC_Register(Action_DrawWeapon, "Action DrawWeapon", "");
	CC_Register(Action_KillMe, "Action KillMe", "");
	CC_Register(Action_LookAtMe, "Action LookAtMe", "");
	CC_Register(Action_ObserveMe, "Action ObserveMe", "");
	CC_Register(Action_PointAtMe, "Action PointAtMe", "");
	CC_Register(Action_RemoveWeapon, "Action RemoveWeapon", "");
	CC_Register(Action_StopLookAtMe, "Action StopLookAtMe", "");
	CC_Register(Action_StopPointAtMe, "Action StopPointAtMe", "");
	CC_Register(Action_TeleportAway, "Action TeleportAway", "");
	CC_Register(Action_TurnAway, "Action TurnAway", "");
	CC_Register(Action_TurnToMe, "Action TurnToMe", "");
	
	CC_Register(Action_Mass_Fear, "Action Mass Fear", "");
	CC_Register(Action_Mass_DrawWeapon, "Action Mass DrawWeapon", "");
	CC_Register(Action_Mass_UndrawWeapon, "Action Mass UndrawWeapon", "");
	CC_Register(Action_Mass_LookAtMe, "Action Mass LookAtMe", "");
	CC_Register(Action_Mass_TurnToMe, "Action Mass TurnToMe", "");
	
	CC_Register(Test, "Test", "");
};
