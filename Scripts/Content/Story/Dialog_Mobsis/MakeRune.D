///******************************************************************************************
/// MOBSI_MAKERUNE / MOBSI_MAKESCROLL
///******************************************************************************************
func void MAKERUNE_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKERUNE;
		AI_ProcessInfos(self);
		CreateInvItem (self, ItMi_RuneBlank);
	};
};

func void MOBSI_MAKESCROLL_S1()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_MAKESCROLL;
		AI_ProcessInfos(self);
	};
};

func int PC_MakeRuneOrScroll_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	|| (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	{	
		return true;
	};
};

func int PC_MakeRuneOrScroll_CanProduce()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE && !(Npc_HasItems(hero, ItMi_RuneBlank) >= 1))
	|| (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL && !(Npc_HasItems(hero, ItMi_Scrolls) >= 1 && Npc_HasItems(hero, ItMi_Ink) >= 1))
	{
		Print(PRINT_ProdItemsMissing);
		return false;
	};
	return true;
};

func void PC_MakeRuneOrScroll_FinishProduce(var int runeInst, var int scrollInst)
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	{
		Npc_RemoveInvItem(hero, ItMi_RuneBlank);
		CreateInvItem(hero, runeInst);
		Print(PRINT_RuneSuccess);
	}
	else
	{
		Npc_RemoveInvItem(hero, ItMi_Scrolls);
		Npc_RemoveInvItem(hero, ItMi_Ink);
		CreateInvItems(hero, scrollInst, 4);
		Print(PRINT_ScrollsSuccess);
	};
};


///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_MakeRune_EXIT (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_MakeRuneOrScroll_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************\
/// 1st magic circle
///******************************************************************************************
instance PC_MakeRune_Magic1 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	1;
	condition							=	PC_MakeRune_Magic1_Condition;
	information							=	PC_MakeRune_Magic1_Info;
	permanent							=	true;
	description							=	"Twórz zaklêcia 1 krêgu";
};
func int PC_MakeRune_Magic1_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) >= 1)
	{
		return true;
	};
};
func void PC_MakeRune_Magic1_Info()
{
	Info_ClearChoices	(PC_MakeRune_Magic1);
	Info_AddChoice		(PC_MakeRune_Magic1, DIALOG_BACK, PC_MakeRune_Magic1_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_Light])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_Light, " (runa lub pergaminy i magiczny atrament, z³ota moneta)"), PC_ItRu_Light_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Telekinesis])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_Telekinesis, " (runa lub pergaminy i magiczny atrament, moneta fortuny)"), PC_ItRu_Telekinesis_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_FireBolt])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_FireBolt, " (runa lub pergaminy i magiczny atrament, siarka)"), PC_ItRu_FireBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_IceBolt])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_IceBolt, " (runa lub pergaminy i magiczny atrament, kryszta³)"), PC_ItRu_IceBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_SkullBolt])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_SkullBolt, " (runa lub pergaminy i magiczny atrament, czaszka)"), PC_ItRu_SkullBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_InstantFireball])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_InstantFireball, " (runa lub pergaminy i magiczny atrament, smo³a)"), PC_ItRu_InstantFireball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Zap])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_Zap, " (runa lub pergaminy i magiczny atrament, bry³ka srebra)"), PC_ItRu_Zap_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Slimeball])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_Slimeball, " (runa lub pergaminy i magiczny atrament, bagienne lub pustynne ziele)"), PC_ItRu_Slimeball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_IceLance])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_IceLance, " (runa lub pergaminy i magiczny atrament, kryszta³)"), PC_ItRu_IceLance_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Rock])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_Rock, " (runa lub pergaminy i magiczny atrament, kwarcyt)"), PC_ItRu_Rock_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Mysticball])
	{
		Info_AddChoice (PC_MakeRune_Magic1, ConcatStrings(NAME_SPL_Mysticball, " (runa lub pergaminy i magiczny atrament, ¿ywica)"), PC_ItRu_Mysticball_Info);
	};
};

///******************************************************************************************
func void PC_MakeRune_Magic1_BACK()
{
	Info_ClearChoices(PC_MakeRune_Magic1);
};

func void PC_ItRu_Light_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Gold) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Gold, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Light, ItSc_Light);
};

func void PC_ItRu_Telekinesis_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_FortuneCoin) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_FortuneCoin, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Telekinesis, ItSc_Telekinesis);
};

func void PC_ItRu_FireBolt_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Sulfur) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Sulfur, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_FireBolt, ItSc_FireBolt);
};

func void PC_ItRu_IceBolt_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Rockcrystal) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Rockcrystal, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_IceBolt, ItSc_IceBolt);
};

func void PC_ItRu_SkullBolt_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SkeletonSkull) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SkeletonSkull, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_SkullBolt, ItSc_SkullBolt);
};

func void PC_ItRu_InstantFireball_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Pitch) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Pitch, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_InstantFireball, ItSc_InstantFireball);
};

func void PC_ItRu_Zap_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_SilverNugget) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_SilverNugget, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Zap, ItSc_Zap);
};

func void PC_ItRu_Slimeball_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SheepFur) < 1)
	|| (Npc_HasItems(hero, ItPl_SwampHerb) < 1 && Npc_HasItems(hero, ItPl_DesertHerb) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	
	Npc_RemoveInvItems(hero, ItAt_SheepFur, 1);
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)	{ Npc_RemoveInvItems(hero, ItPl_SwampHerb, 1); }
	else											{ Npc_RemoveInvItems(hero, ItPl_DesertHerb, 1); };
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Slimeball, ItSc_Slimeball);
};

func void PC_ItRu_IceLance_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Rockcrystal) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Rockcrystal, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_IceLance, ItSc_IceLance);
};

