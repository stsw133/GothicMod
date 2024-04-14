///******************************************************************************************
///	MOD_Loading
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
