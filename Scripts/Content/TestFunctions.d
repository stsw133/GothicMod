///******************************************************************************************
/// TestFunctions
///******************************************************************************************

/// give items
///******************************************************************************************
func string Give_All (var string parameter)
{
	GiveAll_Amulets(hero);
	GiveAll_AnimalTrophies(hero);
	GiveAll_Armors(hero);
	GiveAll_Belts(hero);
	GiveAll_Food(hero);
	GiveAll_Hairs(hero);
	GiveAll_Helms(hero);
	GiveAll_MeleeWeapons(hero);
	GiveAll_Meshes(hero);
	GiveAll_Misc(hero);
	GiveAll_Munition(hero);
	GiveAll_Plants(hero);
	GiveAll_Potions(hero);
	GiveAll_RangedWeapons(hero);
	GiveAll_Recipes(hero);
	GiveAll_Rings(hero);
	GiveAll_Runes(hero);
	GiveAll_Stoneplates(hero);
	GiveAll_Valuables(hero);
	GiveAll_Written(hero);
	
	return "Otrzymano wszystkie przedmioty";
};

func string Give_Armors (var string parameter)
{
	GiveAll_Armors(hero);
	GiveAll_Hairs(hero);
	GiveAll_Helms(hero);
	
	return "Otrzymano wszystkie pancerze i he³my";
};

func string Give_Artifacts (var string parameter)
{
	GiveAll_Amulets(hero);
	GiveAll_Belts(hero);
	GiveAll_Rings(hero);
	
	return "Otrzymano wszystkie amulety, pierœcienie i pasy";
};

func string Give_Food (var string parameter)
{
	GiveAll_Food(hero);
	
	return "Otrzymano wszystkie posi³ki i napoje";
};

func string Give_Meshes (var string parameter)
{
	GiveAll_Meshes(hero);
	
	return "Otrzymano wszystkie obiekty";
};

func string Give_Misc (var string parameter)
{
	GiveAll_AnimalTrophies(hero);
	GiveAll_Misc(hero);
	GiveAll_Valuables(hero);
	
	return "Otrzymano wszystkie trofea, kosztownoœci, narzêdzia i surowce";
};

func string Give_Potions (var string parameter)
{
	GiveAll_Plants(hero);
	GiveAll_Potions(hero);
	
	return "Otrzymano wszystkie mikstury i zio³a";
};

func string Give_Spells (var string parameter)
{
	GiveAll_Runes(hero);
	
	return "Otrzymano wszystkie runy";
};

func string Give_Weapons (var string parameter)
{
	GiveAll_MeleeWeapons(hero);
	GiveAll_Munition(hero);
	GiveAll_RangedWeapons(hero);
	
	return "Otrzymano wszystkie bronie";
};

func string Give_Written (var string parameter)
{
	GiveAll_Recipes(hero);
	GiveAll_Stoneplates(hero);
	GiveAll_Written(hero);
	
	return "Otrzymano wszystkie ksi¹¿ki, mapy, receptury i tablice";
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
	var int i;
	
	Npc_SetTalentSkill (hero, NPC_TALENT_DUAL, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_SHIELD, 1);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_LANGUAGE, 1);
	
