///******************************************************************************************

var int EVT_UNDEADDRAGONDEAD_ENDSITUATION_OneTime;

///******************************************************************************************
/// EVT_UNDEADDRAGONDEAD_ENDSITUATION
///******************************************************************************************
func void EVT_UNDEADDRAGONDEAD_ENDSITUATION()
{
	if (!EVT_UNDEADDRAGONDEAD_ENDSITUATION_OneTime)
	&& (Npc_IsDead(Dragon_Undead))
	{
		Angar_DI_Party = LOG_SUCCESS;
		B_StartOtherRoutine	(Angar_DI, "FireDragonIsland");
		B_StartOtherRoutine	(Lee_DI, "UNDEADDRAGONDEAD");
		B_StartOtherRoutine	(Diego_DI, "UNDEADDRAGONDEAD");
		B_StartOtherRoutine	(Milten_DI, "UNDEADDRAGONDEAD");
		B_StartOtherRoutine	(Gorn_DI, "UNDEADDRAGONDEAD");
		B_StartOtherRoutine	(Lester_DI, "UNDEADDRAGONDEAD");
		EVT_UNDEADDRAGONDEAD_ENDSITUATION_OneTime = true;
	};
};
