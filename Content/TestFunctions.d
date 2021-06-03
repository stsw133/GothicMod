///******************************************************************************************
///	TestFunctions
///******************************************************************************************
instance Give_All (C_Item)
{
	Func_All_Items_MeleeWeapons(hero);
	Func_All_Items_RangedWeapons(hero);
	Func_All_Items_Armor(hero);
	Func_All_Items_Helms(hero);
	Func_All_Items_Hairs(hero);
	Func_All_Items_Spells(hero);
	Func_All_Items_MagicStones(hero);
	Func_All_Items_Amulets(hero);
	Func_All_Items_Rings(hero);
	Func_All_Items_Belts(hero);
	Func_All_Items_Food(hero);
	Func_All_Items_Potions(hero);
	Func_All_Items_Plants(hero);
	Func_All_Items_AnimalTrophy(hero);
	Func_All_Items_Written(hero);
	Func_All_Items_Misc(hero);
	Func_All_Items_Meshes(hero);
	PrintScreen ("Otrzymano wszystkie przedmioty", -1, -1, FONT_Screen, 2);
	Wld_RemoveItem(self);
};
instance Give_Gold (C_Item)
{
	CreateInvItems (hero, ItMi_Gold, 1000);
	PrintScreen ("Otrzymano 1000 sztuk z³ota", -1, -1, FONT_Screen, 2);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Give_AttributePoints (C_Item)
{
	B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 100*HP_PER_LP);
	B_RaiseAttribute (self, ATR_MANA_MAX, 100);
	B_RaiseAttribute (self, ATR_STRENGTH, 100);
	B_RaiseAttribute (self, ATR_DEXTERITY, 100);
	B_RaiseAttribute (self, ATR_POWER, 100);
	Wld_RemoveItem(self);
};
instance Give_FightSkills (C_Item)
{
	B_AddFightSkill (hero, NPC_TALENT_1H, 40);
	B_AddFightSkill (hero, NPC_TALENT_2H, 40);
	B_AddFightSkill (hero, NPC_TALENT_BOW, 40);
	B_AddFightSkill (hero, NPC_TALENT_CROSSBOW, 40);
	Wld_RemoveItem(self);
};
instance Give_MagicSkills (C_Item)
{
	Npc_SetTalentSkill (hero, NPC_TALENT_MAGIC, Npc_GetTalentSkill(hero, NPC_TALENT_MAGIC)+1);
	Wld_RemoveItem(self);
};
instance Give_Talents (C_Item)
{
	Npc_SetTalentSkill (hero, NPC_TALENT_2ndH, 3);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_SNEAK, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKLOCK, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PICKPOCKET, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_ACROBATIC, 1);
	Npc_SetTalentSkill (hero, NPC_TALENT_PERSUASION, 2);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_SMITH, 3);
	Npc_SetTalentSkill (hero, NPC_TALENT_JEWELERY, 3);
	Npc_SetTalentSkill (hero, NPC_TALENT_ALCHEMY, 3);
	Npc_SetTalentSkill (hero, NPC_TALENT_HUNTING, 3);
	Npc_SetTalentSkill (hero, NPC_TALENT_WRITING, 3);
	
	Npc_SetTalentSkill (hero, NPC_TALENT_LANGUAGE, 1);
	
	Wld_RemoveItem(self);
};
instance Give_ExpMax (C_Item)
{
	hero.level = MAX_LEVEL-1;
	hero.exp = 0;
	hero.exp_next = 1;
	B_GivePlayerXP(hero.exp_next);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Set_Diff_Easy (C_Item)
{
	DIFF_Select(DIFF_E);
	Wld_RemoveItem(self);
};
instance Set_Diff_Medium (C_Item)
{
	DIFF_Select(DIFF_M);
	Wld_RemoveItem(self);
};
instance Set_Diff_Hard (C_Item)
{
	DIFF_Select(DIFF_H);
	Wld_RemoveItem(self);
};
instance Set_Diff_VeryHard (C_Item)
{
	DIFF_Select(DIFF_VH);
	Wld_RemoveItem(self);
};
instance Set_Diff_Impossible (C_Item)
{
	DIFF_Select(DIFF_I);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Set_fastItemTake (C_Item)
{
	if (fastItemTake)
	{
		fastItemTake = false;
		Print("Szybkie podnoszenie przedmiotów wy³¹czone");
	}
	else
	{
		fastItemTake = true;
		Print("Szybkie podnoszenie przedmiotów w³¹czone");
	};
	Wld_RemoveItem(self);
};
instance Set_movieMode (C_Item)
{
	if (movieMode)
	{
		movieMode = false;
		Print("Tryb gry w³¹czony");
	}
	else
	{
		movieMode = true;
		Print("Tryb filmowy w³¹czony");
	};
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Set_Time_0 (C_Item)
{
	scaleTime = 0;
	Wld_RemoveItem(self);
};
instance Set_Time_1000 (C_Item)
{
	scaleTime = 1000;
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Update_Visual (C_Item)
{
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Set_Hero_00 (C_Item)
{
	B_SetHeroVisual (hero, 0);
	Wld_RemoveItem(self);
};
instance Set_Hero_01 (C_Item)
{
	B_SetHeroVisual (hero, 1);
	Wld_RemoveItem(self);
};
instance Set_Hero_02 (C_Item)
{
	B_SetHeroVisual (hero, 2);
	Wld_RemoveItem(self);
};
instance Set_Hero_03 (C_Item)
{
	B_SetHeroVisual (hero, 3);
	Wld_RemoveItem(self);
};
instance Set_Hero_04 (C_Item)
{
	B_SetHeroVisual (hero, 4);
	Wld_RemoveItem(self);
};
instance Set_Hero_05 (C_Item)
{
	B_SetHeroVisual (hero, 5);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Set_BodyTex_00 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 0;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_01 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 1;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_02 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 2;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_03 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 3;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_04 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 4;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_05 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 5;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_06 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 6;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_07 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 7;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_08 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 8;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_09 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 9;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_10 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 10;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_11 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 11;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_12 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 12;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_13 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 13;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_14 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 14;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_BodyTex_15 (C_Item)
{
	hero.aivar[AIV_BodyTex] = 15;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Set_SkinTex_00 (C_Item)
{
	hero.aivar[AIV_SkinTex] = 0;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_SkinTex_01 (C_Item)
{
	hero.aivar[AIV_SkinTex] = 1;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_SkinTex_02 (C_Item)
{
	hero.aivar[AIV_SkinTex] = 2;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_SkinTex_03 (C_Item)
{
	hero.aivar[AIV_SkinTex] = 3;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_SkinTex_04 (C_Item)
{
	hero.aivar[AIV_SkinTex] = 4;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Set_TeethTex_00 (C_Item)
{
	hero.aivar[AIV_TeethTex] = 0;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_TeethTex_01 (C_Item)
{
	hero.aivar[AIV_TeethTex] = 1;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_TeethTex_02 (C_Item)
{
	hero.aivar[AIV_TeethTex] = 2;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_TeethTex_03 (C_Item)
{
	hero.aivar[AIV_TeethTex] = 3;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_TeethTex_04 (C_Item)
{
	hero.aivar[AIV_TeethTex] = 4;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
instance Set_TeethTex_05 (C_Item)
{
	hero.aivar[AIV_TeethTex] = 5;
	B_UpdateNpcVisual(hero);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Reset_Hero (C_Item)
{
	MOD_HeroReset(hero);
	Wld_RemoveItem(self);
};
instance Reset_Inventory (C_Item)
{
	Npc_ClearInventory(hero);
	B_ClearRuneInv(hero);
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Reset_OverlayMDS (C_Item)
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
	Wld_RemoveItem(self);
};
instance Reset_FightOverlayMDS (C_Item)
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
	Wld_RemoveItem(self);
};
///******************************************************************************************
instance Event_KillMe (C_Item)
{
	hero.attribute[ATR_HITPOINTS] = 0;
	Wld_RemoveItem(self);
};
instance Event_TeleportAway (C_Item)
{
	Npc_ClearAIQueue(o_other);
	AI_Teleport(o_other, "TOT");
	Wld_RemoveItem(self);
};
instance Event_MassFear (C_Item)
{
	Wld_RemoveItem(self);
};
instance Event_MassWeapon_Draw (C_Item)
{
	Wld_RemoveItem(self);
};
instance Event_MassWeapon_Undraw (C_Item)
{
	Wld_RemoveItem(self);
};
instance Event_MassLookAtMe (C_Item)
{
	Wld_RemoveItem(self);
};
instance Event_MassTurnToMe (C_Item)
{
	Wld_RemoveItem(self);
};
