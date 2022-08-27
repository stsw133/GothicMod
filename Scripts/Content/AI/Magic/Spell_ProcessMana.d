///******************************************************************************************
///	Spell_ProcessMana
///******************************************************************************************
func int Spell_ProcessMana (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	/// common spells
	if		(activeSpell == SPL_nLight				)	{	return  Spell_Logic_nLight				(manaInvested); }
	else if (activeSpell == SPL_nHeal				)	{	return  Spell_Logic_nHeal				(manaInvested); }
	
	else if (activeSpell == SPL_SlowTime			)	{	return	Spell_Logic_SlowTime			(manaInvested);	}
	else if (activeSpell == SPL_NightToDay			)	{	return	Spell_Logic_NightToDay			(manaInvested);	}
	else if (activeSpell == SPL_Telekinesis			)	{	return	Spell_Logic_Telekinesis			(manaInvested);	}
	
	else if (activeSpell == SPL_FireBolt			)	{	return	Spell_Logic_FireBolt			(manaInvested);	}
	else if (activeSpell == SPL_IceBolt				)	{	return	Spell_Logic_IceBolt				(manaInvested);	}
	else if (activeSpell == SPL_Zap					)	{	return	Spell_Logic_Zap					(manaInvested);	}
	else if (activeSpell == SPL_SkullBolt			)	{	return	Spell_Logic_SkullBolt			(manaInvested);	}
	else if (activeSpell == SPL_WindFist			)	{	return	Spell_Logic_WindFist			(manaInvested);	}
	else if (activeSpell == SPL_Sleep				)	{	return	Spell_Logic_Sleep				(manaInvested);	}
	else if (activeSpell == SPL_Charm				)	{	return	Spell_Logic_Charm				(manaInvested);	}
	else if (activeSpell == SPL_LightningFlash		) 	{	return	Spell_Logic_LightningFlash		(manaInvested);	}
	
	else if (activeSpell == SPL_ChargeFireball		) 	{	return	Spell_Logic_ChargeFireball		(manaInvested);	}
	else if (activeSpell == SPL_Whirlwind			) 	{	return	Spell_Logic_Whirlwind			(manaInvested);	}
	else if (activeSpell == SPL_Fear				) 	{	return	Spell_Logic_Fear				(manaInvested);	}
	else if (activeSpell == SPL_Rage				)	{	return	Spell_Logic_Rage				(manaInvested);	}
	else if (activeSpell == SPL_ChargeZap			) 	{	return	Spell_Logic_ChargeZap			(manaInvested);	}
	else if (activeSpell == SPL_Geyser				) 	{	return	Spell_Logic_Geyser				(manaInvested);	}
	else if (activeSpell == SPL_WaterFist			) 	{	return	Spell_Logic_WaterFist			(manaInvested);	}
	else if (activeSpell == SPL_Pyrokinesis			) 	{	return	Spell_Logic_Pyrokinesis			(manaInvested);	}
	else if (activeSpell == SPL_IceLance			) 	{	return	Spell_Logic_IceLance			(manaInvested);	}
	else if (activeSpell == SPL_IceWave				) 	{	return	Spell_Logic_IceWave				(manaInvested);	}
	
	else if (activeSpell == SPL_Inflate				)	{	return	Spell_Logic_Inflate				(manaInvested);	}
	else if (activeSpell == SPL_DragonBall			)	{	return	Spell_Logic_DragonBall			(manaInvested);	}
	else if (activeSpell == SPL_BlackDragonBall		)	{	return	Spell_Logic_BlackDragonBall		(manaInvested);	}
	else if (activeSpell == SPL_BreathOfDeath		)	{	return	Spell_Logic_BreathOfDeath		(manaInvested);	}
	else if (activeSpell == SPL_MassDeath			)	{	return	Spell_Logic_MassDeath			(manaInvested);	}
	else if (activeSpell == SPL_ArmyOfDarkness		)	{	return	Spell_Logic_ArmyOfDarkness		(manaInvested);	}
	else if (activeSpell == SPL_Shrink				)	{	return	Spell_Logic_Shrink				(manaInvested);	}
	
	/// special spells
	else if (activeSpell == SPL_Teleport			)	{	return	Spell_Logic_Teleport			(manaInvested);	}
	else if (activeSpell == SPL_Transform			)	{	return	Spell_Logic_Transform			(manaInvested);	}
	else if (activeSpell == SPL_Summon				)	{	return	Spell_Logic_Summon				(manaInvested);	}
	
	else if (activeSpell == SPL_MasterOfDisaster	)	{	return	Spell_Logic_MasterOfDisaster	(manaInvested);	}
	else if (activeSpell == SPL_BeliarRage			)	{	return	Spell_Logic_BeliarRage			(manaInvested);	}
	
	/// npc spells
	else if (activeSpell == SPL_ConcussionBolt		)	{	return	Spell_Logic_ConcussionBolt		(manaInvested);	}
	else if (activeSpell == SPL_DeathBolt			)	{	return	Spell_Logic_DeathBolt			(manaInvested);	}
	else if (activeSpell == SPL_BlueFireball		)	{	return	Spell_Logic_BlueFireball		(manaInvested);	}
	else if (activeSpell == SPL_RedFireball			)	{	return	Spell_Logic_RedFireball			(manaInvested);	}
	else if (activeSpell == SPL_GreenFireball		)	{	return	Spell_Logic_GreenFireball		(manaInvested);	}
	else if (activeSpell == SPL_YellowFireball		)	{	return	Spell_Logic_YellowFireball		(manaInvested);	}
	
	///	MYS spells
	else if (activeSpell == SPL_MysBolt				)	{	return	Spell_Logic_MysBolt				(manaInvested);	}
	else if (activeSpell == SPL_MysProtection		)	{	return	Spell_Logic_MysProtection		(manaInvested);	}
	else if (activeSpell == SPL_MysRoot				)	{	return	Spell_Logic_MysRoot				(manaInvested);	}
	else if (activeSpell == SPL_MysTame				)	{	return	Spell_Logic_MysTame				(manaInvested);	}
	else if (activeSpell == SPL_MysAura				)	{	return	Spell_Logic_MysAura				(manaInvested);	}
	else if (activeSpell == SPL_MysEchoes			)	{	return	Spell_Logic_MysEchoes			(manaInvested);	}
	
	///	GEO spells
	else if (activeSpell == SPL_GeoStone			)	{	return	Spell_Logic_GeoStone			(manaInvested);	}
	else if (activeSpell == SPL_GeoProtection		)	{	return	Spell_Logic_GeoProtection		(manaInvested);	}
	else if (activeSpell == SPL_GeoElevate			)	{	return	Spell_Logic_GeoElevate			(manaInvested);	}
	else if (activeSpell == SPL_GeoGolem   			) 	{	return	Spell_Logic_GeoGolem			(manaInvested);	}
	else if (activeSpell == SPL_GeoExplosion		)	{	return	Spell_Logic_GeoExplosion		(manaInvested);	}
	else if (activeSpell == SPL_GeoWall				)	{	return	Spell_Logic_GeoWall				(manaInvested);	}
	
	///	ELE spells
	else if (activeSpell == SPL_EleLightning		)	{	return	Spell_Logic_EleLightning		(manaInvested);	}
	else if (activeSpell == SPL_EleProtection		)	{	return	Spell_Logic_EleProtection		(manaInvested);	}
	else if (activeSpell == SPL_EleFreeze    		) 	{	return	Spell_Logic_EleFreeze			(manaInvested);	}
	else if (activeSpell == SPL_EleHurricane		)	{	return	Spell_Logic_EleHurricane		(manaInvested);	}
	else if (activeSpell == SPL_EleKinesis      	) 	{	return	Spell_Logic_EleKinesis			(manaInvested);	}
	else if (activeSpell == SPL_EleThunderstorm		)	{	return	Spell_Logic_EleThunderstorm		(manaInvested);	}
	
	///	PYR spells
	else if (activeSpell == SPL_PyrFireball			)	{	return	Spell_Logic_PyrFireball			(manaInvested);	}
	else if (activeSpell == SPL_PyrProtection		)	{	return	Spell_Logic_PyrProtection		(manaInvested);	}
	else if (activeSpell == SPL_PyrFirestorm		)	{	return	Spell_Logic_PyrFirestorm		(manaInvested);	}
	else if (activeSpell == SPL_PyrKinesis			)	{	return	Spell_Logic_PyrKinesis			(manaInvested);	}
	else if (activeSpell == SPL_PyrExplosion		)	{	return	Spell_Logic_PyrExplosion		(manaInvested);	}
	else if (activeSpell == SPL_PyrFirerain			)	{	return	Spell_Logic_PyrFirerain			(manaInvested);	}
	
	///	NEC spells
	else if (activeSpell == SPL_NecLifesteal		)	{	return	Spell_Logic_NecLifesteal		(manaInvested);	}
	else if (activeSpell == SPL_NecProtection		)	{	return	Spell_Logic_NecProtection		(manaInvested);	}
	else if (activeSpell == SPL_NecSkeleton		    ) 	{	return	Spell_Logic_NecSkeleton			(manaInvested);	}
	else if (activeSpell == SPL_NecSwarm			)	{	return	Spell_Logic_NecSwarm			(manaInvested);	}
	else if (activeSpell == SPL_NecDemon			)	{	return	Spell_Logic_NecDemon			(manaInvested);	}
	else if (activeSpell == SPL_NecDeath			)	{	return	Spell_Logic_NecDeath			(manaInvested);	}
	
	/// PAL spells
	else if (activeSpell == SPL_PalBless			)	{	return  Spell_Logic_PalBless			(manaInvested); }
	else if (activeSpell == SPL_PalHeal				)	{	return  Spell_Logic_PalHeal				(manaInvested); }
	else if (activeSpell == SPL_PalHolyBolt			)	{	return  Spell_Logic_PalHolyBolt			(manaInvested); }
	else if (activeSpell == SPL_PalJustice			)	{	return  Spell_Logic_PalJustice			(manaInvested); }
	else if (activeSpell == SPL_PalDestroyEvil		)	{	return  Spell_Logic_PalDestroyEvil		(manaInvested); };
};

///******************************************************************************************
///	Spell_ProcessMana_Release
///******************************************************************************************
func int Spell_ProcessMana_Release (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	/// common spells
	if		(activeSpell == SPL_WindFist			)	{	return SPL_SENDCAST;	}
	else if (activeSpell == SPL_ChargeFireball		)	{	return SPL_SENDCAST;	}
	else if (activeSpell == SPL_ChargeZap			)	{	return SPL_SENDCAST;	}
	else if (activeSpell == SPL_Pyrokinesis			)	{	return SPL_SENDCAST;	};
	
	return SPL_SENDSTOP;
};
