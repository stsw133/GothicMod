///******************************************************************************************
///	B_AssessMagic
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
	/// ------ PalDestroyEvil ------
	if (spellType == SPL_PalDestroyEvil)
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
	};
	/// ------ ChargeFireball, FireBolt, DeathBolt ------
	if (spellType == SPL_ChargeFireball)
	//|| (spellType == SPL_InstantFireball)
	//|| (spellType == SPL_Firerain)
	|| (spellType == SPL_FireBolt)
	//|| (spellType == SPL_Firestorm)
	//|| (spellType == SPL_Pyrokinesis)
	|| (spellType == SPL_DeathBolt)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM))
		|| (C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_FIREGOLEM	) 		
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYHALVEDAMAGE;
		}
		
		if (self.guild == GIL_ICEGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.guild == GIL_STONEGOLEM)
		|| (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON)
		|| (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	/// ------ IceBolt, IceWave ------
	if (spelltype == SPL_IceBolt)
	//|| (spellType == SPL_IceCube)
	|| (spellTYpe == SPL_IceWave)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM)) 	
		|| (C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		if (self.guild == GIL_ICEGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.guild == GIL_STONEGOLEM)
		|| (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DEMON)
		|| (self.guild == GIL_SUMMONED_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_APPLYDAMAGE;
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
	/// ------ WindFist ------
	if (spellType == SPL_WindFist)
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
		
		if (C_BodyStateContains(self, BS_SWIM))
		|| (C_BodyStateContains(self, BS_DIVE))
		{
			COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	/// ------ Whirlwind ------
	if (spellType == SPL_Whirlwind)
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
		|| (self.guild == GIL_SUMMONED_GOLEM)
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
			return COLL_APPLYDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	/// ------ Fear ------
	if (spellType  == SPL_Fear)	
	{
		if (self.guild != GIL_FIREGOLEM)
		&& (self.guild != GIL_ICEGOLEM)
		&& (self.guild != GIL_STONEGOLEM)
		&& (self.guild != GIL_SUMMONED_GOLEM)
		&& (self.guild != GIL_SWAMPSHARK)
		&& (self.guild != GIL_TROLL)
		&& (!C_NpcIsEvil(self))
		&& (!C_NpcIsGateGuard(self))
		{
			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};
	/// ------ Geyser ------
	if (spellType == SPL_Geyser)
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
		|| (self.guild == GIL_SUMMONED_GOLEM)
		|| (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_STONEGUARDIAN)
		{
			return COLL_DONOTHING;
		};
		
		return COLL_APPLYDAMAGE | COLL_DONTKILL;
	};
	/// ------ WaterFist ------
	if (spellType == SPL_WaterFist)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM))
		|| (C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (self.guild == GIL_DRAGON)
		|| (self.guild == GIL_TROLL)
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		if (self.guild == GIL_FIREGOLEM)
		|| (self.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)
		|| (self.guild == GIL_GARGOYLE)
		{
			return COLL_APPLYDOUBLEDAMAGE;
		};
		
		return COLL_APPLYDAMAGE|COLL_DONTKILL;
	};
	/// ------ IceLance ------
	if (spellType == SPL_IceLance)
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
		
		return COLL_APPLYDAMAGE;
	};
	/// ------ BreathOfDeath ------
	if (spellType == SPL_BreathOfDeath)
	{
		if (Npc_GetDistToNpc(other, self) < 1000)
		&& (!C_NpcIsUndead(self))
		{
			if (self.guild == GIL_DRAGON)
			|| (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(hero))
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
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM))
		|| (C_BodyStateContains(self, BS_DIVE))
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
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
	*/
	/// ------ MasterOfDisaster ------
	if (spellType == SPL_MasterOfDisaster)
	{
		if (!C_NpcIsDown(self))
		&& (!C_BodyStateContains(self, BS_SWIM))
		&& (!C_BodyStateContains(self, BS_DIVE))
		&& (C_NpcIsEvil(self))
		{
			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};
	/// ------ BeliarRage ------
	if (spellType == SPL_BeliarRage)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self, BS_SWIM))
		|| (C_BodyStateContains(self, BS_DIVE))
		{
			return COLL_DONOTHING;
		};
		
		if (C_NpcIsUndead(self))
		{
			return COLL_APPLYHALVEDAMAGE;
		};
		
		return COLL_DOEVERYTHING;
	};
	/*
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
	/// ------ Sonderfall: Dmt ------
	if (other.guild == GIL_DMT) 
	{
		if (spellType == SPL_BloodFireball)
		//|| (spellType == SPL_Firerain)
		//|| (spellType == SPL_Thunderstorm)
		//|| (spellType == SPL_LightningFlash)
		{
			if (self.guild == GIL_DMT)
			{
				return COLL_DONOTHING;
			};/*
			else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
			{
				return COLL_APPLYHALVEDAMAGE;
			};
			*/
		};
		/*
		if (spellType == SPL_Firestorm)
		&& (self.guild == GIL_DMT)
		{
			return COLL_DONOTHING;
		};
		*/
	};
	/// ------ WzA ------
	if (spellType == SPL_cB_Fireball)
	{
		if (Hlp_GetInstanceID(self) != WzA_17010_Setron) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_cR_Fireball)
	{
		if (Hlp_GetInstanceID(self) != WzA_17011_Azazel) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_cG_Fireball)
	{
		if (Hlp_GetInstanceID(self) != WzA_17012_Methion) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_cY_Fireball)
	{
		if (Hlp_GetInstanceID(self) != WzA_17013_Yataru) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	};
	
	return COLL_DOEVERYTHING;
};