func void PC_ItRu_Rock_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quartz) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quartz, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Rock, ItSc_Rock);
};

func void PC_ItRu_Mysticball_Info()
{
	PC_MakeRune_Magic1_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Resin) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Resin, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Mysticball, ItSc_Mysticball);
};

///******************************************************************************************\
/// 2nd magic circle
///******************************************************************************************
instance PC_MakeRune_Magic2 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	2;
	condition							=	PC_MakeRune_Magic2_Condition;
	information							=	PC_MakeRune_Magic2_Info;
	permanent							=	true;
	description							=	"Twórz zaklêcia 2 krêgu";
};
func int PC_MakeRune_Magic2_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) >= 1)
	{
		return true;
	};
};
func void PC_MakeRune_Magic2_Info()
{
	Info_ClearChoices	(PC_MakeRune_Magic2);
	Info_AddChoice		(PC_MakeRune_Magic2, DIALOG_BACK, PC_MakeRune_Magic2_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_Heal])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_Heal, " (runa lub pergaminy i magiczny atrament, roœlina lecznicza, ziele lecznicze, korzeñ leczniczy)"), PC_ItRu_Heal_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Resurrection])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_Resurrection, " (runa lub pergaminy i magiczny atrament, 2 mchy, woda œwiêcona)"), PC_ItRu_Resurrection_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_NightToDay])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_NightToDay, " (runa lub pergaminy i magiczny atrament, owcza skóra, kwiat œwitu, 5 cz¹steczek czasu)"), PC_ItRu_NightToDay_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_WindFist])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_WindFist, " (runa lub pergaminy i magiczny atrament, wêgiel, 5 skrzyde³ krwiopijcy)"), PC_ItRu_WindFist_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Sleep])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_Sleep, " (runa lub pergaminy i magiczny atrament, owcza skóra, bagienne lub pustynne ziele)"), PC_ItRu_Sleep_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_HealingAura])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_HealingAura, " (runa lub pergaminy i magiczny atrament, rtêæ, ¿ywica)"), PC_ItRu_HealingAura_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_StoneSkin])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_StoneSkin, " (runa lub pergaminy i magiczny atrament, rtêæ, kwarcyt)"), PC_ItRu_StoneSkin_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_AirShield])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_AirShield, " (runa lub pergaminy i magiczny atrament, rtêæ, kryszta³)"), PC_ItRu_AirShield_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_FireShield])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_FireShield, " (runa lub pergaminy i magiczny atrament, rtêæ, smo³a)"), PC_ItRu_FireShield_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_DarkBarrier])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_DarkBarrier, " (runa lub pergaminy i magiczny atrament, rtêæ, koœæ szkieletu)"), PC_ItRu_DarkBarrier_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Whirlwind])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_Whirlwind, " (runa lub pergaminy i magiczny atrament, skrzyd³o trutnia, woda)"), PC_ItRu_Whirlwind_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_SuckEnergy])
	{
		Info_AddChoice (PC_MakeRune_Magic2, ConcatStrings(NAME_SPL_SuckEnergy, " (runa lub pergaminy i magiczny atrament, ¿¹d³o)"), PC_ItRu_SuckEnergy_Info);
	};
};

///******************************************************************************************
func void PC_MakeRune_Magic2_BACK()
{
	Info_ClearChoices(PC_MakeRune_Magic2);
};

func void PC_ItRu_Heal_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) < 1)
	|| (Npc_HasItems(hero, ItPl_Health_Herb_02) < 1)
	|| (Npc_HasItems(hero, ItPl_Health_Herb_03) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItPl_Health_Herb_01, 1);
	Npc_RemoveInvItems(hero, ItPl_Health_Herb_02, 1);
	Npc_RemoveInvItems(hero, ItPl_Health_Herb_03, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Heal, ItSc_LightHeal);
};

func void PC_ItRu_Resurrection_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItPl_Health_Herb_01) < 1)
	|| (Npc_HasItems(hero, ItPl_GraveMoss) < 1 && Npc_HasItems(hero, ItPl_MountainMoss) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItPl_Health_Herb_01, 1);
	if (Npc_HasItems(hero, ItPl_GraveMoss) >= 1)	{ Npc_RemoveInvItems(hero, ItPl_GraveMoss, 1); }
	else											{ Npc_RemoveInvItems(hero, ItPl_MountainMoss, 1); };
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Resurrection, ItSc_Resurrection);
};

func void PC_ItRu_NightToDay_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SheepFur) < 1)
	|| (Npc_HasItems(hero, ItPl_Purpleplant) < 1)
	|| (Npc_HasItems(hero, ItMi_TimeDust) < 5)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SheepFur, 1);
	Npc_RemoveInvItems(hero, ItPl_Purpleplant, 1);
	Npc_RemoveInvItems(hero, ItMi_TimeDust, 5);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_NightToDay, ItSc_NightToDay);
};

func void PC_ItRu_WindFist_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Coal) < 1)
	|| (Npc_HasItems(hero, ItAt_Wing) < 5)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Coal, 1);
	Npc_RemoveInvItems(hero, ItAt_Wing, 5);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_WindFist, ItSc_WindFist);
};

func void PC_ItRu_Sleep_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SheepFur) < 1)
	|| (Npc_HasItems(hero, ItPl_SwampHerb) < 1 && Npc_HasItems(hero, ItPl_DesertHerb) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SheepFur, 1);
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)	{ Npc_RemoveInvItems(hero, ItPl_SwampHerb, 1); }
	else											{ Npc_RemoveInvItems(hero, ItPl_DesertHerb, 1); };
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Sleep, ItSc_Sleep);
};

