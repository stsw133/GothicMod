///******************************************************************************************
/// MOD_MovieMode
///******************************************************************************************

var int MOD_MemoKey1;
var int MOD_MemoKey2;

func void MOD_SetMemoKeys()
{
	if (MEM_KeyState(KEY_NUMPAD0) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 0;	}	else	{	MOD_MemoKey1 = 0;	};	};
	if (MEM_KeyState(KEY_NUMPAD1) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 1;	}	else	{	MOD_MemoKey1 = 1;	};	};
	if (MEM_KeyState(KEY_NUMPAD2) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 2;	}	else	{	MOD_MemoKey1 = 2;	};	};
	if (MEM_KeyState(KEY_NUMPAD3) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 3;	}	else	{	MOD_MemoKey1 = 3;	};	};
	if (MEM_KeyState(KEY_NUMPAD4) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 4;	}	else	{	MOD_MemoKey1 = 4;	};	};
	if (MEM_KeyState(KEY_NUMPAD5) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 5;	}	else	{	MOD_MemoKey1 = 5;	};	};
	if (MEM_KeyState(KEY_NUMPAD6) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 6;	}	else	{	MOD_MemoKey1 = 6;	};	};
	if (MEM_KeyState(KEY_NUMPAD7) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 7;	}	else	{	MOD_MemoKey1 = 7;	};	};
	if (MEM_KeyState(KEY_NUMPAD8) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 8;	}	else	{	MOD_MemoKey1 = 8;	};	};
	if (MEM_KeyState(KEY_NUMPAD9) == KEY_PRESSED)	{	if (MOD_MemoKey1 != -1)	{	MOD_MemoKey2 = 9;	}	else	{	MOD_MemoKey1 = 9;	};	};
};

///******************************************************************************************
/// MOD_MovieMode_Ani
///******************************************************************************************

var string MOD_MemoKey_CurrentAni;
var string MOD_MemoKey_Ani[10];
var int MOD_MemoKey_AniParams[10];

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

func void MOD_MovieMode_DoAni_All(var C_Npc oth, var C_Npc slf)
{
	AI_PlayAni (oth, MOD_MemoKey_CurrentAni);
};

func void MOD_MovieMode_DoAni()
{
	MOD_SetMemoKeys();
	
	if (MEM_KeyState(MEM_GetKey("keyDown")) == KEY_PRESSED || MEM_KeyState(MEM_GetSecondaryKey("keyDown")) == KEY_PRESSED)
	{
		AI_PlayAni (hero, "T_QUICKTURN");
		return;
	}
	else if (MOD_MemoKey1 == -1)
	{
		return;
	};
	
	var string parameter; parameter = MEM_ReadStatStringArr(MOD_MemoKey_Ani, MOD_MemoKey1);
	if (!Hlp_StrCmp(parameter, ""))
	{
		var int type; type = MEM_ReadStatArr(MOD_MemoKey_AniParams, MOD_MemoKey1);
		
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
	
	Print(ConcatStrings("V ", IntToString(MOD_MemoKey1)));
	MOD_MemoKey1 = -1;
};

///******************************************************************************************
/// MOD_MovieMode_DialogGesture
///******************************************************************************************
func void MOD_MovieMode_DoDialogGesture()
{
	MOD_SetMemoKeys();
	
	if (MOD_MemoKey2 == -1)
	{
		return;
	};
	
	if		((MOD_MemoKey1*10 + MOD_MemoKey2) <= 21)		{	Mdl_StartFaceAni (hero, "VISEME", 1.0, -1);	}
	else if	(MOD_MemoKey1 == 2 && MOD_MemoKey2 == 2)	{	Mdl_StartFaceAni (hero, "VISEME", 0.8, -1);	}
	else if	(MOD_MemoKey1 == 2 && MOD_MemoKey2 == 3)	{	Mdl_StartFaceAni (hero, "VISEME", 0.6, -1);	}
	else if	(MOD_MemoKey1 == 2 && MOD_MemoKey2 == 4)	{	Mdl_StartFaceAni (hero, "VISEME", 0.4, -1);	}
	else if	(MOD_MemoKey1 == 2 && MOD_MemoKey2 == 5)	{	Mdl_StartFaceAni (hero, "VISEME", 0.2, -1);	};
	
	if		(MOD_MemoKey1 == 0 && MOD_MemoKey2 == 1)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_01");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 2)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_02");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 3)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_03");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 4)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_04");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 5)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_05");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 6)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_06");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 7)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_07");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 8)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_08");	}
	else if (MOD_MemoKey1 == 0 && MOD_MemoKey2 == 9)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_09");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 0)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_10");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 1)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_11");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 2)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_12");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 3)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_13");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 4)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_14");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 5)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_15");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 6)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_16");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 7)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_17");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 8)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_18");	}
	else if (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 9)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_19");	}
	else if (MOD_MemoKey1 == 2 && MOD_MemoKey2 == 0)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_20");	}
	else if (MOD_MemoKey1 == 2 && MOD_MemoKey2 == 1)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_21");	}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 1)	{	AI_PlayAni (hero, "C_LOOK_7");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 2)	{	AI_PlayAni (hero, "C_LOOK_8");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 3)	{	AI_PlayAni (hero, "C_LOOK_9");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 4)	{	AI_PlayAni (hero, "C_LOOK_4");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 5)	{	AI_PlayAni (hero, "C_LOOK_5");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 6)	{	AI_PlayAni (hero, "C_LOOK_6");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 7)	{	AI_PlayAni (hero, "C_LOOK_1");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 8)	{	AI_PlayAni (hero, "C_LOOK_2");				}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 9)	{	AI_PlayAni (hero, "C_LOOK_3");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 1)	{	AI_PlayAni (hero, "C_POINT_7");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 2)	{	AI_PlayAni (hero, "C_POINT_8");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 3)	{	AI_PlayAni (hero, "C_POINT_9");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 4)	{	AI_PlayAni (hero, "C_POINT_4");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 5)	{	AI_PlayAni (hero, "C_POINT_5");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 6)	{	AI_PlayAni (hero, "C_POINT_6");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 7)	{	AI_PlayAni (hero, "C_POINT_1");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 8)	{	AI_PlayAni (hero, "C_POINT_2");				}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 9)	{	AI_PlayAni (hero, "C_POINT_3");				};
	
	Print(ConcatStrings(ConcatStrings("Z ", IntToString(MOD_MemoKey1)), IntToString(MOD_MemoKey2)));
	//MOD_MemoKey1 = -1;
	MOD_MemoKey2 = -1;
};

