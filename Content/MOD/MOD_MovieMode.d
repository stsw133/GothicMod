///******************************************************************************************
///	MOD_MovieMode
///******************************************************************************************

var int movieMode;

var int MemoKey1;
var int MemoKey2;

///******************************************************************************************
func void MovieMode_SetMemoKeys()
{
	if (MEM_KeyState(KEY_NUMPAD0) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 0;	}	else	{	MemoKey1 = 0;	};	};
	if (MEM_KeyState(KEY_NUMPAD1) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 1;	}	else	{	MemoKey1 = 1;	};	};
	if (MEM_KeyState(KEY_NUMPAD2) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 2;	}	else	{	MemoKey1 = 2;	};	};
	if (MEM_KeyState(KEY_NUMPAD3) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 3;	}	else	{	MemoKey1 = 3;	};	};
	if (MEM_KeyState(KEY_NUMPAD4) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 4;	}	else	{	MemoKey1 = 4;	};	};
	if (MEM_KeyState(KEY_NUMPAD5) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 5;	}	else	{	MemoKey1 = 5;	};	};
	if (MEM_KeyState(KEY_NUMPAD6) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 6;	}	else	{	MemoKey1 = 6;	};	};
	if (MEM_KeyState(KEY_NUMPAD7) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 7;	}	else	{	MemoKey1 = 7;	};	};
	if (MEM_KeyState(KEY_NUMPAD8) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 8;	}	else	{	MemoKey1 = 8;	};	};
	if (MEM_KeyState(KEY_NUMPAD9) == KEY_PRESSED)	{	if (MemoKey1 != -1)	{	MemoKey2 = 9;	}	else	{	MemoKey1 = 9;	};	};
};

