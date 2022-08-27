///******************************************************************************************
///	B_AssessMagic
///******************************************************************************************
func int C_CanNpcCollideWithSpell (var int spellType)
{
	/// SPL_PalHolyBolt
	if (spellType == SPL_PalHolyBolt)
	{
		if (C_NpcIsEvil(self))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	}
	/// SPL_PalDestroyEvil
	else if (spellType == SPL_PalDestroyEvil)
	{
		if (C_NpcIsUndead(self))
		{
			if (self.attribute[ATR_HITPOINTS_MAX] <= SPL_Damage_PalDestroyEvil)
			{
				return COLL_DOEVERYTHING;
			}
			else
			{
				return COLL_APPLYHALVEDAMAGE;
			};
		};
		
		return COLL_DONOTHING;
	}
	/// SPL_FireBolt
	else if (spellType == SPL_FireBolt)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_FireBolt, SPL_Scaling_FireBolt, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_FireBolt, SPL_Scaling_FireBolt, 0);
		return COLL_DOEVERYTHING;
	}
	/// SPL_IceBolt
	else if (spellType == SPL_IceBolt)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_IceBolt, SPL_Scaling_IceBolt, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_IceBolt, SPL_Scaling_IceBolt, 0);
		return COLL_DOEVERYTHING;
	}
	/// SPL_Zap
	else if (spellType == SPL_Zap)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE|COLL_DONTKILL, SPL_Damage_Zap, SPL_Scaling_Zap, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING|COLL_DONTKILL, SPL_Damage_Zap, SPL_Scaling_Zap, 0);
		return COLL_DOEVERYTHING;
	}
	/// SPL_SkullBolt
	else if (spellType == SPL_SkullBolt)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_SkullBolt, SPL_Scaling_SkullBolt, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_SkullBolt, SPL_Scaling_SkullBolt, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ WindFist ------
	else if (spellType == SPL_WindFist)
	{
		if (Npc_GetDistToNpc(other, self) >= 1000)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	}
	/// ------ LightningFlash ------
	else if (spellType == SPL_LightningFlash)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;	
		};
		
		if (C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDOUBLEDAMAGE, SPL_Damage_LightningFlash, SPL_Scaling_LightningFlash, 0);
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_LightningFlash, SPL_Scaling_LightningFlash, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ ChargeFireball ------
	else if (spellType == SPL_ChargeFireball)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_ChargeFireball, SPL_Scaling_ChargeFireball, other.aivar[AIV_SpellLevel]);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_ChargeFireball, SPL_Scaling_ChargeFireball, other.aivar[AIV_SpellLevel]);
		return COLL_DOEVERYTHING;
	}
	/// ------ Whirlwind ------
	else if (spellType == SPL_Whirlwind)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_ICEGOLEM) || (self.guild == GIL_FIREGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_STONEGUARDIAN)
		|| (self.flags == NPC_FLAG_IMMORTAL)
		|| (self.guild == GIL_SHADOWBEAST)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsGateGuard(self))
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_Whirlwind, SPL_Scaling_Whirlwind, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_Whirlwind, SPL_Scaling_Whirlwind, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ Fear ------
	else if (spellType  == SPL_Fear)	
	{
		if (self.guild != GIL_FIREGOLEM) && (self.guild != GIL_ICEGOLEM) && (self.guild != GIL_STONEGOLEM) && (self.guild != GIL_SUMMONED_GOLEM)
		&& (self.guild != GIL_SWAMPSHARK)
		&& (self.guild != GIL_TROLL)
		&& (!C_NpcIsEvil(self))
		&& (!C_NpcIsGateGuard(self))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	}
	/// ------ ChargeZap ------
	else if (spellType == SPL_ChargeZap)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;
		};
		
		B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE|COLL_DONTKILL, SPL_Damage_ChargeZap, SPL_Scaling_ChargeZap, other.aivar[AIV_SpellLevel]);
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
	}
	/// ------ Geyser ------
	else if (spellType == SPL_Geyser)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_ICEGOLEM) || (self.guild == GIL_FIREGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_STONEGUARDIAN)
		{
			return COLL_DONOTHING;
		};
		
		B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE|COLL_DONTKILL, SPL_Damage_Geyser, SPL_Scaling_Geyser, 0);
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
	}
	/// ------ WaterFist ------
	else if (spellType == SPL_WaterFist)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE|COLL_DONTKILL, SPL_Damage_WaterFist, SPL_Scaling_WaterFist, 0);
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
	}
	/// ------ Pyrokinesis ------
	else if (spellType == SPL_Pyrokinesis)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_Pyrokinesis, SPL_Scaling_Pyrokinesis, other.aivar[AIV_SpellLevel]);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_Pyrokinesis, SPL_Scaling_Pyrokinesis, other.aivar[AIV_SpellLevel]);
		return COLL_DOEVERYTHING;
	}
	/// ------ IceLance ------
	else if (spellType == SPL_IceLance)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_IceLance, SPL_Scaling_IceLance, 0);
		return COLL_APPLYDAMAGE;
	}
	/// ------ IceWave ------
	else if (spellType == SPL_IceWave)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_IceWave, SPL_Scaling_IceWave, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_IceWave, SPL_Scaling_IceWave, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ DragonBall ------
	else if (spellType == SPL_DragonBall)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_DragonBall, SPL_Scaling_DragonBall, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_DragonBall, SPL_Scaling_DragonBall, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ BlackDragonBall ------
	else if (spellType == SPL_DragonBall)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_BlackDragonBall, SPL_Scaling_BlackDragonBall, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_BlackDragonBall, SPL_Scaling_BlackDragonBall, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ BreathOfDeath ------
	else if (spellType == SPL_BreathOfDeath)
	{
		if (Npc_GetDistToNpc(other, self) < 1000)
		&& (!C_NpcIsUndead(self))
		{
			B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_BreathOfDeath, SPL_Scaling_BreathOfDeath, 0);
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	}
	/// ------ MassDeath ------
	else if (spellType == SPL_MassDeath)
	{
		if (!C_NpcIsUndead(self))
		{
			B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_MassDeath, SPL_Scaling_MassDeath, 0);
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	}
	/// ------ Shrink ------
	else if (spellType == SPL_Shrink)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	}
	/// ------ MasterOfDisaster ------
	else if (spellType == SPL_MasterOfDisaster)
	{
		if (!C_NpcIsDown(self) && !C_BodyStateContains(self, BS_SWIM) && !C_BodyStateContains(self, BS_DIVE))
		&& (C_NpcIsEvil(self))
		{
			B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_MasterOfDisaster, SPL_Scaling_MasterOfDisaster, 0);
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	}
	/// ------ BeliarRage ------
	else if (spellType == SPL_BeliarRage)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsUndead(self))
		{
			B_MagicDamageNpc (other, self, COLL_APPLYHALVEDAMAGE, (SPL_Damage_BeliarRage+BeliarWeapon_LastUpgradeLvl)/2, (SPL_Scaling_BeliarRage+BeliarWeapon_LastUpgradeLvl*2)/2, 0);
			return COLL_APPLYHALVEDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_BeliarRage+BeliarWeapon_LastUpgradeLvl, SPL_Scaling_BeliarRage+BeliarWeapon_LastUpgradeLvl*2, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ ConcussionBolt ------
	else if (spellType == SPL_ConcussionBolt)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;
		};
		
		B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE|COLL_DONTKILL, SPL_Damage_ConcussionBolt, SPL_Scaling_ConcussionBolt, 0);
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
	}
	/// ------ DeathBolt ------
	else if (spellType == SPL_DeathBolt)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_STONEGOLEM) || (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON) || (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			B_MagicDamageNpc (other, self, COLL_APPLYDAMAGE, SPL_Damage_DeathBolt, SPL_Scaling_DeathBolt, 0);
			return COLL_APPLYDAMAGE;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_DeathBolt, SPL_Scaling_DeathBolt, 0);
		return COLL_DOEVERYTHING;
	}
	/// ------ cSpells ------
	else if (spellType == SPL_BlueFireball) 
	|| (spellType == SPL_RedFireball) 
	|| (spellType == SPL_GreenFireball) 
	|| (spellType == SPL_YellowFireball) 
	{
		if (self.guild == GIL_DMT && other.guild == GIL_DMT)
		{
			return COLL_DONOTHING;
		};
		
		B_MagicDamageNpc (other, self, COLL_DOEVERYTHING, SPL_Damage_cSpells, SPL_Scaling_cSpells, 0);
		return COLL_DOEVERYTHING;
	};
	
	
	
	
	
	
	
	
	/*
	/// ------ Thunderstorm ------
	if (spellType == SPL_Thunderstorm)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM)) 	
		|| (C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_ICEGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_Icewolf)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.guild == GIL_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};

		return COLL_DOEVERYTHING;
	};
	/// ------ SuckEnergy ------
	if (spellType == SPL_SuckEnergy)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM)) 	
		|| (C_BodyStateContains(self, BS_DIVE))
		|| (self.guild > GIL_SEPERATOR_HUM)
		|| (self.flags == NPC_FLAG_IMMORTAL)  
		|| (Npc_GetDistToNpc(self, other) > 1000)
		|| (self.guild == GIL_DMT)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	/// ------ GreenTentacle ------
	if (spellType == SPL_GreenTentacle)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM)) 	
		|| (C_BodyStateContains(self, BS_DIVE))
		|| (C_NpcIsGateGuard(self))
		|| (self.guild == GIL_BLOODFLY)
		|| (self.guild == GIL_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_HARPY)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)
		|| (self.guild == GIL_Gargoyle)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	/// ------ Swarm ------
	if (spellType == SPL_Swarm)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM)) 	
		|| (C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_STONEGOLEM)
		|| (self.guild == GIL_ICEGOLEM)
		|| (self.guild == GIL_FIREGOLEM	)
		|| (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON)
		|| (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_BLOODFLY)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_Gargoyle)
		|| (self.guild == GIL_DMT)
		|| (self.guild == GIL_STONEGUARDIAN)
		|| (C_NpcIsUndead(self))
		{
			return COLL_DONOTHING;	
		};
		
		if (self.guild > GIL_SEPERATOR_HUM)
		|| (C_NpcIsGateGuard(self))
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	/// ------ Skull ------
	if (spellType == SPL_Skull)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM))
		|| (C_BodyStateContains(self, BS_DIVE))
		|| (C_NpcIsUndead(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	*/
	/*
	/// ------ MysBolt ------
	if (spellType == SPL_MysBolt)
	{
		if (self.aivar[AIV_PartyMember])
		{
			Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_Heal_MysBolt + (other.damage[DAM_INDEX_MAGIC] * SPL_Heal_MysBolt/100));
			return COLL_DONOTHING;
		};
		return COLL_DOEVERYTHING;
	};
	/// ------ MysRoot ------
	if (spellType == SPL_MysRoot)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM))
		|| (C_BodyStateContains(self, BS_DIVE))
//		|| (C_NpcIsGateGuard(self))
		|| (self.guild == GIL_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
		return COLL_DOEVERYTHING;
	};
	/// ------ GeoStone ------
	if (spellType == SPL_GeoStone)
	{
		if (self.attribute[ATR_HITPOINTS] > 1)
		{
			return COLL_APPLYDAMAGE | COLL_DONTKILL;
		};
		return COLL_DOEVERYTHING;
	};
	*/
	
	return COLL_DOEVERYTHING;
};
