///******************************************************************************************
///	C_NpcIsBotheredByWeapon
///******************************************************************************************
func int C_NpcIsBotheredByWeapon (var C_NPC slf, var C_NPC oth)
{
	/// EXIT IF...
	/// ------ Partymember ignoriert Waffe ------
	if (slf.aivar[AIV_PARTYMEMBER] == true)
	{
		return false;
	};
	
	/// ------ NpcTypeFriend ignoriert Waffe ------
	if (slf.npctype == NPCTYPE_FRIEND) && (Npc_IsPlayer(other))
	{
		return false;
	};
	
	/// ------ ToughGuy ignoriert NAHKAMF-Waffe ------
	if (C_NpcIsToughGuy(slf))
	&& (Npc_IsInFightMode(oth,FMODE_MELEE))
	{
		return false;
	};
	
	/// ------ Att_Friendly ignoriert Waffe ------
	if (Npc_GetAttitude(slf,oth) == ATT_FRIENDLY)
	{
		return false;
	};
	
	/// ------ Torwachen ignorieren gezogene Waffe ------
	if (C_NpcIsGateGuard(slf))
	{
		return false;
	};
	
	/// ------ Fäuste zählen nicht ------
	if (Npc_IsInFightMode(oth,FMODE_FIST))
	{
		return false;
	};
	
	/// ------ Gute und neutrale Spells zählen nicht ------
	if (Npc_IsInFightMode(oth,FMODE_MAGIC) && (Npc_GetActiveSpellCat(oth) != SPELL_BAD))
	{
		return false;
	};
	
	/// ------ Dementoren 6 Orks ------
	if ((slf.guild == GIL_DMT) || (slf.guild == GIL_ORC))
	{
		return false;
	};
	
	/// FUNC
	return true;
};
