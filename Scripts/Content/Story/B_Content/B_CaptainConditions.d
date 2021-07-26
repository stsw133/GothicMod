///******************************************************************************************
///	B_CaptainConditions
///******************************************************************************************
func int B_CaptainConditions (var C_Npc Captain)
{
 	if (Kapitel == 11)
 	&& (SCGotCaptain)
	&& (Npc_HasItems(hero, ItWr_Seamap_Irdorath))
	&& (crewmember_Count >= Min_Crew)
	&& (Npc_GetDistToWP(Captain, "NW_WAITFOR_SHIP_CAPTAIN") < 2000)
	&& (MIS_ShipIsFree || (Npc_IsDead(Schiffswache_212) && Npc_IsDead(Schiffswache_213)))
	{
		MIS_ShipIsFree = true;
		return true;
	};
};
