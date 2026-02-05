///******************************************************************************************
/// MOD_MovieMode
///******************************************************************************************

var int MOD_MovieMode_SelectedSet;

var string MOD_MemoKey_CurrentAni;
var string MOD_MemoKey_Ani[10];
var int MOD_MemoKey_AniParams[10];

var int MOD_MovieMode_CamPos[120];
var int MOD_MovieMode_CamSaved[10];

///******************************************************************************************
func int MOD_MovieMode_ReadNumpadKey()
{
	if (MEM_KeyState(KEY_NUMPAD1) == KEY_PRESSED)	{ return 1; };
	if (MEM_KeyState(KEY_NUMPAD2) == KEY_PRESSED)	{ return 2; };
	if (MEM_KeyState(KEY_NUMPAD3) == KEY_PRESSED)	{ return 3; };
	if (MEM_KeyState(KEY_NUMPAD4) == KEY_PRESSED)	{ return 4; };
	if (MEM_KeyState(KEY_NUMPAD5) == KEY_PRESSED)	{ return 5; };
	if (MEM_KeyState(KEY_NUMPAD6) == KEY_PRESSED)	{ return 6; };
	if (MEM_KeyState(KEY_NUMPAD7) == KEY_PRESSED)	{ return 7; };
	if (MEM_KeyState(KEY_NUMPAD8) == KEY_PRESSED)	{ return 8; };
	if (MEM_KeyState(KEY_NUMPAD9) == KEY_PRESSED)	{ return 9; };
	if (MEM_KeyState(KEY_NUMPAD0) == KEY_PRESSED)	{ return 0; };
	
	return -1;
};

///******************************************************************************************
func void MOD_MovieMode_SelectSet()
{
	var int selected; selected = MOD_MovieMode_ReadNumpadKey();
	if (selected < 1 || selected > 9)
	{
		return;
	};
	
	MOD_MovieMode_SelectedSet = selected;
	Print(ConcatStrings("Wybrano zestaw ", IntToString(selected)));
};

func int MOD_MovieMode_PrepareTarget()
{
	o_hero = Hlp_GetNpc(hero);
	if (Hlp_Is_oCNpc(o_hero.focus_vob))
	{
		o_other = MEM_PtrToInst(o_hero.focus_vob);
		return true;
	};
	
	return false;
};