func void PC_ItRu_HealingAura_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quicksilver) < 1)
	|| (Npc_HasItems(hero, ItMi_Resin) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quicksilver, 1);
	Npc_RemoveInvItems(hero, ItMi_Resin, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_HealingAura, ItSc_HealingAura);
};

func void PC_ItRu_StoneSkin_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quicksilver) < 1)
	|| (Npc_HasItems(hero, ItMi_Quartz) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quicksilver, 1);
	Npc_RemoveInvItems(hero, ItMi_Quartz, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_StoneSkin, ItSc_StoneSkin);
};

func void PC_ItRu_AirShield_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quicksilver) < 1)
	|| (Npc_HasItems(hero, ItMi_Rockcrystal) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quicksilver, 1);
	Npc_RemoveInvItems(hero, ItMi_Rockcrystal, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_AirShield, ItSc_AirShield);
};

func void PC_ItRu_FireShield_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quicksilver) < 1)
	|| (Npc_HasItems(hero, ItMi_Pitch) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quicksilver, 1);
	Npc_RemoveInvItems(hero, ItMi_Pitch, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_FireShield, ItSc_FireShield);
};

func void PC_ItRu_DarkBarrier_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quicksilver) < 1)
	|| (Npc_HasItems(hero, ItAt_SkeletonBone) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quicksilver, 1);
	Npc_RemoveInvItems(hero, ItAt_SkeletonBone, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_DarkBarrier, ItSc_DarkBarrier);
};

func void PC_ItRu_Whirlwind_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SwampdroneWing) < 1)
	|| (Npc_HasItems(hero, ItFo_Water) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SwampdroneWing, 1);
	Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Whirlwind, ItSc_Whirlwind);
};

func void PC_ItRu_SuckEnergy_Info()
{
	PC_MakeRune_Magic2_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_Sting) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_Sting, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_SuckEnergy, ItSc_SuckEnergy);
};

///******************************************************************************************\
/// 3rd magic circle
///******************************************************************************************
instance PC_MakeRune_Magic3 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	3;
	condition							=	PC_MakeRune_Magic3_Condition;
	information							=	PC_MakeRune_Magic3_Info;
	permanent							=	true;
	description							=	"Twórz zaklêcia 3 krêgu";
};
func int PC_MakeRune_Magic3_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) >= 2)
	{
		return true;
	};
};
func void PC_MakeRune_Magic3_Info()
{
	Info_ClearChoices	(PC_MakeRune_Magic3);
	Info_AddChoice		(PC_MakeRune_Magic3, DIALOG_BACK, PC_MakeRune_Magic3_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_Seduction])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Seduction, " (runa lub pergaminy i magiczny atrament, perfumy)"), PC_ItRu_Seduction_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PickLock])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_PickLock, " (runa lub pergaminy i magiczny atrament, wytrych, bry³ka z³ota)"), PC_ItRu_PickLock_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Charm])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Charm, " (runa lub pergaminy i magiczny atrament, bagienne ziele lub pustynne ziele, k³y b³otnego wê¿a)"), PC_ItRu_Charm_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Curse])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Curse, " (runa lub pergaminy i magiczny atrament, koœæ, 2 czaszki, 3 koœci goblina)"), PC_ItRu_Curse_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Fear])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Fear, " (runa lub pergaminy i magiczny atrament, 2 skrzyd³a demona)"), PC_ItRu_Fear_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_IceCube])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_IceCube, " (runa lub pergaminy i magiczny atrament, kryszta³, bia³a per³a)"), PC_ItRu_IceCube_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_ChargeZap])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_ChargeZap, " (runa lub pergaminy i magiczny atrament, bry³ka srebra, 2 k³y dzika)"), PC_ItRu_ChargeZap_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Firestorm])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Firestorm, " (runa lub pergaminy i magiczny atrament, siarka, saletra)"), PC_ItRu_Firestorm_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Geyser])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Geyser, " (runa lub pergaminy i magiczny atrament, akwamaryn)"), PC_ItRu_Geyser_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Fireburning])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Fireburning, " (runa lub pergaminy i magiczny atrament, smo³a, saletra)"), PC_ItRu_Fireburning_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Greententacle])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Greententacle, " (runa lub pergaminy i magiczny atrament, ¿ywica, 2 korzenie many)"), PC_ItRu_Greententacle_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Elevate])
	{
		Info_AddChoice (PC_MakeRune_Magic3, ConcatStrings(NAME_SPL_Elevate, " (runa lub pergaminy i magiczny atrament, kwarcyt, serce gargulca)"), PC_ItRu_Elevate_Info);
	};
};

///******************************************************************************************
func void PC_MakeRune_Magic3_BACK()
{
	Info_ClearChoices(PC_MakeRune_Magic3);
};

func void PC_ItRu_Seduction_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItPo_Perfume) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItPo_Perfume, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Seduction, ItSc_Seduction);
};

func void PC_ItRu_PickLock_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItKe_Lockpick) < 1)
	|| (Npc_HasItems(hero, ItMi_GoldNugget_Addon) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItKe_Lockpick, 1);
	Npc_RemoveInvItems(hero, ItMi_GoldNugget_Addon, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PickLock, ItSc_PickLock);
};

func void PC_ItRu_Charm_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SharkTeeth) < 1)
	|| (Npc_HasItems(hero, ItPl_SwampHerb) < 1 && Npc_HasItems(hero, ItPl_DesertHerb) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SharkTeeth, 1);
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 1)	{ Npc_RemoveInvItems(hero, ItPl_SwampHerb, 1); }
	else											{ Npc_RemoveInvItems(hero, ItPl_DesertHerb, 1); };
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Charm, ItSc_Charm);
};

