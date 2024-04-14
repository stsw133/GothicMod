///******************************************************************************************
///	Spell_ProcessMana
///******************************************************************************************
func int Spell_ProcessMana (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	/// basic spells
	if		(activeSpell == SPL_Light				)	{	return  Spell_Logic_Light				(manaInvested); }
	else if (activeSpell == SPL_Heal				)	{	return  Spell_Logic_Heal				(manaInvested); }
	else if (activeSpell == SPL_Telekinesis			)	{	return	Spell_Logic_Telekinesis			(manaInvested);	}
	
	/// PAL spells
	else if (activeSpell == SPL_PalBless			)	{	return  Spell_Logic_PalBless			(manaInvested); }
	else if (activeSpell == SPL_PalFaith			)	{	return  Spell_Logic_PalFaith			(manaInvested); }
	else if (activeSpell == SPL_PalHolyBolt			)	{	return  Spell_Logic_PalHolyBolt			(manaInvested); }
	else if (activeSpell == SPL_PalGlory			)	{	return  Spell_Logic_PalGlory			(manaInvested); }
	else if (activeSpell == SPL_PalRepelEvil		)	{	return  Spell_Logic_PalRepelEvil		(manaInvested); }
	else if (activeSpell == SPL_PalJustice			)	{	return  Spell_Logic_PalJustice			(manaInvested); }
	else if (activeSpell == SPL_PalDestroyEvil		)	{	return  Spell_Logic_PalDestroyEvil		(manaInvested); }
	
	/// common spells
	else if (activeSpell == SPL_Resurrection		)	{	return	Spell_Logic_Resurrection		(manaInvested);	}
	else if (activeSpell == SPL_Rage				)	{	return	Spell_Logic_Rage				(manaInvested);	}
	else if (activeSpell == SPL_Seduction			)	{	return	Spell_Logic_Seduction			(manaInvested);	}
	else if (activeSpell == SPL_NightToDay			)	{	return	Spell_Logic_NightToDay			(manaInvested);	}
	else if (activeSpell == SPL_FireBolt			)	{	return	Spell_Logic_FireBolt			(manaInvested);	}
	
	else if (activeSpell == SPL_IceBolt				)	{	return	Spell_Logic_IceBolt				(manaInvested);	}
	else if (activeSpell == SPL_Stealth				) 	{	return	Spell_Logic_Stealth				(manaInvested);	}
	else if (activeSpell == SPL_SkullBolt			)	{	return	Spell_Logic_SkullBolt			(manaInvested);	}
	else if (activeSpell == SPL_InstantFireball		)	{	return	Spell_Logic_InstantFireball		(manaInvested);	}
	else if (activeSpell == SPL_Zap					)	{	return	Spell_Logic_Zap					(manaInvested);	}
	else if (activeSpell == SPL_Slimeball			)	{	return	Spell_Logic_Slimeball			(manaInvested);	}
	else if (activeSpell == SPL_WindFist			)	{	return	Spell_Logic_WindFist			(manaInvested);	}
	else if (activeSpell == SPL_Sleep				)	{	return	Spell_Logic_Sleep				(manaInvested);	}
	else if (activeSpell == SPL_Charm				)	{	return	Spell_Logic_Charm				(manaInvested);	}
	else if (activeSpell == SPL_LightningFlash		) 	{	return	Spell_Logic_LightningFlash		(manaInvested);	}
	
	else if (activeSpell == SPL_ChargeFireball		) 	{	return	Spell_Logic_ChargeFireball		(manaInvested);	}
	else if (activeSpell == SPL_Curse				) 	{	return	Spell_Logic_Curse				(manaInvested);	}
	else if (activeSpell == SPL_Fear				) 	{	return	Spell_Logic_Fear				(manaInvested);	}
	else if (activeSpell == SPL_IceCube				) 	{	return	Spell_Logic_IceCube				(manaInvested);	}
	else if (activeSpell == SPL_ChargeZap			) 	{	return	Spell_Logic_ChargeZap			(manaInvested);	}
	else if (activeSpell == SPL_SummonGolem			) 	{	return	Spell_Logic_SummonGolem			(manaInvested);	}
	else if (activeSpell == SPL_DestroyUndead		) 	{	return	Spell_Logic_DestroyUndead		(manaInvested);	}
	else if (activeSpell == SPL_Pyrokinesis			) 	{	return	Spell_Logic_Pyrokinesis			(manaInvested);	}
	else if (activeSpell == SPL_Firestorm			) 	{	return	Spell_Logic_Firestorm			(manaInvested);	}
	else if (activeSpell == SPL_IceWave				) 	{	return	Spell_Logic_IceWave				(manaInvested);	}
	
	else if (activeSpell == SPL_SummonDemon			) 	{	return	Spell_Logic_SummonDemon			(manaInvested);	}
	else if (activeSpell == SPL_Explosion			) 	{	return	Spell_Logic_Explosion			(manaInvested);	}
	else if (activeSpell == SPL_Firerain			) 	{	return	Spell_Logic_Firerain			(manaInvested);	}
	else if (activeSpell == SPL_BreathOfDeath		)	{	return	Spell_Logic_BreathOfDeath		(manaInvested);	}
	else if (activeSpell == SPL_MassDeath			)	{	return	Spell_Logic_MassDeath			(manaInvested);	}
	else if (activeSpell == SPL_ArmyOfDarkness		)	{	return	Spell_Logic_ArmyOfDarkness		(manaInvested);	}
	else if (activeSpell == SPL_Shrink				)	{	return	Spell_Logic_Shrink				(manaInvested);	}
	else if (activeSpell == SPL_Tame				)	{	return	Spell_Logic_Tame				(manaInvested);	}
	else if (activeSpell == SPL_RunicEchoes			)	{	return	Spell_Logic_RunicEchoes			(manaInvested);	}
	else if (activeSpell == SPL_SlowTime			)	{	return	Spell_Logic_SlowTime			(manaInvested);	}
	
	else if (activeSpell == SPL_HealingAura			)	{	return	Spell_Logic_HealingAura			(manaInvested);	}
	else if (activeSpell == SPL_StoneSkin			)	{	return	Spell_Logic_StoneSkin			(manaInvested);	}
	else if (activeSpell == SPL_AirShield			)	{	return	Spell_Logic_AirShield			(manaInvested);	}
	else if (activeSpell == SPL_FireShield			)	{	return	Spell_Logic_FireShield			(manaInvested);	}
	else if (activeSpell == SPL_DarkBarrier			)	{	return	Spell_Logic_DarkBarrier			(manaInvested);	}
	
	/// player spells
	else if (activeSpell == SPL_BeliarRage			)	{	return	Spell_Logic_BeliarRage			(manaInvested);	}
	else if (activeSpell == SPL_MasterOfDisaster	)	{	return	Spell_Logic_MasterOfDisaster	(manaInvested);	}
	
	/// special spells
	else if (activeSpell == SPL_Teleport			)	{	return	Spell_Logic_Teleport			(manaInvested);	}
	else if (activeSpell == SPL_Transform			)	{	return	Spell_Logic_Transform			(manaInvested);	}
	else if (activeSpell == SPL_Summon				)	{	return	Spell_Logic_Summon				(manaInvested);	}
	
	/// npc spells
	else if (activeSpell == SPL_ConcussionSpell		)	{	return	Spell_Logic_ConcussionSpell		(manaInvested);	}
	else if (activeSpell == SPL_DeathSpell			)	{	return	Spell_Logic_DeathSpell			(manaInvested);	}
	else if (activeSpell == SPL_DragonBall			)	{	return	Spell_Logic_DragonBall			(manaInvested);	}
	else if (activeSpell == SPL_BlackDragonBall		)	{	return	Spell_Logic_BlackDragonBall		(manaInvested);	}
	else if (activeSpell == SPL_BlueFireball		)	{	return	Spell_Logic_BlueFireball		(manaInvested);	}
	else if (activeSpell == SPL_RedFireball			)	{	return	Spell_Logic_RedFireball			(manaInvested);	}
	
	/// common spells
	else if (activeSpell == SPL_Thunderstorm		) 	{	return	Spell_Logic_Thunderstorm		(manaInvested);	}
	else if (activeSpell == SPL_Whirlwind			) 	{	return	Spell_Logic_Whirlwind			(manaInvested);	}
	else if (activeSpell == SPL_WaterFist			) 	{	return	Spell_Logic_WaterFist			(manaInvested);	}
	else if (activeSpell == SPL_IceLance			) 	{	return	Spell_Logic_IceLance			(manaInvested);	}
	else if (activeSpell == SPL_Inflate				)	{	return	Spell_Logic_Inflate				(manaInvested);	}
	else if (activeSpell == SPL_Geyser				) 	{	return	Spell_Logic_Geyser				(manaInvested);	}
	else if (activeSpell == SPL_Fireburning			) 	{	return	Spell_Logic_Fireburning			(manaInvested);	}
	else if (activeSpell == SPL_ChainLightning		) 	{	return	Spell_Logic_ChainLightning		(manaInvested);	}
	else if (activeSpell == SPL_Hurricane			) 	{	return	Spell_Logic_Hurricane			(manaInvested);	}
	else if (activeSpell == SPL_LightFlash			) 	{	return	Spell_Logic_LightFlash			(manaInvested);	}
	
	else if (activeSpell == SPL_Plague				)	{	return	Spell_Logic_Plague				(manaInvested);	}
	else if (activeSpell == SPL_Swarm				)	{	return	Spell_Logic_Swarm				(manaInvested);	}
	else if (activeSpell == SPL_GreenTentacle		)	{	return	Spell_Logic_GreenTentacle		(manaInvested);	}
	else if (activeSpell == SPL_Earthquake			)	{	return	Spell_Logic_Earthquake			(manaInvested);	}
	else if (activeSpell == SPL_Rock				)	{	return	Spell_Logic_Rock				(manaInvested);	}
	else if (activeSpell == SPL_Mysticball			)	{	return	Spell_Logic_Mysticball			(manaInvested);	}
	else if (activeSpell == SPL_SuckEnergy			)	{	return	Spell_Logic_SuckEnergy			(manaInvested);	}
	else if (activeSpell == SPL_Skull				)	{	return	Spell_Logic_Skull				(manaInvested);	}
	else if (activeSpell == SPL_Elevate				)	{	return	Spell_Logic_Elevate				(manaInvested);	}
	else if (activeSpell == SPL_Crush				)	{	return	Spell_Logic_Crush				(manaInvested);	};
};

///******************************************************************************************
///	Spell_ProcessMana_Release
///******************************************************************************************
func int Spell_ProcessMana_Release (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	/// common spells
	if		(activeSpell == SPL_WindFist		)	{	return SPL_SENDCAST;	}
	else if	(activeSpell == SPL_ChargeFireball	)	{	return SPL_SENDCAST;	}
	else if	(activeSpell == SPL_ChargeZap		)	{	return SPL_SENDCAST;	}
	else if	(activeSpell == SPL_Pyrokinesis		)	{	return SPL_SENDCAST;	}
	else if	(activeSpell == SPL_Elevate			)	{	Spell_PreCast_Elevate(self); return SPL_SENDCAST;	};
	
	return SPL_SENDSTOP;
};
