///******************************************************************************************
/// bSource
///******************************************************************************************
func int RealToInt(var int r)
{
	return STR_ToInt(STR_Split(toStringf(r), ".", 0));
};

/// ------ Random ------
func int Hlp_RandomRange(var int start, var int end)
{
	return (start + Hlp_Random(end - start + 1));
};

///******************************************************************************************
/// Animations
///******************************************************************************************
func int oCNPC_GetModel(var int npc)
{
	CALL__thiscall(MEM_InstToPtr(npc), 7571232);
	return CALL_RetValAsInt();
};

func int AniIsActive(var C_Npc slf, var string aniname)
{
	var int ptr; ptr = oCNpc_GetModel(slf);
	const int zCModel_AniIsActive = 5727888;
	
	CALL_zStringPtrParam(Str_Upper(aniname));
	CALL__thiscall(ptr,zCModel_AniIsActive);
	return CALL_RetValAsInt();	
};

func int Get_AniIDFromAniName(var int slf, var string aniName)
{
	var int model; model = oCNpc_GetModel(slf);
	CALL_zStringPtrParam(Str_Upper(aniName));
	CALL__thiscall(model, 6365296);
	return CALL_RetValAsInt();	
};

func int GetAniFromAniID(var C_Npc slf, var string aniName)
{
	var int model; model = oCNpc_GetModel(slf);
	var int ani; ani = Get_AniIDFromAniName(slf,aniName);
	
	CALL_PtrParam(ani);
	CALL__thiscall(model, 4665168);
	return CALL_RetValAsInt();
};

func void Set_AniFPS(var C_Npc slf, var string aniName, var int fps)
{
	var int ptr; ptr = GetAniFromAniID(slf, aniName);
	
	MEM_WriteInt(ptr+176, mkf(fps));
};

///******************************************************************************************
/// Npc
///******************************************************************************************
func void Npc_DropUnconscious(var C_Npc slf)
{
	CALL_IntParam(MEM_InstToPtr(slf));
	CALL_IntParam(1065353216);
	CALL__thiscall(MEM_InstToPtr(slf), 7560880);
};

func int Npc_GetWalkMode(var C_Npc slf)
{
	var oCNpc npc; npc = Hlp_GetNpc(slf);
	return MEM_ReadInt(npc.anictrl + 352);
};

func void Npc_SetAsPlayer(var C_Npc slf)
{
	CALL__thiscall(MEM_InstToPtr(slf), 7612064);
};

func void Npc_SetSpeed(var C_Npc slf, var int permille)
{
	if (Npc_IsPlayer(slf) && mSlowTime > 0)
	{
		permille *= 2;
	};
	
	var int ptr; ptr = oCNPC_GetModel(slf);
	var int f; f = divf(mkf(permille), mkf(1000));
	MEM_WriteInt(ptr+508, f);
};

func void Npc_SetVisibilityPercent(var C_Npc slf, var int visibility)
{
	var oCNpc Npc; Npc = Hlp_GetNpc(slf);
	
	if (visibility == 100)	{	Npc.bloodEnabled = true;	}
	else					{	Npc.bloodEnabled = false;	};
	
	Npc._zCVob_bitfield[0] = Npc._zCVob_bitfield[0] | zCVob_bitfield0_visualAlphaEnabled;
	Npc._zCVob_visualAlpha = divf(mkf(visibility), mkf(100));
	Npc._zCVob_bitfield[0] = Npc._zCVob_bitfield[0] & ~zCVob_bitfield0_castDynShadow;
};


///******************************************************************************************
/// World
///******************************************************************************************
func void Wld_AddWorldTime(var int x)
{
	var int world_timer; world_timer = MEM_Timer.frameTimeFloat;
	var int acceleration; acceleration = fracf(x, 100);
	world_timer = mulf(world_timer, subf(acceleration, mkf(1)));
	MEM_WorldTimer.worldTime = addf(MEM_WorldTimer.worldTime, world_timer);
};

func int Wld_GetTime()
{
	if		(Wld_IsTime(00,00, 01,00))	{	return 0;	}
	else if	(Wld_IsTime(01,00, 02,00))	{	return 1;	}
	else if	(Wld_IsTime(02,00, 03,00))	{	return 2;	}
	else if	(Wld_IsTime(03,00, 04,00))	{	return 3;	}
	else if	(Wld_IsTime(04,00, 05,00))	{	return 4;	}
	else if	(Wld_IsTime(05,00, 06,00))	{	return 5;	}
	else if	(Wld_IsTime(06,00, 07,00))	{	return 6;	}
	else if	(Wld_IsTime(07,00, 08,00))	{	return 7;	}
	else if	(Wld_IsTime(08,00, 09,00))	{	return 8;	}
	else if	(Wld_IsTime(09,00, 10,00))	{	return 9;	}
	else if	(Wld_IsTime(10,00, 11,00))	{	return 10;	}
	else if	(Wld_IsTime(11,00, 12,00))	{	return 11;	}
	else if	(Wld_IsTime(12,00, 13,00))	{	return 12;	}
	else if	(Wld_IsTime(13,00, 14,00))	{	return 13;	}
	else if	(Wld_IsTime(14,00, 15,00))	{	return 14;	}
	else if	(Wld_IsTime(15,00, 16,00))	{	return 15;	}
	else if	(Wld_IsTime(16,00, 17,00))	{	return 16;	}
	else if	(Wld_IsTime(17,00, 18,00))	{	return 17;	}
	else if	(Wld_IsTime(18,00, 19,00))	{	return 18;	}
	else if	(Wld_IsTime(19,00, 20,00))	{	return 19;	}
	else if	(Wld_IsTime(20,00, 21,00))	{	return 20;	}
	else if	(Wld_IsTime(21,00, 22,00))	{	return 21;	}
	else if	(Wld_IsTime(22,00, 23,00))	{	return 22;	}
	else if	(Wld_IsTime(23,00, 00,00))	{	return 23;	};
	
	return -1;
};

///******************************************************************************************
/// Trading
///******************************************************************************************
func void B_SetSellingValuePercent(var int percent)
{
	percent = divf(mkf(percent), mkf(100));
	MEM_WriteInt(11211032, percent);
	MEM_WriteInt(MEM_ReadInt(MEM_InformationMan.DlgTrade + 248) + 268, percent);
};

func int C_IsInventoryOpen()
{
	var oCNpc her; her = Hlp_GetNpc(hero);
	CALL__thiscall(_@(her.inventory2_vtbl), oCItemContainer__IsOpen);
	return CALL_RetValAsInt();
};