func void PC_ItRu_Curse_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SkeletonBone) < 1)
	|| (Npc_HasItems(hero, ItAt_SkeletonSkull) < 2)
	|| (Npc_HasItems(hero, ItAt_GoblinBone) < 3)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SkeletonBone, 1);
	Npc_RemoveInvItems(hero, ItAt_SkeletonSkull, 2);
	Npc_RemoveInvItems(hero, ItAt_GoblinBone, 3);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Curse, ItSc_Curse);
};

func void PC_ItRu_Fear_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_DemonWing) < 2)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_DemonWing, 2);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Fear, ItSc_Fear);
};

func void PC_ItRu_IceCube_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Rockcrystal) < 1)
	|| (Npc_HasItems(hero, ItMi_WhitePearl) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Rockcrystal, 1);
	Npc_RemoveInvItems(hero, ItMi_WhitePearl, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_IceCube, ItSc_IceCube);
};

func void PC_ItRu_ChargeZap_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_SilverNugget) < 1)
	|| (Npc_HasItems(hero, ItAt_KeilerTusk) < 2)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_SilverNugget, 1);
	Npc_RemoveInvItems(hero, ItAt_KeilerTusk, 2);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_ChargeZap, ItSc_ChargeZap);
};

func void PC_ItRu_Firestorm_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Sulfur) < 1)
	|| (Npc_HasItems(hero, ItMi_Saltpeter) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Sulfur, 1);
	Npc_RemoveInvItems(hero, ItMi_Saltpeter, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Firestorm, ItSc_Firestorm);
};

func void PC_ItRu_Geyser_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Aquamarine) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Aquamarine, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Geyser, ItSc_Geyser);
};

func void PC_ItRu_Fireburning_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Pitch) < 1)
	|| (Npc_HasItems(hero, ItMi_Saltpeter) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Pitch, 1);
	Npc_RemoveInvItems(hero, ItMi_Saltpeter, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Fireburning, ItSc_Fireburning);
};

func void PC_ItRu_Greententacle_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Resin) < 1)
	|| (Npc_HasItems(hero, ItPl_Mana_Herb_03) < 2)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Resin, 1);
	Npc_RemoveInvItems(hero, ItPl_Mana_Herb_03, 2);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Greententacle, ItSc_Greententacle);
};

func void PC_ItRu_Elevate_Info()
{
	PC_MakeRune_Magic3_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quartz) < 1)
	|| (Npc_HasItems(hero, ItAt_GargoyleHeart) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quartz, 1);
	Npc_RemoveInvItems(hero, ItAt_GargoyleHeart, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Elevate, ItSc_Elevate);
};

///******************************************************************************************\
/// 4th magic circle
///******************************************************************************************
instance PC_MakeRune_Magic4 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	4;
	condition							=	PC_MakeRune_Magic4_Condition;
	information							=	PC_MakeRune_Magic4_Info;
	permanent							=	true;
	description							=	"Twórz zaklêcia 4 krêgu";
};
func int PC_MakeRune_Magic4_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) >= 2)
	{
		return true;
	};
};
func void PC_MakeRune_Magic4_Info()
{
	Info_ClearChoices	(PC_MakeRune_Magic4);
	Info_AddChoice		(PC_MakeRune_Magic4, DIALOG_BACK, PC_MakeRune_Magic4_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_Stealth])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_Stealth, " (runa lub pergaminy i magiczny atrament, 2 bagienne lub pustynne zio³a, skóra b³otnego wê¿a)"), PC_ItRu_Stealth_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_LightningFlash])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_LightningFlash, " (runa lub pergaminy i magiczny atrament, bry³ka srebra, szpony topielca)"), PC_ItRu_LightningFlash_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_ChargeFireball])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_ChargeFireball, " (runa lub pergaminy i magiczny atrament, smo³a, jêzyk ognistego jaszczura)"), PC_ItRu_ChargeFireball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_SummonGolem])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_SummonGolem, " (runa lub pergaminy i magiczny atrament, serce golema)"), PC_ItRu_SummonGolem_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_DestroyUndead])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_SummonGolem, " (runa lub pergaminy i magiczny atrament, woda œwiêcona, czaszka, 5 goœci goblina)"), PC_ItRu_DestroyUndead_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Tame])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_Tame, " (runa lub pergaminy i magiczny atrament, ¿ywica, skóra niedŸwiedzia)"), PC_ItRu_Tame_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_WaterFist])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_WaterFist, " (runa lub pergaminy i magiczny atrament, akwamaryn, woda)"), PC_ItRu_WaterFist_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Inflate])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_Inflate, " (runa lub pergaminy i magiczny atrament, 2 sad³a niedŸwiedzia, 2 ³oje kretoszczura, woda)"), PC_ItRu_Inflate_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_ChainLightning])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_ChainLightning, " (runa lub pergaminy i magiczny atrament, 2 bry³ki srebra, bia³a per³a)"), PC_ItRu_ChainLightning_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Hurricane])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_Hurricane, " (runa lub pergaminy i magiczny atrament, wêgiel, 5 skrzyde³ trutnia)"), PC_ItRu_Hurricane_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Plague])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_Plague, " (runa lub pergaminy i magiczny atrament, koœæ szkieletu, 2 truj¹ce wydzieliny, 2 szpony demona)"), PC_ItRu_Plague_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Swarm])
	{
		Info_AddChoice (PC_MakeRune_Magic4, ConcatStrings(NAME_SPL_Swarm, " (runa lub pergaminy i magiczny atrament, 3 ¿¹d³a, 2 ¿uwaczki polnej bestii, ¿uwaczki pe³zacza)"), PC_ItRu_Swarm_Info);
	};
};

///******************************************************************************************
func void PC_MakeRune_Magic4_BACK()
{
	Info_ClearChoices(PC_MakeRune_Magic4);
};

