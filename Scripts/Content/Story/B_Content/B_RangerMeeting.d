///******************************************************************************************
/// B_RangerMeeting
///******************************************************************************************
func void B_MakeRangerReadyForMeeting (var C_Npc slf)
{
	CreateInvItems	(slf, ITAR_Ranger_L, 1);
	AI_UnequipArmor	(slf);
	AI_EquipArmor	(slf, ITAR_Ranger_L);
	
	slf.npctype = NPCTYPE_FRIEND;
};

///******************************************************************************************
func void B_MakeRangerReadyToLeaveMeeting (var C_Npc slf)
{
	AI_UnequipArmor		(slf);
	Npc_RemoveInvItems	(slf, ITAR_Ranger_L, Npc_HasItems(slf, ITAR_Ranger_L));
	AI_EquipBestArmor	(slf);
};

///******************************************************************************************
func void B_MakeRangerReadyForMeetingALL()
{
	B_MakeRangerReadyForMeeting(Martin);
	B_MakeRangerReadyForMeeting(Lares);
	B_MakeRangerReadyForMeeting(Cord);
	B_MakeRangerReadyForMeeting(Gaan);
	B_MakeRangerReadyForMeeting(Orlan);
	B_MakeRangerReadyForMeeting(Cavalorn);
};

///******************************************************************************************
func void B_MakeRangerReadyToLeaveMeetingALL()
{
	B_MakeRangerReadyToLeaveMeeting(Martin);
	B_MakeRangerReadyToLeaveMeeting(Lares);
	B_MakeRangerReadyToLeaveMeeting(Cord);
	B_MakeRangerReadyToLeaveMeeting(Gaan);
	B_MakeRangerReadyToLeaveMeeting(Orlan);
	B_MakeRangerReadyToLeaveMeeting(Cavalorn);
};

///******************************************************************************************
func void B_Addon_Orlan_RangersReadyForComing()
{
	if (MIS_Addon_Cavalorn_GetOrnamentFromPAL != 0)
	{
		B_StartOtherRoutine (Cavalorn, "PreRangerMeeting");
	};
	B_StartOtherRoutine (Martin, "PreRangerMeeting");
	B_StartOtherRoutine (Lares, "PreRangerMeeting");
	B_StartOtherRoutine (Cord, "PreRangerMeeting");
	B_StartOtherRoutine (Gaan, "PreRangerMeeting");
};

///******************************************************************************************
func void B_Addon_Orlan_ComingRanger()
{
	if (MIS_Addon_Cavalorn_GetOrnamentFromPAL != 0)
	{
		B_StartOtherRoutine (Cavalorn, "RangerMeeting");
	};
	B_StartOtherRoutine (Martin, "RangerMeeting");
	B_StartOtherRoutine (Lares, "RangerMeeting");
	B_StartOtherRoutine (Cord, "RangerMeeting");
	B_StartOtherRoutine (Gaan, "RangerMeeting");
	B_StartOtherRoutine	(Orlan, "RangerMeeting");
	
	RangerMeetingRunning = LOG_RUNNING;
};

///******************************************************************************************
func void B_RangerMeetingParking()
{
	if (MIS_Addon_Cavalorn_GetOrnamentFromPAL != 0)
	{
		B_StartOtherRoutine (Cavalorn, "Stadt");
	};
	
	B_StartOtherRoutine (Orlan, "START");
	
	Lares_HaltsMaul = true;
	B_StartOtherRoutine (Lares, "Parking");
	B_StartOtherRoutine (Cord, "Parking");
	B_StartOtherRoutine (Gaan, "Parking");
	B_StartOtherRoutine (Martin, "Parking");
};

///******************************************************************************************
func void B_SchlussMitRangerMeeting()
{
	if (MIS_Addon_Cavalorn_GetOrnamentFromPAL != 0)
	{
		B_StartOtherRoutine	(Cavalorn, "Stadt");
	};
	
	B_StartOtherRoutine	(Lares, "Start");
	B_StartOtherRoutine	(Cord, "Start");
	
	if (!Gaan.aivar[AIV_TalkedToPlayer])
	{
		B_StartOtherRoutine (Gaan, "PreStart");
	}
	else
	{
		B_StartOtherRoutine (Gaan, "Start");
	};
	
	if (MIS_Addon_Martin_GetRangar == 0)
	{
		B_StartOtherRoutine (Martin, "PreStart");
	}
	else
	{
		B_StartOtherRoutine (Martin, "Start");
	};
	
	B_StartOtherRoutine	(Orlan, "Start");
	Lares_HaltsMaul = LOG_OBSOLETE;
};
