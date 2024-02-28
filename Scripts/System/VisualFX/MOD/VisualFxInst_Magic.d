///******************************************************************************************
///	Visual Effects - Magic
///******************************************************************************************
instance spellFX_nLight (CFx_Base_Proto)
{
	visname_S 				=	"MFX_nLight_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emFXCreate_S 			=	"spellFX_nLight_ACTIVE";
	emFXCreatedOwnTrj 		=	true;
	lightPresetname 		=	"JUSTWHITE";
};
instance spellFX_nLight_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange 				=	100;
};
instance spellFX_nLight_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange 				=	100;
};
instance spellFX_nLight_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsIsLoopingChg		=	true;
	lightRange 				=	100;
};

instance spellFX_nLight_ACTIVE (CFx_Base_Proto)
{
	visname_S 				=	"";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjeasevel 			=	0;
	emTrjOriginNode 		=	"BIP01 Head";
	emtrjloopmode_s 		=	"HALT";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.4;
	emTrjTargetRange		=	1.2;
	emTrjTargetElev 		=	89;
	lightPresetname 		=	"JUSTWHITE";
};
instance spellFX_nLight_ACTIVE_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange 				=	0.01;
};
instance spellFX_nLight_ACTIVE_KEY_INIT(C_ParticleFXEmitKey)
{
	lightRange				=	0.01;
};
instance spellFX_nLight_ACTIVE_KEY_CAST (C_ParticleFXEmitKey)
{
	visName_S				=	"MFX_nLight_ORIGIN";
	lightRange				=	1000;
	sfxid					=	"MFX_Light_CAST";
	sfxisambient			=	true;
	emtrjeasevel 			=	1400;
};

///******************************************************************************************
instance spellFX_nHeal (CFx_Base_Proto)
{
	visname_S 				=	"MFX_nHeal_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};
instance spellFX_nHeal_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_nHeal_ORIGIN";
};

instance spellFX_nHeal_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_nHeal_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	true;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_nHeal_ORIGIN	(CFx_Base_Proto)
{
	visname_S 				=	"MFX_nHeal_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_nHeal_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};
instance spellFX_nHeal_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};
instance spellFX_nHeal_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

///******************************************************************************************
instance spellFX_PalProtection (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};

instance spellFX_PalProtection_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	1;
	emCreateFXID			=	"spellFX_Heal_ORIGIN";
};

instance spellFX_PalProtection_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_PalProtection_ORIGIN	(CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_PalProtection_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};

instance spellFX_PalProtection_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_PalProtection_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

///******************************************************************************************
instance spellFX_PalBless (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};

instance spellFX_PalBless_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	1;
	emCreateFXID			=	"spellFX_Heal_ORIGIN";
};

instance spellFX_PalBless_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_PalBless_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_PalBless_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};

instance spellFX_PalBless_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_PalBless_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

///******************************************************************************************
instance SPELLFX_PalBless_GLOW (CFX_BASE_PROTO)
{
	visname_s				=	"MFX_PALBLESS";
	visAlpha				=	1;
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
instance SPELLFX_PALBLESS_GLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

///******************************************************************************************
instance spellFX_SlowTime (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SlowTime_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"HALT";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0;
	lightpresetname			=	"FX_LIGHT1";
};
instance spellFX_SlowTime_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_SlowTime_INIT";
	emtrjeasevel			=	0.01;
	lightRange				=	100;
};
instance spellFX_SlowTime_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_SlowTime_ORIGIN";
	emtrjeasevel			=	1400;
	sfxid					=	"MFX_Control_StartInvest";
};

instance spellFX_SlowTime_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SlowTime_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

instance spellFX_SlowTime_MOTION (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	
	visName_S      			=	"time.slw";
	userString[0]     		=	"0.5";
	userString[1]     		=	"1.0";
	emFxCreate_s			=	"spellFX_SlowTime_MotionFX";
	emFXLifeSpan    		=	10;
	emFXTriggerDelay		=	0;
};

instance spellFX_SlowTime_MotionFX (CFx_Base_Proto)
{
	// userstring 0: screenblend loop duration
	// userstring 1: screenblend color
	// userstring 2: screenblend in/out duration
	// userstring 3: screenblend texture
	// userstring 4: tex ani fps
	
	visName_S      			=	"screenblend.scx";
	//emfxcreate_s			=	"FOV_MORPH1";
	userString[0]     		=	"100000000000";
	userString[1]     		=	"0 255 0 100";
	userString[2]     		=	"0.5";
	userString[3]     		=	"ScreenFX_White_a0";
	userString[4]     		=	"8";
	emFXLifeSpan    		=	10;
	visAlphaBlendFunc_S		=	"BLEND";
	sfxid      				=	"MFX_Control_Invest";
	sfxisambient     		=	true;
};

///******************************************************************************************
instance spellFX_NightToDay (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NightToDay_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"HALT";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0;
	lightpresetname			=	"FX_LIGHT1";
};
instance spellFX_NightToDay_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_NightToDay_INIT";
	emtrjeasevel			=	0.01;
	lightRange				=	100;
};
instance spellFX_NightToDay_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_NightToDay_ORIGIN";
	emtrjeasevel			=	1400;
	sfxid					=	"MFX_Control_StartInvest";
};

