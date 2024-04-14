///******************************************************************************************
///	NpcFn_SetMonsterAsSummoned
///******************************************************************************************
func void NpcFn_SetMonsterAsSummoned (var C_Npc slf, var int keepNatural)
{
	if (!keepNatural)
	{
		if		(C_NpcIsUndead(slf))	{	slf.aivar[AIV_MM_REAL_ID] = ID_SUMMONED_UNDEAD;	}
		else if	(C_NpcIsEvil(slf))		{	slf.aivar[AIV_MM_REAL_ID] = ID_SUMMONED_EVIL;	}
		else							{	slf.aivar[AIV_MM_REAL_ID] = ID_SUMMONED;		};
		
		slf.level = 0;
		slf.guild = GIL_SUMMONED;
		Npc_SetTrueGuild (slf, GIL_SUMMONED);
	};
	
	B_SetAttitude (slf, ATT_FRIENDLY);
	slf.aivar[AIV_PartyMember] = true;
	slf.aivar[AIV_SummonTime] = MONSTER_SUMMON_TIME;
	slf.start_aistate = ZS_MM_Rtn_Summoned;
	
	Npc_ClearAIQueue(slf);
	B_ClearPerceptions(slf);
	AI_ContinueRoutine(slf);
};
