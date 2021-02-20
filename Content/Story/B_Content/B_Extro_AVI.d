//******************************************************************************************
func void B_Extro_Avi()
{
	if (Npc_IsDead(PC_Thief_DI) == false)
	&& (Npc_IsDead(PC_Fighter_DI) == false)
	{
		DiegAndGornAreOnboard = true;
	};

	PlayVideo("Extro_Xardas.BIK");
	PlayVideo("Credits_Extro.BIK");
	PlayVideo("Credits2.BIK");
	if (DiegAndGornAreOnboard == true)
	{
		PlayVideo("Extro_AllesWirdGut.BIK");
	};

	ExitSession();
};
