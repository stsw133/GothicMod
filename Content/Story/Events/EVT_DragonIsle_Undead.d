//******************************************************************************************
//	EVT_RIGHT_ROOM_01_SKEL
//******************************************************************************************

var int EVT_RIGHT_ROOM_01_SKEL_01_ANTIEXPLOID;
var int EVT_RIGHT_ROOM_01_SKEL_02_ANTIEXPLOID;
var int EVT_RIGHT_DOWN_01_SKEL_01_ANTIEXPLOID;
var int EVT_RIGHT_DOWN_01_SKEL_02_ANTIEXPLOID;
var int EVT_RIGHT_DOWN_01_SKEL_03_ANTIEXPLOID;
var int EVT_RIGHT_DOWN_01_SKEL_04_ANTIEXPLOID;
var int EVT_RIGHT_ROOM_02_SKEL_01_ANTIEXPLOID;
var int EVT_RIGHT_ROOM_02_SKEL_02_ANTIEXPLOID;
var int EVT_RIGHT_UP_01_SKEL_01_ANTIEXPLOID;
var int EVT_RIGHT_UP_01_SKEL_02_ANTIEXPLOID;
var int EVT_RIGHT_UP_02_SKEL_01_ANTIEXPLOID;
var int EVT_RIGHT_UP_02_SKEL_02_ANTIEXPLOID;
var int EVT_RIGHT_UP_02_SKEL_03_ANTIEXPLOID;
var int EVT_LEFT_ROOM_02_SKEL_01_ANTIEXPLOID;
var int EVT_LEFT_ROOM_02_SKEL_02_ANTIEXPLOID;
var int EVT_LEFT_ROOM_02_SKEL_03_ANTIEXPLOID;
var int EVT_LEFT_ROOM_02_SKEL_04_ANTIEXPLOID;
var int EVT_LEFT_ROOM_02_SKEL_05_ANTIEXPLOID;
var int EVT_LEFT_UP_01_SPAWNNEW_ANTIEXPLOID;
var int EVT_LEFT_DOWN_01_SKEL_01_ANTIEXPLOID;
var int EVT_LEFT_DOWN_01_SKEL_02_ANTIEXPLOID;
var int EVT_LEFT_DOWN_01_SKEL_03_ANTIEXPLOID;
var int EVT_KEYMASTER_01_ANTIEXPLOID;
var int EVT_KEYMASTER_02_ANTIEXPLOID;
var int EVT_KEYMASTER_03_ANTIEXPLOID;
var int EVT_KEYMASTER_04_ANTIEXPLOID;