//	Npc_SetTalentSkill (hero, NPC_TALENT_SNEAK, 1);
//	Npc_SetTalentSkill (hero, NPC_TALENT_ACROBATIC, 1);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKLOCK, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKPOCKET, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PERSUASION, 1);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_FLETCHERY, 3);
	i = 0;
	repeat(i, MAX_TALENT_FLETCHERY);
	MEM_WriteStatArr(PLAYER_TALENT_FLETCHERY, i, true);
	end;
	
	Npc_SetTalentSkill (hero, NPC_TALENT_SMITH, 3);
	i = 0;
	repeat(i, MAX_TALENT_SMITH);
	MEM_WriteStatArr(PLAYER_TALENT_SMITH, i, true);
	end;
	
	Npc_SetTalentSkill (hero, NPC_TALENT_ALCHEMY, 3);
	i = 0;
	repeat(i, MAX_TALENT_ALCHEMY);
	MEM_WriteStatArr(PLAYER_TALENT_ALCHEMY, i, true);
	end;
	
	Npc_SetTalentSkill (hero, NPC_TALENT_ENCHANTING, 3);
	i = 0;
	repeat(i, MAX_SPELL);
	MEM_WriteStatArr(PLAYER_TALENT_ENCHANTING, i, true);
	end;
	
	Npc_SetTalentSkill (hero, NPC_TALENT_HUNTING, 1);
	i = 0;
	repeat(i, MAX_TALENT_HUNTING);
	MEM_WriteStatArr(PLAYER_TALENT_HUNTING, i, true);
	end;
	
	Npc_SetTalentSkill (hero, NPC_TALENT_17, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_18, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_19, 1);
	
	return "Otrzymano wszystkie talenty";
};

func string Give_Exp (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_GivePlayerExp(paramInt);
	
	return ConcatStrings(ConcatStrings("Otrzymano ", IntToString(paramInt)), " punktów doœwiadczenia");
};

/// set game & movie mode
///******************************************************************************************
func string Set_Chapter (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_ChangeChapter (paramInt, CurrentLevel);
	
	return ConcatStrings(ConcatStrings("Ustawiono ", IntToString(paramInt)), " rozdzia³");
};

func string Set_Diff (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	DIFF_Select(paramInt);
	
	if		(dLevel == DIFF_E)	{	return "Ustawiono ³atwy poziom trudnoœci";		}
	else if	(dLevel == DIFF_M)	{	return "Ustawiono œredni poziom trudnoœci";		}
	else if	(dLevel == DIFF_H)	{	return "Ustawiono trudny poziom trudnoœci";		}
	else if	(dLevel == DIFF_V)	{	return "Ustawiono b. trudny poziom trudnoœci";	}
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

func string Set_SellingValuePercent (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	B_SetSellingValuePercent(paramInt);
	
	return ConcatStrings(ConcatStrings("Ustawiono ", IntToString(paramInt)), "% przelicznika sprzeda¿y");
};

func string Set_View (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	MOD_MovieMode_SetCamera(paramInt);
	
	return ConcatStrings("Zapisano kamerê pod slotem ", IntToString(paramInt));
};

/// set world & npc
///******************************************************************************************
func string Set_BodyVisibility (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		Npc_SetVisibilityPercent (o_other, paramInt);
	}
	else
	{
		Npc_SetVisibilityPercent (hero, paramInt);
	};
	
	return ConcatStrings(ConcatStrings("Ustawiono ", IntToString(paramInt)), "% widocznoœci postaci");
};

func string Set_ScaleWorldTime (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	scaleWorldTime = paramInt;
	
	return ConcatStrings("Ustawiono skalowanie czasu œwiata na ", IntToString(paramInt));
};

func string Set_Speed (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		Npc_SetSpeed (o_other, paramInt * 10);
	}
	else
	{
		Npc_SetSpeed (hero, paramInt * 10);
	};
	
	return ConcatStrings(ConcatStrings("Ustawiono ", IntToString(paramInt)), "% szybkoœci postaci");
};

func string Set_Weather (var string parameter)
{
	var int paramInt; paramInt = STR_ToInt(STR_SubStr(parameter, 1, STR_Len(parameter) - 1));
	
	MEM_InitGlobalInst();
	
	if (paramInt == 0)
	{
		MEM_SkyController.rainFX_timeStartRain = 0;
		MEM_SkyController.rainFX_timeStopRain = 0;
		MEM_SkyController.rainFX_renderLightning = false;
	}
	else if (paramInt == 1)
	{
		MEM_SkyController.rainFX_timeStartRain = 0;
		MEM_SkyController.rainFX_timeStopRain = 1065353216;
	}
	else if (paramInt == 2)
	{
		MEM_SkyController.rainFX_timeStartRain = 0;
		MEM_SkyController.rainFX_timeStopRain = 1065353216;
		MEM_SkyController.rainFX_renderLightning = true;
	};
	
	return "Zmieniono pogodê";
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

func string Update_Visual_HeadMesh (var string parameter)
{
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		MEM_WriteStatStringArr(o_other.name, 4, parameter);
		NpcFn_UpdateVisual(o_other);
	}
	else
	{
		MEM_WriteStatStringArr(hero.name, 4, parameter);
		NpcFn_UpdateVisual(hero);
	};
	
	return ConcatStrings("Ustawiono model g³owy na ", parameter);
};

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

