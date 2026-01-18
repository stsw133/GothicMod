///******************************************************************************************
/// B_MagicHurtNpc
///******************************************************************************************

var int B_MagicHurtNpcArea_Damage;
var C_Npc B_MagicHurtNpcArea_Victim;

func void B_MagicHurtNpc (var C_Npc slf, var C_Npc oth, var int dmg)
{
	if (dmg > 0)
	{
		Npc_ChangeAttribute (oth, ATR_HITPOINTS, -dmg);
		
		if (Npc_IsPlayer(slf))
		{
			oth.aivar[AIV_DamageDealtByPlayer] += dmg;
		};
	};
	
	if (Npc_IsDead(oth))
	{
		Npc_SendPassivePerc	(slf, PERC_ASSESSMURDER, slf, oth);
		
		Npc_ClearAIQueue	(oth);
		AI_StandUp			(oth);
		B_ClearPerceptions	(oth);
		MOD_Defeated		(slf, oth, DBP_Killed);
		
		//B_GiveTradeInv(oth);
		//B_GiveDeathInv(oth);
		//B_ClearRuneInv(oth);
		
		//B_DeletePetzCrime(oth);
		//oth.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
		//oth.aivar[AIV_TAPOSITION] = false;
	};
	
	/// display text
	if (dmg > 0)
	{
		if		(Npc_IsPlayer(oth))		{ PrintS_Ext (ConcatStrings(NAME_DamageTrue, IntToString(dmg)), COL_DamageTrueTaken); }
		else if	(Npc_IsPlayer(slf))		{ PrintS_Ext (ConcatStrings(NAME_DamageTrue, IntToString(dmg)), COL_DamageTrueGiven); };
	};
};

func void B_MagicHurtNpcArea(var C_Npc oth, var C_Npc slf)
{
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(B_MagicHurtNpcArea_Victim))
	|| (!Npc_IsPlayer(slf) && oth.guild == slf.guild)
	{
		return;
	};
	
	if (Npc_GetDistToNpc(B_MagicHurtNpcArea_Victim, oth) < NPC_ATTACK_FINISH_DISTANCE)
	{
		B_MagicHurtNpc (slf, oth, B_MagicHurtNpcArea_Damage);
	};
};
