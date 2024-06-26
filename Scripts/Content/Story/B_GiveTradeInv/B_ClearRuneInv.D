///******************************************************************************************
/// B_ClearRuneInv
///******************************************************************************************
func void B_ClearRuneInv (var C_Npc slf) 
{
	if (!Npc_IsPlayer(slf))
	{
		Npc_RemoveInvItems (slf, ItRu_Light 			, Npc_HasItems (slf, ItRu_Light));
		Npc_RemoveInvItems (slf, ItRu_Heal 				, Npc_HasItems (slf, ItRu_Heal));
		Npc_RemoveInvItems (slf, ItRu_Telekinesis	 	, Npc_HasItems (slf, ItRu_Telekinesis));
		
		Npc_RemoveInvItems (slf, ItRu_PalBless		 	, Npc_HasItems (slf, ItRu_PalBless));
		Npc_RemoveInvItems (slf, ItRu_PalFaith			, Npc_HasItems (slf, ItRu_PalFaith));
		Npc_RemoveInvItems (slf, ItRu_PalHolyBolt 		, Npc_HasItems (slf, ItRu_PalHolyBolt));
		Npc_RemoveInvItems (slf, ItRu_PalGlory 			, Npc_HasItems (slf, ItRu_PalGlory));
		Npc_RemoveInvItems (slf, ItRu_PalRepelEvil 		, Npc_HasItems (slf, ItRu_PalRepelEvil));
		Npc_RemoveInvItems (slf, ItRu_PalJustice 		, Npc_HasItems (slf, ItRu_PalJustice));
		Npc_RemoveInvItems (slf, ItRu_PalDestroyEvil 	, Npc_HasItems (slf, ItRu_PalDestroyEvil));
		
		Npc_RemoveInvItems (slf, ItRu_Resurrection 		, Npc_HasItems (slf, ItRu_Resurrection));
		Npc_RemoveInvItems (slf, ItRu_Rage 				, Npc_HasItems (slf, ItRu_Rage));
		Npc_RemoveInvItems (slf, ItRu_Seduction 		, Npc_HasItems (slf, ItRu_Seduction));
		Npc_RemoveInvItems (slf, ItRu_NightToDay	 	, Npc_HasItems (slf, ItRu_NightToDay));
		Npc_RemoveInvItems (slf, ItRu_FireBolt 			, Npc_HasItems (slf, ItRu_FireBolt));
		
		Npc_RemoveInvItems (slf, ItRu_IceBolt 			, Npc_HasItems (slf, ItRu_IceBolt));
		Npc_RemoveInvItems (slf, ItRu_Stealth	 		, Npc_HasItems (slf, ItRu_Stealth));
		Npc_RemoveInvItems (slf, ItRu_SkullBolt 		, Npc_HasItems (slf, ItRu_SkullBolt));
		Npc_RemoveInvItems (slf, ItRu_InstantFireball	, Npc_HasItems (slf, ItRu_InstantFireball));
		Npc_RemoveInvItems (slf, ItRu_Zap 				, Npc_HasItems (slf, ItRu_Zap));
		Npc_RemoveInvItems (slf, ItRu_Slimeball 		, Npc_HasItems (slf, ItRu_Slimeball));
		Npc_RemoveInvItems (slf, ItRu_Windfist 			, Npc_HasItems (slf, ItRu_Windfist));
		Npc_RemoveInvItems (slf, ItRu_Sleep 			, Npc_HasItems (slf, ItRu_Sleep));
		Npc_RemoveInvItems (slf, ItRu_Charm	 			, Npc_HasItems (slf, ItRu_Charm));
		Npc_RemoveInvItems (slf, ItRu_LightningFlash 	, Npc_HasItems (slf, ItRu_LightningFlash));
		
		Npc_RemoveInvItems (slf, ItRu_ChargeFireball 	, Npc_HasItems (slf, ItRu_ChargeFireball));
		Npc_RemoveInvItems (slf, ItRu_Curse				, Npc_HasItems (slf, ItRu_Curse));
		Npc_RemoveInvItems (slf, ItRu_Fear 				, Npc_HasItems (slf, ItRu_Fear));
		Npc_RemoveInvItems (slf, ItRu_IceCube			, Npc_HasItems (slf, ItRu_IceCube));
		Npc_RemoveInvItems (slf, ItRu_ChargeZap 		, Npc_HasItems (slf, ItRu_ChargeZap));
		Npc_RemoveInvItems (slf, ItRu_SummonGolem 		, Npc_HasItems (slf, ItRu_SummonGolem));
		Npc_RemoveInvItems (slf, ItRu_DestroyUndead 	, Npc_HasItems (slf, ItRu_DestroyUndead));
		Npc_RemoveInvItems (slf, ItRu_Pyrokinesis 		, Npc_HasItems (slf, ItRu_Pyrokinesis));
		Npc_RemoveInvItems (slf, ItRu_FireStorm 		, Npc_HasItems (slf, ItRu_FireStorm));
		Npc_RemoveInvItems (slf, ItRu_IceWave 			, Npc_HasItems (slf, ItRu_IceWave));
		
		Npc_RemoveInvItems (slf, ItRu_SummonDemon		, Npc_HasItems (slf, ItRu_SummonDemon));
		Npc_RemoveInvItems (slf, ItRu_Explosion			, Npc_HasItems (slf, ItRu_Explosion));
		Npc_RemoveInvItems (slf, ItRu_FireRain			, Npc_HasItems (slf, ItRu_FireRain));
		Npc_RemoveInvItems (slf, ItRu_BreathOfDeath 	, Npc_HasItems (slf, ItRu_BreathOfDeath));
		Npc_RemoveInvItems (slf, ItRu_MassDeath 		, Npc_HasItems (slf, ItRu_MassDeath));
		Npc_RemoveInvItems (slf, ItRu_ArmyOfDarkness 	, Npc_HasItems (slf, ItRu_ArmyOfDarkness));
		Npc_RemoveInvItems (slf, ItRu_Shrink 			, Npc_HasItems (slf, ItRu_Shrink));
		Npc_RemoveInvItems (slf, ItRu_Tame			 	, Npc_HasItems (slf, ItRu_Tame));
		Npc_RemoveInvItems (slf, ItRu_RunicEchoes	 	, Npc_HasItems (slf, ItRu_RunicEchoes));
		Npc_RemoveInvItems (slf, ItRu_SlowTime		 	, Npc_HasItems (slf, ItRu_SlowTime));
		
		Npc_RemoveInvItems (slf, ItRu_HealingAura 		, Npc_HasItems (slf, ItRu_HealingAura));
		Npc_RemoveInvItems (slf, ItRu_StoneSkin 		, Npc_HasItems (slf, ItRu_StoneSkin));
		Npc_RemoveInvItems (slf, ItRu_AirShield 		, Npc_HasItems (slf, ItRu_AirShield));
		Npc_RemoveInvItems (slf, ItRu_FireShield 		, Npc_HasItems (slf, ItRu_FireShield));
		Npc_RemoveInvItems (slf, ItRu_DarkBarrier 		, Npc_HasItems (slf, ItRu_DarkBarrier));
		
		Npc_RemoveInvItems (slf, ItRu_BeliarRage 		, Npc_HasItems (slf, ItRu_BeliarRage));
		Npc_RemoveInvItems (slf, ItRu_MasterOfDisaster	, Npc_HasItems (slf, ItRu_MasterOfDisaster));
		
		Npc_RemoveInvItems (slf, ItRu_ConcussionSpell 	, Npc_HasItems (slf, ItRu_ConcussionSpell));
		Npc_RemoveInvItems (slf, ItRu_DeathSpell 		, Npc_HasItems (slf, ItRu_DeathSpell));
		Npc_RemoveInvItems (slf, ItRu_Dragonball 		, Npc_HasItems (slf, ItRu_Dragonball));
		Npc_RemoveInvItems (slf, ItRu_BlackDragonball 	, Npc_HasItems (slf, ItRu_BlackDragonball));
		Npc_RemoveInvItems (slf, ItRu_BlueFireball 		, Npc_HasItems (slf, ItRu_BlueFireball));
		Npc_RemoveInvItems (slf, ItRu_RedFireball 		, Npc_HasItems (slf, ItRu_RedFireball));
		
		Npc_RemoveInvItems (slf, ItRu_ThunderStorm		, Npc_HasItems (slf, ItRu_ThunderStorm));
		Npc_RemoveInvItems (slf, ItRu_Whirlwind 		, Npc_HasItems (slf, ItRu_Whirlwind));
		Npc_RemoveInvItems (slf, ItRu_WaterFist 		, Npc_HasItems (slf, ItRu_WaterFist));
		Npc_RemoveInvItems (slf, ItRu_IceLance 			, Npc_HasItems (slf, ItRu_IceLance));
		Npc_RemoveInvItems (slf, ItRu_Inflate 			, Npc_HasItems (slf, ItRu_Inflate));
		Npc_RemoveInvItems (slf, ItRu_Geyser 			, Npc_HasItems (slf, ItRu_Geyser));
		Npc_RemoveInvItems (slf, ItRu_Fireburning		, Npc_HasItems (slf, ItRu_Fireburning));
		Npc_RemoveInvItems (slf, ItRu_ChainLightning	, Npc_HasItems (slf, ItRu_ChainLightning));
		Npc_RemoveInvItems (slf, ItRu_Hurricane			, Npc_HasItems (slf, ItRu_Hurricane));
		Npc_RemoveInvItems (slf, ItRu_LightFlash		, Npc_HasItems (slf, ItRu_LightFlash));

		Npc_RemoveInvItems (slf, ItRu_Plague			, Npc_HasItems (slf, ItRu_Plague));
		Npc_RemoveInvItems (slf, ItRu_Swarm				, Npc_HasItems (slf, ItRu_Swarm));
		Npc_RemoveInvItems (slf, ItRu_GreenTentacle		, Npc_HasItems (slf, ItRu_GreenTentacle));
		Npc_RemoveInvItems (slf, ItRu_Earthquake		, Npc_HasItems (slf, ItRu_Earthquake));
		Npc_RemoveInvItems (slf, ItRu_Rock				, Npc_HasItems (slf, ItRu_Rock));
		Npc_RemoveInvItems (slf, ItRu_Mysticball		, Npc_HasItems (slf, ItRu_Mysticball));
		Npc_RemoveInvItems (slf, ItRu_SuckEnergy		, Npc_HasItems (slf, ItRu_SuckEnergy));
		Npc_RemoveInvItems (slf, ItRu_Skull				, Npc_HasItems (slf, ItRu_Skull));
		Npc_RemoveInvItems (slf, ItRu_Elevate			, Npc_HasItems (slf, ItRu_Elevate));
		Npc_RemoveInvItems (slf, ItRu_Crush				, Npc_HasItems (slf, ItRu_Crush));
		
		Npc_RemoveInvItems (slf, Fakescroll				, Npc_HasItems (slf, Fakescroll));
	};
};
