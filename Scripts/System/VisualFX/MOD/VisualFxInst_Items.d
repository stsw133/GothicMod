///******************************************************************************************
/// Items particles
///******************************************************************************************
instance SPELLFX_CRYSTALGLOW (CFx_Base_Proto)
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
instance SPELLFX_SOULDUST (CFx_Base_Proto)
{
	visname_S				=	"PFX_SOULDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_SOULDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

instance SPELLFX_CHAOSDUST (CFx_Base_Proto)
{
	visname_S 				=	"PFX_CHAOSDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_CHAOSDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

instance SPELLFX_TIMEDUST (CFx_Base_Proto)
{
	visname_S 				=	"PFX_TIMEDUST";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_TIMEDUST_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

///******************************************************************************************
/// Magic body particles
///******************************************************************************************
instance SPELLFX_BODY_SMELL (CFx_Base_Proto)
{
	visname_s				=	"PFX_BODY_SMELL";
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
	emAdjustShpToOrigin		=	true;
	secsperdamage			=	-1;
};

instance SPELLFX_BODY_MAGIC (CFx_Base_Proto)
{
	visname_s				=	"PFX_BODY_MAGIC";
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
	emAdjustShpToOrigin		=	true;
	secsperdamage			=	-1;
	lightPresetname			=	"AURA";
};
instance SPELLFX_BODY_MAGIC_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance SPELLFX_BODY_ELECTRO (CFx_Base_Proto)
{
	visname_s				=	"PFX_BODY_ELECTRO";
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
	emAdjustShpToOrigin		=	true;
	secsperdamage			=	-1;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_BODY_ELECTRO_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance SPELLFX_FIREARMOR_WHITE (CFx_Base_Proto)
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
	emAdjustShpToOrigin		=	true;
	secsperdamage			=	-1;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_FIREARMOR_WHITE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	1500;
};

///******************************************************************************************
/// Potion particles
///******************************************************************************************
instance SPELLFX_HEALTHPOTION_NPC (CFx_Base_Proto)
{
	visname_s				=	"HEALTH_POTION";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	60;
	emselfrotvel_s			=	"0 0 0";
	emAdjustShpToOrigin		=	true;
	secsperdamage			=	-1;
};

instance SPELLFX_MANAPOTION_NPC (CFx_Base_Proto)
{
	visname_s				=	"MANA_POTION";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	60;
	emselfrotvel_s			=	"0 0 0";
	emAdjustShpToOrigin		=	true;
	secsperdamage			=	-1;
};

instance SPELLFX_YELLOWPOTION_NPC (CFx_Base_Proto)
{
	visname_s				=	"YELLOW_POTION";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"=";
	emtrjtargetrange		=	10;
	emtrjnumkeys			=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	60;
	emselfrotvel_s			=	"0 0 0";
	emAdjustShpToOrigin		=	true;
	secsperdamage			=	-1;
};

instance SPELLFX_NIGHTVISION (CFx_Base_Proto)
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

instance SPELLFX_NIGHTVISION_RIGHT (CFx_Base_Proto)
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
/// Learning particles
///******************************************************************************************
instance spellFX_LearnHP (CFx_Base_Proto)
{
	visname_S 				=	"PFX_LEARNHP";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjoriginnode			=	"=";
	lightPresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Icelance_Collide";
};
instance spellFX_LearnHP_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance spellFX_LearnMP (CFx_Base_Proto)
{
	visname_S 				=	"PFX_LEARNMP";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjoriginnode			=	"=";
	lightPresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Icelance_Collide";
};
instance spellFX_LearnMP_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance spellFX_LearnSP (CFx_Base_Proto)
{
	visname_S 				=	"PFX_LEARNSP";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjoriginnode			=	"=";
	lightPresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Icelance_Collide";
};
instance spellFX_LearnSP_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance spellFX_LearnSTR (CFx_Base_Proto)
{
	visname_S 				=	"PFX_LEARNSTR";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjoriginnode			=	"=";
	lightPresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Icelance_Collide";
};
instance spellFX_LearnSTR_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance spellFX_LearnDEX (CFx_Base_Proto)
{
	visname_S 				=	"PFX_LEARNDEX";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjoriginnode			=	"=";
	lightPresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Icelance_Collide";
};
instance spellFX_LearnDEX_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance spellFX_LearnPOW (CFx_Base_Proto)
{
	visname_S 				=	"PFX_LEARNPOW";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjoriginnode			=	"=";
	lightPresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Icelance_Collide";
};
instance spellFX_LearnPOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

///******************************************************************************************
/// Chaos armor particles
///******************************************************************************************
instance SPELLFX_ACHAOS_BLUE (CFx_Base_Proto)
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
instance SPELLFX_ACHAOS_BLUE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	50;
};

instance SPELLFX_ACHAOS_RED (CFx_Base_Proto)
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
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_ACHAOS_RED_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	50;
};

instance SPELLFX_ACHAOS_GREEN (CFx_Base_Proto)
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
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_ACHAOS_GREEN_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	50;
};

instance SPELLFX_ACHAOS_YELLOW (CFx_Base_Proto)
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
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_ACHAOS_YELLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	50;
};

instance SPELLFX_ACHAOS_MAGENTA (CFx_Base_Proto)
{
	visname_s				=	"PFX_ACHAOS_MAGENTA";
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
instance SPELLFX_ACHAOS_MAGENTA_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	50;
};

instance SPELLFX_ACHAOS_CYAN (CFx_Base_Proto)
{
	visname_s				=	"PFX_ACHAOS_CYAN";
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
instance SPELLFX_ACHAOS_CYAN_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	50;
};

instance SPELLFX_ACHAOS_PINK (CFx_Base_Proto)
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
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_ACHAOS_PINK_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	50;
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
/// Special items particles
///******************************************************************************************
instance SPELLFX_IPENTA_BLUE (CFx_Base_Proto)
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