instance spellFX_NightToDay_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NightToDay_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

///******************************************************************************************
instance spellFX_Telekinesis (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Telekinesis_INIT";
	emtrjmode_s 			=	"TARGET";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjnumkeys 			=	2;
	emtrjnumkeysvar 		=	1;
	emtrjangleelevvar 		=	2;
	emtrjangleheadvar 		=	0;
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjloopmode_s 		=	"HALT";
	emtrjdynupdatedelay 	=	0;
	emFXInvestOrigin_S 		=	"spellFX_Telekinesis_ORIGIN";
	emTrjTargetRange		=	0;
	emTrjTargetElev 		=	0;
};
instance spellFX_Telekinesis_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_s				=	"MFX_Telekinesis_INIT";
	emtrjeasevel	  		=	0.01;
};
instance spellFX_Telekinesis_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_s				=	"MFX_Telekinesis_TARGET";
	emtrjeasevel	  		=	2000;
	sfxid					=	"MFX_Telekinesis_STARTINVEST";
	sfxisambient			=	true;
};
instance spellFX_Telekinesis_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_s				=	"MFX_Telekinesis_TargetEnd";
};

instance spellFX_Telekinesis_Origin (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Telekinesis_BRIDGE";
	emtrjmode_s 			=	"TARGET LINE";
	emtrjeasevel	  		=	0.001;
	emTrjOriginNode 		=	"BIP01 R Hand";
	emtrjdynupdatedelay 	=	0;
	lightPresetname 		=	"AURA";
};

instance spellFX_Telekinesis_ITEM (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Telekinesis_TARGETEND";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

///******************************************************************************************
instance spellFX_SkullBolt (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SkullBolt_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_SkullBolt_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_SkullBolt_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
	lightPresetname   		=	"REDAMBIENCE";
};
instance spellFX_SkullBolt_KEY_OPEN	(C_ParticleFXEmitKey)
{
	lightrange				=	100;
};
instance spellFX_SkullBolt_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	100;
};
instance spellFX_SkullBolt_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_SkullBolt_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400;
	lightrange 				=	100;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_Skull_Fly";
};
instance spellFX_SkullBolt_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_SkullBolt_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SkullBolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Skull_Collide";
};

///******************************************************************************************
instance spellFX_Summon (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Summon_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};
instance spellFX_Summon_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_Summon_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_Summon_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightRange				=	200;
//	emCreateFXID			=	"FX_EarthQuake";
};
instance spellFX_Summon_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Summon_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

instance spellFX_Summon_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Summon_Origin";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	1;
//	emFXCreate_S 			=	"FX_EarthQuake";
};

///******************************************************************************************
instance spellFX_MassFear (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FEAR_INIT";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"FIXED";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"linear";
	lightpresetname			=	"REDAMBIENCE";
	emtrjdynupdatedelay 	=	10000;
};
instance spellFX_MassFear_KEY_INIT (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0;
	lightRange				=	100;
};
instance spellFX_MassFear_KEY_OPEN (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0;
	lightrange				=	100;
};
instance spellFX_MassFear_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_MassFear_GROUND";
	pfx_ppsIsLoopingChg		=	1;
	lightrange				=	300;
};

instance spellFX_MassFear_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FEAR_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	10000;
	sfxid					=	"MFX_FEAR_CAST";
	sfxisambient			=	1;
};

instance spellFX_MassFear_SENDPERCEPTION (CFx_Base_Proto)
{
	visname_S				=	"";
	sfxid					=	"HAMMER";
	sendassessmagic			=	1;
};

///******************************************************************************************
instance spellFX_Rage (CFx_Base_Proto)
{
	visname_S				=	"MFX_FEAR_INIT";
	emtrjmode_s				=	"FIXED";
	emtrjeasefunc_s			=	"linear";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	lightpresetname			=	"REDAMBIENCE";
	emtrjdynupdatedelay		=	10000;
};
instance spellFX_Rage_KEY_INIT (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0;
	lightRange				=	100;
};
instance spellFX_Rage_KEY_OPEN (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0;
	lightrange				=	100;
};
instance spellFX_Rage_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Rage_GROUND";
	pfx_ppsIsLoopingChg		=	1;
	lightrange				=	300;
};

instance spellFX_Rage_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fear_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	10000;
	sfxid					=	"MFX_FEAR_CAST";
	sfxisambient			=	1;
};

instance spellFX_Rage_SENDPERCEPTION (CFx_Base_Proto)
{
    visname_S				=	"";
	sfxid					=	"HAMMER";
	sendassessmagic			=	1;
};

///******************************************************************************************
instance spellFX_MassRage (CFx_Base_Proto)
{
	visname_S				=	"MFX_FEAR_INIT";
	emtrjmode_s				=	"FIXED";
	emtrjeasefunc_s			=	"linear";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	lightpresetname			=	"REDAMBIENCE";
	emtrjdynupdatedelay		=	10000;
};
instance spellFX_MassRage_KEY_INIT (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0;
	lightRange				=	100;
};
instance spellFX_MassRage_KEY_OPEN (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0;
	lightrange				=	100;
};
instance spellFX_MassRage_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_MassRage_GROUND";
	pfx_ppsIsLoopingChg		=	1;
	lightrange				=	300;
};