func void MOD_MovieMode_ExecuteAction(var int actionIndex)
{
	if (MOD_MovieMode_SelectedSet < 1)
	{
		MOD_MovieMode_SelectedSet = 1;
	};
	
	if (MOD_MovieMode_SelectedSet == 1)
	{
		if		(actionIndex == 1)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_01"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 2)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_02"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 3)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_03"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 4)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_04"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 5)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_05"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 6)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_06"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 7)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_07"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 8)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_08"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 9)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_09"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	};
	}
	else if (MOD_MovieMode_SelectedSet == 2)
	{
		if		(actionIndex == 1)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_10"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 2)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_11"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 3)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_12"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 4)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_13"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 5)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_14"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 6)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_15"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 7)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_16"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 8)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_17"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	}
		else if	(actionIndex == 9)	{	AI_PlayAni(hero, "T_DIALOGGESTURE_18"); Mdl_StartFaceAni(hero, "VISEME", 1, -1);	};
	}
	else if (MOD_MovieMode_SelectedSet == 3)
	{
		if		(actionIndex == 1)	{	Mdl_StartFaceAni(hero, "S_NEUTRAL", 1, -1);		}
		else if	(actionIndex == 2)	{	Mdl_StartFaceAni(hero, "S_EYESCLOSED", 0.5, -1);	}
		else if	(actionIndex == 3)	{	Mdl_StartFaceAni(hero, "S_EYESCLOSED", 1, -1);	}
		else if	(actionIndex == 4)	{	Mdl_StartFaceAni(hero, "S_FRIGHTENED", 1, -1);	}
		else if	(actionIndex == 5)	{	Mdl_StartFaceAni(hero, "S_FRIENDLY", 0.5, -1);	}
		else if	(actionIndex == 6)	{	Mdl_StartFaceAni(hero, "T_HURT", 1, -1);			}
		else if	(actionIndex == 7)	{	Mdl_StartFaceAni(hero, "S_ANGRY", 1, -1);		}
		else if	(actionIndex == 8)	{	Mdl_StartFaceAni(hero, "S_HOSTILE", 1, -1);		}
		else if	(actionIndex == 9)	{	Mdl_StartFaceAni(hero, "VISEME", 0.5, -1);		};
	}
	else if (MOD_MovieMode_SelectedSet == 4)
	{
		if		(actionIndex == 1)	{	AI_PlayAni(hero, "T_QUICKTURN");		}
		else if	(actionIndex == 2)	{	AI_PlayAni(hero, "S_RUN");				}
		else if	(actionIndex == 3)	{	AI_PlayAni(hero, "S_WALK");				}
		else if	(actionIndex == 4)	{	AI_PlayAni(hero, "T_GESTURE_TELL");		}
		else if	(actionIndex == 5)	{	AI_PlayAni(hero, "T_GESTURE_YES");		}
		else if	(actionIndex == 6)	{	AI_PlayAni(hero, "T_GESTURE_NO");		}
		else if	(actionIndex == 7)	{	AI_PlayAni(hero, "T_GESTURE_SHRUG");	}
		else if	(actionIndex == 8)	{	AI_PlayAni(hero, "T_GESTURE_MAKE");		}
		else if	(actionIndex == 9)	{	AI_PlayAni(hero, "T_GESTURE_OFFER");	};
	}
	else if (MOD_MovieMode_SelectedSet == 5)
	{
		if (!MOD_MovieMode_PrepareTarget())
		{
			Print("Brak postaci w fokusie.");
			return;
		};
		Npc_ClearAIQueue(o_other);
		
		if		(actionIndex == 1)	{	AI_DrawWeapon(o_other);									}
		else if	(actionIndex == 2)	{	AI_RemoveWeapon(o_other);								}
		else if	(actionIndex == 3)	{	AI_PointAtNpc(o_other, hero);							}
		else if	(actionIndex == 4)	{	AI_StopPointAt(o_other);								}
		else if	(actionIndex == 5)	{	B_LookAtNpc(o_other, hero);								}
		else if	(actionIndex == 6)	{	B_StopLookAt(o_other);									}
		else if	(actionIndex == 7)	{	B_TurnToNpc(o_other, hero); B_LookAtNpc(o_other, hero);	}
		else if	(actionIndex == 8)	{	AI_TurnAway(o_other, hero);								}
		else if	(actionIndex == 9)	{	Npc_ClearAIQueue(o_other); AI_Teleport(o_other, "TOT");	};
	}
	else if (MOD_MovieMode_SelectedSet == 6)
	{
		if		(actionIndex == 1)	{	AI_SetNpcsToState(hero, ZS_ObservePlayer, 1000);		}
		else if	(actionIndex == 2)	{	AI_SetNpcsToState(hero, ZS_MagicFlee, 1000);			};
	}
	else if (MOD_MovieMode_SelectedSet == 7)
	{
		if		(actionIndex == 1)	{	AI_PlayAni(hero, "C_LOOK_7");	}
		else if	(actionIndex == 2)	{	AI_PlayAni(hero, "C_LOOK_8");	}
		else if	(actionIndex == 3)	{	AI_PlayAni(hero, "C_LOOK_9");	}
		else if	(actionIndex == 4)	{	AI_PlayAni(hero, "C_LOOK_4");	}
		else if	(actionIndex == 5)	{	AI_PlayAni(hero, "C_LOOK_5");	}
		else if	(actionIndex == 6)	{	AI_PlayAni(hero, "C_LOOK_6");	}
		else if	(actionIndex == 7)	{	AI_PlayAni(hero, "C_LOOK_1");	}
		else if	(actionIndex == 8)	{	AI_PlayAni(hero, "C_LOOK_2");	}
		else if	(actionIndex == 9)	{	AI_PlayAni(hero, "C_LOOK_3");	};
	}
	else if (MOD_MovieMode_SelectedSet == 8)
	{
		if		(actionIndex == 1)	{	AI_PlayAni(hero, "C_POINT_7");	}
		else if	(actionIndex == 2)	{	AI_PlayAni(hero, "C_POINT_8");	}
		else if	(actionIndex == 3)	{	AI_PlayAni(hero, "C_POINT_9");	}
		else if	(actionIndex == 4)	{	AI_PlayAni(hero, "C_POINT_4");	}
		else if	(actionIndex == 5)	{	AI_PlayAni(hero, "C_POINT_5");	}
		else if	(actionIndex == 6)	{	AI_PlayAni(hero, "C_POINT_6");	}
		else if	(actionIndex == 7)	{	AI_PlayAni(hero, "C_POINT_1");	}
		else if	(actionIndex == 8)	{	AI_PlayAni(hero, "C_POINT_2");	}
		else if	(actionIndex == 9)	{	AI_PlayAni(hero, "C_POINT_3");	};
	}
	else if (MOD_MovieMode_SelectedSet == 9)
	{
		
	};
};

