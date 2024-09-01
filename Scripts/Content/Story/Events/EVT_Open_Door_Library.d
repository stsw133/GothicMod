///******************************************************************************************

var int EVT_OPEN_DOOR_LIBRARY_S1_OneTime;

///******************************************************************************************
/// EVT_OPEN_DOOR_LIBRARY_S1
///******************************************************************************************
func void EVT_OPEN_DOOR_LIBRARY_S1()
{
	if (!EVT_OPEN_DOOR_LIBRARY_S1_OneTime)
	{
		Snd_Play("DEM_Die");
		Wld_InsertNpc (Skeleton_Warrior, "FP_ROAM_NW_KDF_LIBRARY_19");
		Wld_InsertNpc (Skeleton_Warrior, "FP_ROAM_NW_KDF_LIBRARY_18");
		Wld_InsertNpc (Skeleton_Warrior, "FP_ROAM_NW_KDF_LIBRARY_30");
		Wld_InsertNpc (Demon, "FP_ROAM_NW_KDF_LIBRARY_21");
		Wld_InsertNpc (Demon, "FP_ROAM_NW_KDF_LIBRARY_22");
		Wld_InsertNpc (Demon, "FP_ROAM_NW_KDF_LIBRARY_23");	/// new!!!
		Wld_InsertNpc (Demon, "FP_ROAM_NW_KDF_LIBRARY_20");
		EVT_OPEN_DOOR_LIBRARY_S1_OneTime = true;
	};
};
