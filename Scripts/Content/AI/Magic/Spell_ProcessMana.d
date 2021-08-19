///******************************************************************************************
///	Spell_ProcessMana
///******************************************************************************************
func int Spell_ProcessMana (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	/// standard spells
	if (activeSpell == SPL_nLight				)	{	return  Spell_Logic_nLight				(manaInvested); };
	if (activeSpell == SPL_nHeal				)	{	return  Spell_Logic_nHeal				(manaInvested); };
	
	/// PAL spells
	if (activeSpell == SPL_PalBless				)	{	return  Spell_Logic_PalBless			(manaInvested); };
	if (activeSpell == SPL_PalHeal				)	{	return  Spell_Logic_PalHeal				(manaInvested); };
	if (activeSpell == SPL_PalHolyBolt			)	{	return  Spell_Logic_PalHolyBolt			(manaInvested); };
	if (activeSpell == SPL_PalJustice			)	{	return  Spell_Logic_PalJustice			(manaInvested); };
	if (activeSpell == SPL_PalDestroyEvil		)	{	return  Spell_Logic_PalDestroyEvil		(manaInvested); };
	
	/// common spells
	if (activeSpell == SPL_SlowTime				)	{	return	Spell_Logic_SlowTime			(manaInvested);	};
	if (activeSpell == SPL_NightToDay			)	{	return	Spell_Logic_NightToDay			(manaInvested);	};
	if (activeSpell == SPL_Telekinesis			)	{	return	Spell_Logic_Telekinesis			(manaInvested);	};
	
	if (activeSpell == SPL_FireBolt				)	{	return	Spell_Logic_FireBolt			(manaInvested);	};
	if (activeSpell == SPL_IceBolt				)	{	return	Spell_Logic_IceBolt				(manaInvested);	};
	if (activeSpell == SPL_Zap					)	{	return	Spell_Logic_Zap					(manaInvested);	};
	if (activeSpell == SPL_Charm				)	{	return	Spell_Logic_Charm				(manaInvested);	};
	if (activeSpell == SPL_WindFist				)	{	return	Spell_Logic_WindFist			(manaInvested);	};
	if (activeSpell == SPL_Sleep				)	{	return	Spell_Logic_Sleep				(manaInvested);	};
	if (activeSpell == SPL_MassSleep			)	{	return	Spell_Logic_MassSleep			(manaInvested);	};
	if (activeSpell == SPL_LightningFlash		) 	{	return	Spell_Logic_LightningFlash		(manaInvested);	};
	
	if (activeSpell == SPL_ChargeFireball		) 	{	return	Spell_Logic_ChargeFireball		(manaInvested);	};
	if (activeSpell == SPL_Whirlwind			) 	{	return	Spell_Logic_Whirlwind			(manaInvested);	};
	if (activeSpell == SPL_Fear					) 	{	return	Spell_Logic_Fear				(manaInvested);	};
	if (activeSpell == SPL_MassFear				) 	{	return	Spell_Logic_MassFear			(manaInvested);	};
	if (activeSpell == SPL_ChargeZap			) 	{	return	Spell_Logic_ChargeZap			(manaInvested);	};
	if (activeSpell == SPL_EarthQuake			) 	{	return	Spell_Logic_EarthQuake			(manaInvested);	};
	if (activeSpell == SPL_Geyser				) 	{	return	Spell_Logic_Geyser				(manaInvested);	};
	if (activeSpell == SPL_WaterFist			) 	{	return	Spell_Logic_WaterFist			(manaInvested);	};
	if (activeSpell == SPL_IceLance				) 	{	return	Spell_Logic_IceLance			(manaInvested);	};
	if (activeSpell == SPL_IceWave				) 	{	return	Spell_Logic_IceWave				(manaInvested);	};
	
	if (activeSpell == SPL_Inflate				)	{	return	Spell_Logic_Inflate				(manaInvested);	};
	if (activeSpell == SPL_Rage					)	{	return	Spell_Logic_Rage				(manaInvested);	};
	if (activeSpell == SPL_MassRage				)	{	return	Spell_Logic_MassRage			(manaInvested);	};
	if (activeSpell == SPL_BreathOfDeath		)	{	return	Spell_Logic_BreathOfDeath		(manaInvested);	};
	if (activeSpell == SPL_MassDeath			)	{	return	Spell_Logic_MassDeath			(manaInvested);	};
	if (activeSpell == SPL_ArmyOfDarkness		)	{	return	Spell_Logic_ArmyOfDarkness		(manaInvested);	};
	if (activeSpell == SPL_Shrink				)	{	return	Spell_Logic_Shrink				(manaInvested);	};
	
	/// special spells
	if (activeSpell == SPL_Teleport				)	{	return	Spell_Logic_Teleport			(manaInvested);	};
	if (activeSpell == SPL_Transform			)	{	return	Spell_Logic_Transform			(manaInvested);	};
	if (activeSpell == SPL_Summon				)	{	return	Spell_Logic_Summon				(manaInvested);	};
	
	if (activeSpell == SPL_MasterOfDisaster		)	{	return	Spell_Logic_MasterOfDisaster	(manaInvested);	};
	if (activeSpell == SPL_BeliarRage			)	{	return	Spell_Logic_BeliarRage			(manaInvested);	};
	
	/// npc spells
	if (activeSpell == SPL_ConcussionBolt		)	{	return	Spell_Logic_ConcussionBolt		(manaInvested);	};
	if (activeSpell == SPL_DeathBolt			)	{	return	Spell_Logic_DeathBolt			(manaInvested);	};
	
	/// common spells
	if (activeSpell == SPL_PoisonBolt			)	{	return	Spell_Logic_PoisonBolt			(manaInvested);	};
	if (activeSpell == SPL_SkullBolt			)	{	return	Spell_Logic_SkullBolt			(manaInvested);	};
	if (activeSpell == SPL_BloodFireball		)	{	return	Spell_Logic_BloodFireball		(manaInvested);	};
	if (activeSpell == SPL_DragonBall			)	{	return	Spell_Logic_DragonBall			(manaInvested);	};
	if (activeSpell == SPL_BlackDragonBall		)	{	return	Spell_Logic_BlackDragonBall		(manaInvested);	};
	
	///	MYS & GEO & ELE & PYR & NEC spells
	if (activeSpell == SPL_MysBolt				)	{	return	Spell_Logic_MysBolt				(manaInvested);	};
	if (activeSpell == SPL_MysProtection		)	{	return	Spell_Logic_MysProtection		(manaInvested);	};
	if (activeSpell == SPL_MysRoot				)	{	return	Spell_Logic_MysRoot				(manaInvested);	};
	if (activeSpell == SPL_MysTame				)	{	return	Spell_Logic_MysTame				(manaInvested);	};
	if (activeSpell == SPL_MysAura				)	{	return	Spell_Logic_MysAura				(manaInvested);	};
	if (activeSpell == SPL_MysEchoes			)	{	return	Spell_Logic_MysEchoes			(manaInvested);	};
	
	if (activeSpell == SPL_GeoStone				)	{	return	Spell_Logic_GeoStone			(manaInvested);	};
	if (activeSpell == SPL_GeoProtection		)	{	return	Spell_Logic_GeoProtection		(manaInvested);	};
	if (activeSpell == SPL_GeoElevate			)	{	return	Spell_Logic_GeoElevate			(manaInvested);	};
	if (activeSpell == SPL_GeoGolem   			) 	{	return	Spell_Logic_GeoGolem			(manaInvested);	};
	if (activeSpell == SPL_GeoExplosion			)	{	return	Spell_Logic_GeoExplosion		(manaInvested);	};
	if (activeSpell == SPL_GeoWall				)	{	return	Spell_Logic_GeoWall				(manaInvested);	};
	
	if (activeSpell == SPL_EleLightning			)	{	return	Spell_Logic_EleLightning		(manaInvested);	};
	if (activeSpell == SPL_EleProtection		)	{	return	Spell_Logic_EleProtection		(manaInvested);	};
	if (activeSpell == SPL_EleFreeze    		) 	{	return	Spell_Logic_EleFreeze			(manaInvested);	};
	if (activeSpell == SPL_EleHurricane			)	{	return	Spell_Logic_EleHurricane		(manaInvested);	};
	if (activeSpell == SPL_EleKinesis      		) 	{	return	Spell_Logic_EleKinesis			(manaInvested);	};
	if (activeSpell == SPL_EleThunderstorm		)	{	return	Spell_Logic_EleThunderstorm		(manaInvested);	};
	
	if (activeSpell == SPL_PyrFireball			)	{	return	Spell_Logic_PyrFireball			(manaInvested);	};
	if (activeSpell == SPL_PyrProtection		)	{	return	Spell_Logic_PyrProtection		(manaInvested);	};
	if (activeSpell == SPL_PyrFirestorm			)	{	return	Spell_Logic_PyrFirestorm		(manaInvested);	};
	if (activeSpell == SPL_PyrKinesis			)	{	return	Spell_Logic_PyrKinesis			(manaInvested);	};
	if (activeSpell == SPL_PyrExplosion			)	{	return	Spell_Logic_PyrExplosion		(manaInvested);	};
	if (activeSpell == SPL_PyrFirerain			)	{	return	Spell_Logic_PyrFirerain			(manaInvested);	};
	
	if (activeSpell == SPL_NecLifesteal			)	{	return	Spell_Logic_NecLifesteal		(manaInvested);	};
	if (activeSpell == SPL_NecProtection		)	{	return	Spell_Logic_NecProtection		(manaInvested);	};
	if (activeSpell == SPL_NecSkeleton		    ) 	{	return	Spell_Logic_NecSkeleton			(manaInvested);	};
	if (activeSpell == SPL_NecSwarm				)	{	return	Spell_Logic_NecSwarm			(manaInvested);	};
	if (activeSpell == SPL_NecDemon				)	{	return	Spell_Logic_NecDemon			(manaInvested);	};
	if (activeSpell == SPL_NecDeath				)	{	return	Spell_Logic_NecDeath			(manaInvested);	};
	
	/// ...
	if (activeSpell == SPL_cB_Fireball			)	{	return	Spell_Logic_cB_Fireball			(manaInvested);	};
	if (activeSpell == SPL_cR_Fireball			)	{	return	Spell_Logic_cR_Fireball			(manaInvested);	};
	if (activeSpell == SPL_cG_Fireball			)	{	return	Spell_Logic_cG_Fireball			(manaInvested);	};
	if (activeSpell == SPL_cY_Fireball			)	{	return	Spell_Logic_cY_Fireball			(manaInvested);	};
	if (activeSpell == SPL_cP_Fireball			)	{	return	Spell_Logic_cP_Fireball			(manaInvested);	};
};


///******************************************************************************************
///	Spell_ProcessMana_Release
///******************************************************************************************
func int Spell_ProcessMana_Release (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	/// common spells
//	if (activeSpell == SPL_Pyrokinesis			)	{	return SPL_SENDCAST;	};
	if (activeSpell == SPL_ChargeFireball		)	{	return SPL_SENDCAST;	};
	if (activeSpell == SPL_ChargeZap			)	{	return SPL_SENDCAST;	};
	if (activeSpell == SPL_WindFist				)	{	return SPL_SENDCAST;	};
	
	return SPL_SENDSTOP;
};