instance spellFX_MassRage_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fear_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	10000;
	sfxid					=	"MFX_FEAR_CAST";
	sfxisambient			=	1;
};

instance spellFX_MassRage_SENDPERCEPTION (CFx_Base_Proto)
{
	visname_S				=	"";
	sfxid					=	"HAMMER";
	sendassessmagic			=	1;
};

///******************************************************************************************
instance spellFX_Domination (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Domination_INIT";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"fixed";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0;
};
instance spellFX_Domination_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Domination_INIT";
};
instance spellFX_Domination_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Domination_ORIGIN";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Sleep_Cast";
};

instance spellFX_Domination_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Domination_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

instance spellFX_Domination_TARGET (CFx_Base_Proto)
{
	lightPresetname 		=	"AURA";
	visname_S 				=	"MFX_Domination_TARGET";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
};

///******************************************************************************************
instance spellFX_Dragonball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Dragonball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Dragonball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"VOB_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_Dragonball_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	0.01;
};
instance spellFX_Dragonball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Fireball_INIT";
	lightrange				=	0.01;
};
instance spellFX_Dragonball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	200;
	visname_S 				=	"MFX_IFB_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_InstantFireball_FIRECLOUD";
	emCheckCollision 		=	1;
};
instance spellFX_Dragonball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Dragonball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel			=	1400.;
	visname_S				=	"MFX_IFB_CAST";
	visAlpha				=	1;
	emtrjmode_s				=	"TARGET";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision 		=	2;
	emActionCollDyn_S 		=	"COLLIDE";
	emActionCollStat_S 		=	"COLLIDE";
};

instance spellFX_Dragonball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Dragonball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_Dragonball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_Dragonball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_Dragonball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

///******************************************************************************************
///	MYS
///******************************************************************************************
instance spellFX_MysBolt (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysBolt_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_MysBolt_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_MysBolt_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_MysBolt_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	200;
};
instance spellFX_MysBolt_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	200;
};
instance spellFX_MysBolt_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_MysBolt_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400;
	lightrange 				=	200;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_Icelance_Cast";
};
instance spellFX_MysBolt_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_MysBolt_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysBolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Icelance_Collide";
};

///******************************************************************************************
instance spellFX_MysBall (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysBall_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
//	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_MysBall_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_MysBall_COLLIDEDYNFX";
//	emFXCollDynPerc_S     	=	"VOB_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//emTrjDynUpdateDelay	=	0.4;
//	userString[0]			=	"fireballquadmark.tga";
//	userString[1]			=	"100 100";
//	userString[2]			=	"MUL";
//	lightPresetname   		=	"JUSTWHITE";
};

instance spellFX_MysBall_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_MysBall_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_MysBall_INIT";
	//lightrange			=	0.01;
};

instance spellFX_MysBall_KEY_CAST (C_ParticleFXEmitKey)
{
//	lightrange				=	200;
//	visname_S 				=	"MFX_IFB_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Telekinesis_StartInvest";
	sfxisambient			=	true;
//	emCreateFXID			=	"spellFX_InstantFireball_FIRECLOUD";
	emCheckCollision 		=	true;
};

instance spellFX_MysBall_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_MysBall_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel			=	1400.;
	visname_S				=	"MFX_MysBall_CAST";
	visAlpha				=	1;
	emtrjmode_s				=	"TARGET";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision 		=	2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (nötig, da dieser FX nicht als Child eingefügt wurde, sondern komplett
     												// unabhängig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
	emActionCollDyn_S 		=	"COLLIDE";
	emActionCollStat_S 		=	"COLLIDE";
};

instance spellFX_MysBall_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_MysBall_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysBall_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"JUSTWHITE";
};

instance spellFX_MysBall_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_MysBall_Collide1";
	sfxid					=	"MFX_Icelance_Collide";
};

instance spellFX_MysBall_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysBall_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"JUSTWHITE";
};

instance spellFX_MysBall_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_MysBall_Collide1";
	sfxid					=	"MFX_Icelance_Collide";
};

///******************************************************************************************
instance spellFX_MysGhost (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysGhost_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};
instance spellFX_MysGhost_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_MysGhost_COLLIDEFX";
	//sfxid					=	"MFX_Icelance_Collide";
};

instance spellFX_MysGhost_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_MysGhost_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysGhost_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Icelance_Collide";
};

instance SPELLFX_MysGhost_GLOW (CFX_BASE_PROTO)
{
	visname_s				=	"MFX_MysGhost_GLOW";
	visAlpha				=	1;
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
instance SPELLFX_MysGhost_GLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

///******************************************************************************************
instance spellFX_MysRoot (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysRoot_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
};
instance spellFX_MysRoot_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_MysRoot_Bridge";
	emtrjeasevel 			=	0.000001;
	pfx_ppsisloopingchg		=	true;
	emtrjmode_s 			=	"TARGET SPLINE RANDOM";
	emtrjeasevel 			=	500;
	emCheckCollision 		=	true;
};
instance spellFX_MysRoot_KEY_COLLIDE (C_ParticleFXEmitKey)
{
};

