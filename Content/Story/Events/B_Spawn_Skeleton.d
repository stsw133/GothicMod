//******************************************************************************************
FUNC VOID B_Spawn_Skeleton_S1()
{
	if (Skelett_Spawn == false)
	{
		Wld_InsertNpc (Skeleton, "OC_EBR_DARK_FLOOR");
		Skelett_Spawn = true; 
	};
};
