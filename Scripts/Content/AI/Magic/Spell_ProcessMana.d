///******************************************************************************************
///	Spell_ProcessMana
///******************************************************************************************
func int Spell_ProcessMana (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	/// basic spells
	if		(activeSpell == SPL_Light				)	{	return  Spell_Logic_Light				(manaInvested); }
	else if (activeSpell == SPL_Heal				)	{	return  Spell_Logic_Heal				(manaInvested); }
	
	/// PAL spells
	else if (activeSpell == SPL_PalBless			)	{	return  Spell_Logic_PalBless			(manaInvested); }
	else if (activeSpell == SPL_PalFaith			)	{	return  Spell_Logic_PalFaith			(manaInvested); }
	else if (activeSpell == SPL_PalHolyBolt			)	{	return  Spell_Logic_PalHolyBolt			(manaInvested); }
	else if (activeSpell == SPL_PalGlory			)	{	return  Spell_Logic_PalGlory			(manaInvested); }
	else if (activeSpell == SPL_PalRepelEvil		)	{	return  Spell_Logic_PalRepelEvil		(manaInvested); }
	else if (activeSpell == SPL_PalJustice			)	{	return  Spell_Logic_PalJustice			(manaInvested); }
	else if (activeSpell == SPL_PalDestroyEvil		)	{	return  Spell_Logic_PalDestroyEvil		(manaInvested); }
	
	/// npc spells
	else if (activeSpell == SPL_ConcussionBolt		)	{	return	Spell_Logic_ConcussionBolt		(manaInvested);	}
	else if (activeSpell == SPL_DeathBolt			)	{	return	Spell_Logic_DeathBolt			(manaInvested);	}
	else if (activeSpell == SPL_DragonBall			)	{	return	Spell_Logic_DragonBall			(manaInvested);	}
	else if (activeSpell == SPL_BlackDragonBall		)	{	return	Spell_Logic_BlackDragonBall		(manaInvested);	}
	else if (activeSpell == SPL_BlueFireball		)	{	return	Spell_Logic_BlueFireball		(manaInvested);	}
	else if (activeSpell == SPL_RedFireball			)	{	return	Spell_Logic_RedFireball			(manaInvested);	}
	else if (activeSpell == SPL_GreenFireball		)	{	return	Spell_Logic_GreenFireball		(manaInvested);	}
	else if (activeSpell == SPL_YellowFireball		)	{	return	Spell_Logic_YellowFireball		(manaInvested);	}
	
	/// common spells
	else if (activeSpell == SPL_NightToDay			)	{	return	Spell_Logic_NightToDay			(manaInvested);	}
	else if (activeSpell == SPL_FireBolt			)	{	return	Spell_Logic_FireBolt			(manaInvested);	}
	
	else if (activeSpell == SPL_IceBolt				)	{	return	Spell_Logic_IceBolt				(manaInvested);	}
	else if (activeSpell == SPL_IceLance			) 	{	return	Spell_Logic_IceLance			(manaInvested);	}
	else if (activeSpell == SPL_SkullBolt			)	{	return	Spell_Logic_SkullBolt			(manaInvested);	}
	else if (activeSpell == SPL_InstantFireball		)	{	return	Spell_Logic_InstantFireball		(manaInvested);	}
	else if (activeSpell == SPL_Zap					)	{	return	Spell_Logic_Zap					(manaInvested);	}
	else if (activeSpell == SPL_Whirlwind			) 	{	return	Spell_Logic_Whirlwind			(manaInvested);	}
	else if (activeSpell == SPL_WindFist			)	{	return	Spell_Logic_WindFist			(manaInvested);	}
	else if (activeSpell == SPL_Sleep				)	{	return	Spell_Logic_Sleep				(manaInvested);	}
	else if (activeSpell == SPL_Charm				)	{	return	Spell_Logic_Charm				(manaInvested);	}
	else if (activeSpell == SPL_LightningFlash		) 	{	return	Spell_Logic_LightningFlash		(manaInvested);	}
	
	else if (activeSpell == SPL_ChargeFireball		) 	{	return	Spell_Logic_ChargeFireball		(manaInvested);	}
	else if (activeSpell == SPL_Rage				)	{	return	Spell_Logic_Rage				(manaInvested);	}
	else if (activeSpell == SPL_Fear				) 	{	return	Spell_Logic_Fear				(manaInvested);	}
	else if (activeSpell == SPL_IceCube				) 	{	return	Spell_Logic_IceCube				(manaInvested);	}
	else if (activeSpell == SPL_ChargeZap			) 	{	return	Spell_Logic_ChargeZap			(manaInvested);	}
	else if (activeSpell == SPL_Geyser				) 	{	return	Spell_Logic_Geyser				(manaInvested);	}
	else if (activeSpell == SPL_DestroyUndead		) 	{	return	Spell_Logic_DestroyUndead		(manaInvested);	}
	else if (activeSpell == SPL_Pyrokinesis			) 	{	return	Spell_Logic_Pyrokinesis			(manaInvested);	}
	else if (activeSpell == SPL_Firestorm			) 	{	return	Spell_Logic_Firestorm			(manaInvested);	}
	else if (activeSpell == SPL_IceWave				) 	{	return	Spell_Logic_IceWave				(manaInvested);	}
	
	else if (activeSpell == SPL_WaterFist			) 	{	return	Spell_Logic_WaterFist			(manaInvested);	}
	else if (activeSpell == SPL_Thunderstorm		) 	{	return	Spell_Logic_Thunderstorm		(manaInvested);	}
	else if (activeSpell == SPL_Firerain			) 	{	return	Spell_Logic_Firerain			(manaInvested);	}
	else if (activeSpell == SPL_BreathOfDeath		)	{	return	Spell_Logic_BreathOfDeath		(manaInvested);	}
	else if (activeSpell == SPL_MassDeath			)	{	return	Spell_Logic_MassDeath			(manaInvested);	}
	else if (activeSpell == SPL_SlowTime			)	{	return	Spell_Logic_SlowTime			(manaInvested);	}
	else if (activeSpell == SPL_Shrink				)	{	return	Spell_Logic_Shrink				(manaInvested);	}
	else if (activeSpell == SPL_Telekinesis			)	{	return	Spell_Logic_Telekinesis			(manaInvested);	}
	else if (activeSpell == SPL_Inflate				)	{	return	Spell_Logic_Inflate				(manaInvested);	}
	
	else if (activeSpell == SPL_GreenTentacle		)	{	return	Spell_Logic_GreenTentacle		(manaInvested);	}
	else if (activeSpell == SPL_SuckEnergy			)	{	return	Spell_Logic_SuckEnergy			(manaInvested);	}
	else if (activeSpell == SPL_EnergyBall			)	{	return	Spell_Logic_EnergyBall			(manaInvested);	}
	else if (activeSpell == SPL_Swarm				)	{	return	Spell_Logic_Swarm				(manaInvested);	}
	else if (activeSpell == SPL_Skull				)	{	return	Spell_Logic_Skull				(manaInvested);	}
	
	/// special spells
	else if (activeSpell == SPL_MasterOfDisaster	)	{	return	Spell_Logic_MasterOfDisaster	(manaInvested);	}
	else if (activeSpell == SPL_BeliarRage			)	{	return	Spell_Logic_BeliarRage			(manaInvested);	}
	
	else if (activeSpell == SPL_Teleport			)	{	return	Spell_Logic_Teleport			(manaInvested);	}
	else if (activeSpell == SPL_Transform			)	{	return	Spell_Logic_Transform			(manaInvested);	}
	else if (activeSpell == SPL_Summon				)	{	return	Spell_Logic_Summon				(manaInvested);	}
	
	///	MYS spells
	else if (activeSpell == SPL_MysBall				)	{	return	Spell_Logic_MysBall				(manaInvested);	}
	else if (activeSpell == SPL_MysAura				)	{	return	Spell_Logic_MysAura				(manaInvested);	}
	else if (activeSpell == SPL_MysRoot				)	{	return	Spell_Logic_MysRoot				(manaInvested);	}
	else if (activeSpell == SPL_MysTame				)	{	return	Spell_Logic_MysTame				(manaInvested);	}
	else if (activeSpell == SPL_MysEcho				)	{	return	Spell_Logic_MysEcho				(manaInvested);	}
	else if (activeSpell == SPL_MysSlow				)	{	return	Spell_Logic_MysSlow				(manaInvested);	}
	
	///	GEO spells
	else if (activeSpell == SPL_GeoStone			)	{	return	Spell_Logic_GeoStone			(manaInvested);	}
	else if (activeSpell == SPL_GeoAura				)	{	return	Spell_Logic_GeoAura				(manaInvested);	}
	else if (activeSpell == SPL_GeoElevate			)	{	return	Spell_Logic_GeoElevate			(manaInvested);	}
	else if (activeSpell == SPL_GeoGolem   			) 	{	return	Spell_Logic_GeoGolem			(manaInvested);	}
	else if (activeSpell == SPL_GeoQuake			)	{	return	Spell_Logic_GeoQuake			(manaInvested);	}
	else if (activeSpell == SPL_GeoCollapse				)	{	return	Spell_Logic_GeoCollapse				(manaInvested);	}
	
	///	ELE spells
	else if (activeSpell == SPL_EleLance			)	{	return	Spell_Logic_EleLance			(manaInvested);	}
	else if (activeSpell == SPL_EleAura				)	{	return	Spell_Logic_EleAura				(manaInvested);	}
	else if (activeSpell == SPL_EleFreeze    		) 	{	return	Spell_Logic_EleFreeze			(manaInvested);	}
	else if (activeSpell == SPL_EleHurricane		)	{	return	Spell_Logic_EleHurricane		(manaInvested);	}
	else if (activeSpell == SPL_EleLightning      	) 	{	return	Spell_Logic_EleLightning		(manaInvested);	}
	else if (activeSpell == SPL_EleThunderstorm		)	{	return	Spell_Logic_EleThunderstorm		(manaInvested);	}
	
	///	PYR spells
	else if (activeSpell == SPL_PyrFireball			)	{	return	Spell_Logic_PyrFireball			(manaInvested);	}
	else if (activeSpell == SPL_PyrAura				)	{	return	Spell_Logic_PyrAura				(manaInvested);	}
	else if (activeSpell == SPL_PyrBurning			)	{	return	Spell_Logic_PyrBurning			(manaInvested);	}
	else if (activeSpell == SPL_PyrFirebomb			)	{	return	Spell_Logic_PyrFirebomb			(manaInvested);	}
	else if (activeSpell == SPL_PyrExplosion		)	{	return	Spell_Logic_PyrExplosion		(manaInvested);	}
	else if (activeSpell == SPL_PyrFirerain			)	{	return	Spell_Logic_PyrFirerain			(manaInvested);	}
	
	///	NEC spells
	else if (activeSpell == SPL_NecLifesteal		)	{	return	Spell_Logic_NecLifesteal		(manaInvested);	}
	else if (activeSpell == SPL_NecAura				)	{	return	Spell_Logic_NecAura				(manaInvested);	}
	else if (activeSpell == SPL_NecCurse		    ) 	{	return	Spell_Logic_NecCurse			(manaInvested);	}
	else if (activeSpell == SPL_NecPlague			)	{	return	Spell_Logic_NecPlague			(manaInvested);	}
	else if (activeSpell == SPL_NecDemon			)	{	return	Spell_Logic_NecDemon			(manaInvested);	}
	else if (activeSpell == SPL_NecDeath			)	{	return	Spell_Logic_NecDeath			(manaInvested);	};
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
	else if (activeSpell == SPL_Pyrokinesis			)	{	return SPL_SENDCAST;	}
	
	/// GEO spells
	else if (activeSpell == SPL_GeoElevate			)	{	Spell_PreCast_GeoElevate(self); return SPL_SENDCAST;	};
	
	return SPL_SENDSTOP;
};