instance spellFX_MysRoot_Bridge (CFX_BASE_PROTO)
{
	visname_S 				=	"MFX_MysRoot_CAST";
	visAlpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"TARGET SPLINE RANDOM";
	emtrjoriginnode			=	"ZS_RIGHTHAND";
	emtrjnumkeys			=	4;
	emtrjnumkeysvar			=	2;
	emtrjangleelevvar		=	5;
	emtrjangleheadvar		=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjeasevel			=	900;
	emtrjdynupdatedelay		=	0.1;
	emtrjdynupdatetargetonly	=	true;
	emactioncolldyn_s		=	"COLLIDE CREATEONCE";
	emactioncollstat_s		=	"COLLIDE";
	emfxcolldynPerc_s		=	"SPELLFX_MysRoot_Target";
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
};
instance spellFX_MysRoot_Bridge_KEY_CAST (C_ParticleFXEmitKey)
{
	emCheckCollision 		=	true;
};
instance spellFX_MysRoot_Bridge_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance SpellFX_MysRoot_TARGET (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_MysRoot_Target";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Greententacle_Grow";
	sendAssessMagic			=	true;
};

///******************************************************************************************
instance spellFX_MysDomination (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysDomination_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_MysDomination_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_MysDomination_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_MysDomination_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	200;
};
instance spellFX_MysDomination_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	200;
};
instance spellFX_MysDomination_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_MysDomination_CAST";
	emtrjmode_s 			=	"FIXED"; //TARGET
	emtrjeasevel 			=	1400;
	lightrange 				=	200;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_Icelance_Cast";
};
instance spellFX_MysDomination_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_MysDomination_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysDomination_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Icelance_Collide";
};

///******************************************************************************************
instance spellFX_MysSlow (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysSlow_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emFXCreatedOwnTrj 		=	false;
	lightpresetname			=	"REDAMBIENCE";
};
instance spellFX_MysSlow_KEY_INIT(C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_MysSlow_INIT";
	lightrange				=	100;
};
instance spellFX_MysSlow_KEY_INVEST_1	(C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_MysSlow_RIGHTHAND";
	emCreateFXID			=	"spellFX_MysSlow_LEFTHAND";
};
instance spellFX_MysSlow_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_MysSlow_EXPLOSION";
	pfx_ppsIsLoopingChg		=	true;
};

instance spellFX_MysSlow_EXPLOSION (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysSlow_EXPLOSION";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
	emFXCreate_S			=	"spellFX_MysSlow_GROUND";
};

instance spellFX_MysSlow_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysSlow_CAST";
	emTrjOriginNode 		=	"BIP01 R Foot";
	emActionCollDyn_S		=	"CREATEONCE";
	emFXCollDyn_S			=	"spellFX_MysSlow_COLLIDEDYNFX";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	true;
	LightPresetName			=	"REDAMBIENCE";
	sfxid					=	"MFX_Massdeath_Cast";
	sfxisambient			=	true;
};

instance spellFX_MysSlow_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysSlow_LEFTHAND";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
	emFXCreate_S			=	"FX_EARTHQUAKE";
};

instance spellFX_MysSlow_SUB (CFx_Base_Proto)
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 HEAD";
};

instance spellFX_MysSlow_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MysSlow_TARGET";
	emTrjOriginNode 		=	"BIP01";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_MysSlow_Target";
};

///******************************************************************************************
///	GEO
///******************************************************************************************
instance spellFX_GeoStone (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoStone_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_GeoStone_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_GeoStone_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
};
instance spellFX_GeoStone_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	0;
};
instance spellFX_GeoStone_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0;
};
instance spellFX_GeoStone_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_GeoStone_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400;
	lightrange 				=	0;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_GeoStone_Cast";
};
instance spellFX_GeoStone_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_GeoStone_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoStone_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_GeoStone_Collide";
};

///******************************************************************************************
instance spellFX_GeoAura (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoAura_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};
instance spellFX_GeoAura_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_GeoAura_COLLIDEFX";
	//sfxid					=	"MFX_Icelance_Collide";
};

instance spellFX_GeoAura_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_GeoAura_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoAura_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Icelance_Collide";
};

instance spellFX_GeoAura_GLOW (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoAura_GLOW";
	visAlpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s 			=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	true;
//	lightPresetname			=	"JUSTWHITE";
};/*
instance SPELLFX_GeoAura_GLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};
*/

///******************************************************************************************
instance spellFX_GeoElevate (CFx_Base_Proto)
{
	visname_S               =	"MFX_GeoELEVATE_INIT";
	emTrjOriginNode         =	"ZS_RIGHTHAND";
	emFXCreatedOwnTrj       =	true;
	emtrjeasefunc_s         =	"LINEAR";
	emtrjmode_s             =	"FIXED";
	emtrjloopmode_s         =	"NONE";
	emFXInvestOrigin_S      =	"spellFX_GeoElevate_Invest";
};
instance spellFX_GeoElevate_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S           	=	"MFX_GeoELEVATE_CAST";
	sfxid               	=	"MFX_GeoELEVATE_CAST";
};