/// reset other
///******************************************************************************************
func string Reset_Talk (var string parameter)
{
	MEM_InformationMan.IsDone = true;
	o_other = MEM_PtrToInst(o_hero.focus_vob);
	if (Hlp_IsValidNpc(o_other))
	{
		AI_ProcessInfos(o_other);
	}
	else
	{
		AI_ProcessInfos(hero);
	};
	
	//MEM_Camera. = ?;
	
	//AI_StopProcessInfos(hero);
	//Npc_ClearAIQueue(hero);
	//B_ClearPerceptions(hero);
	//AI_StandUpQuick(hero);
	
	return "Zresetowano proces rozmowy";
};

/// assign ani
///******************************************************************************************
func string Assign_Ani_0_Self (var string parameter)	{	return MOD_MovieMode_SetAni(0,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_1_Self (var string parameter)	{	return MOD_MovieMode_SetAni(1,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_2_Self (var string parameter)	{	return MOD_MovieMode_SetAni(2,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_3_Self (var string parameter)	{	return MOD_MovieMode_SetAni(3,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_4_Self (var string parameter)	{	return MOD_MovieMode_SetAni(4,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_5_Self (var string parameter)	{	return MOD_MovieMode_SetAni(5,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_6_Self (var string parameter)	{	return MOD_MovieMode_SetAni(6,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_7_Self (var string parameter)	{	return MOD_MovieMode_SetAni(7,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_8_Self (var string parameter)	{	return MOD_MovieMode_SetAni(8,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_9_Self (var string parameter)	{	return MOD_MovieMode_SetAni(9,	TARGET_COLLECT_CASTER,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};

func string Assign_Ani_0_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(0,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_1_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(1,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_2_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(2,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_3_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(3,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_4_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(4,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_5_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(5,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_6_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(6,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_7_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(7,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_8_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(8,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_9_Focus (var string parameter)	{	return MOD_MovieMode_SetAni(9,	TARGET_COLLECT_FOCUS,	STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};

func string Assign_Ani_0_All (var string parameter)		{	return MOD_MovieMode_SetAni(0,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_1_All (var string parameter)		{	return MOD_MovieMode_SetAni(1,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_2_All (var string parameter)		{	return MOD_MovieMode_SetAni(2,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_3_All (var string parameter)		{	return MOD_MovieMode_SetAni(3,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_4_All (var string parameter)		{	return MOD_MovieMode_SetAni(4,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_5_All (var string parameter)		{	return MOD_MovieMode_SetAni(5,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_6_All (var string parameter)		{	return MOD_MovieMode_SetAni(6,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_7_All (var string parameter)		{	return MOD_MovieMode_SetAni(7,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_8_All (var string parameter)		{	return MOD_MovieMode_SetAni(8,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};
func string Assign_Ani_9_All (var string parameter)		{	return MOD_MovieMode_SetAni(9,	TARGET_COLLECT_ALL,		STR_SubStr(parameter, 1, STR_Len(parameter) - 1));	};

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

/// uncategorized
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
/// ConsoleCommands
///******************************************************************************************
func void ConsoleCommands()
{
	CC_Register(Give_All, "Give All", "");
	CC_Register(Give_Armors, "Give Armors", "");
	CC_Register(Give_Artifacts, "Give Artifacts", "");
	CC_Register(Give_Food, "Give Food", "");
	CC_Register(Give_Meshes, "Give Meshes", "");
	CC_Register(Give_Misc, "Give Misc", "");
	CC_Register(Give_Potions, "Give Potions", "");
	CC_Register(Give_Spells, "Give Spells", "");
	CC_Register(Give_Weapons, "Give Weapons", "");
	CC_Register(Give_Written, "Give Written", "");
	CC_Register(Give_Gold, "Give Gold", "");
	
	CC_Register(Give_Attributes, "Give Attributes", "");
	CC_Register(Give_FightSkills, "Give FightSkills", "");
	CC_Register(Give_MagicSkills, "Give MagicSkills", "");
	CC_Register(Give_Talents, "Give Talents", "");
	CC_Register(Give_Exp, "Give Exp", "");
	
	CC_Register(Set_Diff, "Set Diff", "");
	CC_Register(Set_GameMode, "Set GameMode", "");
	CC_Register(Set_SellingValuePercent, "Set SellingValuePercent", "");
	CC_Register(Set_View, "Set View", "");
	
	CC_Register(Set_BodyVisibility, "Set BodyVisibility", "");
	CC_Register(Set_ScaleWorldTime, "Set ScaleWorldTime", "");
	CC_Register(Set_Speed, "Set Speed", "");
	CC_Register(Set_Weather, "Set Weather", "");
	
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
	CC_Register(Reset_Talk, "Reset Talk", "");
	
	CC_Register(Assign_Ani_0_Self, "Assign Ani 0 Self", "");
	CC_Register(Assign_Ani_1_Self, "Assign Ani 1 Self", "");
	CC_Register(Assign_Ani_2_Self, "Assign Ani 2 Self", "");
	CC_Register(Assign_Ani_3_Self, "Assign Ani 3 Self", "");
	CC_Register(Assign_Ani_4_Self, "Assign Ani 4 Self", "");
	CC_Register(Assign_Ani_5_Self, "Assign Ani 5 Self", "");
	CC_Register(Assign_Ani_6_Self, "Assign Ani 6 Self", "");
	CC_Register(Assign_Ani_7_Self, "Assign Ani 7 Self", "");
	CC_Register(Assign_Ani_8_Self, "Assign Ani 8 Self", "");
	CC_Register(Assign_Ani_9_Self, "Assign Ani 9 Self", "");
	CC_Register(Assign_Ani_0_Focus, "Assign Ani 0 Focus", "");
	CC_Register(Assign_Ani_1_Focus, "Assign Ani 1 Focus", "");
	CC_Register(Assign_Ani_2_Focus, "Assign Ani 2 Focus", "");
	CC_Register(Assign_Ani_3_Focus, "Assign Ani 3 Focus", "");
	CC_Register(Assign_Ani_4_Focus, "Assign Ani 4 Focus", "");
	CC_Register(Assign_Ani_5_Focus, "Assign Ani 5 Focus", "");
	CC_Register(Assign_Ani_6_Focus, "Assign Ani 6 Focus", "");
	CC_Register(Assign_Ani_7_Focus, "Assign Ani 7 Focus", "");
	CC_Register(Assign_Ani_8_Focus, "Assign Ani 8 Focus", "");
	CC_Register(Assign_Ani_9_Focus, "Assign Ani 9 Focus", "");
	CC_Register(Assign_Ani_0_All, "Assign Ani 0 All", "");
	CC_Register(Assign_Ani_1_All, "Assign Ani 1 All", "");
	CC_Register(Assign_Ani_2_All, "Assign Ani 2 All", "");
	CC_Register(Assign_Ani_3_All, "Assign Ani 3 All", "");
	CC_Register(Assign_Ani_4_All, "Assign Ani 4 All", "");
	CC_Register(Assign_Ani_5_All, "Assign Ani 5 All", "");
	CC_Register(Assign_Ani_6_All, "Assign Ani 6 All", "");
	CC_Register(Assign_Ani_7_All, "Assign Ani 7 All", "");
	CC_Register(Assign_Ani_8_All, "Assign Ani 8 All", "");
	CC_Register(Assign_Ani_9_All, "Assign Ani 9 All", "");
	
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
