///******************************************************************************************

var int ENTER_OLDWORLD_FIRSTTIME_TRIGGER_ONETIME;

///******************************************************************************************
/// ENTER_OLDWORLD_FIRSTTIME_TRIGGER
///******************************************************************************************
func void ENTER_OLDWORLD_FIRSTTIME_TRIGGER()
{
	if (!ENTER_OLDWORLD_FIRSTTIME_TRIGGER_ONETIME)
	{
		B_KillNpc(Bruder);
		B_KillNpc(VLK_Leiche3);
		
		B_KillNpc(VLK_Leiche2);
		B_KillNpc(STRF_Leiche1);
		B_KillNpc(STRF_Leiche2);
		B_KillNpc(STRF_Leiche3);
		
		B_KillNpc(STRF_Leiche4);
		B_KillNpc(STRF_Leiche5);
		B_KillNpc(STRF_Leiche6);
		B_KillNpc(STRF_Leiche7);
		B_KillNpc(STRF_Leiche8);
		
		B_KillNpc(PAL_Leiche1);
		B_KillNpc(PAL_Leiche2);
		B_KillNpc(PAL_Leiche3);
		
		B_KillNpc(VLK_Leiche1);
		
		B_KillNpc(PAL_Leiche4);
		B_KillNpc(PAL_Leiche5);
		
		B_KillNpc(Olav);
		
		PlayVideo("DRAGONATTACK.BIK");
		ENTER_OLDWORLD_FIRSTTIME_TRIGGER_ONETIME = true;
	};
	
	if (TschuessBilgot)
	{
		B_RemoveNpc(Bilgot);
	};
};