instance spellFX_GeoElevate_Invest (CFx_Base_Proto)
{
	visname_S               =	"MFX_GeoELEVATE_INVEST";
	emFXCreatedOwnTrj       =	true;
	emTrjOriginNode         =	"ZS_RIGHTHAND";
	emFXCreate_S            =	"spellFX_GeoElevate_Invest_LH";
	emtrjeasefunc_s         =	"LINEAR";
	emtrjmode_s             =	"FIXED";
	emtrjloopmode_s         =	"NONE";
	emfxlifespan            =	3;
	sfxID                   =	"MFX_GeoELEVATE_INVEST";
};
instance spellFX_GeoElevate_Invest_LH (CFx_Base_Proto)
{
	visname_S               =	"MFX_GeoELEVATE_INVEST";
	emFXCreatedOwnTrj       =	true;
	emTrjOriginNode         =	"ZS_LEFTHAND";
	emtrjeasefunc_s         =	"LINEAR";
	emtrjmode_s             =	"FIXED";
	emtrjloopmode_s         =	"NONE";
	emfxlifespan            =	3;
};

instance spellFX_GeoELEVATOR_DUST_FIRST (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_DUST";
	emFXCreate_S            =	"spellFX_GeoELEVATOR_BURST";
	emFXCreatedOwnTrj       =	true;
	emtrjmode_s             =	"NONE";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0.55;
};

instance spellFX_GeoELEVATOR_BURST (CFx_Base_Proto)
{
	emFXCreate_S            =	"spellFX_GeoELEVATOR_STONEPARTICLES";
	emFXCreatedOwnTrj       =	true;
	emFXTriggerDelay        =	0.57;
	sfxid                   =	"MFX_GeoELEVATE_BURST";
};

instance spellFX_GeoELEVATOR_STONEPARTICLES (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_STONES";
	emFXCreate_S            =	"spellFX_GeoELEVATOR_STONESFALLING";
	emFXCreatedOwnTrj       =	true;
	emtrjmode_s             =	"NONE";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0.61;
	sfxid                   =	"MFX_ELEVATE_STONES";
	sfxisambient            =	true;
};

instance spellFX_GeoELEVATOR_STONESFALLING (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_STONESFALL";
	emFXCreatedOwnTrj       =	1;
	emFXCreate_S            =	"spellFX_GeoELEVATOR_DUSTFALLING";
	emtrjmode_s             =	"FIXED";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0;
};

instance spellFX_GeoELEVATOR_DUSTFALLING (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_DUST_FALLING";
	emFXCreatedOwnTrj       =	1;
	emtrjmode_s             =	"FIXED";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0;
};

instance spellFX_GeoELEVATOR_EARTHQUAKE (CFx_Base_Proto)
{
	visName_S               =	"earthquake.eqk";
	userString[0]           =	"2000";
	userString[1]           =	"3";
	userString[2]           =	"5 5 5";
};

///******************************************************************************************
instance spellFX_GeoGolem (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoGolem_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"NONE";
	emFXInvestOrigin_S		=	"spellFX_GeoGolem_BUILDUP";
};
instance spellFX_GeoGolem_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_GeoGolem_TARGETS";
	pfx_ppsisloopingchg		=	true;
	sfxid					=	"MFX_GeoQuake_STOMP";
	sfxisambient			=	true;
};

instance spellFX_GeoGolem_BUILDUP (CFX_Base_Proto)
{
	visName_S				=	"spellFX_InvisibleProjectile";
	sfxid					=	"MFX_GeoQuake_CAST";
};

instance spellFX_GeoGolem_CAST (CFx_Base_Proto)
{
	visName_S				=	"earthquake.eqk";
	userString[0]			=	"1000";
	userString[1]			=	"3";
	userString[2]			=	"3 3 3";
	sfxid					=	"MFX_GeoQuake_EARTHQUAKE";
	sfxIsAmbient			=	true;
};

instance spellFX_GeoGolem_TARGETS (CFx_Base_Proto)
{
	visname_S				=	"MFX_GeoGolem_CAST";
	emTrjOriginNode			=	"BIP01";
	emFXCreate_S			=	"spellFX_GeoGolem_CAST";
};

