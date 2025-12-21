///******************************************************************************************
instance spellFX_SuperSlowTime (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	
	visName_S				=	"time.slw";
	userString[0]			=	"0.1";
	userString[1]			=	"1.4";
	emFXLifeSpan			=	120;
	emFXTriggerDelay		=	0;
};

///******************************************************************************************
instance SPELLFX_SETRONEYES (CFx_Base_Proto)
{
	visname_s				=	"PFX_SETRONEYES_LEFT";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"BIP01 HEAD";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	true;
	emFXCreate_S			=	"SPELLFX_SETRONEYES_RIGHT";
	emFXCreatedOwnTrj		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_SETRONEYES_KEY_CAST (C_ParticleFxEmitKey)
{
	lightrange				=	750;
};

instance SPELLFX_SETRONEYES_RIGHT (CFx_Base_Proto)
{
	visname_s				=	"PFX_SETRONEYES_RIGHT";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"BIP01 HEAD";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	true;
	emFXCreatedOwnTrj		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_SETRONEYES_RIGHT_KEY_CAST (C_ParticleFxEmitKey)
{
	lightrange				=	750;
};