//******************************************************************************************
func void EVT_RIGHT_ROOM_01_SKEL_01()
{
	if (EVT_RIGHT_ROOM_01_SKEL_01_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Zombie, "WP_EVT_RIGHT_ROOM_01_SPAWN_SKEL_01");
		EVT_RIGHT_ROOM_01_SKEL_01_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_ROOM_01_SKEL_02()
{
	if (EVT_RIGHT_ROOM_01_SKEL_02_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Zombie, "WP_EVT_RIGHT_ROOM_01_SPAWN_SKEL_02");
		EVT_RIGHT_ROOM_01_SKEL_02_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_DOWN_01_SKEL_01()
{
	if (EVT_RIGHT_DOWN_01_SKEL_01_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Mage, "WP_EVT_RIGHT_DOWN_01_SPAWN_SKEL_01");
		EVT_RIGHT_DOWN_01_SKEL_01_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_DOWN_01_SKEL_02()
{
	if (EVT_RIGHT_DOWN_01_SKEL_02_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_EVT_RIGHT_DOWN_01_SPAWN_SKEL_02");
		EVT_RIGHT_DOWN_01_SKEL_02_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_DOWN_01_SKEL_03()
{
	if (EVT_RIGHT_DOWN_01_SKEL_03_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_EVT_RIGHT_DOWN_01_SPAWN_SKEL_03");
		EVT_RIGHT_DOWN_01_SKEL_03_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_DOWN_01_SKEL_04()
{
	if (EVT_RIGHT_DOWN_01_SKEL_04_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_EVT_RIGHT_DOWN_01_SPAWN_SKEL_04");
		EVT_RIGHT_DOWN_01_SKEL_04_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_ROOM_02_SKEL_01()
{
	if (EVT_RIGHT_ROOM_02_SKEL_01_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Lord, "WP_EVT_RIGHT_ROOM_02_SPAWN_SKEL_01");
		EVT_RIGHT_ROOM_02_SKEL_01_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_ROOM_02_SKEL_02()
{
	if (EVT_RIGHT_ROOM_02_SKEL_02_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Lord, "WP_EVT_RIGHT_ROOM_02_SPAWN_SKEL_02");
		EVT_RIGHT_ROOM_02_SKEL_02_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_UP_01_SKEL_01()
{
	if (EVT_RIGHT_UP_01_SKEL_01_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_EVT_RIGHT_UP_01_SPAWN_SKEL_01");
		EVT_RIGHT_UP_01_SKEL_01_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_UP_01_SKEL_02()
{
	if (EVT_RIGHT_UP_01_SKEL_02_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_EVT_RIGHT_UP_01_SPAWN_SKEL_02");
		EVT_RIGHT_UP_01_SKEL_02_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_UP_02_SKEL_01()
{
	if (EVT_RIGHT_UP_02_SKEL_01_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Lord, "WP_EVT_RIGHT_UP_02_SPAWN_SKEL_01");
		EVT_RIGHT_UP_02_SKEL_01_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_UP_02_SKEL_02()
{
	if (EVT_RIGHT_UP_02_SKEL_02_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (UndeadOrcWarrior, "WP_EVT_RIGHT_UP_02_SPAWN_SKEL_02");
		EVT_RIGHT_UP_02_SKEL_02_ANTIEXPLOID += 1;
	};
};
func void EVT_RIGHT_UP_02_SKEL_03()
{
	if (EVT_RIGHT_UP_02_SKEL_03_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (UndeadOrcWarrior, "WP_EVT_RIGHT_UP_02_SPAWN_SKEL_03");
		EVT_RIGHT_UP_02_SKEL_03_ANTIEXPLOID += 1;
	};
};

//******************************************************************************************
func void EVT_LEFT_ROOM_02_SKEL_01()
{
	if (EVT_LEFT_ROOM_02_SKEL_01_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Gobbo, "WP_EVT_LEFT_ROOM_02_SPAWN_SKEL_01");
		EVT_LEFT_ROOM_02_SKEL_01_ANTIEXPLOID += 1;
	};
};
func void EVT_LEFT_ROOM_02_SKEL_02()
{
	if (EVT_LEFT_ROOM_02_SKEL_02_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Gobbo, "WP_EVT_LEFT_ROOM_02_SPAWN_SKEL_02");
		EVT_LEFT_ROOM_02_SKEL_02_ANTIEXPLOID += 1;
	};
};
func void EVT_LEFT_ROOM_02_SKEL_03()
{
	if (EVT_LEFT_ROOM_02_SKEL_03_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Gobbo, "WP_EVT_LEFT_ROOM_02_SPAWN_SKEL_03");
		EVT_LEFT_ROOM_02_SKEL_03_ANTIEXPLOID += 1;
	};
};
func void EVT_LEFT_ROOM_02_SKEL_04()
{
	if (EVT_LEFT_ROOM_02_SKEL_04_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Gobbo, "WP_EVT_LEFT_ROOM_02_SPAWN_SKEL_04");
		EVT_LEFT_ROOM_02_SKEL_04_ANTIEXPLOID += 1;
	};
};
func void EVT_LEFT_ROOM_02_SKEL_05()
{
	if (EVT_LEFT_ROOM_02_SKEL_05_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Gobbo, "WP_EVT_LEFT_ROOM_02_SPAWN_SKEL_05");
		EVT_LEFT_ROOM_02_SKEL_05_ANTIEXPLOID += 1;
	};
};

//******************************************************************************************
func void EVT_LEFT_UP_01_SPAWNNEW()
{
	if (EVT_LEFT_UP_01_SPAWNNEW_ANTIEXPLOID < 3)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_UNDEAD_SPAWN_POINT_07");
		Wld_InsertNpc (Skeleton_Mage, "WP_UNDEAD_SPAWN_POINT_08");
		Wld_InsertNpc (Skeleton_Warrior, "WP_UNDEAD_SPAWN_POINT_06");
		EVT_LEFT_UP_01_SPAWNNEW_ANTIEXPLOID += 1;
	};
};

//******************************************************************************************
func void EVT_LEFT_DOWN_01_SKEL_01()
{
	if (EVT_LEFT_DOWN_01_SKEL_01_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Lord, "WP_EVT_LEFT_DOWN_01_SPAWN_SKEL_01");
		EVT_LEFT_DOWN_01_SKEL_01_ANTIEXPLOID += 1;
	};
};
func void EVT_LEFT_DOWN_01_SKEL_02()
{
	if (EVT_LEFT_DOWN_01_SKEL_02_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_EVT_LEFT_DOWN_01_SPAWN_SKEL_02");
		EVT_LEFT_DOWN_01_SKEL_02_ANTIEXPLOID += 1;
	};
};
func void EVT_LEFT_DOWN_01_SKEL_03()
{
	if (EVT_LEFT_DOWN_01_SKEL_03_ANTIEXPLOID < 9)
	{
		Wld_InsertNpc (Skeleton_Warrior, "WP_EVT_LEFT_DOWN_01_SPAWN_SKEL_03");
		EVT_LEFT_DOWN_01_SKEL_03_ANTIEXPLOID += 1;
	};
};

//******************************************************************************************
func void EVT_KEYMASTER_01()
{
	if (EVT_KEYMASTER_01_ANTIEXPLOID < 1)
	{
		Wld_InsertNpc (DragonIsle_Keymaster, "WP_UNDEAD_RIGHT_DOWN_05");
		EVT_KEYMASTER_01_ANTIEXPLOID += 1;
	};
};
func void EVT_KEYMASTER_02()
{
	if (EVT_KEYMASTER_02_ANTIEXPLOID < 1)
	{
		Wld_InsertNpc (DragonIsle_Keymaster, "WP_UNDEAD_RIGHT_UP_04");
		EVT_KEYMASTER_02_ANTIEXPLOID += 1;
	};
};
func void EVT_KEYMASTER_03()
{
	if (EVT_KEYMASTER_03_ANTIEXPLOID < 1)
	{
		Wld_InsertNpc (DragonIsle_Keymaster, "WP_UNDEAD_LEFT_UP_04");
		EVT_KEYMASTER_03_ANTIEXPLOID += 1;
	};
};
func void EVT_KEYMASTER_04()
{
	if (EVT_KEYMASTER_04_ANTIEXPLOID < 1)
	{
		Wld_InsertNpc (DragonIsle_Keymaster, "WP_UNDEAD_LEFT_DOWN_04");
		EVT_KEYMASTER_04_ANTIEXPLOID += 1;
	};
};
