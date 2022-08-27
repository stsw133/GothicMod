///******************************************************************************************
///	B_SelectSpell
///******************************************************************************************
func int B_SelectSpell (var C_NPC slf, var C_NPC oth)
{
	if (slf.fight_tactic == FAI_NAILED)
	{
		return false;
	}
	/// ------ Friend ------
	else if (Npc_IsPlayer(oth) && oth.guild < GIL_SEPERATOR_HUM)
	&& (slf.npctype == NPCTYPE_FRIEND)
	&& (slf.aivar[AIV_MagicUser] > MAGIC_NEVER)
	{
		if (Npc_HasItems(slf, ItRu_Sleep) == 0)
		{
			CreateInvItem (slf, ItRu_Sleep);
		};
		if (Npc_HasItems(slf, ItRu_Fear) == 0)
		{
			CreateInvItem (slf, ItRu_Fear);
		};
		
		if (slf.guild == GIL_DMT)
		{
			B_ReadySpell (slf, SPL_Fear, SPL_Cost_Fear);
		}
		else
		{
			B_ReadySpell (slf, SPL_Sleep, SPL_Cost_Sleep);
		};
		return true;
	}
	/// ------ Mage ------
	else if (slf.aivar[AIV_MagicUser] > MAGIC_NEVER)
	&& (slf.aivar[AIV_MagicUser] < MAGIC_OTHER)
	{
		if (Npc_HasItems(slf, ItRu_Heal) == 0)
		{
			CreateInvItem (slf, ItRu_Heal);
		};
		if (Npc_HasItems(slf, ItRu_ConcussionBolt) == 0)
		{
			CreateInvItem (slf, ItRu_ConcussionBolt);
		};
		if (Npc_HasItems(slf, ItRu_DeathBolt) == 0)
		{
			CreateInvItem (slf, ItRu_DeathBolt);
		};
		
		if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]/5)
		{
			B_ReadySpell (slf, SPL_nHeal, SPL_Cost_nHeal);
			return true;
		}
		else if (C_NpcHasAttackReasonToKill(self))
		{
			B_ReadySpell (slf, SPL_DeathBolt, SPL_Cost_DeathBolt);
			return true;
		}
		else
		{
			B_ReadySpell (slf, SPL_ConcussionBolt, SPL_Cost_ConcussionBolt);
			return true;
		};
	}
	/// ------ Other ------
	else if (slf.aivar[AIV_MagicUser] == MAGIC_OTHER)
	{
		/// ------ Paladin ------
		if (slf.guild == GIL_PAL)
		{
			if (Npc_HasItems(slf, ItRu_PalHeal) == 0)
			{
				CreateInvItem (slf, ItRu_PalHeal);
			};
			if (Npc_HasItems(slf, ItRu_PalHolyBolt) == 0)
			{
				CreateInvItem (slf, ItRu_PalHolyBolt);
			};
			if (Npc_HasItems(slf, ItRu_PalDestroyEvil) == 0)
			{
				CreateInvItem (slf, ItRu_PalDestroyEvil);
			};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				if (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]/5)
				{
					B_ReadySpell (slf, SPL_PalHeal, SPL_Cost_PalHeal);
					return true;
				}
				else if (C_NpcIsUndead(oth))
				{
					B_ReadySpell (slf, SPL_PalDestroyEvil, SPL_Cost_PalDestroyEvil);
					return true;
				}
				else if (C_NpcIsEvil(oth))
				{
					B_ReadySpell (slf, SPL_PalHolyBolt, SPL_Cost_PalHolyBolt);
					return true;
				};
			};
		}
		/// ------ GoblinShaman ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SHAMAN)
		{
			if (Npc_HasItems(slf, ItRu_FireBolt) == 0)
			{
				CreateInvItem (slf, ItRu_FireBolt);
			};
			/*
			if (Npc_HasItems(slf, ItRu_IceBolt) == 0)
			{
				CreateInvItem (slf, ItRu_IceBolt);
			};
			*/
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				B_ReadySpell (slf, SPL_FireBolt, SPL_Cost_FireBolt);
				return true;
			}
			else
			{
				return false;
			};
		}
		/// ------ SkeletonMage ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)
		{
			if (Npc_HasItems(slf, ItRu_SkullBolt) == 0)
			{
				CreateInvItem (slf, ItRu_SkullBolt);
			};
			
			B_ReadySpell (slf, SPL_SkullBolt, SPL_Cost_SkullBolt);
			return true;
		}
		/// ------ Golem & Avatar ------
		else if (slf.guild == GIL_GOLEM)
		{
			if (Npc_HasItems(slf, ItRu_GeoStone) == 0)
			{
				CreateInvItem (slf, ItRu_GeoStone);
			};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				B_ReadySpell (slf, SPL_GeoStone, SPL_Cost_GeoStone);
				return true;
			}
			else
			{
				return false;
			};
		}
		/// ------ OrcShaman ------
		else if (slf.guild == GIL_ORC)
		{
			if (Npc_HasItems(slf, ItRu_ChargeFireball) == 0)
			{
				CreateInvItem (slf, ItRu_ChargeFireball);
			};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				B_ReadySpell (slf, SPL_ChargeFireball, SPL_Cost_ChargeFireball);
				return true;
			}
			else
			{
				return false;
			};
		}
		/// ------ Dementor ------
		else if (slf.guild == GIL_DMT)
		{
			if (Npc_HasItems(slf, ItRu_RedFireball) == 0)
			{
				CreateInvItem (slf, ItRu_RedFireball);
			};
			
			if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(DMT_1299_OberDementor_DI))
			{
				B_ReadySpell (slf, SPL_RedFireball, SPL_Cost_cSpells);
				return true;
			}
			else
			{
				B_ReadySpell (slf, SPL_RedFireball, SPL_Cost_cSpells);
				return true;
			};
		}
		/// ------ Dragons ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)
		{
			if (Npc_HasItems(slf, ItRu_DragonBall) == 0)
			{
				CreateInvItem (slf, ItRu_DragonBall);
			};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_DRAGON_MAGIC)
			{
				B_ReadySpell (slf, SPL_DragonBall, SPL_Cost_DragonBall);
				return true;
			}
			else
			{
				return false;
			};
		}
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
		{
			if (Npc_HasItems(slf, ItRu_BlackDragonBall) == 0)
			{
				CreateInvItem (slf, ItRu_BlackDragonBall);
			};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_DRAGON_MAGIC)
			{
				B_ReadySpell (slf, SPL_BlackDragonBall, SPL_Cost_BlackDragonBall);
				return true;
			}
			else
			{
				return false;
			};
		};
	}
	/// ------ Setron & Azazel & Methion & Yataru ------
	else if (Hlp_GetInstanceID(self) == WzA_17010_Setron)
	{
		if (Npc_HasItems(slf, ItRu_BlueFireball) == 0)
		{
			CreateInvItem (slf, ItRu_BlueFireball);
		};
		
		B_ReadySpell (slf, SPL_BlueFireball, SPL_Cost_cSpells);
		return true;
	}
	else if (Hlp_GetInstanceID(self) == WzA_17011_Azazel)
	{
		if (Npc_HasItems(slf, ItRu_RedFireball) == 0)
		{
			CreateInvItem (slf, ItRu_RedFireball);
		};
		
		B_ReadySpell (slf, SPL_RedFireball, SPL_Cost_cSpells);
		return true;
	}
	else if (Hlp_GetInstanceID(self) == WzA_17012_Methion)
	{
		if (Npc_HasItems(slf, ItRu_GreenFireball) == 0)
		{
			CreateInvItem (slf, ItRu_GreenFireball);
		};
		
		B_ReadySpell (slf, SPL_GreenFireball, SPL_Cost_cSpells);
		return true;
	}
	else if (Hlp_GetInstanceID(self) == WzA_17013_Yataru)
	{
		if (Npc_HasItems(slf, ItRu_YellowFireball) == 0)
		{
			CreateInvItem (slf, ItRu_YellowFireball);
		};
		
		B_ReadySpell (slf, SPL_YellowFireball, SPL_Cost_cSpells);
		return true;
	};
	
	return false;
};   
