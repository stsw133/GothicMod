///******************************************************************************************
/// Items particles
///******************************************************************************************
instance SPELLFX_CRYSTALGLOW (CFX_BASE_PROTO)
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
instance SPELLFX_CRYSTALGLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	2000;
};

///******************************************************************************************
/// Dust particles
///******************************************************************************************
instance SPELLFX_SOULDUST (CFX_BASE_PROTO)
{
	visname_S 				=	"PFX_SOULDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"JUSTWHITE";
	emAdjustShpToOrigin		=	true;
};
instance SPELLFX_SOULDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

instance SPELLFX_CHAOSDUST (CFX_BASE_PROTO)
{
	visname_S 				=	"PFX_CHAOSDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"JUSTWHITE";
	emAdjustShpToOrigin		=	true;
};
instance SPELLFX_CHAOSDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

instance SPELLFX_TIMEDUST (CFX_BASE_PROTO)
{
	visname_S 				=	"PFX_TIMEDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"JUSTWHITE";
	emAdjustShpToOrigin		=	true;
};
instance SPELLFX_TIMEDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

///******************************************************************************************
/// Magic armor particles
///******************************************************************************************
instance SPELLFX_FIREARMOR_SMELL (CFX_BASE_PROTO)
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
	emAdjustShpToOrigin		=	true;
};

instance SPELLFX_FIREARMOR_MAGICENERGY (CFX_BASE_PROTO)
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
	emAdjustShpToOrigin		=	true;
};

instance SPELLFX_FIREARMOR_WHITE (CFX_BASE_PROTO)
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
	emAdjustShpToOrigin		=	true;
};
instance SPELLFX_FIREARMOR_WHITE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	1000;
};

instance SPELLFX_FIREARMOR_ENERGY (CFX_BASE_PROTO)
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
	emAdjustShpToOrigin		=	true;
};

///******************************************************************************************
/// Potion particles
///******************************************************************************************
instance SPELLFX_NIGHTVISION (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_NIGHTVISION_LEFT";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"BIP01 HEAD";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	600;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	true;
	emFXCreate_S			=	"SPELLFX_NIGHTVISION_RIGHT";
	emFXCreatedOwnTrj		=	true;
	lightPresetname   		=	"JUSTWHITE";
};
instance SPELLFX_NIGHTVISION_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	750;
};

instance SPELLFX_NIGHTVISION_RIGHT (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_NIGHTVISION_RIGHT";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"BIP01 HEAD";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	600;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	true;
	emFXCreatedOwnTrj		=	true;
	lightPresetname   		=	"JUSTWHITE";
};
instance SPELLFX_NIGHTVISION_RIGHT_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	750;
};

///******************************************************************************************
/// Buff particles
///******************************************************************************************
instance spellFX_DragonSkillGold (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DRAGONSKILLGOLD";
	emtrjeasevel 			=	0.01;
	emtrjmode_s 			=	"TARGET LINE";
	emTrjOriginNode 		=	"Bip01 Spine2";
	emTrjTargetNode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay		=	0.01;
};

///******************************************************************************************
/// Chaos armor particles
///******************************************************************************************
/*
instance SPELLFX_ACHAOS_BLUE (CFX_BASE_PROTO)
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
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
*/

instance SPELLFX_ACHAOS_BLUE (CFx_Base_Proto)
{
	visname_s				=	"PFX_ACHAOS_BLUE";
	emTrjOriginNode 		=	"BIP01 FIRE";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_BLUE1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"JUSTWHITE";
	emfxlifespan			=	-1;
};
instance SPELLFX_ACHAOS_BLUE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};
instance SPELLFX_ACHAOS_BLUE1 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_BLUE";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_BLUE2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_BLUE2 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_BLUE";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_BLUE3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_BLUE3 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_BLUE";
	emTrjOriginNode 		=	"BIP01 L HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_BLUE4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_BLUE4 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_BLUE";
	emTrjOriginNode 		=	"BIP01 R HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_BLUE5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_BLUE5 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_BLUE";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_BLUE6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_BLUE6 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_BLUE";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
};

///******************************************************************************************
instance SPELLFX_ACHAOS_RED (CFx_Base_Proto)
{
	visname_s				=	"PFX_ACHAOS_RED";
	emTrjOriginNode 		=	"BIP01 FIRE";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_RED1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"JUSTWHITE";
	emfxlifespan			=	-1;
};
instance SPELLFX_ACHAOS_RED_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};
instance SPELLFX_ACHAOS_RED1 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_RED";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_RED2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_RED2 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_RED";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_RED3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_RED3 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_RED";
	emTrjOriginNode 		=	"BIP01 L HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_RED4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_RED4 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_RED";
	emTrjOriginNode 		=	"BIP01 R HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_RED5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_RED5 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_RED";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_RED6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_RED6 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_RED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
};

