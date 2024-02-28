///******************************************************************************************
///	NpcFn_SetMonsterAsSummoned
///******************************************************************************************
func void NpcFn_SetMonsterAsSummoned (var C_Npc slf)
{
	if		(C_NpcIsUndead(slf))	{	slf.aivar[AIV_MM_REAL_ID] = ID_SUMMONED_UNDEAD;	}
	else if	(C_NpcIsEvil(slf))		{	slf.aivar[AIV_MM_REAL_ID] = ID_SUMMONED_EVIL;	}
	else							{	slf.aivar[AIV_MM_REAL_ID] = ID_SUMMONED;		};
	
	slf.guild = GIL_SUMMONED;
	Npc_SetTrueGuild (slf, GIL_SUMMONED);
	
	B_SetAttitude (slf, ATT_FRIENDLY);
	slf.aivar[AIV_PartyMember] = true;
	slf.aivar[AIV_SummonTime] = 60;
	slf.start_aistate = ZS_MM_Rtn_Summoned;
};
