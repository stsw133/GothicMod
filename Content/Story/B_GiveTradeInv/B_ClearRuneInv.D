//******************************************************************************************
func void B_ClearRuneInv (var C_NPC slf)
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);

	if (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(her))
	{
		Npc_RemoveInvItems	(slf, ItRu_Heal,				Npc_HasItems (slf, ItRu_Heal));
		Npc_RemoveInvItems	(slf, ItRu_Light,				Npc_HasItems (slf, ItRu_Light));
		
		Npc_RemoveInvItems	(slf, ItRu_PalLight,			Npc_HasItems (slf, ItRu_PalLight));
		Npc_RemoveInvItems	(slf, ItRu_PalRemana,			Npc_HasItems (slf, ItRu_PalRemana));
		Npc_RemoveInvItems	(slf, ItRu_PalHolyBolt,			Npc_HasItems (slf, ItRu_PalHolyBolt));
		Npc_RemoveInvItems	(slf, ItRu_PalBless,			Npc_HasItems (slf, ItRu_PalBless));
		Npc_RemoveInvItems	(slf, ItRu_PalDestroyEvil,		Npc_HasItems (slf, ItRu_PalDestroyEvil));
		
		Npc_RemoveInvItems	(slf, ItRu_Teleport,			Npc_HasItems (slf, ItRu_Teleport));
		Npc_RemoveInvItems	(slf, ItRu_Telekinesis,			Npc_HasItems (slf, ItRu_Telekinesis));
		Npc_RemoveInvItems	(slf, ItRu_Transform,			Npc_HasItems (slf, ItRu_Transform));
		Npc_RemoveInvItems	(slf, ItRu_Summon,				Npc_HasItems (slf, ItRu_Summon));
		Npc_RemoveInvItems	(slf, ItRu_SlowTime,			Npc_HasItems (slf, ItRu_SlowTime));
		
		Npc_RemoveInvItems	(slf, ItRu_Sleep,				Npc_HasItems (slf, ItRu_Sleep));
		Npc_RemoveInvItems	(slf, ItRu_MassSleep,			Npc_HasItems (slf, ItRu_MassSleep));
		Npc_RemoveInvItems	(slf, ItRu_Fear,				Npc_HasItems (slf, ItRu_Fear));
		Npc_RemoveInvItems	(slf, ItRu_MassFear,			Npc_HasItems (slf, ItRu_MassFear));
		Npc_RemoveInvItems	(slf, ItRu_Rage,				Npc_HasItems (slf, ItRu_Rage));
		Npc_RemoveInvItems	(slf, ItRu_MassRage,			Npc_HasItems (slf, ItRu_MassRage));
		Npc_RemoveInvItems	(slf, ItRu_Shrink,				Npc_HasItems (slf, ItRu_Shrink));
		Npc_RemoveInvItems	(slf, ItRu_Charm,				Npc_HasItems (slf, ItRu_Charm));
		
		Npc_RemoveInvItems	(slf, ItRu_DeathBolt,			Npc_HasItems (slf, ItRu_DeathBolt));
		Npc_RemoveInvItems	(slf, ItRu_ConcussionBolt,		Npc_HasItems (slf, ItRu_ConcussionBolt));
		Npc_RemoveInvItems	(slf, ItRu_SkeletonSpell,		Npc_HasItems (slf, ItRu_SkeletonSpell));
		Npc_RemoveInvItems	(slf, ItRu_GolemSpell,			Npc_HasItems (slf, ItRu_GolemSpell));
		Npc_RemoveInvItems	(slf, ItRu_OrcSpell,			Npc_HasItems (slf, ItRu_OrcSpell));
		Npc_RemoveInvItems	(slf, ItRu_DementorSpell,		Npc_HasItems (slf, ItRu_DementorSpell));
		Npc_RemoveInvItems	(slf, ItRu_DemasterSpell,		Npc_HasItems (slf, ItRu_DemasterSpell));
		Npc_RemoveInvItems	(slf, ItRu_DragonBall,			Npc_HasItems (slf, ItRu_DragonBall));
		
		Npc_RemoveInvItems	(slf, ItRu_MasterOfDisaster,	Npc_HasItems (slf, ItRu_MasterOfDisaster));
		Npc_RemoveInvItems	(slf, ItRu_BeliarRage,			Npc_HasItems (slf, ItRu_BeliarRage));
		
		Npc_RemoveInvItems	(slf, ItRu_MysBolt,			Npc_HasItems (slf, ItRu_MysBolt));
		Npc_RemoveInvItems	(slf, ItRu_MysGhost,			Npc_HasItems (slf, ItRu_MysGhost));
		Npc_RemoveInvItems	(slf, ItRu_MysRoot,			Npc_HasItems (slf, ItRu_MysRoot));
		Npc_RemoveInvItems	(slf, ItRu_MysDomination,			Npc_HasItems (slf, ItRu_MysDomination));
		Npc_RemoveInvItems	(slf, ItRu_MysEchoes,			Npc_HasItems (slf, ItRu_MysEchoes));

		Npc_RemoveInvItems	(slf, ItRu_GeoStone,			Npc_HasItems (slf, ItRu_GeoStone));
		Npc_RemoveInvItems	(slf, ItRu_GeoSkin,			Npc_HasItems (slf, ItRu_GeoSkin));
		Npc_RemoveInvItems	(slf, ItRu_GeoElevate,				Npc_HasItems (slf, ItRu_GeoElevate));
		Npc_RemoveInvItems	(slf, ItRu_GeoGolem,			Npc_HasItems (slf, ItRu_GeoGolem));
		Npc_RemoveInvItems	(slf, ItRu_GeoQuake,				Npc_HasItems (slf, ItRu_GeoQuake));
/*
		Npc_RemoveInvItems	(slf, ItRu_Ele1,				Npc_HasItems (slf, ItRu_Ele1));
		Npc_RemoveInvItems	(slf, ItRu_Ele2,				Npc_HasItems (slf, ItRu_Ele2));
		Npc_RemoveInvItems	(slf, ItRu_Ele3,				Npc_HasItems (slf, ItRu_Ele3));
		Npc_RemoveInvItems	(slf, ItRu_Ele4,				Npc_HasItems (slf, ItRu_Ele4));
		Npc_RemoveInvItems	(slf, ItRu_Ele5,				Npc_HasItems (slf, ItRu_Ele5));

		Npc_RemoveInvItems	(slf, ItRu_Pyr1,				Npc_HasItems (slf, ItRu_Pyr1));
		Npc_RemoveInvItems	(slf, ItRu_Pyr2,				Npc_HasItems (slf, ItRu_Pyr2));
		Npc_RemoveInvItems	(slf, ItRu_Pyr3,				Npc_HasItems (slf, ItRu_Pyr3));
		Npc_RemoveInvItems	(slf, ItRu_Pyr4,				Npc_HasItems (slf, ItRu_Pyr4));
		Npc_RemoveInvItems	(slf, ItRu_Pyr5,				Npc_HasItems (slf, ItRu_Pyr5));

		Npc_RemoveInvItems	(slf, ItRu_Nec1,				Npc_HasItems (slf, ItRu_Nec1));
		Npc_RemoveInvItems	(slf, ItRu_Nec2,				Npc_HasItems (slf, ItRu_Nec2));
		Npc_RemoveInvItems	(slf, ItRu_Nec3,				Npc_HasItems (slf, ItRu_Nec3));
		Npc_RemoveInvItems	(slf, ItRu_Nec4,				Npc_HasItems (slf, ItRu_Nec4));
		Npc_RemoveInvItems	(slf, ItRu_Nec5,				Npc_HasItems (slf, ItRu_Nec5));

		Npc_RemoveInvItems	(slf, ItRu_Lum1,				Npc_HasItems (slf, ItRu_Lum1));
		Npc_RemoveInvItems	(slf, ItRu_Lum2,				Npc_HasItems (slf, ItRu_Lum2));
		Npc_RemoveInvItems	(slf, ItRu_Lum3,				Npc_HasItems (slf, ItRu_Lum3));
		Npc_RemoveInvItems	(slf, ItRu_Lum4,				Npc_HasItems (slf, ItRu_Lum4));
		Npc_RemoveInvItems	(slf, ItRu_Lum5,				Npc_HasItems (slf, ItRu_Lum5));
		*/
		Npc_RemoveInvItems	(slf, ItRu_cB_Fireball,			Npc_HasItems (slf, ItRu_cB_Fireball));
		Npc_RemoveInvItems	(slf, ItRu_cR_Fireball,			Npc_HasItems (slf, ItRu_cR_Fireball));
		Npc_RemoveInvItems	(slf, ItRu_cG_Fireball,			Npc_HasItems (slf, ItRu_cG_Fireball));
		Npc_RemoveInvItems	(slf, ItRu_cY_Fireball,			Npc_HasItems (slf, ItRu_cY_Fireball));
		
		Npc_RemoveInvItems	(slf, Fakescroll,				Npc_HasItems (slf, Fakescroll));
//		Npc_RemoveInvItems	(slf, ItMw_1H_Bau_Mace,			Npc_HasItems (slf, ItMw_1H_Bau_Mace));
	};
};
