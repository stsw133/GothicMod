///******************************************************************************************
/// C_NpcIsDown
///******************************************************************************************
func int C_NpcIsDown (var C_Npc slf)
{
	if (Npc_IsInState(slf, ZS_Unconscious))
	|| (Npc_IsInState(slf, ZS_MagicSleep))
	|| (Npc_IsDead(slf))
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_NpcIsGateGuard
///******************************************************************************************
func int C_NpcIsGateGuard (var C_Npc slf)
{
	if (Npc_IsInState(slf, ZS_Guard_Passage))
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_NpcIsToughGuy
///******************************************************************************************
func int C_NpcIsToughGuy (var C_Npc slf)
{
	if (slf.aivar[AIV_ToughGuy])
	|| (slf.guild == GIL_DJG)
	|| (slf.guild == GIL_SLD)
	|| (slf.guild == GIL_BDT)
	|| (slf.guild == GIL_PIR)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_NpcIsUndead
///******************************************************************************************
func int C_NpcIsUndead (var C_Npc slf)
{
	if (slf.guild == GIL_GOBBO_SKELETON)
	|| (slf.guild == GIL_SHADOWBEAST_SKELETON)
	|| (slf.guild == GIL_SKELETON)
	|| (slf.guild == GIL_SKELETON_MAGE)
	|| (slf.guild == GIL_UNDEADORC)
	|| (slf.guild == GIL_ZOMBIE)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_UNDEAD)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_NpcIsEvil
///******************************************************************************************
func int C_NpcIsEvil (var C_Npc slf)
{
	if (slf.guild == GIL_DEMON)
	|| (slf.guild == GIL_DMT)
	|| (slf.guild == GIL_DRACONIAN)
	|| (slf.guild == GIL_DRAGON)
	|| (slf.guild == GIL_ORC)
//	|| (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_SUMMONED_EVIL)
	|| (C_NpcIsUndead(slf))
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_NpcIsBotheredByPlayerRoomGuild
///******************************************************************************************
func int C_NpcIsBotheredByPlayerRoomGuild (var C_Npc slf)
{
	var int portalguild; portalguild = Wld_GetPlayerPortalGuild();
	
	if (portalguild > GIL_NONE)
	&& (slf.guild == portalguild || Wld_GetGuildAttitude(slf.guild, portalguild) == ATT_FRIENDLY)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
/// C_NpcIsBotheredByWeapon
///******************************************************************************************
func int C_NpcIsBotheredByWeapon (var C_Npc slf, var C_Npc oth)
{
	if (slf.aivar[AIV_PARTYMEMBER])
	|| (slf.guild == GIL_DMT || slf.guild == GIL_ORC)
	|| (slf.npctype == NPCTYPE_FRIEND && Npc_IsPlayer(other))
	|| (C_NpcIsToughGuy(slf) && Npc_IsInFightMode(oth, FMODE_MELEE))
	|| (C_NpcIsGateGuard(slf))
	|| (Npc_GetAttitude(slf, oth) == ATT_FRIENDLY)
	|| (Npc_IsInFightMode(oth, FMODE_FIST))
	|| (Npc_IsInFightMode(oth, FMODE_MAGIC) && Npc_GetActiveSpellCat(oth) != SPELL_BAD)
	{
		return false;
	};
	
	return true;
};
