///******************************************************************************************
/// B_Spawn_Skeleton_S1
///******************************************************************************************
func void B_Spawn_Skeleton_S1()
{
	if (!Skelett_Spawn)
	{
		Wld_InsertNpc (Skeleton_Warrior, "OC_EBR_DARK_FLOOR");
		Skelett_Spawn = true;
	};
};
