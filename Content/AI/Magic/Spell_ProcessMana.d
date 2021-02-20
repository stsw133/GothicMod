///******************************************************************************************
///	Spell_ProcessMana
///******************************************************************************************
func int Spell_ProcessMana (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
	if (activeSpell == SPL_nLight				)	{	return  Spell_Logic_nLight				(manaInvested); };
	if (activeSpell == SPL_nHeal				)	{	return  Spell_Logic_nHeal				(manaInvested); };
	
	if (activeSpell == SPL_PalLight				)	{	return  Spell_Logic_PalLight			(manaInvested); };
	if (activeSpell == SPL_PalRemana			)	{	return  Spell_Logic_PalRemana			(manaInvested); };
	if (activeSpell == SPL_PalHolyBolt			)	{	return	Spell_Logic_PalHolyBolt			(manaInvested);	};
	if (activeSpell == SPL_PalBless				)	{	return	Spell_Logic_PalBless			(manaInvested);	};
	if (activeSpell == SPL_PalDestroyEvil		)	{	return	Spell_Logic_PalDestroyEvil		(manaInvested);	};
	
	if (activeSpell == SPL_Teleport				)	{	return	Spell_Logic_Teleport			(manaInvested);	};
	if (activeSpell == SPL_Telekinesis			)	{	return	Spell_Logic_Telekinesis			(manaInvested);	};
	if (activeSpell == SPL_Transform			)	{	return	Spell_Logic_Transform			(manaInvested);	};
	if (activeSpell == SPL_Summon				)	{	return	Spell_Logic_Summon				(manaInvested);	};
	if (activeSpell == SPL_SlowTime				)	{	return	Spell_Logic_SlowTime			(manaInvested);	};
	
	if (activeSpell == SPL_Sleep				)	{	return	Spell_Logic_Sleep				(manaInvested);	};
	if (activeSpell == SPL_MassSleep			)	{	return	Spell_Logic_MassSleep			(manaInvested);	};
	if (activeSpell == SPL_Fear					)	{	return	Spell_Logic_Fear				(manaInvested);	};
	if (activeSpell == SPL_MassFear				)	{	return	Spell_Logic_MassFear			(manaInvested);	};
	if (activeSpell == SPL_Rage					)	{	return	Spell_Logic_Rage				(manaInvested);	};
	if (activeSpell == SPL_MassRage				)	{	return	Spell_Logic_MassRage			(manaInvested);	};
	if (activeSpell == SPL_Shrink				)	{	return	Spell_Logic_Shrink				(manaInvested);	};
	if (activeSpell == SPL_Domination			)	{	return	Spell_Logic_Domination			(manaInvested);	};
	if (activeSpell == SPL_Charm				)	{	return	Spell_Logic_Charm				(manaInvested);	};
	
	if (activeSpell == SPL_DeathBolt			)	{	return	Spell_Logic_DeathBolt			(manaInvested);	};
	if (activeSpell == SPL_ConcussionBolt		)	{	return	Spell_Logic_ConcussionBolt		(manaInvested);	};
	if (activeSpell == SPL_SkeletonSpell		)	{	return	Spell_Logic_SkeletonSpell		(manaInvested);	};
	if (activeSpell == SPL_GolemSpell			)	{	return	Spell_Logic_GolemSpell			(manaInvested);	};
	if (activeSpell == SPL_OrcSpell				)	{	return	Spell_Logic_OrcSpell			(manaInvested);	};
	if (activeSpell == SPL_DementorSpell		)	{	return	Spell_Logic_DementorSpell		(manaInvested);	};
	if (activeSpell == SPL_DemasterSpell		)	{	return	Spell_Logic_DemasterSpell		(manaInvested);	};
	if (activeSpell == SPL_DragonBall			)	{	return	Spell_Logic_DragonBall			(manaInvested);	};
	
	if (activeSpell == SPL_MasterOfDisaster		)	{	return	Spell_Logic_MasterOfDisaster	(manaInvested);	};
//	if (activeSpell == SPL_EnergyBall			)	{	return	Spell_Logic_EnergyBall			(manaInvested);	};
	
	if (activeSpell == SPL_MysBolt				)	{	return	Spell_Logic_MysBolt				(manaInvested);	};
	if (activeSpell == SPL_MysGhost				)	{	return	Spell_Logic_MysGhost			(manaInvested);	};
	if (activeSpell == SPL_MysRoot				)	{	return	Spell_Logic_MysRoot				(manaInvested);	};
	if (activeSpell == SPL_MysDomination		)	{	return	Spell_Logic_MysDomination		(manaInvested);	};
	if (activeSpell == SPL_MysEchoes			)	{	return	Spell_Logic_MysEchoes			(manaInvested);	};
	
	if (activeSpell == SPL_GeoStone				)	{	return	Spell_Logic_GeoStone			(manaInvested);	};
	if (activeSpell == SPL_GeoSkin				)	{	return	Spell_Logic_GeoSkin				(manaInvested);	};
	if (activeSpell == SPL_GeoElevate			)	{	return	Spell_Logic_GeoElevate			(manaInvested);	};
	if (activeSpell == SPL_GeoGolem   			) 	{	return	Spell_Logic_GeoGolem			(manaInvested);	};
	if (activeSpell == SPL_GeoQuake				)	{	return	Spell_Logic_GeoQuake			(manaInvested);	};
	
//	if (activeSpell == SPL_IceBolt				)	{	return	Spell_Logic_IceBolt				(manaInvested);	};
//	if (activeSpell == SPL_AirShield			)	{	return	Spell_Logic_AirShield			(manaInvested);	};
//	if (activeSpell == SPL_IceCube	    		) 	{	return	Spell_Logic_IceCube				(manaInvested);	};
//	if (activeSpell == SPL_WindFist				)	{	return	Spell_Logic_WindFist			(manaInvested);	};
//	if (activeSpell == SPL_IceWave        		) 	{	return	Spell_Logic_IceWave				(manaInvested);	};
//	if (activeSpell == SPL_Tornado				)	{	return	Spell_Logic_Tornado				(manaInvested);	};
	
//	if (activeSpell == SPL_BigFireball			)	{	return	Spell_Logic_BigFireball			(manaInvested);	};
//	if (activeSpell == SPL_FireShield			)	{	return	Spell_Logic_FireShield			(manaInvested);	};
//	if (activeSpell == SPL_DragonFire			)	{	return	Spell_Logic_DragonFire			(manaInvested);	};
//	if (activeSpell == SPL_Explosion			)	{	return	Spell_Logic_Explosion			(manaInvested);	};
	
//	if (activeSpell == SPL_LifeSteal			)	{	return	Spell_Logic_LifeSteal			(manaInvested);	};
//	if (activeSpell == SPL_DarkShield			)	{	return	Spell_Logic_DarkShield			(manaInvested);	};
//	if (activeSpell == SPL_SummonSkeleton	    ) 	{	return	Spell_Logic_SummonSkeleton		(manaInvested);	};
//	if (activeSpell == SPL_DemonicRift			)	{	return	Spell_Logic_DemonicRift			(manaInvested);	};
//	if (activeSpell == SPL_InstantDeath			)	{	return	Spell_Logic_InstantDeath		(manaInvested);	};
	
//	if (activeSpell == SPL_ChainLightning		)	{	return	Spell_Logic_ChainLightning		(manaInvested);	};
//	if (activeSpell == SPL_LightningShield		)	{	return	Spell_Logic_LightningShield		(manaInvested);	};
//	if (activeSpell == SPL_LightningWhip		)	{	return	Spell_Logic_LightningWhip		(manaInvested);	};
//	if (activeSpell == SPL_LightningField		)	{	return	Spell_Logic_LightningField		(manaInvested);	};
//	if (activeSpell == SPL_LightningStorm		)	{	return	Spell_Logic_LightningStorm		(manaInvested);	};
	
	if (activeSpell == SPL_cB_Fireball			)	{	return	Spell_Logic_cB_Fireball			(manaInvested);	};
	if (activeSpell == SPL_cR_Fireball			)	{	return	Spell_Logic_cR_Fireball			(manaInvested);	};
	if (activeSpell == SPL_cG_Fireball			)	{	return	Spell_Logic_cG_Fireball			(manaInvested);	};
	if (activeSpell == SPL_cY_Fireball			)	{	return	Spell_Logic_cY_Fireball			(manaInvested);	};
};

///******************************************************************************************
///	Spell_ProcessMana_Release
///******************************************************************************************
func int Spell_ProcessMana_Release (var int manaInvested)
{
	var int activeSpell; activeSpell = Npc_GetActiveSpell(self);
	
//	if (activeSpell == SPL_GeoElevate			)	{	Spell_PreCast_GeoElevate(self);	return  SPL_SENDCAST;	};
	
//	if (activeSpell == SPL_Pyrokinesis			)	{	return	SPL_SENDCAST;	};
//	if (activeSpell == SPL_ChargeFireball		)	{	return	SPL_SENDCAST;	};
//	if (activeSpell == SPL_ChargeZap			)	{	return	SPL_SENDCAST;	};
//	if (activeSpell == SPL_WindFist				)	{	return	SPL_SENDCAST;	};
	
	return SPL_SENDSTOP;
};
