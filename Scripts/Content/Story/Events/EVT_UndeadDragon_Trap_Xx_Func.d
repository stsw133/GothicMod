///******************************************************************************************

var int EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT;
var int EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT_NoMore;

///******************************************************************************************
/// EVT_UNDEADDRAGON_TRAP_01_FUNC
///******************************************************************************************
func void EVT_UNDEADDRAGON_TRAP_01_FUNC()
{
	if (EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT_NoMore < 10)
	{
		if (EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT < 2)
		&& (EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT != 0)
		{
			Wld_InsertNpc (UndeadOrcWarrior, "DI_UNDEADDRAGON_TRAP_01");
		};
		EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT += 1;
		
		if (EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT > 2)
		{
			EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT = 1;
		};
		EVT_UNDEADDRAGON_TRAP_01_FUNC_COUNT_NoMore += 1;
	};
};

///******************************************************************************************

var int EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT;
var int EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT_NoMore;

///******************************************************************************************
/// EVT_UNDEADDRAGON_TRAP_02_FUNC
///******************************************************************************************
func void EVT_UNDEADDRAGON_TRAP_02_FUNC()
{
	if (EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT_NoMore < 10)
	{
		if (EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT < 2)
		&& (EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT != 0)
		{
			Wld_InsertNpc (UndeadOrcWarrior, "DI_UNDEADDRAGON_TRAP_02");
		};
		EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT += 1;
		
		if (EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT > 2)
		{
			EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT = 1;
		};
		EVT_UNDEADDRAGON_TRAP_02_FUNC_COUNT_NoMore += 1;
	};
};

///******************************************************************************************

var int EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT;
var int EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT_NoMore;

///******************************************************************************************
/// EVT_UNDEADDRAGON_TRAP_03_FUNC
///******************************************************************************************
func void EVT_UNDEADDRAGON_TRAP_03_FUNC()
{
	if (EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT_NoMore < 10)
	{
		if (EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT < 2)
		&& (EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT != 0)
		{
			Wld_InsertNpc (UndeadOrcWarrior, "DI_UNDEADDRAGON_TRAP_03");
		};
		EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT += 1;
		
		if (EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT > 2)
		{
			EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT = 1;
		};
		EVT_UNDEADDRAGON_TRAP_03_FUNC_COUNT_NoMore += 1;
	};
};