///******************************************************************************************
///	Key Functions
///******************************************************************************************
func void MovieMode_SetFaceAni()
{
	MovieMode_SetMemoKeys();
	
	if (MemoKey2 != -1)
	{
		var string shlp; shlp = IntToString(MemoKey1); shlp = ConcatStrings(shlp,IntToString(MemoKey2));
		shlp = ConcatStrings("F ",shlp);
		Print(shlp);
		
		if (MemoKey1 == 1 && MemoKey2 == 1)												{	Mdl_StartFaceAni (hero, "S_NEUTRAL", 1, -1);		}
		else if (MemoKey1 == 2 && MemoKey2 == 2)										{	Mdl_StartFaceAni (hero, "S_EYESCLOSED", 1, -1);		}
		else if (MemoKey1 == 2 && MemoKey2 == 1) || (MemoKey1 == 1 && MemoKey2 == 2)		{	Mdl_StartFaceAni (hero, "S_EYESCLOSED", 0.4, -1);	}
		else if (MemoKey1 == 3 && MemoKey2 == 3)										{	Mdl_StartFaceAni (hero, "T_HURT", 1, -1);			}
		else if (MemoKey1 == 3 && MemoKey2 == 1) || (MemoKey1 == 1 && MemoKey2 == 3)		{	Mdl_StartFaceAni (hero, "T_HURT", 0.5, -1);			}
		else if (MemoKey1 == 4 && MemoKey2 == 4)										{	Mdl_StartFaceAni (hero, "S_ANGRY", 1, -1);			}
		else if (MemoKey1 == 4 && MemoKey2 == 1) || (MemoKey1 == 1 && MemoKey2 == 4)		{	Mdl_StartFaceAni (hero, "S_ANGRY", 0.6, -1);			}
		else if (MemoKey1 == 4 && MemoKey2 == 6) || (MemoKey1 == 6 && MemoKey2 == 4)		{	Mdl_StartFaceAni (hero, "S_HOSTILE", 1, -1);		}
		else if (MemoKey1 == 4 && MemoKey2 == 5) || (MemoKey1 == 5 && MemoKey2 == 4)		{	Mdl_StartFaceAni (hero, "S_HOSTILE", 0.5, -1);		}
		else if (MemoKey1 == 5 && MemoKey2 == 5)										{	Mdl_StartFaceAni (hero, "S_FRIGHTENED", 1, -1);		}
		else if (MemoKey1 == 5 && MemoKey2 == 1) || (MemoKey1 == 1 && MemoKey2 == 5)		{	Mdl_StartFaceAni (hero, "S_FRIGHTENED", 0.5, -1);	}
		else if (MemoKey1 == 6 && MemoKey2 == 6) 										{	Mdl_StartFaceAni (hero, "S_FRIENDLY", 1, -1);		}
		else if (MemoKey1 == 6 && MemoKey2 == 1) || (MemoKey1 == 1 && MemoKey2 == 6)		{	Mdl_StartFaceAni (hero, "S_FRIENDLY", 0.4, -1);		};
		
		MemoKey1 = -1;
		MemoKey2 = -1;
	};
};
///******************************************************************************************
func void MovieMode_DialogGesture()
{
	MovieMode_SetMemoKeys();
	
	if (MemoKey2 != -1)
	{
		var string shlp; shlp = IntToString(MemoKey1); shlp = ConcatStrings(shlp,IntToString(MemoKey2));
		shlp = ConcatStrings("Z ",shlp);
		Print(shlp);
		
		if (MemoKey1 != 6)			{	Mdl_StartFaceAni (hero, "VISEME", 1, -1);	}
		else if (MemoKey2 == 1)		{	B_Say_Overlay (hero, hero, "$Aargh_1");		}
		else if (MemoKey2 == 2)		{	Mdl_StartFaceAni (hero, "VISEME", 0.2, -1);	}
		else if (MemoKey2 == 3)		{	Mdl_StartFaceAni (hero, "VISEME", 0.4, -1);	}
		else if (MemoKey2 == 4)		{	Mdl_StartFaceAni (hero, "VISEME", 0.6, -1);	}
		else if (MemoKey2 == 5)		{	Mdl_StartFaceAni (hero, "VISEME", 0.8, -1);	}
		else if (MemoKey2 == 6)		{	Mdl_StartFaceAni (hero, "VISEME", 1.0, -1);	};
		
		if (MemoKey1 == 1 && MemoKey2 == 1)			{	AI_PlayAni (hero, "T_DIALOGGESTURE_01");	}
		else if (MemoKey1 == 1 && MemoKey2 == 2)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_02");	}
		else if (MemoKey1 == 1 && MemoKey2 == 3)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_03");	}
		else if (MemoKey1 == 1 && MemoKey2 == 4)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_04");	}
		else if (MemoKey1 == 1 && MemoKey2 == 5)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_05");	}
		else if (MemoKey1 == 1 && MemoKey2 == 6)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_06");	}
		else if (MemoKey1 == 2 && MemoKey2 == 1)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_07");	}
		else if (MemoKey1 == 2 && MemoKey2 == 2)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_08");	}
		else if (MemoKey1 == 2 && MemoKey2 == 3)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_09");	}
		else if (MemoKey1 == 2 && MemoKey2 == 4)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_10");	}
		else if (MemoKey1 == 2 && MemoKey2 == 5)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_11");	}
		else if (MemoKey1 == 2 && MemoKey2 == 6)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_12");	}
		else if (MemoKey1 == 3 && MemoKey2 == 1)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_13");	}
		else if (MemoKey1 == 3 && MemoKey2 == 2)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_14");	}
		else if (MemoKey1 == 3 && MemoKey2 == 3)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_15");	}
		else if (MemoKey1 == 3 && MemoKey2 == 4)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_16");	}
		else if (MemoKey1 == 3 && MemoKey2 == 5)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_17");	}
		else if (MemoKey1 == 3 && MemoKey2 == 6)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_18");	}
		else if (MemoKey1 == 4 && MemoKey2 == 1)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_19");	}
		else if (MemoKey1 == 4 && MemoKey2 == 2)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_20");	}
		else if (MemoKey1 == 4 && MemoKey2 == 3)	{	AI_PlayAni (hero, "T_DIALOGGESTURE_21");	};
		
		MemoKey1 = -1;
		MemoKey2 = -1;
	};
};
///******************************************************************************************
func void MovieMode_ExecSubScript()
{
	MovieMode_SetMemoKeys();
	
	if (MemoKey1 != -1)
	{
		var string shlp; shlp = IntToString(MemoKey1); //shlp = ConcatStrings(shlp,IntToString(MemoKey2));
		shlp = ConcatStrings("NumDel ",shlp);
		Print(shlp);
		
		o_hero = Hlp_GetNpc(hero);
		o_other = MEM_PtrToInst(o_hero.focus_vob);
		
		if (MemoKey1 == 1)			{	B_LookAtNpc(o_other,hero);								}
		else if (MemoKey1 == 2)		{	B_StopLookAt(o_other);									}
		else if (MemoKey1 == 3)		{	Mdl_StartFaceAni(o_other,"VISEME",1,-1);				}
		else if (MemoKey1 == 4)		{	AI_DrawWeapon(o_other);									}
		else if (MemoKey1 == 5)		{	AI_RemoveWeapon(o_other);								}
		else if (MemoKey1 == 6)		{	B_Say_Overlay (o_other, o_other, "$Aargh_1");			};
		
		MemoKey1 = -1;
	};
};
///******************************************************************************************
func void MovieMode_SetHeadDirection()
{
	MovieMode_SetMemoKeys();
	
	if (MemoKey1 != -1)
	{
		var string shlp; shlp = IntToString(MemoKey1); //shlp = ConcatStrings(shlp,IntToString(MemoKey2));
		shlp = ConcatStrings(", ",shlp);
		Print(shlp);
		
		if (MemoKey1 == 1)			{	AI_PlayAni (hero, "C_LOOK_4");	}
		else if (MemoKey1 == 2)		{	AI_PlayAni (hero, "C_LOOK_8");	}
		else if (MemoKey1 == 3)		{	AI_PlayAni (hero, "C_LOOK_6");	}
		else if (MemoKey1 == 4)		{	AI_PlayAni (hero, "C_LOOK_1");	}
		else if (MemoKey1 == 5)		{	AI_PlayAni (hero, "C_LOOK_2");	}
		else if (MemoKey1 == 6)		{	AI_PlayAni (hero, "C_LOOK_3");	};
		
		MemoKey1 = -1;
	};
};
func void MovieMode_SetArmDirection()
{
	MovieMode_SetMemoKeys();
	
	if (MemoKey1 != -1)
	{
		var string shlp; shlp = IntToString(MemoKey1); //shlp = ConcatStrings(shlp,IntToString(MemoKey2));
		shlp = ConcatStrings(". ",shlp);
		Print(shlp);
		
		if (MemoKey1 == 1)			{	AI_PlayAni (hero, "C_POINT_4");	}
		else if (MemoKey1 == 2)		{	AI_PlayAni (hero, "C_POINT_8");	}
		else if (MemoKey1 == 3)		{	AI_PlayAni (hero, "C_POINT_6");	}
		else if (MemoKey1 == 4)		{	AI_PlayAni (hero, "C_POINT_1");	}
		else if (MemoKey1 == 5)		{	AI_PlayAni (hero, "C_POINT_2");	}
		else if (MemoKey1 == 6)		{	AI_PlayAni (hero, "C_POINT_3");	};
		
		MemoKey1 = -1;
	};
};
