///******************************************************************************************
///	C_CanNpcCollideWithSpell
///******************************************************************************************

const int COLL_DONOTHING			= 0;
const int COLL_DOEVERYTHING			= 1<<0;
const int COLL_APPLYDAMAGE			= 1<<1;
const int COLL_APPLYHALVEDAMAGE		= 1<<2;
const int COLL_APPLYDOUBLEDAMAGE	= 1<<3;
const int COLL_APPLYVICTIMSTATE		= 1<<4;
const int COLL_DONTKILL				= 1<<5;

///******************************************************************************************
func int C_CanNpcCollideWithSpell (var int spellType)
{
	/// ------ PAL spells ------
	if (spellType == SPL_PalHolyBolt)
	{
		if (C_NpcIsEvil(self))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	}
	else if (spellType == SPL_PalRepelEvil)
	{
		if (C_NpcIsUndead(self))
		{
			if (self.attribute[ATR_HITPOINTS_MAX] <= SPL_Damage_PalRepelEvil)
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
	else if (spellType == SPL_PalDestroyEvil)
	{
		if (self.attribute[ATR_HITPOINTS_MAX] <= SPL_Damage_PalDestroyEvil)
		&& (C_NpcIsEvil(self))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ cSpells ------
	if (spellType == SPL_BlueFireball)
	|| (spellType == SPL_RedFireball)
	|| (spellType == SPL_GreenFireball)
	|| (spellType == SPL_YellowFireball)
	{
		if (self.guild == GIL_DMT && other.guild == GIL_DMT)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ BeliarRage ------
	if (spellType == SPL_BeliarRage)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsUndead(self))
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ BreathOfDeath ------
	if (spellType == SPL_BreathOfDeath)
	{
		if (Npc_GetDistToNpc(other, self) < 1000)
		&& (!C_NpcIsUndead(self))
		{
			if (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(hero))
			|| (self.guild == GIL_DRAGON)
			{
				return COLL_APPLYHALVEDAMAGE;
			};
			
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ DestroyUndead ------
	if (spellType == SPL_DestroyUndead)
	{
		if (C_NpcIsUndead(self))
		&& (self.attribute[ATR_HITPOINTS_MAX] <= SPL_Damage_DestroyUndead)
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ DragonBall, BlackDragonBall ------
	if (spellType == SPL_DragonBall)
	|| (spellType == SPL_BlackDragonBall)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ EnergyBall ------
	if (spellType == SPL_EnergyBall)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsUndead(self))
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Fear ------
	if (spellType  == SPL_Fear)	
	{
		if (!C_NpcIsEvil(self)) && (!C_NpcIsGateGuard(self))
		&& (self.guild != GIL_GOLEM && self.guild != GIL_SUMMONED_GOLEM)
		&& (self.guild != GIL_SWAMPSHARK)
		&& (self.guild != GIL_TROLL)
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ FireBolt, InstantFireball, Firestorm, ChargeFireball, Pyrokinesis, Firerain, DeathBolt ------
	if (spellType == SPL_ChargeFireball)
	|| (spellType == SPL_DeathBolt)
	|| (spellType == SPL_FireBolt)
	|| (spellType == SPL_Firerain)
	|| (spellType == SPL_Firestorm)
	|| (spellType == SPL_InstantFireball)
	|| (spellType == SPL_Pyrokinesis)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Geyser ------
	if (spellType == SPL_Geyser)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_STONEGUARDIAN)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
	};
	
	/// ------ GreenTentacle ------
	if (spellType == SPL_GreenTentacle)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (C_NpcIsGateGuard(self))
		|| (self.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)
		|| (self.guild == GIL_BLOODFLY)
		|| (self.guild == GIL_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GARGOYLE)
		|| (self.guild == GIL_HARPY)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ IceBolt, IceCube, IceWave ------
	if (spellType == SPL_IceBolt)
	|| (spellType == SPL_IceCube)
	|| (spellType == SPL_IceWave)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ IceLance ------
	if (spellType == SPL_IceLance)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_APPLYDAMAGE;
	};
	
	/// ------ LightningFlash ------
	if (spellType == SPL_LightningFlash)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;	
		};
		
		if (C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ MassDeath ------
	if (spellType == SPL_MassDeath)
	{
		if (!C_NpcIsUndead(self))
		{
			if (self.guild == GIL_DRAGON)
			{
				return COLL_APPLYHALVEDAMAGE;
			};
			
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ MasterOfDisaster ------
	if (spellType == SPL_MasterOfDisaster)
	{
		if (!C_NpcIsDown(self) && !C_BodyStateContains(self, BS_SWIM) && !C_BodyStateContains(self, BS_DIVE))
		&& (C_NpcIsEvil(self))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ Shrink ------
	if (spellType == SPL_Shrink)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Skull, SkullBolt ------
	if (spellType == SPL_Skull)
	|| (spellType == SPL_SkullBolt)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (C_NpcIsUndead(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ SuckEnergy ------
	if (spellType == SPL_SuckEnergy)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (Npc_GetDistToNpc(self, other) > 1000)
		|| (self.flags == NPC_FLAG_IMMORTAL)
		|| (self.guild == GIL_DMT)
		|| (self.guild > GIL_SEPERATOR_HUM)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Swarm ------
	if (spellType == SPL_Swarm)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (C_NpcIsUndead(self))
		|| (self.guild == GIL_BLOODFLY)
		|| (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DMT)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GARGOYLE)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_STONEGUARDIAN)
		|| (self.guild == GIL_TROLL)
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
	
	/// ------ Thunderstorm ------
	if (spellType == SPL_Thunderstorm)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ WaterFist ------
	if (spellType == SPL_WaterFist)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
	};
	
	/// ------ Whirlwind ------
	if (spellType == SPL_Whirlwind)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (self.flags == NPC_FLAG_IMMORTAL)
		|| (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GARGOYLE)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_SHADOWBEAST)
		|| (self.guild == GIL_STONEGUARDIAN)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsGateGuard(self))
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ WindFist ------
	if (spellType == SPL_WindFist)
	{
		if (Npc_GetDistToNpc(other, self) >= 1000)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Zap, ChargeZap, ConcussionBolt ------
	if (spellType == SPL_Zap)
	|| (spellType == SPL_ChargeZap)
	|| (spellType == SPL_ConcussionBolt)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_APPLYDAMAGE | COLL_DONTKILL;
	};
	
	/// ------ GEO spells ------
	if (spellType == SPL_GeoStone)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_GeoQuake)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_GeoCollapse)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ NEC spells ------
	if (spellType == SPL_NecLifesteal)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (Npc_GetDistToNpc(self, other) > 1000)
		|| (self.flags == NPC_FLAG_IMMORTAL)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_NecPlague)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (C_NpcIsUndead(self))
		|| (self.guild == GIL_BLOODFLY)
		|| (self.guild == GIL_DEMON || self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_DMT)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_GARGOYLE)
		|| (self.guild == GIL_GOLEM || self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_STONEGUARDIAN)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsGateGuard(self))
		|| (self.guild > GIL_SEPERATOR_HUM)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_NecDeath)
	{
		if (Npc_GetDistToNpc(other, self) < 1000)
		&& (!C_NpcIsUndead(self))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	return COLL_DOEVERYTHING;
};