///******************************************************************************************
/*
instance spellFX_GeoQuake (CFx_Base_Proto)
{
	visName_S				=	"MFX_GeoQUAKE_INIT";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"NONE";
	emFXInvestOrigin_S		=	"spellFX_GeoQuake_BUILDUP";
};
instance spellFX_GeoQuake_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_GeoQuake_TARGETS";
	pfx_ppsIsLoopingChg		=	true;
	sfxid					=	"MFX_GeoQuake_STOMP";
	sfxisambient			=	true;
};

instance spellFX_GeoQuake_BUILDUP (CFX_Base_Proto)
{
	visName_S				=	"spellFX_InvisibleProjectile";
	sfxid					=	"MFX_GeoQuake_CAST";
};

instance spellFX_GeoQuake_CAST (CFx_Base_Proto)
{
	visName_S				=	"earthquake.eqk";
	userString[0]			=	"1000";
	userString[1]			=	"8";
	userString[2]			=	"7 7 7";
	sfxid					=	"MFX_GeoQuake_EARTHQUAKE";
	sfxIsAmbient			=	true;
};

instance spellFX_GeoQuake_TARGETS (CFx_Base_Proto)
{
	visname_S				=	"MFX_GeoQUAKE_CAST";
	emTrjOriginNode			=	"BIP01";
	emActionCollDyn_S		=	"CREATEONCE";
	emFXCollDynPerc_S		=	"spellFX_GeoQuake_SENDPERCEPTION";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	true;
	emFXCreate_S			=	"spellFX_GeoQuake_CAST";
	emFXCreatedOwnTrj		=	true;
};
instance spellFX_GeoQuake_SENDPERCEPTION (CFx_Base_Proto)
{
	sendAssessMagic			=	true;
};
*/
instance spellFX_GeoQuake (CFx_Base_Proto)
{
    visname_S               =	"MFX_GeoQuake_INIT";
    emtrjmode_s             =	"FIXED";
    emTrjOriginNode         =	"ZS_RIGHTHAND";
    emtrjloopmode_s         =	"NONE";
    emtrjeasefunc_s         =	"LINEAR";
    emFXInvestOrigin_S      =	"spellFX_GeoQuake_BUILDUP";
};
instance spellFX_GeoQuake_KEY_CAST (C_ParticleFXEmitKey)
{
    visname_S          		=	"MFX_GeoQuake_INIT";
    emCreateFXID       		=	"spellFX_GeoQuake_CAST";
    pfx_ppsIsLoopingChg		=	true;
};

instance spellFX_GeoQuake_BUILDUP (CFx_Base_Proto)
{
    visname_S               =	"MFX_GeoQuake_BUILDUP";
    emtrjmode_s             =	"FIXED";
    emTrjOriginNode         =	"Bip01";
    emFXCreate_S            =	"spellFX_GeoQuake_PreRumble";
    sfxid                   =	"MFX_GeoQuake_INHALE";
};

instance spellFX_GeoQuake_CAST (CFx_Base_Proto)
{
    visname_S               =	"MFX_GeoQuake_Cast";
    emTrjOriginNode         =	"Bip01";
    emtrjmode_s             =	"NONE";
    emFXCreate_S            =	"spellFX_GeoQuake_CASTER";
    emFXCreatedOwnTrj       =	true;
    emActionCollDyn_S       =	"CREATE COLLIDE";
    emFXCollDyn_S           =	"spellFX_GeoQuake_COLLIDEDYNFX";
    emFXCollDynPerc_S       =	"spellFX_GeoQuake_SENDPERCEPTION";
    emFXCollDynAlign_S      =	"COLLISIONNORMAL";
    emCheckCollision        =	true;
};

instance spellFX_GeoQuake_COLLIDEDYNFX (CFx_Base_Proto)
{
    visname_S               =	"MFX_WINDFIST_TARGET";
    sfxid                   =	"MFX_GeoQuake_COLLIDE";
};

instance spellFX_GeoQuake_SENDPERCEPTION (CFx_Base_Proto)
{
    visname_S               =	"";
    sendAssessMagic         =	true;
};

instance spellFX_GeoQuake_CASTER (CFx_Base_Proto)
{
    visname_S               =	"";
    sfxid                   =	"MFX_Fireball_Collide4";
    emFXCreate_S            =	"spellFX_GeoQuake_Rumble";
    emFXCreatedOwnTrj       =	true;
};

instance spellFX_GeoQuake_PreRumble (CFx_Base_Proto)
{
    visName_S               =	"earthquake.eqk";
    userString[0]           =	"500";
    userString[1]           =	"0";
    userString[2]           =	"4 4 4";
};
instance spellFX_GeoQuake_Rumble (CFx_Base_Proto)
{
    visName_S               =	"earthquake.eqk";
    userString[0]           =	"1000";
    userString[1]           =	"1";
    userString[2]           =	"7 7 7";
    emFXCreatedOwnTrj       =	true;
};

///******************************************************************************************
instance spellFX_GeoRain (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoRain_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	//lightpresetname			=	"FIRESMALL";
	emFXInvestOrigin_S 		=	"spellFX_GeoRain_INVESTGLOW";
};
instance spellFX_GeoRain_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_GeoRain_RAIN";
	pfx_ppsIsLoopingChg		=	true;
};

instance spellFX_GeoRain_RAIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoRain_Rain";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emActionCollDyn_S		=	"CREATEONCE";
	//emFXCollDyn_S     		=	"spellFX_ChargeFireball_COLLIDEDYNFX";
	//emFXCollDynPerc_S     	=	"vob_magicburn";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	true;
//	LightPresetName 		=	"CATACLYSM";
	sfxid					=	"MFX_FireRain_rain";
	sfxisambient			=	true;
};

