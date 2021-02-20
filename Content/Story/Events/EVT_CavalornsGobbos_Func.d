
var int EVT_CAVALORNSGOBBOS_FUNC_OneTime;
func void EVT_CAVALORNSGOBBOS_FUNC ()
{
	if (EVT_CAVALORNSGOBBOS_FUNC_OneTime == false)
	{
		Wld_InsertNpc (Gobbo, "NW_XARDAS_GOBBO_01");//ADDON
		Wld_InsertNpc (Gobbo, "NW_XARDAS_GOBBO_02");//ADDON
		Wld_InsertNpc (Gobbo, "NW_XARDAS_GOBBO_02");//ADDON
		EVT_CAVALORNSGOBBOS_FUNC_OneTime = true;
	};
};