///******************************************************************************************
/// MOD_MovieMode_FaceAni
///******************************************************************************************
func void MOD_MovieMode_DoFaceAni()
{
	MOD_SetMemoKeys();
	
	if (MOD_MemoKey2 == -1)
	{
		return;
	};
	
	if		(MOD_MemoKey1 == 1 && MOD_MemoKey2 == 1)											{	Mdl_StartFaceAni (hero, "S_NEUTRAL", 1, -1);			}
	else if (MOD_MemoKey1 == 2 && MOD_MemoKey2 == 2)											{	Mdl_StartFaceAni (hero, "S_EYESCLOSED", 1, -1);		}
	else if (MOD_MemoKey1 == 2 && MOD_MemoKey2 == 1) || (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 2)	{	Mdl_StartFaceAni (hero, "S_EYESCLOSED", 0.4, -1);	}
	else if (MOD_MemoKey1 == 3 && MOD_MemoKey2 == 3)											{	Mdl_StartFaceAni (hero, "T_HURT", 1, -1);			}
	else if (MOD_MemoKey1 == 3 && MOD_MemoKey2 == 1) || (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 3)	{	Mdl_StartFaceAni (hero, "T_HURT", 0.5, -1);			}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 4)											{	Mdl_StartFaceAni (hero, "S_ANGRY", 1, -1);			}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 1) || (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 4)	{	Mdl_StartFaceAni (hero, "S_ANGRY", 0.6, -1);			}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 6) || (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 4)	{	Mdl_StartFaceAni (hero, "S_HOSTILE", 1, -1);			}
	else if (MOD_MemoKey1 == 4 && MOD_MemoKey2 == 5) || (MOD_MemoKey1 == 5 && MOD_MemoKey2 == 4)	{	Mdl_StartFaceAni (hero, "S_HOSTILE", 0.5, -1);		}
	else if (MOD_MemoKey1 == 5 && MOD_MemoKey2 == 5)											{	Mdl_StartFaceAni (hero, "S_FRIGHTENED", 1, -1);		}
	else if (MOD_MemoKey1 == 5 && MOD_MemoKey2 == 1) || (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 5)	{	Mdl_StartFaceAni (hero, "S_FRIGHTENED", 0.5, -1);	}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 6) 											{	Mdl_StartFaceAni (hero, "S_FRIENDLY", 1, -1);		}
	else if (MOD_MemoKey1 == 6 && MOD_MemoKey2 == 1) || (MOD_MemoKey1 == 1 && MOD_MemoKey2 == 6)	{	Mdl_StartFaceAni (hero, "S_FRIENDLY", 0.4, -1);		};
	
	Print(ConcatStrings(ConcatStrings("F ", IntToString(MOD_MemoKey1)), IntToString(MOD_MemoKey2)));
	//MOD_MemoKey1 = -1;
	MOD_MemoKey2 = -1;
};

///******************************************************************************************
/// MOD_MovieMode_SubScript
///******************************************************************************************
func void MOD_MovieMode_ExecSubScript()
{
	MOD_SetMemoKeys();
	
	if (MOD_MemoKey2 == -1)
	{
		return;
	};
	
	//o_hero = Hlp_GetNpc(hero);
	//o_other = MEM_PtrToInst(o_hero.focus_vob);
	
	if		(MOD_MemoKey1 == 1)		{	B_LookAtNpc(o_other, hero);						}
	else if	(MOD_MemoKey1 == 2)		{	B_StopLookAt(o_other);							}
	else if	(MOD_MemoKey1 == 3)		{	Mdl_StartFaceAni(o_other, "VISEME", 1, -1);		}
	else if	(MOD_MemoKey1 == 4)		{	B_TurnToNpc (o_other, hero);					}
	else if	(MOD_MemoKey1 == 5)		{	AI_TurnAway (o_other, hero);					}
	else if	(MOD_MemoKey1 == 6)		{	B_Say_Overlay (o_other, o_other, "$Aargh_1");	};
	
	Print(ConcatStrings("NumDel ", IntToString(MOD_MemoKey1)));
	MOD_MemoKey1 = -1;
};

///******************************************************************************************
/// MOD_MoveMode_Camera
///******************************************************************************************

var int MOD_MovieMode_CamPos[120];

func void MOD_MovieMode_SetCamera (var int slot)
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
};

func void MOD_MovieMode_DoCamera()
{
	MOD_SetMemoKeys();
	
	if (MOD_MemoKey1 != -1)
	{
		return;
	};
	
	MEM_InitGlobalInst();
	var zCVob cam; cam = MEM_PtrToInst(MEM_Camera.connectedVob);
	
	var int i; i = 0;
	repeat(i, 12);
	if (i != 4)
	{
		MEM_WriteStatArr(cam.trafoObjToWorld, i, MEM_ReadStatArr(MOD_MovieMode_CamPos, MOD_MemoKey1*12 + i));
	};
	end;
	
	MOD_MemoKey1 = -1;
};