instance spellFX_GeoRain_SUB (CFx_Base_Proto)
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 HEAD";
};

instance spellFX_GeoRain_INVESTGLOW (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GeoRain_INVESTGLOW";
	emTrjOriginNode 		=	"BIP01";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
//	lightPresetName 		=	"REDAMBIENCE";
	sfxid					=	"MFX_GeoRain_INVEST";
	sfxisambient			=	true;
	emFXCreate_S			=	"FX_EarthQuake";
};

///******************************************************************************************
///	NEC
///******************************************************************************************
instance spellFX_NecLifesteal (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecLifesteal_INIT";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"PINGPONG_ONCE";
	emtrjeasefunc_s			=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S		=	"CREATEONCE";
	//emFXCollDyn_S			=	"spellFX_Whirlwind_SENDPERCEPTION";
	emFXCollDynPerc_S		=	"spellFX_NecLifesteal_SENDPERCEPTION";
	emTrjTargetRange		=	20;
	emTrjTargetElev			=	0;
	lightPresetname			=	"REDAMBIENCE";
	emFXInvestOrigin_S		=	"spellFX_NecLifesteal_Invest";
};
instance spellFX_NecLifesteal_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange				=	0.001;
};
instance spellFX_NecLifesteal_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_NecLifesteal_CAST";
	emtrjmode_s				=	"TARGET";
	emtrjeasevel			=	800;
	lightrange				=	0.001;
	emCheckCollision		=	true;
	sfxid					=	"MFX_SUCKENERGY_Cast";
};
instance spellFX_NecLifesteal_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0.000001;
	pfx_ppsisloopingchg		=	true;
};

instance spellFX_NecLifesteal_Invest (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecLifesteal_INVEST";
	emtrjmode_s				=	"FIXED";
};

instance spellFX_NecLifesteal_SlowTime (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler
	
	emFXTriggerDelay		=	6;				// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan			=	30;				// achtung, zeitdauer ist hier skaliert mit dem time scaler
	visName_S				=	"morph.fov";
	userString[0]			=	"0.8";
	userString[1]			=	"1.0";
	userString[2]			=	"120";
	userString[3]			=	"90";
};

instance spellFX_NecLifesteal_BloodFly (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecLifesteal_FLYTOPLAYER";
	emtrjeasevel			=	0.01;
	emtrjmode_s				=	"TARGET LINE";
	emTrjOriginNode			=	"Bip01 Spine2";
	emTrjTargetNode			=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay		=	0.01;
};

instance spellFX_NecLifesteal_SENDPERCEPTION (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecLifesteal_TARGET";
	sendAssessMagic			=	true;
	sfxid					=	"MFX_SUCKENERGY_Target";
};

///******************************************************************************************
instance spellFX_NecAura (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecAura_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};
instance spellFX_NecAura_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_NecAura_COLLIDEFX";
	//sfxid					=	"MFX_Icelance_Collide";
};

instance spellFX_NecAura_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_NecAura_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecAura_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Icelance_Collide";
};

instance spellFX_NecAura_GLOW (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecAura_GLOW";
	visAlpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s 			=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_NecAura_GLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

instance spellFX_NecAura_Origin (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecAura_BRIDGE";
	emtrjmode_s 			=	"TARGET LINE";
	emtrjeasevel	  		=	0.001;
	emTrjOriginNode 		=	"BIP01 R Hand";
	emtrjdynupdatedelay 	=	0;
};

///******************************************************************************************
instance spellFX_NecCurse (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecCurse_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	lightPresetname 		=	"REDAMBIENCE";
};
instance spellFX_NecCurse_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_NecCurse_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_NecCurse_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};
instance spellFX_NecCurse_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_NecCurse_ORIGIN";
	pfx_ppsisloopingchg		=	true;
};

instance spellFX_NecCurse_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecCurse_Origin";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	1;
	emFXCreate_S 			=	"FX_EarthQuake";
};

instance spellFX_NecCurse_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecCurse_INIT2";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
};

///******************************************************************************************
instance spellFX_NecPlague (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecPlague_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjangleelevvar 		=	15;
	emtrjangleheadvar 		=	25;
	emtrjnumkeys			=	2;
	emtrjnumkeysvar			=	1;
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S		=	"CREATEONCE";
	emFXCollDynPerc_S	   	=	"spellFX_Whirlwind_SENDPERCEPTION";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
};
instance spellFX_NecPlague_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_SWARM_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	500;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_Swarm_Cast";
};
instance spellFX_NecPlague_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
	pfx_ppsisloopingchg		=	true;
};

///******************************************************************************************
instance spellFX_NecDemon (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecDemon_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	lightPresetname 		=	"REDAMBIENCE";
};
instance spellFX_NecDemon_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_NecDemon_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_NecDemon_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};
instance spellFX_NecDemon_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_NecDemon_ORIGIN";
	pfx_ppsisloopingchg		=	true;
};

instance spellFX_NecDemon_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecDemon_Origin";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	1;
	emFXCreate_S 			=	"FX_EarthQuake";
};

