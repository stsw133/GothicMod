///******************************************************************************************
/// MAGECAVETRIGGER
///******************************************************************************************
func void B_MAGECAVETRIGGER()
{
	if (!Npc_IsDead(Magic_Golem))
	&& (MIS_SCHNITZELJAGD == LOG_RUNNING)
	{
		if (Hlp_IsValidNpc(AGON))
		&& (!Npc_IsDead(AGON))
		{
			AI_Teleport			(AGON, "NW_TROLLAREA_PATH_02");
			Npc_ExchangeRoutine	(AGON, "GOLEMLIVES");
			AI_ContinueRoutine	(AGON);
		};
	};
};