func void PC_ItRu_Stealth_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SharkSkin) < 1)
	|| (Npc_HasItems(hero, ItPl_SwampHerb) < 2 && Npc_HasItems(hero, ItPl_DesertHerb) < 2)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SharkSkin, 1);
	if (Npc_HasItems(hero, ItPl_SwampHerb) >= 2)	{ Npc_RemoveInvItems(hero, ItPl_SwampHerb, 2); }
	else											{ Npc_RemoveInvItems(hero, ItPl_DesertHerb, 2); };
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Stealth, ItSc_Stealth);
};

func void PC_ItRu_LightningFlash_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_SilverNugget) < 1)
	|| (Npc_HasItems(hero, ItAt_DrgSnapperHorn) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_SilverNugget, 1);
	Npc_RemoveInvItems(hero, ItAt_DrgSnapperHorn, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_LightningFlash, ItSc_LightningFlash);
};

func void PC_ItRu_ChargeFireball_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Pitch) < 1)
	|| (Npc_HasItems(hero, ItAt_FirewaranTongue) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Pitch, 1);
	Npc_RemoveInvItems(hero, ItAt_FirewaranTongue, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_ChargeFireball, ItSc_ChargeFireball);
};

func void PC_ItRu_SummonGolem_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_GolemHeart) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_GolemHeart, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_SummonGolem, ItSc_SummonGolem);
};

func void PC_ItRu_DestroyUndead_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	|| (Npc_HasItems(hero, ItAt_SkeletonSkull) < 1)
	|| (Npc_HasItems(hero, ItAt_GoblinBone) < 5)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	Npc_RemoveInvItems(hero, ItAt_SkeletonSkull, 1);
	Npc_RemoveInvItems(hero, ItAt_GoblinBone, 5);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_DestroyUndead, ItSc_DestroyUndead);
};

func void PC_ItRu_Tame_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Resin) < 1)
	|| (Npc_HasItems(hero, ItAt_BearFur) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Resin, 1);
	Npc_RemoveInvItems(hero, ItAt_BearFur, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Tame, ItSc_Tame);
};

func void PC_ItRu_WaterFist_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Aquamarine) < 1)
	|| (Npc_HasItems(hero, ItFo_Water) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Aquamarine, 1);
	Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_WaterFist, ItSc_WaterFist);
};

func void PC_ItRu_Inflate_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_BearFat) < 2)
	|| (Npc_HasItems(hero, ItAt_MoleratLubric) < 2)
	|| (Npc_HasItems(hero, ItFo_Water) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_BearFat, 2);
	Npc_RemoveInvItems(hero, ItAt_MoleratLubric, 2);
	Npc_RemoveInvItem (hero, ItFo_Water); CreateInvItem (hero, ItMi_EmptyBottle);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Inflate, ItSc_Inflate);
};

func void PC_ItRu_ChainLightning_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_SilverNugget) < 2)
	|| (Npc_HasItems(hero, ItMi_WhitePearl) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_SilverNugget, 2);
	Npc_RemoveInvItems(hero, ItMi_WhitePearl, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_ChainLightning, ItSc_ChainLightning);
};

func void PC_ItRu_Hurricane_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Coal) < 1)
	|| (Npc_HasItems(hero, ItAt_SwampdroneWing) < 5)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Coal, 1);
	Npc_RemoveInvItems(hero, ItAt_SwampdroneWing, 5);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Hurricane, ItSc_Hurricane);
};

func void PC_ItRu_Plague_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SkeletonBone) < 1)
	|| (Npc_HasItems(hero, ItAt_Poison) < 2)
	|| (Npc_HasItems(hero, ItAt_DemonClaw) < 2)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SkeletonBone, 1);
	Npc_RemoveInvItems(hero, ItAt_Poison, 2);
	Npc_RemoveInvItems(hero, ItAt_DemonClaw, 2);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Plague, ItSc_Plague);
};

func void PC_ItRu_Swarm_Info()
{
	PC_MakeRune_Magic4_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_Sting) < 3)
	|| (Npc_HasItems(hero, ItAt_BugMandibles) < 2)
	|| (Npc_HasItems(hero, ItAt_CrawlerMandibles) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_Sting, 3);
	Npc_RemoveInvItems(hero, ItAt_BugMandibles, 2);
	Npc_RemoveInvItems(hero, ItAt_CrawlerMandibles, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Swarm, ItSc_Swarm);
};

///******************************************************************************************\
/// 5th magic circle
///******************************************************************************************
instance PC_MakeRune_Magic5 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	5;
	condition							=	PC_MakeRune_Magic5_Condition;
	information							=	PC_MakeRune_Magic5_Info;
	permanent							=	true;
	description							=	"Twórz zaklêcia 5 krêgu";
};
func int PC_MakeRune_Magic5_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) >= 3)
	{
		return true;
	};
};
func void PC_MakeRune_Magic5_Info()
{
	Info_ClearChoices	(PC_MakeRune_Magic5);
	Info_AddChoice		(PC_MakeRune_Magic5, DIALOG_BACK, PC_MakeRune_Magic5_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_Rage])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_Rage, " (runa lub pergaminy i magiczny atrament, jajo pe³zacza, szpon demona)"), PC_ItRu_Rage_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MindControl])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_MindControl, " (runa lub pergaminy i magiczny atrament, jajo pe³zacza, ¿uwaczki pe³zacza)"), PC_ItRu_MindControl_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Pyrokinesis])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_Pyrokinesis, " (runa lub pergaminy i magiczny atrament, siarka, saletra, jêzyk smoka)"), PC_ItRu_Pyrokinesis_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_IceWave])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_IceWave, " (runa lub pergaminy i magiczny atrament, kryszta³, bia³a per³a, akwamaryn)"), PC_ItRu_IceWave_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_SummonDemon])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_SummonDemon, " (runa lub pergaminy i magiczny atrament, kryszta³, serce demona)"), PC_ItRu_SummonDemon_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_RunicEchoes])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_RunicEchoes, " (runa lub pergaminy i magiczny atrament, ¿ywica, szmaragd)"), PC_ItRu_RunicEchoes_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Dragonball])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_Dragonball, " (runa lub pergaminy i magiczny atrament, serce smoka)"), PC_ItRu_Dragonball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Thunderstorm])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_Thunderstorm, " (runa lub pergaminy i magiczny atrament, kryszta³, bia³a per³a, akwamaryn)"), PC_ItRu_Thunderstorm_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_LightFlash])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_LightFlash, " (runa lub pergaminy i magiczny atrament, bry³ka z³ota, róg cieniostwora)"), PC_ItRu_LightFlash_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Earthquake])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_Earthquake, " (runa lub pergaminy i magiczny atrament, kwarcyt, 3 serca gargulca)"), PC_ItRu_Earthquake_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Skull])
	{
		Info_AddChoice (PC_MakeRune_Magic5, ConcatStrings(NAME_SPL_Skull, " (runa lub pergaminy i magiczny atrament, czaszka, rubin)"), PC_ItRu_Skull_Info);
	};
};

