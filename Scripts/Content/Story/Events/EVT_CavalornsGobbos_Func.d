///******************************************************************************************

var int EVT_CAVALORNSGOBBOS_FUNC_OneTime;

///******************************************************************************************
/// EVT_CAVALORNSGOBBOS_FUNC
///******************************************************************************************
func void EVT_CAVALORNSGOBBOS_FUNC()
{
	if (!EVT_CAVALORNSGOBBOS_FUNC_OneTime)
	{
		Wld_InsertNpc (Gobbo, "NW_XARDAS_GOBBO_01");
		Wld_InsertNpc (Gobbo, "NW_XARDAS_GOBBO_02");
		Wld_InsertNpc (Gobbo, "NW_XARDAS_GOBBO_02");
		EVT_CAVALORNSGOBBOS_FUNC_OneTime = true;
	};
};
