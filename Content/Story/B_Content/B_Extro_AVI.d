//******************************************************************************************
func void B_Extro_Avi()
{
	if (!Npc_IsDead(PC_Thief_DI))
	&& (!Npc_IsDead(PC_Fighter_DI))
	{
		DiegAndGornAreOnboard = true;
	};

	PlayVideo("Extro_Xardas.BIK");
	PlayVideo("Credits_Extro.BIK");
	PlayVideo("Credits2.BIK");
	if (DiegAndGornAreOnboard)
	{
		PlayVideo("Extro_AllesWirdGut.BIK");
	};

	ExitSession();
};