func void MOD_MovieMode_ExecuteSet()
{
	var int actionIndex; actionIndex = MOD_MovieMode_ReadNumpadKey();
	if (actionIndex < 1 || actionIndex > 9)
	{
		return;
	};
	
	MOD_MovieMode_ExecuteAction(actionIndex);
	Print(ConcatStrings("Wykonano akcjê ", IntToString(actionIndex)));
};

///******************************************************************************************
/// MOD_MovieMode: animations
///******************************************************************************************
func string MOD_MovieMode_SetAni(var int slot, var int type, var string ani)
{
	if (slot >= 0 && slot <= 9)
	{
		MEM_WriteStatStringArr(MOD_MemoKey_Ani, slot, ani);
		MEM_WriteStatArr(MOD_MemoKey_AniParams, slot, type);
		return ConcatStrings(ConcatStrings(ConcatStrings("Ustawiono animacjê ", ani), " pod cyfr¹ "), IntToString(slot));
	};
	return "";
};

func void MOD_MovieMode_DoAni_All(var C_Npc oth, var C_Npc src)
{
	AI_PlayAni (oth, MOD_MemoKey_CurrentAni);
};

func void MOD_MovieMode_DoAni()
{
	var int slot; slot = MOD_MovieMode_ReadNumpadKey();
	
	if (MEM_KeyState(MEM_GetKey("keyDown")) == KEY_PRESSED || MEM_KeyState(MEM_GetSecondaryKey("keyDown")) == KEY_PRESSED)
	{
		AI_PlayAni (hero, "T_QUICKTURN");
		return;
	}
	else if (slot < 0 || slot > 9)
	{
		return;
	};
	
	var string parameter; parameter = MEM_ReadStatStringArr(MOD_MemoKey_Ani, slot);
	if (!Hlp_StrCmp(parameter, ""))
	{
		var int type; type = MEM_ReadStatArr(MOD_MemoKey_AniParams, slot);
		
		if (type == TARGET_COLLECT_CASTER)
		{
			AI_PlayAni (hero, parameter);
		}
		else if (type == TARGET_COLLECT_FOCUS)
		{
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			AI_PlayAni (o_other, parameter);
		}
		else if (type == TARGET_COLLECT_ALL)
		{
			MOD_MemoKey_CurrentAni = parameter;
			MOD_Broadcast (hero, MOD_MovieMode_DoAni_All);
		};
	};
	
	Print(ConcatStrings("key: ", IntToString(slot)));
};

///******************************************************************************************
/// MOD_MoveMode: camera
///******************************************************************************************
func void MOD_MovieMode_SaveCamera (var int slot)
{
	if (slot < 0 || slot > 9)
	{
		return;
	};
	
	MEM_InitGlobalInst();
	var zCVob cam; cam = MEM_PtrToInst(MEM_Camera.connectedVob);
	
	var int i; i = 0;
	repeat(i, 12);
	if (i != 4)
	{
		MEM_WriteStatArr(MOD_MovieMode_CamPos, slot*12 + i, MEM_ReadStatArr(cam.trafoObjToWorld, i));
	};
	end;
	
	MEM_WriteStatArr(MOD_MovieMode_CamSaved, slot, 1);
};

func void MOD_MovieMode_GetCamera()
{
	var int slot; slot = MOD_MovieMode_ReadNumpadKey();
	
	if (slot < 0 || slot > 9)
	{
		return;
	};
	
	if (!MEM_ReadStatArr(MOD_MovieMode_CamSaved, slot))
	{
		Print(ConcatStrings("Brak zapisanej kamery pod ", IntToString(slot)));
		return;
	};
	
	MEM_InitGlobalInst();
	var zCVob cam; cam = MEM_PtrToInst(MEM_Camera.connectedVob);
	
	var int i; i = 0;
	repeat(i, 12);
	if (i != 4)
	{
		MEM_WriteStatArr(cam.trafoObjToWorld, i, MEM_ReadStatArr(MOD_MovieMode_CamPos, slot*12 + i));
	};
	end;
};
