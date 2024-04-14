///******************************************************************************************
/// B_SelectSpell
///******************************************************************************************
func int B_SelectSpell (var C_Npc slf, var C_Npc oth)
{
	if (slf.fight_tactic == FAI_NAILED)
	{
		return false;
	};
	
	if (!slf.aivar[AIV_MagicUser])
	{
		return false;
	};
	
	/// ------ Friend ------
	if (slf.npctype == NPCTYPE_FRIEND)
	&& (Npc_IsPlayer(oth) && oth.guild < GIL_SEPERATOR_HUM)
	{
		if (!Npc_HasItems(slf, ItRu_Fear))				{	CreateInvItem (slf, ItRu_Fear);				};
		if (!Npc_HasItems(slf, ItRu_Sleep))				{	CreateInvItem (slf, ItRu_Sleep);			};
		
		if (slf.guild == GIL_DMT)
		{
			B_ReadySpell (slf, SPL_Fear, SPL_Cost_Fear);
		}
		else
		{
			B_ReadySpell (slf, SPL_Sleep, SPL_Cost_Sleep);
		};
		
		return true;
	};
	
	/// ------ Mage ------
	if (slf.guild == GIL_KDF || slf.guild == GIL_KDW || Hlp_GetInstanceID(slf) == NONE_100_Xardas)
	{
		if (!Npc_HasItems(slf, ItRu_ConcussionSpell))	{	CreateInvItem (slf, ItRu_ConcussionSpell);	};
		if (!Npc_HasItems(slf, ItRu_DeathSpell))		{	CreateInvItem (slf, ItRu_DeathSpell);		};
		if (!Npc_HasItems(slf, ItRu_Heal))				{	CreateInvItem (slf, ItRu_Heal);				};
		
		if (slf.attribute[ATR_HITPOINTS] < slf.attribute[ATR_HITPOINTS_MAX]/3)
		{
			B_ReadySpell (slf, SPL_Heal, SPL_Cost_Heal);
		}
		else if (C_NpcHasAttackReasonToKill(slf))
		{
			B_ReadySpell (slf, SPL_DeathSpell, SPL_Cost_DeathSpell);
		}
		else
		{
			B_ReadySpell (slf, SPL_ConcussionSpell, SPL_Cost_ConcussionSpell);
		};
		
		return true;
	};
	
	/// ------ Paladin ------
	if (slf.guild == GIL_PAL)
	{
		if (!Npc_HasItems(slf, ItRu_PalFaith))			{	CreateInvItem (slf, ItRu_PalFaith);			};
		if (!Npc_HasItems(slf, ItRu_PalHolyBolt))		{	CreateInvItem (slf, ItRu_PalHolyBolt);		};
		
		if (slf.attribute[ATR_HITPOINTS] < slf.attribute[ATR_HITPOINTS_MAX]/3)
		{
			B_ReadySpell (slf, SPL_PalFaith, SPL_Cost_PalFaith);
			return true;
		}
		else if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
		&& (C_NpcIsEvil(oth))
		{
			B_ReadySpell (slf, SPL_PalHolyBolt, SPL_Cost_PalHolyBolt);
			return true;
		};
		
		return false;
	};
	
	/// ------ Dementor ------
	if (slf.guild == GIL_DMT)
	{
		if (!Npc_HasItems(slf, ItRu_RedFireball))		{	CreateInvItem (slf, ItRu_RedFireball);		};
		if (!Npc_HasItems(slf, ItRu_SuckEnergy))		{	CreateInvItem (slf, ItRu_SuckEnergy);		};
		if (!Npc_HasItems(slf, ItRu_Skull))				{	CreateInvItem (slf, ItRu_Skull);			};
		
		if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(DMT_1299_OberDementor_DI))
		{
			B_ReadySpell (slf, SPL_Skull, SPL_Cost_Skull);
		}
		else
		{
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				B_ReadySpell (slf, SPL_RedFireball, SPL_Cost_ColorFireball);
			}
			else
			{
				B_ReadySpell (slf, SPL_SuckEnergy, SPL_Cost_SuckEnergy);
			};
		};
		
		return true;
	};
	
	/// ------ Dragon ------
	if (slf.guild == GIL_DRAGON)
	{
		if (!Npc_HasItems(slf, ItRu_BlackDragonball))	{	CreateInvItem (slf, ItRu_BlackDragonball);	};
		if (!Npc_HasItems(slf, ItRu_Dragonball))		{	CreateInvItem (slf, ItRu_Dragonball);		};
		
		if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_DRAGON_MAGIC)
		{
			if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
			{
				B_ReadySpell (slf, SPL_BlackDragonball, SPL_Cost_BlackDragonball);
			}
			else
			{
				B_ReadySpell (slf, SPL_Dragonball, SPL_Cost_Dragonball);
			};
			
			return true;
		};
		
		return false;
	};
	
	/// ------ GoblinShaman ------
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SHAMAN)
	{
		if (!Npc_HasItems(slf, ItRu_FireBolt))			{	CreateInvItem (slf, ItRu_FireBolt);			};
		
		B_ReadySpell (slf, SPL_FireBolt, SPL_Cost_FireBolt);
		
		return true;
	};
	
	/// ------ Golem & Avatar ------
	if (slf.guild == GIL_GOLEM)
	{
		if (!Npc_HasItems(slf, ItRu_IceLance))			{	CreateInvItem (slf, ItRu_IceLance);			};
		if (!Npc_HasItems(slf, ItRu_InstantFireball))	{	CreateInvItem (slf, ItRu_InstantFireball);	};
		if (!Npc_HasItems(slf, ItRu_Rock))				{	CreateInvItem (slf, ItRu_Rock);				};
		if (!Npc_HasItems(slf, ItRu_Slimeball))			{	CreateInvItem (slf, ItRu_Slimeball);		};
		
		if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
		{
			if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
			{
				B_ReadySpell (slf, SPL_InstantFireball, SPL_Cost_InstantFireball);
			}
			else if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
			{
				B_ReadySpell (slf, SPL_IceLance, SPL_Cost_IceLance);
			}
			else if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPGOLEM)
			{
				B_ReadySpell (slf, SPL_Slimeball, SPL_Cost_Slimeball);
			}
			else
			{
				B_ReadySpell (slf, SPL_Rock, SPL_Cost_Rock);
			};
			
			return true;
		};
		
		return false;
	};
	
	/// ------ OrcShaman ------
	if (slf.guild == GIL_ORC)
	{
		if (!Npc_HasItems(slf, ItRu_InstantFireball))	{	CreateInvItem (slf, ItRu_InstantFireball);	};
		
		if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
		{
			B_ReadySpell (slf, SPL_InstantFireball, SPL_Cost_InstantFireball);
			return true;
		};
		
		return false;
	};
	
	/// ------ SkeletonMage ------
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)
	{
		if (!Npc_HasItems(slf, ItRu_SkullBolt))			{	CreateInvItem (slf, ItRu_SkullBolt);		};
		
		B_ReadySpell (slf, SPL_SkullBolt, SPL_Cost_SkullBolt);
		return true;
	};
	
	/// ------ Chaos mages ------
	if (Hlp_GetInstanceID(slf) == WzA_17010_Setron)
	{
		if (!Npc_HasItems(slf, ItRu_BlueFireball))		{	CreateInvItem (slf, ItRu_BlueFireball);		};
		
		B_ReadySpell (slf, SPL_BlueFireball, SPL_Cost_ColorFireball);
		return true;
	}
	else if (Hlp_GetInstanceID(slf) == WzA_17011_Azeroth)
	{
		if (!Npc_HasItems(slf, ItRu_RedFireball) == 0)	{	CreateInvItem (slf, ItRu_RedFireball);		};
		
		B_ReadySpell (slf, SPL_RedFireball, SPL_Cost_ColorFireball);
		return true;
	};
	
	return false;
};   
