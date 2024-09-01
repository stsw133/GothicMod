///******************************************************************************************

var int EVT_CRYPT_01_OneTime;

///******************************************************************************************
/// EVT_CRYPT_01
///******************************************************************************************
func void EVT_CRYPT_01()
{
	if (!EVT_CRYPT_01_OneTime)
	{
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_01_SPAWN_01");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_01_SPAWN_02");
		Wld_InsertNpc (Skeleton_Warrior, "EVT_CRYPT_ROOM_01_SPAWN_03");
		Wld_InsertNpc (Skeleton_Warrior, "EVT_CRYPT_ROOM_01_SPAWN_04");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_01_SPAWN_05");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_01_SPAWN_06");
		Wld_InsertNpc (Skeleton_Mage, "EVT_CRYPT_ROOM_01_SPAWN_07");
		EVT_CRYPT_01_OneTime = true;
	};
};

///******************************************************************************************

var int EVT_CRYPT_02_OneTime;

///******************************************************************************************
/// EVT_CRYPT_02
///******************************************************************************************
func void EVT_CRYPT_02()
{
	if (!EVT_CRYPT_02_OneTime)
	{
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_02_SPAWN_01");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_02_SPAWN_02");
		Wld_InsertNpc (Skeleton_Warrior, "EVT_CRYPT_ROOM_02_SPAWN_03");
		Wld_InsertNpc (Skeleton_Warrior, "EVT_CRYPT_ROOM_02_SPAWN_04");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_02_SPAWN_05");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_02_SPAWN_06");
		Wld_InsertNpc (Skeleton_Mage, "EVT_CRYPT_ROOM_02_SPAWN_07");
		EVT_CRYPT_02_OneTime = true;
	};
};

///******************************************************************************************

var int EVT_CRYPT_03_OneTime;

///******************************************************************************************
func void EVT_CRYPT_03()
{
	if (!EVT_CRYPT_03_OneTime)
	{
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_03_SPAWN_01");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_03_SPAWN_02");
		Wld_InsertNpc (Skeleton_Warrior, "EVT_CRYPT_ROOM_03_SPAWN_03");
		Wld_InsertNpc (Skeleton_Warrior, "EVT_CRYPT_ROOM_03_SPAWN_04");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_03_SPAWN_05");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_03_SPAWN_06");
		Wld_InsertNpc (Skeleton_Mage, "EVT_CRYPT_ROOM_03_SPAWN_07");
		EVT_CRYPT_03_OneTime = true;
	};
};

///******************************************************************************************

var int EVT_CRYPT_FINAL_OneTime;

///******************************************************************************************
/// EVT_CRYPT_FINAL
///******************************************************************************************
func void EVT_CRYPT_FINAL()
{
	if (!EVT_CRYPT_FINAL_OneTime)
	{
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_FINAL_SPAWN_01");
		Wld_InsertNpc (Skeleton, "EVT_CRYPT_ROOM_FINAL_SPAWN_02");
		Wld_InsertNpc (Skeleton_Mage, "EVT_CRYPT_ROOM_FINAL_SPAWN_03");
		Wld_InsertNpc (Skeleton_Mage, "EVT_CRYPT_ROOM_FINAL_SPAWN_04");
		Wld_InsertNpc (Skeleton_Mage, "EVT_CRYPT_ROOM_FINAL_SPAWN_05");
		Wld_InsertNpc (Crypt_Skeleton_Lord, "EVT_CRYPT_ROOM_FINAL_SPAWN_06");
		EVT_CRYPT_FINAL_OneTime = true;
	};
};

///******************************************************************************************
func void EVT_CRYPT_ROOM_01_TRIGGERENTRANCE()
{
	Crypt_Skeleton_Room_01.aivar[AIV_EnemyOverride] = false;
};
func void EVT_CRYPT_ROOM_02_TRIGGERENTRANCE()
{
	Crypt_Skeleton_Room_02.aivar[AIV_EnemyOverride] = false;
};
func void EVT_CRYPT_ROOM_03_TRIGGERENTRANCE()
{
	Crypt_Skeleton_Room_03.aivar[AIV_EnemyOverride] = false;
};
