///******************************************************************************************
///	Visual Effects
///******************************************************************************************
INSTANCE SPELLFX_CRYSTALGLOW (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_CRYSTALGLOW";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	lightpresetname			=	"JUSTWHITE";
};
INSTANCE SPELLFX_CRYSTALGLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	2000;
};

///******************************************************************************************
INSTANCE SPELLFX_SOULDUST (CFX_BASE_PROTO)
{
	visname_S 				=	"SOULDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"JUSTWHITE";
	emAdjustShpToOrigin		=	1;
};
INSTANCE SPELLFX_SOULDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

INSTANCE SPELLFX_CHAOSDUST (CFX_BASE_PROTO)
{
	visname_S 				=	"CHAOSDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"JUSTWHITE";
	emAdjustShpToOrigin		=	1;
};
INSTANCE SPELLFX_CHAOSDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

INSTANCE SPELLFX_TIMEDUST (CFX_BASE_PROTO)
{
	visname_S 				=	"TIMEDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"JUSTWHITE";
	emAdjustShpToOrigin		=	1;
};
INSTANCE SPELLFX_TIMEDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

///******************************************************************************************
INSTANCE SPELLFX_FIREARMOR_SMELL (CFX_BASE_PROTO)
{
	visname_s				=	"SMELL_MODEL_KAIRO";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

INSTANCE SPELLFX_FIREARMOR_MAGICENERGY (CFX_BASE_PROTO)
{
	visname_s				=	"MAGICENERGY_MODEL_KAIRO";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

INSTANCE SPELLFX_FIREARMOR_WHITE (CFX_BASE_PROTO)
{
	visname_s				=	"WHITE_MODEL_KAIRO";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	lightPresetname			=	"JUSTWHITE";
	emAdjustShpToOrigin		=	1;
};
INSTANCE SPELLFX_FIREARMOR_WHITE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	1000;
};

INSTANCE SPELLFX_FIREARMOR_ENERGY (CFX_BASE_PROTO)
{
	visname_s				=	"URIZIEL_ENERGY";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

///******************************************************************************************
INSTANCE SPELLFX_ACHAOS_BLUE (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_BLUE";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
	lightPresetname			=	"JUSTWHITE";
};
INSTANCE SPELLFX_ACHAOS_BLUE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	1000;
};

INSTANCE SPELLFX_ACHAOS_RED (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_RED";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
	lightPresetname			=	"JUSTWHITE";
};
INSTANCE SPELLFX_ACHAOS_RED_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	1000;
};

INSTANCE SPELLFX_ACHAOS_GREEN (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_GREEN";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
	lightPresetname			=	"JUSTWHITE";
};
INSTANCE SPELLFX_ACHAOS_GREEN_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	1000;
};

INSTANCE SPELLFX_ACHAOS_YELLOW (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_YELLOW";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
	lightPresetname			=	"JUSTWHITE";
};
INSTANCE SPELLFX_ACHAOS_YELLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	1000;
};

INSTANCE SPELLFX_ACHAOS_PINK (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_PINK";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

///******************************************************************************************
INSTANCE SPELLFX_IPENTA_BLUE (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_IPENTA_BLUE";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
	lightPresetname			=	"JUSTWHITE";
};
INSTANCE SPELLFX_IPENTA_BLUE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	3000;
};

///******************************************************************************************
INSTANCE SPELLFX_WHITEEYES (CFX_BASE_PROTO)
{
	visname_s				=	"WHITEEYES_LEFT";
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
	emAdjustShpToOrigin		=	1;
	emFXCreate_S			=	"SPELLFX_WHITEEYES_RIGHT";
	emFXCreatedOwnTrj		=	1;
	lightPresetname   		=	"JUSTWHITE";
};
INSTANCE SPELLFX_WHITEEYES_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	250;
};

INSTANCE SPELLFX_WHITEEYES_RIGHT (CFX_BASE_PROTO)
{
	visname_s				=	"WHITEEYES_RIGHT";
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
	emAdjustShpToOrigin		=	1;
	emFXCreatedOwnTrj		=	1;
	lightPresetname   		=	"JUSTWHITE";
};
INSTANCE SPELLFX_WHITEEYES_RIGHT_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	250;
};
