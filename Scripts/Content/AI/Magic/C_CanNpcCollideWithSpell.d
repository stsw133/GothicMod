///******************************************************************************************
/// C_CanNpcCollideWithSpell
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
	/// ------ PalHolyBolt ------
	if (spellType == SPL_PalHolyBolt)
	{
		if (C_NpcIsEvil(self))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ PalRepelEvil ------
	if (spellType == SPL_PalRepelEvil)
	{
		if (C_NpcIsEvil(self))
		{
			if (self.attribute[ATR_HITPOINTS_MAX] <= (SPL_Damage_PalRepelEvil+other.attribute[ATR_POWER]))
			{
				return COLL_DOEVERYTHING;
			}
			else
			{
				return COLL_APPLYHALVEDAMAGE;
			};
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ PalDestroyEvil ------
	if (spellType == SPL_PalDestroyEvil)
	{
		if (C_NpcIsEvil(self))
		&& (self.attribute[ATR_HITPOINTS_MAX] <= (SPL_Damage_PalDestroyEvil+other.attribute[ATR_POWER]))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
	};
	
	/// ------ Firebolt, InstantFireball, Firestorm, ChargeFireball, Pyrokinesis, Firerain ------
	if (spellType == SPL_Firebolt)
	|| (spellType == SPL_InstantFireball)
	|| (spellType == SPL_Firestorm)
	|| (spellType == SPL_ChargeFireball)
	|| (spellType == SPL_Pyrokinesis)
	|| (spellType == SPL_Firerain)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		//|| (self.guild == GIL_GARGOYLE)
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
		//|| (self.guild == GIL_GARGOYLE)
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
	
	/// ------ SkullBolt, Skull ------
	if (spellType == SPL_SkullBolt)
	|| (spellType == SPL_Skull)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		|| (C_NpcIsUndead(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Zap, ChargeZap ------
	if (spellType == SPL_Zap)
	|| (spellType == SPL_ChargeZap)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_APPLYDAMAGE | COLL_DONTKILL;
	};
	
	/// ------ Slimeball ------
	if (spellType == SPL_Slimeball)
	{
		if (Npc_IsPlayer(self))
		{
			MOD_SetPoison(bsPoison+1);
			mSlowPoints += (100 - mSlowPoints) / 5;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ WindFist, Hurricane ------
	if (spellType == SPL_WindFist)
	|| (spellType == SPL_Hurricane)
	{
		if (Npc_GetDistToNpc(other, self) >= 1000)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
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
	
	/// ------ Fear ------
	if (spellType == SPL_Fear)	
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
	
	/// ------ DestroyUndead ------
	if (spellType == SPL_DestroyUndead)
	{
		if (C_NpcIsUndead(self))
		&& (self.attribute[ATR_HITPOINTS_MAX] <= (SPL_Damage_DestroyUndead+other.attribute[ATR_POWER]))
		{
			return COLL_DOEVERYTHING;
		};
		
		return COLL_DONOTHING;
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
	
	/// ------ ConcussionSpell ------
	if (spellType == SPL_ConcussionSpell)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_APPLYDAMAGE | COLL_DONTKILL;
	};
	
	/// ------ DeathSpell ------
	if (spellType == SPL_DeathSpell)
	{
		if (C_NpcIsDown(self))
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Dragonball, BlackDragonball ------
	if (spellType == SPL_Dragonball)
	|| (spellType == SPL_BlackDragonball)
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
	
	/// ------ BlueFireball, RedFireball ------
	if (spellType == SPL_BlueFireball)
	|| (spellType == SPL_RedFireball)
	{
		if (self.guild == GIL_DMT && other.guild == GIL_DMT)
		{
			return COLL_DONOTHING;
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
		//|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
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
	
	/// ------ WaterFist ------
	if (spellType == SPL_WaterFist)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		//|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
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
		//|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_APPLYDAMAGE;
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
	
	/// ------ Plague ------
	if (spellType == SPL_Plague)
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
	
	/// ------ Earthquake ------
	if (spellType == SPL_Earthquake)
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
	
	/// ------ Rock ------
	if (spellType == SPL_Rock)
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
	
	/// ------ Mysticball ------
	if (spellType == SPL_Mysticball)
	{
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
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
		{
			return COLL_DONOTHING;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Crush ------
	if (spellType == SPL_Crush)
	{
		if (Npc_GetDistToNpc(other, self) >= 1000)
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsDown(self) || C_BodyStateContains(self, BS_SWIM) || C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.guild == GIL_DRAGON)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	
	return COLL_DOEVERYTHING;
};
