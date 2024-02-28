///******************************************************************************************
///	B_SelectSpell
///******************************************************************************************
func int B_SelectSpell (var C_Npc slf, var C_Npc oth)
{
	if (slf.fight_tactic == FAI_NAILED)
	{
		return false;
	};
	
	/// ------ Friend ------
	if (Npc_IsPlayer(oth) && oth.guild < GIL_SEPERATOR_HUM)
	&& (slf.npctype == NPCTYPE_FRIEND)
	&& (slf.aivar[AIV_MagicUser] > MAGIC_NEVER)
	{
		if (Npc_HasItems(slf, ItRu_Fear) == 0)					{	CreateInvItem (slf, ItRu_Fear);				};
		if (Npc_HasItems(slf, ItRu_Sleep) == 0)					{	CreateInvItem (slf, ItRu_Sleep);			};
		
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
	if (slf.aivar[AIV_MagicUser] > MAGIC_NEVER)
	&& (slf.aivar[AIV_MagicUser] < MAGIC_OTHER)
	{
		if (Npc_HasItems(slf, ItRu_ConcussionBolt) == 0)		{	CreateInvItem (slf, ItRu_ConcussionBolt);	};
		if (Npc_HasItems(slf, ItRu_DeathBolt) == 0)				{	CreateInvItem (slf, ItRu_DeathBolt);		};
		if (Npc_HasItems(slf, ItRu_Heal) == 0)					{	CreateInvItem (slf, ItRu_Heal);				};
		
		if (slf.attribute[ATR_HITPOINTS] < slf.attribute[ATR_HITPOINTS_MAX]/3)
		{
			B_ReadySpell (slf, SPL_Heal, SPL_Cost_Heal);
		}
		else if (C_NpcHasAttackReasonToKill(slf))
		{
			B_ReadySpell (slf, SPL_DeathBolt, SPL_Cost_DeathBolt);
		}
		else
		{
			B_ReadySpell (slf, SPL_ConcussionBolt, SPL_Cost_ConcussionBolt);
		};
		return true;
	};
	
	/// ------ Other ------
	if (slf.aivar[AIV_MagicUser] == MAGIC_OTHER)
	{
		/// ------ Paladin ------
		if (slf.guild == GIL_PAL)
		{
			if (Npc_HasItems(slf, ItRu_PalHolyBolt) == 0)		{	CreateInvItem (slf, ItRu_PalHolyBolt);		};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			&& (C_NpcIsEvil(oth))
			{
				B_ReadySpell (slf, SPL_PalHolyBolt, SPL_Cost_PalHolyBolt);
				return true;
			};
			return false;
		};
		
		/// ------ Dragon ------
		if (slf.guild == GIL_DRAGON)
		{
			if (Npc_HasItems(slf, ItRu_BlackDragonBall) == 0)	{	CreateInvItem (slf, ItRu_BlackDragonBall);	};
			if (Npc_HasItems(slf, ItRu_DragonBall) == 0)		{	CreateInvItem (slf, ItRu_DragonBall);		};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_DRAGON_MAGIC)
			{
				if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
				{
					B_ReadySpell (slf, SPL_BlackDragonBall, SPL_Cost_BlackDragonBall);
				}
				else
				{
					B_ReadySpell (slf, SPL_DragonBall, SPL_Cost_DragonBall);
				};
				return true;
			};
			return false;
		};
		
		/// ------ Dementor ------
		if (slf.guild == GIL_DMT)
		{
			if (Npc_HasItems(slf, ItRu_RedFireball) == 0)		{	CreateInvItem (slf, ItRu_RedFireball);		};
			
			B_ReadySpell (slf, SPL_RedFireball, SPL_Cost_cSpells);
			return true;
		};
		
		/// ------ GoblinShaman ------
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SHAMAN)
		{
			if (Npc_HasItems(slf, ItRu_FireBolt) == 0)			{	CreateInvItem (slf, ItRu_FireBolt);			};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				B_ReadySpell (slf, SPL_FireBolt, SPL_Cost_FireBolt);
				return true;
			};
			return false;
		};
		
		/// ------ Golem & Avatar ------
		if (slf.guild == GIL_GOLEM)
		{
			if (Npc_HasItems(slf, ItRu_GeoStone) == 0)			{	CreateInvItem (slf, ItRu_GeoStone);			};
			if (Npc_HasItems(slf, ItRu_IceLance) == 0)			{	CreateInvItem (slf, ItRu_IceLance);			};
			if (Npc_HasItems(slf, ItRu_PyrFireball) == 0)		{	CreateInvItem (slf, ItRu_PyrFireball);		};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREGOLEM)
				{
					B_ReadySpell (slf, SPL_PyrFireball, SPL_Cost_PyrFireball);
				}
				else if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEGOLEM)
				{
					B_ReadySpell (slf, SPL_IceLance, SPL_Cost_IceLance);
				}
				else
				{
					B_ReadySpell (slf, SPL_GeoStone, SPL_Cost_GeoStone);
				};
				return true;
			};
			return false;
		};
		
		/// ------ OrcShaman ------
		if (slf.guild == GIL_ORC)
		{
			if (Npc_HasItems(slf, ItRu_ChargeFireball) == 0)	{	CreateInvItem (slf, ItRu_ChargeFireball);	};
			
			if (Npc_GetDistToNpc(slf, oth) > FIGHT_DIST_MELEE)
			{
				B_ReadySpell (slf, SPL_ChargeFireball, SPL_Cost_ChargeFireball);
				return true;
			};
			return false;
		};
		
		/// ------ SkeletonMage ------
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)
		{
			if (Npc_HasItems(slf, ItRu_SkullBolt) == 0)			{	CreateInvItem (slf, ItRu_SkullBolt);		};
			
			B_ReadySpell (slf, SPL_SkullBolt, SPL_Cost_SkullBolt);
			return true;
		};
	};
	
	/// ------ Chaos mages ------
	if (Hlp_GetInstanceID(slf) == WzA_17010_Setron)
	{
		if (Npc_HasItems(slf, ItRu_BlueFireball) == 0)			{	CreateInvItem (slf, ItRu_BlueFireball);		};
		
		B_ReadySpell (slf, SPL_BlueFireball, SPL_Cost_cSpells);
		return true;
	}
	else if (Hlp_GetInstanceID(slf) == WzA_17011_Azeroth)
	{
		if (Npc_HasItems(slf, ItRu_RedFireball) == 0)			{	CreateInvItem (slf, ItRu_RedFireball);		};
		
		B_ReadySpell (slf, SPL_RedFireball, SPL_Cost_cSpells);
		return true;
	}
	else if (Hlp_GetInstanceID(slf) == WzA_17012_Methion)
	{
		if (Npc_HasItems(slf, ItRu_GreenFireball) == 0)			{	CreateInvItem (slf, ItRu_GreenFireball);	};
		
		B_ReadySpell (slf, SPL_GreenFireball, SPL_Cost_cSpells);
		return true;
	}
	else if (Hlp_GetInstanceID(slf) == WzA_17013_Yataru)
	{
		if (Npc_HasItems(slf, ItRu_YellowFireball) == 0)		{	CreateInvItem (slf, ItRu_YellowFireball);	};
		
		B_ReadySpell (slf, SPL_YellowFireball, SPL_Cost_cSpells);
		return true;
	};
	
	return false;
};   
