///******************************************************************************************
/// MOD_Menu
///******************************************************************************************
func void MOD_UpdateStatusMenuItem(var string name, var string val)
{
	var int itPtr;
	itPtr = MEM_GetMenuItemByString(name);
	
	if (!itPtr)
	{
		MEM_Error(ConcatStrings("MOD_UpdateStatusMenuItem: invalid menu item: ", name));
		return;
	};
	
	CALL_IntParam(true);
	CALL_IntParam(0);
	CALL_zStringPtrParam(val);
	CALL__thiscall(itPtr, 5114800);
};

func void MOD_StatusMenu_Init()
{
	const int done = false;
	if (!done)
	{
		HookEngineF(4707920, 6, MOD_UpdateStatusMenu);
		done = true;
	};
};

///******************************************************************************************
func void MOD_UpdateStatusMenu()
{
	/// chapter
	var string chapter; chapter = ConcatStrings("Rozdzia³ ", IntToString(Kapitel));
	
	if		(dLevel == DIFF_E)	{	chapter = ConcatStrings(chapter, " (³atwy)");		}
	else if	(dLevel == DIFF_M)	{	chapter = ConcatStrings(chapter, " (œredni)");		}
	else if	(dLevel == DIFF_H)	{	chapter = ConcatStrings(chapter, " (trudny)");		}
	else if	(dLevel == DIFF_V)	{	chapter = ConcatStrings(chapter, " (b. trudny)");	};
	
	MOD_UpdateStatusMenuItem("MENU_ITEM_CHAPTER", chapter);
	
	/// power
	MOD_UpdateStatusMenuItem("MENU_ITEM_ATTRIBUTE_5", IntToString(hero.attribute[ATR_POWER]));
	
	/// prot edge
	MOD_UpdateStatusMenuItem("MENU_ITEM_ARMOR_5", IntToString(hero.protection[PROT_EDGE]));
};

///******************************************************************************************
/// MOD_LoadingTexture
///******************************************************************************************
func void MOD_SetLoadingTexture(var string texname)
{
	var int len; len = STR_Len(texname);
	if (len != 11)
	{
		return;
	};
	
	var int sptr; sptr = StrInt_ToChar(texname);
	MEM_CopyBytes(sptr, 9118980, len);
	MEM_WriteInt(9118980 + len, MEM_ReadInt(9118980 + len) & (~255));
};

///******************************************************************************************
func void MOD_RandomLoadingTexture(var int type)
{
	var int rand;
	
	if (type == default)
	{
		rand = Hlp_Random(2);
		
		if (rand == 0)	{ MOD_SetLoadingTexture("LOAD_01.tga"); }
		else			{ MOD_SetLoadingTexture("LOAD_02.tga"); };
	};
};