instance spellFX_NecDemon_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NecDemon_INIT2";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
};

///******************************************************************************************
instance spellFX_NecDeath (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecDeath_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollDyn_S 		=	"CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_NecDeath_Target";
	emFXCreatedOwnTrj 		=	false;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	30;
};
instance spellFX_NecDeath_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	//emCreateFXID			=	"SpellFX_NecDeath_Invest";
};
instance spellFX_NecDeath_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingchg		=	true;
	emCreateFXID			=	"spellFX_NecDeath_CAST";
};

instance spellFX_NecDeath_Invest (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecDeath_INVEST";
	sfxid					=	"MFX_BREATHOFDEATH_INVEST";
	sfxisambient			=	true;
};

instance spellFX_NecDeath_Cast (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecDeath_Cast";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01";
	/*emTrjNumKeys			=	8;
	emTrjNumKeysVar			=	3;
	emTrjAngleElevVar		=	30;
	emTrjAngleHeadVar		=	30;*/
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollDyn_S 		=	"CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_NecDeath_Target";
	emFXCreatedOwnTrj 		=	true;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	30;
	sfxid					=	"MFX_BREATHOFDEATH_Cast";
	sfxisambient			=	true;
};
instance spellFX_NecDeath_Cast_KEY_CAST (C_ParticleFXEmitKey)
{
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	800;
	emCheckCollision		=	true;
};

instance spellFX_NecDeath_Target (CFx_Base_Proto)
{
	visname_S				=	"MFX_NecDeath_COLLIDE";
	sfxid					=	"MFX_BREATHOFDEATH_TARGET";
	sfxisambient			=	true;
};

///******************************************************************************************
instance spellFX_OrcSpell (CFx_Base_Proto)
{
	visname_S 				=	"MFX_OrcSpell_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_OrcSpell_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_OrcSpell_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
};
instance spellFX_OrcSpell_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_OrcSpell_INIT";
	scaleDuration			=	0.5;
};
instance spellFX_OrcSpell_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_OrcSpell_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	2000.;
	sfxid					=	"MFX_Thunderball_Collide3";
	emCheckCollision		=	1;
};
instance spellFX_OrcSpell_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	emCheckCollision		=	0;
};

instance spellFX_OrcSpell_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_OrcSpell_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

instance spellFX_OrcSpell_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_OrcSpell_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
	SendAssessMagic			=	1;
};

///******************************************************************************************
instance spellFX_DementorSpell (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DementorSpell_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_DementorSpell_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_DementorSpell_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"VOB_DementorSpell_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//emTrjDynUpdateDelay	=	0.4;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_DementorSpell_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	0.01;
};

instance spellFX_DementorSpell_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DementorSpell_INIT";
	lightrange				=	0.01;
};

instance spellFX_DementorSpell_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_DementorSpell_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_DementorSpell_FIRECLOUD";
	emCheckCollision 		=	1;
};

instance spellFX_DementorSpell_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_DementorSpell_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_DementorSpell_FIRECLOUD";
	visAlpha				=	1;
	emtrjmode_s 			=	"TARGET";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision 		=	2;
	emActionCollDyn_S 		=	"COLLIDE";
	emActionCollStat_S 		= 	"COLLIDE";
};

instance spellFX_DementorSpell_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_DementorSpell_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DementorSpell_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_DementorSpell_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DementorSpell_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_DementorSpell_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DementorSpell_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_DementorSpell_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_DementorSpell_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance VOB_DementorSpell_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_DementorSpell_HUMANBURN";
	emFXCreate_S 			=	"VOB_DementorSpell_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin	=	1;
};

instance VOB_DementorSpell_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_DementorSpell_HUMANBURN";
	emFXCreate_S 			=	"VOB_DementorSpell_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_DementorSpell_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_DementorSpell_HUMANBURN";
	emFXCreate_S 			=	"VOB_DementorSpell_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_DementorSpell_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_DementorSpell_HUMANBURN";
	emFXCreate_S 			=	"VOB_DementorSpell_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_DementorSpell_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_DementorSpell_HUMANBURN";
	emFXCreate_S 			=	"VOB_DementorSpell_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_DementorSpell_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_DementorSpell_HUMANBURN";
	emFXCreate_S 			=	"VOB_DementorSpell_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_DementorSpell_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_DementorSpell_HUMANBURN";
	emFXCreate_S 			=	"spellFX_MagicFire_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
	//emAdjustShpToOrigin	=	1;
};

///******************************************************************************************
instance spellFX_DemasterSpell (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DemasterSpell_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_DemasterSpell_TARGET";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_DemasterSpell_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DemasterSpell_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	900;
	sfxid					=	"MFX_Thunderball_Collide3";
	lightpresetname			=	"REDAMBIENCE";
	lightrange 				=	100;
	emCheckCollision 		=	1;
};
instance spellFX_DemasterSpell_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_DemasterSpell_TARGET (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DemasterSpell_TARGET";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	sendAssessMagic			=	1;
	sfxid					=	"MFX_Lightning_ORIGIN";
	sfxisambient			=	1;
};