///******************************************************************************************
func void PC_MakeRune_Magic5_BACK()
{
	Info_ClearChoices(PC_MakeRune_Magic5);
};

func void PC_ItRu_Rage_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_CrawlerEgg) < 1)
	|| (Npc_HasItems(hero, ItAt_DemonClaw) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_CrawlerEgg, 1);
	Npc_RemoveInvItems(hero, ItAt_DemonClaw, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Rage, ItSc_Rage);
};

func void PC_ItRu_MindControl_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_CrawlerEgg) < 1)
	|| (Npc_HasItems(hero, ItAt_CrawlerMandibles) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_CrawlerEgg, 1);
	Npc_RemoveInvItems(hero, ItAt_CrawlerMandibles, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_MindControl, ItSc_MindControl);
};

func void PC_ItRu_Pyrokinesis_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Sulfur) < 1)
	|| (Npc_HasItems(hero, ItMi_Saltpeter) < 1)
	|| (Npc_HasItems(hero, ItAt_DragonTongue) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Sulfur, 1);
	Npc_RemoveInvItems(hero, ItMi_Saltpeter, 1);
	Npc_RemoveInvItems(hero, ItAt_DragonTongue, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Pyrokinesis, ItSc_Pyrokinesis);
};

func void PC_ItRu_IceWave_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Rockcrystal) < 1)
	|| (Npc_HasItems(hero, ItMi_WhitePearl) < 1)
	|| (Npc_HasItems(hero, ItMi_Aquamarine) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Rockcrystal, 1);
	Npc_RemoveInvItems(hero, ItMi_WhitePearl, 1);
	Npc_RemoveInvItems(hero, ItMi_Aquamarine, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_IceWave, ItSc_IceWave);
};

func void PC_ItRu_SummonDemon_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_DemonHeart) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_DemonHeart, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_SummonDemon, ItSc_SummonDemon);
};

func void PC_ItRu_Explosion_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Pitch) < 1)
	|| (Npc_HasItems(hero, ItMi_BlackPowder) < 3)
	|| (Npc_HasItems(hero, ItAt_FirewaranTongue) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Pitch, 1);
	Npc_RemoveInvItems(hero, ItMi_BlackPowder, 3);
	Npc_RemoveInvItems(hero, ItAt_FirewaranTongue, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Explosion, ItSc_Explosion);
};

func void PC_ItRu_RunicEchoes_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Resin) < 1)
	|| (Npc_HasItems(hero, ItMi_Emerald) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Resin, 1);
	Npc_RemoveInvItems(hero, ItMi_Emerald, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_RunicEchoes, ItSc_RunicEchoes);
};

func void PC_ItRu_Dragonball_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_DragonHeart) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_DragonHeart, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Dragonball, ItRu_Dragonball);
};

func void PC_ItRu_Thunderstorm_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Rockcrystal) < 1)
	|| (Npc_HasItems(hero, ItMi_WhitePearl) < 1)
	|| (Npc_HasItems(hero, ItMi_Aquamarine) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Rockcrystal, 1);
	Npc_RemoveInvItems(hero, ItMi_WhitePearl, 1);
	Npc_RemoveInvItems(hero, ItMi_Aquamarine, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Thunderstorm, ItSc_Thunderstorm);
};

func void PC_ItRu_LightFlash_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_GoldNugget_Addon) < 1)
	|| (Npc_HasItems(hero, ItAt_ShadowHorn) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_GoldNugget_Addon, 1);
	Npc_RemoveInvItems(hero, ItAt_ShadowHorn, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_LightFlash, ItSc_LightFlash);
};

func void PC_ItRu_Earthquake_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quartz) < 1)
	|| (Npc_HasItems(hero, ItAt_GargoyleHeart) < 3)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quartz, 1);
	Npc_RemoveInvItems(hero, ItAt_GargoyleHeart, 3);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Earthquake, ItSc_Earthquake);
};

func void PC_ItRu_Skull_Info()
{
	PC_MakeRune_Magic5_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SkeletonSkull) < 1)
	|| (Npc_HasItems(hero, ItMi_Ruby) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SkeletonSkull, 1);
	Npc_RemoveInvItems(hero, ItMi_Ruby, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Skull, ItSc_Skull);
};

