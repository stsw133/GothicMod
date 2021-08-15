///******************************************************************************************
func void B_ClearRuneInv (var C_NPC slf) 
{
	var C_NPC her; her = Hlp_GetNpc(PC_Hero);
	
	if (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(her))
	{
		Npc_RemoveInvItems	(slf, ItRu_Light 			, Npc_HasItems (slf, ItRu_Light));
		Npc_RemoveInvItems	(slf, ItRu_Heal 			, Npc_HasItems (slf, ItRu_Heal));
		
		Npc_RemoveInvItems	(slf, ItRu_PalBless		 	, Npc_HasItems (slf, ItRu_PalBless));
		Npc_RemoveInvItems	(slf, ItRu_PalHeal 			, Npc_HasItems (slf, ItRu_PalHeal));
		Npc_RemoveInvItems	(slf, ItRu_PalHolyBolt 		, Npc_HasItems (slf, ItRu_PalHolyBolt));
		Npc_RemoveInvItems	(slf, ItRu_PalJustice 		, Npc_HasItems (slf, ItRu_PalJustice));
		Npc_RemoveInvItems	(slf, ItRu_PalDestroyEvil 	, Npc_HasItems (slf, ItRu_PalDestroyEvil));
		
		Npc_RemoveInvItems	(slf, ItRu_SlowTime		 	, Npc_HasItems (slf, ItRu_SlowTime));
		Npc_RemoveInvItems	(slf, ItRu_NightToDay	 	, Npc_HasItems (slf, ItRu_NightToDay));
		Npc_RemoveInvItems	(slf, ItRu_Telekinesis	 	, Npc_HasItems (slf, ItRu_Telekinesis));
		
		Npc_RemoveInvItems	(slf, ItRu_FireBolt 		, Npc_HasItems (slf, ItRu_FireBolt));
		Npc_RemoveInvItems	(slf, ItRu_IceBolt 			, Npc_HasItems (slf, ItRu_IceBolt));
		Npc_RemoveInvItems	(slf, ItRu_Zap 				, Npc_HasItems (slf, ItRu_Zap));
		Npc_RemoveInvItems	(slf, ItRu_Charm	 		, Npc_HasItems (slf, ItRu_Charm));
		Npc_RemoveInvItems	(slf, ItRu_Windfist 		, Npc_HasItems (slf, ItRu_Windfist));
		Npc_RemoveInvItems	(slf, ItRu_Sleep 			, Npc_HasItems (slf, ItRu_Sleep));
		Npc_RemoveInvItems	(slf, ItRu_MassSleep 		, Npc_HasItems (slf, ItRu_MassSleep));
		Npc_RemoveInvItems	(slf, ItRu_LightningFlash 	, Npc_HasItems (slf, ItRu_LightningFlash));
		
		Npc_RemoveInvItems	(slf, ItRu_ChargeFireball 	, Npc_HasItems (slf, ItRu_ChargeFireball));
		Npc_RemoveInvItems	(slf, ItRu_Whirlwind 		, Npc_HasItems (slf, ItRu_Whirlwind));
		Npc_RemoveInvItems	(slf, ItRu_Fear 			, Npc_HasItems (slf, ItRu_Fear));
		Npc_RemoveInvItems	(slf, ItRu_MassFear 		, Npc_HasItems (slf, ItRu_MassFear));
		Npc_RemoveInvItems	(slf, ItRu_ChargeZap 		, Npc_HasItems (slf, ItRu_ChargeZap));
		Npc_RemoveInvItems	(slf, ItRu_EarthQuake 		, Npc_HasItems (slf, ItRu_EarthQuake));
		Npc_RemoveInvItems	(slf, ItRu_Geyser 			, Npc_HasItems (slf, ItRu_Geyser));
		Npc_RemoveInvItems	(slf, ItRu_WaterFist 		, Npc_HasItems (slf, ItRu_WaterFist));
		Npc_RemoveInvItems	(slf, ItRu_IceLance 		, Npc_HasItems (slf, ItRu_IceLance));
		Npc_RemoveInvItems	(slf, ItRu_IceWave 			, Npc_HasItems (slf, ItRu_IceWave));
		
		Npc_RemoveInvItems	(slf, ItRu_Inflate 			, Npc_HasItems (slf, ItRu_Inflate));
		Npc_RemoveInvItems	(slf, ItRu_Rage 			, Npc_HasItems (slf, ItRu_Rage));
		Npc_RemoveInvItems	(slf, ItRu_MassRage 		, Npc_HasItems (slf, ItRu_MassRage));
		Npc_RemoveInvItems	(slf, ItRu_BreathOfDeath 	, Npc_HasItems (slf, ItRu_BreathOfDeath));
		Npc_RemoveInvItems	(slf, ItRu_MassDeath 		, Npc_HasItems (slf, ItRu_MassDeath));
		Npc_RemoveInvItems	(slf, ItRu_ArmyOfDarkness 	, Npc_HasItems (slf, ItRu_ArmyOfDarkness));
		Npc_RemoveInvItems	(slf, ItRu_Shrink 			, Npc_HasItems (slf, ItRu_Shrink));
		
		Npc_RemoveInvItems	(slf, ItRu_ConcussionBolt	, Npc_HasItems (slf, ItRu_ConcussionBolt));
		Npc_RemoveInvItems	(slf, ItRu_DeathBolt		, Npc_HasItems (slf, ItRu_DeathBolt));
		Npc_RemoveInvItems	(slf, ItRu_PoisonBolt		, Npc_HasItems (slf, ItRu_PoisonBolt));
		Npc_RemoveInvItems	(slf, ItRu_SkullBolt		, Npc_HasItems (slf, ItRu_SkullBolt));
		Npc_RemoveInvItems	(slf, ItRu_BloodFireball	, Npc_HasItems (slf, ItRu_BloodFireball));
		Npc_RemoveInvItems	(slf, ItRu_DragonBall		, Npc_HasItems (slf, ItRu_DragonBall));
		Npc_RemoveInvItems	(slf, ItRu_BlackDragonBall	, Npc_HasItems (slf, ItRu_BlackDragonBall));
		
		Npc_RemoveInvItems	(slf, ItRu_MysBolt			, Npc_HasItems (slf, ItRu_MysBolt));
		Npc_RemoveInvItems	(slf, ItRu_MysProtection	, Npc_HasItems (slf, ItRu_MysProtection));
		Npc_RemoveInvItems	(slf, ItRu_MysRoot			, Npc_HasItems (slf, ItRu_MysRoot));
		Npc_RemoveInvItems	(slf, ItRu_MysTame			, Npc_HasItems (slf, ItRu_MysTame));
		Npc_RemoveInvItems	(slf, ItRu_MysAura			, Npc_HasItems (slf, ItRu_MysAura));
		Npc_RemoveInvItems	(slf, ItRu_MysEchoes		, Npc_HasItems (slf, ItRu_MysEchoes));
		
		Npc_RemoveInvItems	(slf, ItRu_GeoStone			, Npc_HasItems (slf, ItRu_GeoStone));
		Npc_RemoveInvItems	(slf, ItRu_GeoProtection	, Npc_HasItems (slf, ItRu_GeoProtection));
		Npc_RemoveInvItems	(slf, ItRu_GeoElevate		, Npc_HasItems (slf, ItRu_GeoElevate));
		Npc_RemoveInvItems	(slf, ItRu_GeoGolem			, Npc_HasItems (slf, ItRu_GeoGolem));
		Npc_RemoveInvItems	(slf, ItRu_GeoExplosion		, Npc_HasItems (slf, ItRu_GeoExplosion));
		Npc_RemoveInvItems	(slf, ItRu_GeoWall			, Npc_HasItems (slf, ItRu_GeoWall));
		
		Npc_RemoveInvItems	(slf, ItRu_EleLightning		, Npc_HasItems (slf, ItRu_EleLightning));
		Npc_RemoveInvItems	(slf, ItRu_EleProtection	, Npc_HasItems (slf, ItRu_EleProtection));
		Npc_RemoveInvItems	(slf, ItRu_EleFreeze		, Npc_HasItems (slf, ItRu_EleFreeze));
		Npc_RemoveInvItems	(slf, ItRu_EleHurricane		, Npc_HasItems (slf, ItRu_EleHurricane));
		Npc_RemoveInvItems	(slf, ItRu_EleKinesis		, Npc_HasItems (slf, ItRu_EleKinesis));
		Npc_RemoveInvItems	(slf, ItRu_EleThunderstorm	, Npc_HasItems (slf, ItRu_EleThunderstorm));
		
		Npc_RemoveInvItems	(slf, ItRu_PyrFireball		, Npc_HasItems (slf, ItRu_PyrFireball));
		Npc_RemoveInvItems	(slf, ItRu_PyrProtection	, Npc_HasItems (slf, ItRu_PyrProtection));
		Npc_RemoveInvItems	(slf, ItRu_PyrFirestorm		, Npc_HasItems (slf, ItRu_PyrFirestorm));
		Npc_RemoveInvItems	(slf, ItRu_PyrKinesis		, Npc_HasItems (slf, ItRu_PyrKinesis));
		Npc_RemoveInvItems	(slf, ItRu_PyrExplosion		, Npc_HasItems (slf, ItRu_PyrExplosion));
		Npc_RemoveInvItems	(slf, ItRu_PyrFirerain		, Npc_HasItems (slf, ItRu_PyrFirerain));
		
		Npc_RemoveInvItems	(slf, ItRu_NecLifesteal		, Npc_HasItems (slf, ItRu_NecLifesteal));
		Npc_RemoveInvItems	(slf, ItRu_NecProtection	, Npc_HasItems (slf, ItRu_NecProtection));
		Npc_RemoveInvItems	(slf, ItRu_NecSkeleton		, Npc_HasItems (slf, ItRu_NecSkeleton));
		Npc_RemoveInvItems	(slf, ItRu_NecSwarm			, Npc_HasItems (slf, ItRu_NecSwarm));
		Npc_RemoveInvItems	(slf, ItRu_NecDemon			, Npc_HasItems (slf, ItRu_NecDemon));
		Npc_RemoveInvItems	(slf, ItRu_NecDeath			, Npc_HasItems (slf, ItRu_NecDeath));
		
		Npc_RemoveInvItems	(slf, Fakescroll			, Npc_HasItems (slf, Fakescroll));
	};
};