///******************************************************************************************
instance SPELLFX_ACHAOS_GREEN (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_GREEN";
	emTrjOriginNode 		=	"BIP01 FIRE";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_GREEN1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightPresetname			=	"JUSTWHITE";
	emfxlifespan			=	-1;
};
instance SPELLFX_ACHAOS_GREEN_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};
instance SPELLFX_ACHAOS_GREEN1 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_GREEN";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_GREEN2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_GREEN2 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_GREEN";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_GREEN3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_GREEN3 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_GREEN";
	emTrjOriginNode 		=	"BIP01 L HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_GREEN4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_GREEN4 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_GREEN";
	emTrjOriginNode 		=	"BIP01 R HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_GREEN5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_GREEN5 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_GREEN";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_GREEN6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_GREEN6 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_GREEN";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
};

///******************************************************************************************
instance SPELLFX_ACHAOS_YELLOW (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_YELLOW";
	emTrjOriginNode 		=	"BIP01 FIRE";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_YELLOW1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"JUSTWHITE";
	emfxlifespan			=	-1;
};
instance SPELLFX_ACHAOS_YELLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};
instance SPELLFX_ACHAOS_YELLOW1 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_YELLOW";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_YELLOW2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_YELLOW2 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_YELLOW";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_YELLOW3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_YELLOW3 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_YELLOW";
	emTrjOriginNode 		=	"BIP01 L HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_YELLOW4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_YELLOW4 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_YELLOW";
	emTrjOriginNode 		=	"BIP01 R HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_YELLOW5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_YELLOW5 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_YELLOW";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_YELLOW6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_YELLOW6 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_YELLOW";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
};

///******************************************************************************************
instance SPELLFX_ACHAOS_MAGENTA (CFx_Base_Proto)
{
	visname_s				=	"PFX_ACHAOS_MAGENTA";
	emTrjOriginNode 		=	"BIP01 FIRE";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_MAGENTA1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"JUSTWHITE";
	emfxlifespan			=	-1;
};
instance SPELLFX_ACHAOS_MAGENTA_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};
instance SPELLFX_ACHAOS_MAGENTA1 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_MAGENTA";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_MAGENTA2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_MAGENTA2 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_MAGENTA";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_MAGENTA3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_MAGENTA3 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_MAGENTA";
	emTrjOriginNode 		=	"BIP01 L HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_MAGENTA4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_MAGENTA4 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_MAGENTA";
	emTrjOriginNode 		=	"BIP01 R HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_MAGENTA5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_MAGENTA5 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_MAGENTA";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_MAGENTA6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_MAGENTA6 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_MAGENTA";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
};

///******************************************************************************************
instance SPELLFX_ACHAOS_CYAN (CFx_Base_Proto)
{
	visname_s				=	"PFX_ACHAOS_CYAN";
	emTrjOriginNode 		=	"BIP01 FIRE";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_CYAN1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"JUSTWHITE";
	emfxlifespan			=	-1;
};
instance SPELLFX_ACHAOS_CYAN_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};
instance SPELLFX_ACHAOS_CYAN1 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_CYAN";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_CYAN2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_CYAN2 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_CYAN";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_CYAN3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_CYAN3 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_CYAN";
	emTrjOriginNode 		=	"BIP01 L HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_CYAN4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_CYAN4 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_CYAN";
	emTrjOriginNode 		=	"BIP01 R HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_CYAN5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_CYAN5 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_CYAN";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_CYAN6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_CYAN6 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_CYAN";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
};

///******************************************************************************************
instance SPELLFX_ACHAOS_PINK (CFX_BASE_PROTO)
{
	visname_s				=	"PFX_ACHAOS_PINK";
	emTrjOriginNode 		=	"BIP01 FIRE";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_PINK1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	emfxlifespan			=	-1;
};
instance SPELLFX_ACHAOS_PINK1 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_PINK";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_PINK2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_PINK2 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_PINK";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_PINK3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_PINK3 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_PINK";
	emTrjOriginNode 		=	"BIP01 L HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_PINK4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_PINK4 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_PINK";
	emTrjOriginNode 		=	"BIP01 R HAND";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_PINK5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_PINK5 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_PINK";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	emFXCreate_S 			=	"SPELLFX_ACHAOS_PINK6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
};
instance SPELLFX_ACHAOS_PINK6 (CFx_Base_Proto)
{
	visname_S 				=	"PFX_ACHAOS_PINK";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
};

///******************************************************************************************
/// Special items particles
///******************************************************************************************
instance SPELLFX_IPENTA_BLUE (CFX_BASE_PROTO)
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
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_IPENTA_BLUE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	3000;
};