///******************************************************************************************\
/// 6th magic circle
///******************************************************************************************
instance PC_MakeRune_Magic6 (C_Info)
{
	npc									=	PC_Hero;
	nr									=	6;
	condition							=	PC_MakeRune_Magic6_Condition;
	information							=	PC_MakeRune_Magic6_Info;
	permanent							=	true;
	description							=	"Twórz zaklêcia 6 krêgu";
};
func int PC_MakeRune_Magic6_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) >= 3)
	{
		return true;
	};
};
func void PC_MakeRune_Magic6_Info()
{
	Info_ClearChoices	(PC_MakeRune_Magic6);
	Info_AddChoice		(PC_MakeRune_Magic6, DIALOG_BACK, PC_MakeRune_Magic6_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_Firerain])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_Firerain, " (runa lub pergaminy i magiczny atrament, smo³a, rubin, jêzyk ognistego jaszczura)"), PC_ItRu_Firerain_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_BreathOfDeath])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_BreathOfDeath, " (runa lub pergaminy i magiczny atrament, wêgiel, czarna per³a)"), PC_ItRu_BreathOfDeath_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_MassDeath])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_MassDeath, " (runa lub pergaminy i magiczny atrament, diament, smocza krew)"), PC_ItRu_MassDeath_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_ArmyOfDarkness])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_ArmyOfDarkness, " (runa lub pergaminy i magiczny atrament, 5 koœci szkieletu, 5 czaszek, 10 koœci goblina)"), PC_ItRu_ArmyOfDarkness_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Shrink])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_Shrink, " (runa lub pergaminy i magiczny atrament, jajo pe³zacza, 2 k³y trolla)"), PC_ItRu_Shrink_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_SlowTime])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_SlowTime, " (runa lub pergaminy i magiczny atrament, ¿ywica, diament, 10 cz¹steczek czasu)"), PC_ItRu_SlowTime_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_BlackDragonball])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_BlackDragonball, " (runa lub pergaminy i magiczny atrament, kamieñ duszy smoka-o¿ywieñca)"), PC_ItRu_BlackDragonball_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_Crush])
	{
		Info_AddChoice (PC_MakeRune_Magic6, ConcatStrings(NAME_SPL_Crush, " (runa lub pergaminy i magiczny atrament, kwarcyt, diament)"), PC_ItRu_Crush_Info);
	};
};

///******************************************************************************************
func void PC_MakeRune_Magic6_BACK()
{
	Info_ClearChoices(PC_MakeRune_Magic6);
};

func void PC_ItRu_Firerain_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Pitch) < 1)
	|| (Npc_HasItems(hero, ItMi_Ruby) < 1)
	|| (Npc_HasItems(hero, ItAt_FirewaranTongue) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Pitch, 1);
	Npc_RemoveInvItems(hero, ItMi_Ruby, 1);
	Npc_RemoveInvItems(hero, ItAt_FirewaranTongue, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Firerain, ItSc_Firerain);
};

func void PC_ItRu_BreathOfDeath_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Coal) < 1)
	|| (Npc_HasItems(hero, ItMi_DarkPearl) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Coal, 1);
	Npc_RemoveInvItems(hero, ItMi_DarkPearl, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_BreathOfDeath, ItSc_BreathOfDeath);
};

func void PC_ItRu_MassDeath_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Diamond) < 1)
	|| (Npc_HasItems(hero, ItAt_DragonBlood) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Diamond, 1);
	Npc_RemoveInvItems(hero, ItAt_DragonBlood, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_MassDeath, ItSc_MassDeath);
};

func void PC_ItRu_ArmyOfDarkness_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_SkeletonBone) < 5)
	|| (Npc_HasItems(hero, ItAt_SkeletonSkull) < 5)
	|| (Npc_HasItems(hero, ItAt_GoblinBone) < 10)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_SkeletonBone, 5);
	Npc_RemoveInvItems(hero, ItAt_SkeletonSkull, 5);
	Npc_RemoveInvItems(hero, ItAt_GoblinBone, 10);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_ArmyOfDarkness, ItSc_ArmyOfDarkness);
};

func void PC_ItRu_Shrink_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_CrawlerEgg) < 1)
	|| (Npc_HasItems(hero, ItAt_TrollTooth) < 2)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_CrawlerEgg, 1);
	Npc_RemoveInvItems(hero, ItAt_TrollTooth, 2);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Shrink, ItSc_Shrink);
};

func void PC_ItRu_SlowTime_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Resin) < 1)
	|| (Npc_HasItems(hero, ItMi_Diamond) < 1)
	|| (Npc_HasItems(hero, ItMi_TimeDust) < 10)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Resin, 1);
	Npc_RemoveInvItems(hero, ItMi_Diamond, 1);
	Npc_RemoveInvItems(hero, ItMi_TimeDust, 10);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_SlowTime, ItSc_SlowTime);
};

func void PC_ItRu_BlackDragonball_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItAt_UndeadDragonSoulStone) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItAt_UndeadDragonSoulStone, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_BlackDragonball, ItRu_BlackDragonball);
};

func void PC_ItRu_Crush_Info()
{
	PC_MakeRune_Magic6_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_Quartz) < 1)
	|| (Npc_HasItems(hero, ItMi_Diamond) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_Quartz, 1);
	Npc_RemoveInvItems(hero, ItMi_Diamond, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_Crush, ItSc_Crush);
};

