///******************************************************************************************
///	B_MagicHurtNpc
///******************************************************************************************
func void B_MagicHurtNpc (var C_NPC slf, var C_NPC oth, var int damage)
{
	Npc_ChangeAttribute (oth, ATR_HITPOINTS, -damage);
	
	if (Npc_IsDead(oth))
	{
		MOD_Defeated (slf, oth);
	};
};
