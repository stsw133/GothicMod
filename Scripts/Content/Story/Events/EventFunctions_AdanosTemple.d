///******************************************************************************************

var int ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_01_OneTime;

///******************************************************************************************
/// ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_01
///******************************************************************************************
func void ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_01()
{
	if (!ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_01_OneTime)
	{
		B_AWAKE_STONEGUARDIAN(Stoneguardian_ADANOSTEMPELENTRANCE_01);
		B_AWAKE_STONEGUARDIAN(Stoneguardian_ADANOSTEMPELENTRANCE_02);
		B_AWAKE_STONEGUARDIAN(Stoneguardian_ADANOSTEMPELENTRANCE_03);
		B_AWAKE_STONEGUARDIAN(Stoneguardian_ADANOSTEMPELENTRANCE_04);
		
		if (!Npc_IsDead(Stoneguardian_ADANOSTEMPELENTRANCE_01))
		|| (!Npc_IsDead(Stoneguardian_ADANOSTEMPELENTRANCE_02))
		|| (!Npc_IsDead(Stoneguardian_ADANOSTEMPELENTRANCE_03))
		|| (!Npc_IsDead(Stoneguardian_ADANOSTEMPELENTRANCE_04))
		{
			Snd_Play("THRILLJINGLE_02");
		};
		
		B_KillNpc(BDT_10400_Addon_DeadBandit);
		B_KillNpc(BDT_10401_Addon_DeadBandit);
		ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_01_OneTime = true;
	};
};

///******************************************************************************************

var int OPEN_ADANOSTEMPELCHEST_01_FUNC_OneTime;

///******************************************************************************************
/// OPEN_ADANOSTEMPELCHEST_01_FUNC_S1
///******************************************************************************************
func void OPEN_ADANOSTEMPELCHEST_01_FUNC_S1()
{
	if (!OPEN_ADANOSTEMPELCHEST_01_FUNC_OneTime)
	{
		B_AWAKE_STONEGUARDIAN(Stoneguardian_TREASUREPITS_05C);
		B_AWAKE_STONEGUARDIAN(Stoneguardian_TREASUREPITS_05E);
		
		if (!Npc_IsDead(Stoneguardian_TREASUREPITS_05C))
		|| (!Npc_IsDead(Stoneguardian_TREASUREPITS_05E))
		{
			Snd_Play("THRILLJINGLE_03");
		};
		
		OPEN_ADANOSTEMPELCHEST_01_FUNC_OneTime = true;
	};
};

///******************************************************************************************

var int OPEN_ADANOSTEMPELCHEST_02_FUNC_OneTime;

///******************************************************************************************
/// OPEN_ADANOSTEMPELCHEST_02_FUNC_S1
///******************************************************************************************
func void OPEN_ADANOSTEMPELCHEST_02_FUNC_S1()
{
	if (!OPEN_ADANOSTEMPELCHEST_02_FUNC_OneTime)
	{
		B_AWAKE_STONEGUARDIAN(Stoneguardian_TREASUREPITS_09A);
		B_AWAKE_STONEGUARDIAN(Stoneguardian_TREASUREPITS_09C);
		B_AWAKE_STONEGUARDIAN(Stoneguardian_TREASUREPITS_09E);
		
		if (!Npc_IsDead(Stoneguardian_TREASUREPITS_09A))
		|| (!Npc_IsDead(Stoneguardian_TREASUREPITS_09C))
		|| (!Npc_IsDead(Stoneguardian_TREASUREPITS_09E))
		{
			Snd_Play("THRILLJINGLE_02");
		};
		
		OPEN_ADANOSTEMPELCHEST_02_FUNC_OneTime = true;
	};
};

///******************************************************************************************

var int ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_02_OneTime;

///******************************************************************************************
func void ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_02()
{
	if (!ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_02_OneTime)
	{
		B_AWAKE_STONEGUARDIAN (Stoneguardian_RHADEMES_14A);
		B_AWAKE_STONEGUARDIAN (Stoneguardian_RHADEMES_14D);
		B_AWAKE_STONEGUARDIAN (Stoneguardian_RHADEMES_14F);
		SC_TookRhademesTrap = true;
		ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_02_OneTime = true;
	};
};

///******************************************************************************************

var int EVT_RAVEN_AWAKE_FUNC_OneTime;

///******************************************************************************************
/*
func void EVT_RAVEN_AWAKE_FUNC()
{
	
};
*/