///******************************************************************************************
/// PAL
///******************************************************************************************
instance PC_MakeRune_PAL (C_Info)
{
	npc									=	PC_Hero;
	nr									=	7;
	condition							=	PC_MakeRune_PAL_Condition;
	information							=	PC_MakeRune_PAL_Info;
	permanent							=	true;
	description							=	"Twórz runy paladyna";
};
func int PC_MakeRune_PAL_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE || PLAYER_MOBSI_PRODUCTION == MOBSI_MAKESCROLL)
	&& (Npc_GetTalentSkill(hero, NPC_TALENT_ENCHANTING) >= 1)
	&& (hero.guild == GIL_PAL)
	{
		return true;
	};
};
func void PC_MakeRune_PAL_Info()
{
	Info_ClearChoices	(PC_MakeRune_PAL);
	Info_AddChoice		(PC_MakeRune_PAL, DIALOG_BACK, PC_MakeRune_PAL_BACK);
	
	if (PLAYER_TALENT_ENCHANTING[SPL_PalBless])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalBless, " (woda œwiêcona)"), PC_ItRu_PalBless_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalFaith])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalFaith, " (woda œwiêcona, bry³ka srebra)"), PC_ItRu_PalFaith_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalHolyBolt])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalHolyBolt, " (woda œwiêcona, bry³ka srebra)"), PC_ItRu_PalHolyBolt_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalGlory])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalFaith, " (woda œwiêcona, bia³a per³a)"), PC_ItRu_PalFaith_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalRepelEvil])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalRepelEvil, " (woda œwiêcona, bia³a per³a)"), PC_ItRu_PalRepelEvil_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalJustice])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalJustice, " (woda œwiêcona, diament)"), PC_ItRu_PalJustice_Info);
	};
	if (PLAYER_TALENT_ENCHANTING[SPL_PalDestroyEvil])
	{
		Info_AddChoice (PC_MakeRune_PAL, ConcatStrings(NAME_SPL_PalDestroyEvil, " (woda œwiêcona, diament)"), PC_ItRu_PalDestroyEvil_Info);
	};
};

///******************************************************************************************
func void PC_MakeRune_PAL_BACK()
{
	Info_ClearChoices(PC_MakeRune_PAL);
};

func void PC_ItRu_PalBless_Info()
{
	PC_MakeRune_PAL_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PalBless, ItSc_PalBless);
};

func void PC_ItRu_PalFaith_Info()
{
	PC_MakeRune_PAL_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	|| (Npc_HasItems(hero, ItMi_SilverNugget) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	Npc_RemoveInvItems(hero, ItMi_SilverNugget, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PalFaith, ItSc_PalFaith);
};

func void PC_ItRu_PalHolyBolt_Info()
{
	PC_MakeRune_PAL_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	|| (Npc_HasItems(hero, ItMi_SilverNugget) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	Npc_RemoveInvItems(hero, ItMi_SilverNugget, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PalHolyBolt, ItSc_PalHolyBolt);
};

func void PC_ItRu_PalGlory_Info()
{
	PC_MakeRune_PAL_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	|| (Npc_HasItems(hero, ItMi_WhitePearl) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	Npc_RemoveInvItems(hero, ItMi_WhitePearl, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PalGlory, ItSc_PalGlory);
};

func void PC_ItRu_PalRepelEvil_Info()
{
	PC_MakeRune_PAL_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	|| (Npc_HasItems(hero, ItMi_WhitePearl) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	Npc_RemoveInvItems(hero, ItMi_WhitePearl, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PalRepelEvil, ItSc_PalRepelEvil);
};

func void PC_ItRu_PalJustice_Info()
{
	PC_MakeRune_PAL_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	|| (Npc_HasItems(hero, ItMi_Diamond) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	Npc_RemoveInvItems(hero, ItMi_Diamond, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PalJustice, ItSc_PalJustice);
};

func void PC_ItRu_PalDestroyEvil_Info()
{
	PC_MakeRune_PAL_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	|| (Npc_HasItems(hero, ItMi_Diamond) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	Npc_RemoveInvItems(hero, ItMi_Diamond, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_PalDestroyEvil, ItSc_PalDestroyEvil);
};

///******************************************************************************************
/// Special
///******************************************************************************************
instance PC_MakeRune_Special (C_Info)
{
	npc									=	PC_Hero;
	nr									=	8;
	condition							=	PC_MakeRune_Special_Condition;
	information							=	PC_MakeRune_Special_Info;
	permanent							=	true;
	description							=	"Twórz runy specjalne";
};
func int PC_MakeRune_Special_Condition()
{	
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_MAKERUNE)
	&& (MakeRune_MasterOfDisaster || MakeRune_SecretTeleport)
	{
		return true;
	};
};
func void PC_MakeRune_Special_Info()
{
	Info_ClearChoices	(PC_MakeRune_Special);
	Info_AddChoice		(PC_MakeRune_Special, DIALOG_BACK, PC_MakeRune_Special_BACK);
	if (MakeRune_MasterOfDisaster)
	{
		Info_AddChoice	(PC_MakeRune_Special, "Tajemnica biblioteki! (woda œwiêcona)", PC_SPL_MasterOfDisaster_Create);
	};
	if (MakeRune_SecretTeleport)
	{
		Info_AddChoice	(PC_MakeRune_Special, "Tajemnica biblioteki! (woda œwiêcona)", PC_SPL_PalTeleportSecret_Create);
	};
};

///******************************************************************************************
func void PC_MakeRune_Special_BACK()
{
	Info_ClearChoices(PC_MakeRune_Special);
};

func void PC_SPL_MasterOfDisaster_Create()
{
	PC_MakeRune_Special_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItRu_MasterOfDisaster, ItRu_MasterOfDisaster);
};

func void PC_SPL_PalTeleportSecret_Create()
{
	PC_MakeRune_Special_Info();
	if (!PC_MakeRuneOrScroll_CanProduce()) { return; };
	
	if (Npc_HasItems(hero, ItMi_HolyWater) < 1)
	{
		Print(PRINT_ProdItemsMissing);
		return;
	};
	Npc_RemoveInvItems(hero, ItMi_HolyWater, 1);
	
	PC_MakeRuneOrScroll_FinishProduce(ItTe_SecretChamber, ItTe_SecretChamber);
};
