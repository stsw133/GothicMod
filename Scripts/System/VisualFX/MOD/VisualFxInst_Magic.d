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

instance spellFX_nHeal_ORIGIN (CFx_Base_Proto)
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
	sfxid					=	"MFX_Telekinesis_StartInvest";
	sfxisambient			=	true;
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
instance spellFX_PalBless (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};

instance spellFX_PalBless_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
//	emCreateFXID			=	"spellFX_Heal_ORIGIN";
};

instance spellFX_PalBless_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	true;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance SPELLFX_PalBless_GLOW (CFx_Base_Proto)
{
	visname_s				=	"MFX_PALBLESS";
	visAlpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emTrjTargetNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	2000000;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	true;
	lightPresetname			=	"JUSTWHITE";
};
instance SPELLFX_PALBLESS_GLOW_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
};

///******************************************************************************************
instance spellFX_PalFaith (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalFaith_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};
instance spellFX_PalFaith_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_PalFaith_ORIGIN";
};

instance spellFX_PalFaith_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalFaith_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	true;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_PalFaith_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalFaith_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_PalFaith_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};
instance spellFX_PalFaith_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};
instance spellFX_PalFaith_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

///******************************************************************************************
instance spellFX_PalGlory (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalGlory_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};
instance spellFX_PalGlory_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_PalGlory_ORIGIN";
};

instance spellFX_PalGlory_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalGlory_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	true;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_PalGlory_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalGlory_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_PalGlory_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};
instance spellFX_PalGlory_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};
instance spellFX_PalGlory_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

///******************************************************************************************
instance spellFX_PalJustice (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalJustice_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};
instance spellFX_PalJustice_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_PalJustice_ORIGIN";
};

instance spellFX_PalJustice_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalJustice_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	true;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_PalJustice_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalJustice_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_PalJustice_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};
instance spellFX_PalJustice_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};
instance spellFX_PalJustice_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

///******************************************************************************************
instance spellFX_Resurrection (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Resurrection_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};
instance spellFX_Resurrection_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_Resurrection_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_Resurrection_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightRange				=	200;
};
instance spellFX_Resurrection_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Resurrection_ORIGIN";
	pfx_ppsisloopingchg		=	true;
};

instance spellFX_Resurrection_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Resurrection_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	true;
};

instance spellFX_Resurrection_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Resurrection_TARGET";
	emTrjOriginNode 		=	"BIP01";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Massdeath_Target";
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
	pfx_ppsIsLoopingChg		=	true;
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
	sfxisambient			=	true;
};

instance spellFX_Rage_SENDPERCEPTION (CFx_Base_Proto)
{
    visname_S				=	"";
	sfxid					=	"HAMMER";
	sendassessmagic			=	true;
};

///******************************************************************************************
instance spellFX_Seduction (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Seduction_INIT";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"fixed";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0;
	emFXInvestTarget_S 		=	"spellFX_Seduction_TARGET";
};
instance spellFX_Seduction_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Seduction_INIT";
};
instance spellFX_Seduction_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Seduction_ORIGIN";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Charm_Cast";
};

instance spellFX_Seduction_ORIGIN (CFx_Base_Proto)
{
	visname_S				=	"MFX_Seduction_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

instance spellFX_Seduction_TARGET (CFx_Base_Proto)
{
	lightPresetname 		=	"REDAMBIENCE";
	visname_S 				=	"MFX_Seduction_TARGET";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
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
	sfxid					=	"MFX_Control_Cast";
};

instance spellFX_NightToDay_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_NightToDay_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

///******************************************************************************************
instance spellFX_Stealth (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Stealth_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	lightpresetname			=	"AURA";
};
instance spellFX_Stealth_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange				=	1;
};
instance spellFX_Stealth_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_Stealth_ORIGIN";
};

instance spellFX_Stealth_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Stealth_Start";
	sfxID			  		=	"MFX_Light_Cast";
	sfxisambient			=	true;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_Stealth_ORIGIN (CFx_Base_Proto)
{
	visname_S				=	"MFX_Stealth_ORIGIN";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_Stealth_START";
	emtrjmode_s 			=	"FIXED";
	lightPresetname 		=	"AURA";
};
instance spellFX_Stealth_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};
instance spellFX_Stealth_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
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
instance spellFX_Slimeball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Slimeball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Slimeball_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_Slimeball_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
};
instance spellFX_Slimeball_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Slimeball_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400;
	lightrange 				=	1;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_Waterfist_Cast";
};
instance spellFX_Slimeball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Slimeball_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Slimeball_COLLIDE";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Waterfist_Collide";
};

///******************************************************************************************
instance spellFX_Curse (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Curse_INIT";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Curse_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_Curse_COLLIDEFX";
	emFXCollDynPerc_S	   	=	"spellFX_Whirlwind_SENDPERCEPTION";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
	lightpresetname			=	"REDAMBIENCE";
};
instance spellFX_Curse_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};
instance spellFX_Curse_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};
instance spellFX_Curse_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Curse_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400;
	lightrange 				=	100;
	emCheckCollision 		=	true;
	sfxid					=	"SKE_Ambient";
};
instance spellFX_Curse_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Curse_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Curse_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"SKE_Die";
};

///******************************************************************************************
instance spellFX_nSummonGolem (CFx_Base_Proto)
{
	visname_S 				=	"MFX_nSummonGolem_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"NONE";
	emFXInvestOrigin_S		=	"spellFX_nSummonGolem_BUILDUP";
};
instance spellFX_nSummonGolem_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_nSummonGolem_TARGETS";
	pfx_ppsisloopingchg		=	true;
	sfxid					=	"MFX_Earthquake_STOMP";
	sfxisambient			=	true;
};

instance spellFX_nSummonGolem_BUILDUP (CFX_Base_Proto)
{
	visName_S				=	"spellFX_InvisibleProjectile";
	sfxid					=	"MFX_Earthquake_CAST";
};

instance spellFX_nSummonGolem_CAST (CFx_Base_Proto)
{
	visName_S				=	"earthquake.eqk";
	userString[0]			=	"1000";
	userString[1]			=	"3";
	userString[2]			=	"3 3 3";
	sfxid					=	"MFX_Earthquake_EARTHQUAKE";
	sfxIsAmbient			=	true;
};

instance spellFX_nSummonGolem_TARGETS (CFx_Base_Proto)
{
	visname_S				=	"MFX_nSummonGolem_CAST";
	emTrjOriginNode			=	"BIP01";
	emFXCreate_S			=	"spellFX_nSummonGolem_CAST";
};

///******************************************************************************************
instance spellFX_nSummonDemon (CFx_Base_Proto)
{
	visname_S 				=	"MFX_nSummonDemon_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	lightPresetname 		=	"REDAMBIENCE";
};
instance spellFX_nSummonDemon_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_nSummonDemon_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_nSummonDemon_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};
instance spellFX_nSummonDemon_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_nSummonDemon_ORIGIN";
	pfx_ppsisloopingchg		=	true;
};

instance spellFX_nSummonDemon_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_nSummonDemon_Origin";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	true;
	emFXCreate_S 			=	"FX_EarthQuake";
};

instance spellFX_nSummonDemon_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_nSummonDemon_INIT2";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
};

///******************************************************************************************
instance spellFX_Explosion (CFx_Base_Proto)
{
	visname_S				=	"MFX_Explosion_INIT";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjtargetnode			=	"BIP01 FIRE";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S			=	"spellFX_InstantFireball_COLLIDE";
	emFXCollDyn_S			=	"spellFX_Explosion_COLLIDEDYNFX";
	emFXCollDynPerc_S		=	"VOB_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj		=	0;
	emTrjTargetRange		=	20;
	emTrjTargetElev			=	0;
	emTrjDynUpdateDelay		=	20000;
	//emTrjDynUpdateDelay	=	0.4;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname			=	"FIRESMALL";
};
instance spellFX_Explosion_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	0.01;
};
instance spellFX_Explosion_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Explosion_INIT";
	lightrange				=	0.01;
};
instance spellFX_Explosion_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S				=	"MFX_Explosion_PFXTRAIL";
	emtrjmode_s				=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel			=	1400;
	sfxid					=	"MFX_SuckEnergy_Cast";
	sfxisambient			=	true;
	emCreateFXID			=	"spellFX_Explosion_TRAIL";
	emCheckCollision		=	true;
};
instance spellFX_Explosion_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel			=	0.000001;
	sfxid					=	"FSB_Attack";
};

instance spellFX_Explosion_TRAIL (CFx_Base_Proto)
{
    emtrjeasevel			=	1400;
    visname_S				=	"MFX_Explosion_CAST";
    visAlpha				=	1;
    emtrjmode_s				=	"TARGET";
    emtrjtargetnode			=	"BIP01 FIRE";
    emtrjloopmode_s			=	"NONE";
    emtrjeasefunc_s			=	"LINEAR";
    emTrjDynUpdateDelay		=	20000;
    emSelfRotVel_S			=	"0 0 200";
    emCheckCollision		=	2;
    emActionCollDyn_S		=	"COLLIDE";
    emActionCollStat_S		=	"COLLIDE";
};
instance spellFX_Explosion_TRAIL_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0.000001;
};

instance spellFX_Explosion_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"FIRESMALL";
	sfxid					=	"MFX_EXPLOSION_COLLIDE";
	emfxcreate_s			=	"SpellFX_Explosion_TARGET";
	emfxcreatedowntrj		=	true;
};

instance SpellFX_Explosion_TARGET (CFx_Base_Proto)
{
	emTrjOriginNode			=	"BIP01";
	visname_S				=	"MFX_Explosion_SPREAD";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_EXPLOSION_SPHERE";
	sfxisambient			=	true;
};

///******************************************************************************************
instance spellFX_Tame (CFx_Base_Proto)
{
	visname_S				=	"MFX_Tame_INIT";
	emtrjmode_s				=	"FIXED";
	emtrjeasefunc_s			=	"linear";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	lightpresetname			=	"FX_LIGHT1";
	emtrjdynupdatedelay		=	10000;
};
instance spellFX_Tame_KEY_INIT (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0;
	lightRange				=	100;
};
instance spellFX_Tame_KEY_OPEN (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0;
	lightrange				=	100;
};
instance spellFX_Tame_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsIsLoopingChg		=	true;
	lightrange				=	300;
};

instance spellFX_Tame_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Tame_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	10000;
	sfxid					=	"MFX_Charm_CAST";
	sfxisambient			=	true;
};

///******************************************************************************************
instance spellFX_RunicEchoes (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RunicEchoes_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emFXCreatedOwnTrj 		=	0;
	lightpresetname			=	"REDAMBIENCE";
};
instance spellFX_RunicEchoes_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_RunicEchoes_INIT";
	lightrange				=	100;
};
instance spellFX_RunicEchoes_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_RunicEchoes_RIGHTHAND";
	emCreateFXID			=	"spellFX_RunicEchoes_LEFTHAND";
};
instance spellFX_RunicEchoes_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_RunicEchoes_EXPLOSION";
	pfx_ppsIsLoopingChg		=	true;
};

instance spellFX_RunicEchoes_EXPLOSION (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RunicEchoes_EXPLOSION";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
	emFXCreate_S			=	"spellFX_RunicEchoes_GROUND";
};

instance spellFX_RunicEchoes_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RunicEchoes_CAST";
	emTrjOriginNode 		=	"BIP01 R Foot";
	emActionCollDyn_S		=	"CREATEONCE";
	emFXCollDyn_S			=	"spellFX_RunicEchoes_COLLIDEDYNFX";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	true;
	LightPresetName			=	"REDAMBIENCE";
	sfxid					=	"MFX_Massdeath_Cast";
	sfxisambient			=	true;
};

instance spellFX_RunicEchoes_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RunicEchoes_LEFTHAND";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
	emFXCreate_S			=	"FX_EARTHQUAKE";
};

instance spellFX_RunicEchoes_SUB (CFx_Base_Proto)
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 HEAD";
};

instance spellFX_RunicEchoes_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RunicEchoes_TARGET";
	emTrjOriginNode 		=	"BIP01";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_RunicEchoes_Target";
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
	sfxid      				=	"MFX_Telekinesis_StartInvest";
	sfxisambient     		=	true;
};

///******************************************************************************************
instance spellFX_Aura (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Aura_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	lightpresetname			=	"AURA";
};
instance spellFX_Aura_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange				=	1;
};
instance spellFX_Aura_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	true;
	emCreateFXID			=	"spellFX_Aura_ORIGIN";
};

instance spellFX_Aura_START (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Aura_Start";
	sfxID			  		=	"MFX_Light_Cast";
	sfxisambient			=	true;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_Aura_ORIGIN (CFx_Base_Proto)
{
	visname_S				=	"MFX_Aura_ORIGIN";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_Aura_START";
	emtrjmode_s 			=	"FIXED";
	lightPresetname 		=	"AURA";
};
instance spellFX_Aura_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};
instance spellFX_Aura_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
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
	pfx_ppsisloopingchg		=	true;
};

instance spellFX_Summon_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Summon_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	true;
//	emFXCreate_S 			=	"FX_EarthQuake";
};

///******************************************************************************************
instance spellFX_ConcussionSpell (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ConcussionSpell_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_ConcussionSpell_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_ConcussionSpell_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"JUSTWHITE";
};
instance spellFX_ConcussionSpell_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_ConcussionMissile_INIT";
	scaleDuration			=	0.5;
	lightrange				=	100;
};
instance spellFX_ConcussionSpell_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_ConcussionSpell_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1600;
	sfxid					=	"MFX_PalHolyBolt_Cast";
	emCheckCollision		=	true;
	lightrange				=	100;
};
instance spellFX_ConcussionSpell_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	emCheckCollision		=	false;
};

instance spellFX_ConcussionSpell_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ConcussionSpell_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

instance spellFX_ConcussionSpell_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ConcussionSpell_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

///******************************************************************************************
instance spellFX_DeathSpell (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DeathSpell_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_DeathSpell_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_DeathSpell_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"JUSTWHITE";
};
instance spellFX_DeathSpell_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DeathSpell_INIT";
	scaleDuration			=	0.5;
	lightrange				=	100;
};
instance spellFX_DeathSpell_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DeathSpell_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1600;
	sfxid					=	"MFX_PalHolyBolt_Cast";
	emCheckCollision		=	true;
	lightrange				=	100;
};
instance spellFX_DeathSpell_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	emCheckCollision		=	false;
};

instance spellFX_DeathSpell_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DeathSpell_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

instance spellFX_DeathSpell_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DeathSpell_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

///******************************************************************************************
instance spellFX_Dragonball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Dragonball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Dragonball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Dragonball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_Dragonball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	false;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_Dragonball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Dragonball_INIT";
};
instance spellFX_Dragonball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_Dragonball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	true;
	emCreateFXID			=	"spellFX_Dragonball_FIRECLOUD";
	emCheckCollision 		=	true;
};
instance spellFX_Dragonball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Dragonball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel			=	1400;
	visname_S				=	"MFX_Dragonball_CAST";
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

instance spellFX_Dragonballl_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Dragonball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_Dragonball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Dragonball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_Dragonball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Dragonball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_Dragonball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Dragonball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_Dragonball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_Dragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Dragonball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_Firespell_Humanburn";
};
instance spellFX_Dragonball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_Dragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Dragonball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_Dragonball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_Dragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Dragonball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_Dragonball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_Dragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Dragonball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_Dragonball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_Dragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Dragonball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_Dragonball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_Dragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Dragonball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_Dragonball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_Dragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Dragonball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0;
	sendAssessMagic			=	true;
};

instance spellFX_Dragonball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_Dragonball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
	emAdjustShpToOrigin		=	true;
};

///******************************************************************************************
instance spellFX_BlackDragonball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BlackDragonball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_BlackDragonball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_BlackDragonball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_BlackDragonball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	false;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
//	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_BlackDragonball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_BlackDragonball_INIT";
};
instance spellFX_BlackDragonball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_BlackDragonball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	true;
	emCreateFXID			=	"spellFX_BlackDragonball_FIRECLOUD";
	emCheckCollision 		=	true;
};
instance spellFX_BlackDragonball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_BlackDragonball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel			=	1400;
	visname_S				=	"MFX_BlackDragonball_CAST";
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
instance spellFX_BlackDragonball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_BlackDragonballl_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BlackDragonball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
//	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_BlackDragonball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_BlackDragonball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_BlackDragonball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BlackDragonball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
//	lightPresetname   		=	"FIRESMALL";
};
instance spellFX_BlackDragonball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_BlackDragonball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_BlackDragonball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_BlackDragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlackDragonball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
//	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_Firespell_Humanburn";
};
instance spellFX_BlackDragonball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_BlackDragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlackDragonball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlackDragonball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_BlackDragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlackDragonball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlackDragonball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_BlackDragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlackDragonball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlackDragonball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_BlackDragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlackDragonball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlackDragonball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_BlackDragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlackDragonball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlackDragonball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_BlackDragonball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlackDragonball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0;
	sendAssessMagic			=	true;
};
instance spellFX_BlackDragonball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_BlackDragonball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
	emAdjustShpToOrigin		=	true;
};

///******************************************************************************************
instance spellFX_BlueFireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BlueFireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_BlueFireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_BlueFireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_BlueFireball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	false;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_BlueFireball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_BlueFireball_INIT";
};
instance spellFX_BlueFireball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_BlueFireball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	true;
	emCreateFXID			=	"spellFX_BlueFireball_FIRECLOUD";
	emCheckCollision 		=	true;
};
instance spellFX_BlueFireball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_BlueFireball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400;
	visname_S 				=	"MFX_BlueFireball_CAST";
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
instance spellFX_BlueFireball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_BlueFireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BlueFireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_BlueFireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_BlueFireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_BlueFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BlueFireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_BlueFireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_BlueFireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_BlueFireball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_BlueFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlueFireball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
	lightpresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Firespell_Humanburn";
};
instance spellFX_BlueFireball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_BlueFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlueFireball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlueFireball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_BlueFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlueFireball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlueFireball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_BlueFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlueFireball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlueFireball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_BlueFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlueFireball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlueFireball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_BlueFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlueFireball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_BlueFireball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_BlueFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_BlueFireball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0;
	sendAssessMagic			=	true;
};

instance spellFX_BlueFireball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_BlueFireball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
	emAdjustShpToOrigin		=	true;
};

///******************************************************************************************
instance spellFX_RedFireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RedFireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_RedFireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_RedFireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_RedFireball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	false;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_RedFireball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_RedFireball_INIT";
};
instance spellFX_RedFireball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_RedFireball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	true;
	emCreateFXID			=	"spellFX_RedFireball_FIRECLOUD";
	emCheckCollision 		=	true;
};
instance spellFX_RedFireball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_RedFireball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400;
	visname_S 				=	"MFX_RedFireball_CAST";
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
instance spellFX_RedFireball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_RedFireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RedFireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_RedFireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_RedFireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_RedFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_RedFireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_RedFireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_RedFireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_RedFireball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_RedFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_RedFireball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
	lightpresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Firespell_Humanburn";
};
instance spellFX_RedFireball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_RedFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_RedFireball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_RedFireball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_RedFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_RedFireball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_RedFireball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_RedFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_RedFireball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_RedFireball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_RedFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_RedFireball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_RedFireball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_RedFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_RedFireball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
};
instance spellFX_RedFireball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_RedFireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_RedFireball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	true;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0;
	sendAssessMagic			=	true;
};

instance spellFX_RedFireball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_RedFireball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0;
	emAdjustShpToOrigin		=	true;
};

///******************************************************************************************
instance spellFX_Inflate (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SLEEP_INIT";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"fixed";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0;
};
instance spellFX_Inflate_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_SLEEP_INIT";
};
instance spellFX_Inflate_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_SLEEP_ORIGIN";
	emtrjeasevel 			=	1400;
	sfxid					=	"MFX_Sleep_Cast";
};

instance spellFX_Inflate_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SLEEP_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

instance spellFX_Inflate_TARGET (CFx_Base_Proto)
{
	lightPresetname 		=	"AURA";
	visname_S 				=	"MFX_SLEEP_TARGET";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
};

///******************************************************************************************
instance spellFX_Fireburning (CFx_Base_Proto)
{
	visname_S				=	"MFX_Fireburning_INIT";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjtargetnode			=	"BIP01 HEAD";
	emtrjnumkeys			=	1;
	emtrjnumkeysvar			=	1;
	emtrjangleelevvar		=	15;
	emtrjangleheadvar		=	0;
	emtrjdynupdatedelay		=	0;
	emFXInvestTarget_S		=	"spellFX_Fireburning_TARGET";
	emTrjTargetRange		=	0;
	emTrjTargetElev			=	0;
};
instance spellFX_Fireburning_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsIsLoopingChg		=	true;
};

instance spellFX_Fireburning_TARGET (CFx_Base_Proto)
{
	visname_S				=	"MFX_Fireburning_TARGET";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"BIP01 FIRE";
	lightPresetname			=	"FIRESMALL";
	emTrjTargetRange		=	0;
	emTrjTargetElev			=	0;
	sendAssessMagic			=	true;
	emtrjdynupdatedelay		=	0.01;
	sfxid					=	"MFX_Pyrokinesis_TARGET";
	sfxisambient			=	true;
};

///******************************************************************************************
instance spellFX_ChainLightning (CFx_Base_Proto)
{
	visName_S				=	"MFX_ChainLightning_ORIGIN";
	visSize_S				=	"40 40";
	visAlphaBlendFunc_S		=	"ADD";
	visTexAniFPS			=	17;
	visTexAniIsLooping		=	true;
//	emFXCreate_S			=	"spellFX_ChainLightning_ORIGIN";
	emtrjmode_s				=	"FIXED";
	emtrjNumKeys			=	4;
	emtrjnumkeysvar			=	1;
	emtrjangleelevvar		=	20;
	emtrjangleheadvar		=	20;
	emtrjloopmode_s			=	"PINGPONG";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay 	=	0.05;
	emselfrotvel_s			=	"0 0 50";
	emFXInvestTarget_S		=	"spellFX_ChainLightning_TARGET";
	emTrjTargetRange		=	0;
	emTrjTargetElev			=	0;
	emTrjKeyDistVar			=	2;
	emTrjEaseVel			=	150;
};
instance spellFX_ChainLightning_KEY_INIT (C_ParticleFXEmitKey)
{
	visName_S 				=	"MFX_ChainLightning_ORIGIN";
};
instance spellFX_ChainLightning_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visName_S 				=	"Lightning_Single.ltn";
	emtrjmode_s 			=	"TARGET LINE RANDOM";
	emtrjeasevel 			=	3000;
	emCreateFXID			=	"spellFX_ChainLightning_ORIGIN";
};
instance spellFX_ChainLightning_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsIsLoopingChg		=	true;
};

instance spellFX_ChainLightning_ORIGIN (CFx_Base_Proto)
{
	visname_S				=	"MFX_ChainLightning_ORIGIN";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	lightPresetname			=	"AURA";
};
instance spellFX_ChainLightning_ORIGIN_KEY_OPEN (C_ParticleFXEmitKEy)
{
	LightRange				=	0.01;
};
instance spellFX_ChainLightning_ORIGIN_KEY_INIT (C_ParticleFXEmitKEy)
{
	LightRange				=	0.01;
};
instance spellFX_ChainLightning_ORIGIN_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	sfxID					=	"MFX_ChainLightning_ORIGIN";
	LightRange				=	200;
};

instance spellFX_ChainLightning_TARGET (CFx_Base_Proto)
{
	visname_S				=	"MFX_ChainLightning_TARGET";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"BIP01 FIRE";
	lightPresetname			=	"AURA";
	emTrjTargetRange		=	0;
	emTrjTargetElev			=	0;
	sendAssessMagic			=	true;
	emtrjdynupdatedelay		=	0.01;
	sfxid					=	"MFX_Thunderball_Collide3";
	sfxisambient			=	true;
};

///******************************************************************************************
instance spellFX_Hurricane (CFx_Base_Proto)
{
	visname_S				=	"MFX_WINDFIST_INIT";
	vissize_s				=	"1 1";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjnumkeys			=	7;
	emtrjnumkeysvar			=	3;
	emtrjangleelevvar		=	5;
	emtrjangleheadvar		=	20;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	200000;
	emTrjTargetRange		=	100;
	emTrjTargetElev			=	1;
	emActionCollDyn_S		=	"CREATEONCE";
	emFXCollDyn_S			=	"spellFX_Windfist_Target";
	emFXInvestOrigin_S		=	"spellFX_Windfist_Invest";
};
instance spellFX_Hurricane_KEY_INIT (C_ParticleFXEmitKey)
{
	emCheckCollision		=	false;
};
instance spellFX_Hurricane_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_s				=	"MFX_Hurricane_CAST";
	emcheckcollision		=	true;
	sfxid					=	"MFX_Stormfist_Cast";
	sfxisambient			=	true;
};

instance spellFX_Hurricane_Invest (CFx_Base_Proto)
{
	visname_S				=	"MFX_WINDFIST_INVEST";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
};

///******************************************************************************************
instance spellFX_Earthquake (CFx_Base_Proto)
{
    visname_S               =	"MFX_Earthquake_INIT";
    emtrjmode_s             =	"FIXED";
    emTrjOriginNode         =	"ZS_RIGHTHAND";
    emtrjloopmode_s         =	"NONE";
    emtrjeasefunc_s         =	"LINEAR";
    emFXInvestOrigin_S      =	"spellFX_Earthquake_BUILDUP";
};
instance spellFX_Earthquake_KEY_CAST (C_ParticleFXEmitKey)
{
    visname_S          		=	"MFX_Earthquake_INIT";
    emCreateFXID       		=	"spellFX_Earthquake_CAST";
    pfx_ppsIsLoopingChg		=	true;
};

instance spellFX_Earthquake_BUILDUP (CFx_Base_Proto)
{
    visname_S               =	"MFX_Earthquake_BUILDUP";
    emtrjmode_s             =	"FIXED";
    emTrjOriginNode         =	"Bip01";
    emFXCreate_S            =	"spellFX_Earthquake_PreRumble";
    sfxid                   =	"MFX_Earthquake_INHALE";
};

instance spellFX_Earthquake_CAST (CFx_Base_Proto)
{
    visname_S               =	"MFX_Earthquake_Cast";
    emTrjOriginNode         =	"Bip01";
    emtrjmode_s             =	"NONE";
    emFXCreate_S            =	"spellFX_Earthquake_CASTER";
    emFXCreatedOwnTrj       =	true;
    emActionCollDyn_S       =	"CREATE COLLIDE";
    emFXCollDyn_S           =	"spellFX_Earthquake_COLLIDEDYNFX";
    emFXCollDynPerc_S       =	"spellFX_Earthquake_SENDPERCEPTION";
    emFXCollDynAlign_S      =	"COLLISIONNORMAL";
    emCheckCollision        =	true;
};

instance spellFX_Earthquake_COLLIDEDYNFX (CFx_Base_Proto)
{
    visname_S               =	"MFX_WINDFIST_TARGET";
    sfxid                   =	"MFX_Earthquake_COLLIDE";
};

instance spellFX_Earthquake_SENDPERCEPTION (CFx_Base_Proto)
{
    visname_S               =	"";
    sendAssessMagic         =	true;
};

instance spellFX_Earthquake_CASTER (CFx_Base_Proto)
{
    visname_S               =	"";
    sfxid                   =	"MFX_Fireball_Collide4";
    emFXCreate_S            =	"spellFX_Earthquake_Rumble";
    emFXCreatedOwnTrj       =	true;
};

instance spellFX_Earthquake_PreRumble (CFx_Base_Proto)
{
    visName_S               =	"earthquake.eqk";
    userString[0]           =	"500";
    userString[1]           =	"0";
    userString[2]           =	"4 4 4";
};
instance spellFX_Earthquake_Rumble (CFx_Base_Proto)
{
    visName_S               =	"earthquake.eqk";
    userString[0]           =	"1000";
    userString[1]           =	"1";
    userString[2]           =	"7 7 7";
    emFXCreatedOwnTrj       =	true;
};

///******************************************************************************************
instance spellFX_Rock (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Rock_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Rock_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_Rock_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
};
instance spellFX_Rock_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	0;
};
instance spellFX_Rock_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0;
};
instance spellFX_Rock_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Rock_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400;
	lightrange 				=	0;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_Rock_Cast";
};
instance spellFX_Rock_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Rock_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Rock_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Rock_Collide";
};

///******************************************************************************************
instance spellFX_Mysticball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Mysticball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Mysticball_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_Mysticball_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	false;
	lightPresetname   		=	"JUSTWHITE";
};
instance spellFX_Mysticball_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	200;
};
instance spellFX_Mysticball_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	200;
};
instance spellFX_Mysticball_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Mysticball_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400;
	lightrange 				=	200;
	emCheckCollision 		=	true;
	sfxid					=	"MFX_Icelance_Cast";
};
instance spellFX_Mysticball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Mysticball_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Mysticball_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	sfxid					=	"MFX_Icelance_Collide";
};

///******************************************************************************************
instance spellFX_Elevate (CFx_Base_Proto)
{
	visname_S               =	"MFX_ELEVATE_INIT";
	emTrjOriginNode         =	"ZS_RIGHTHAND";
	emFXCreatedOwnTrj       =	true;
	emtrjeasefunc_s         =	"LINEAR";
	emtrjmode_s             =	"FIXED";
	emtrjloopmode_s         =	"NONE";
	emFXInvestOrigin_S      =	"spellFX_Elevate_Invest";
};
instance spellFX_Elevate_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S           	=	"MFX_ELEVATE_CAST";
	sfxid               	=	"MFX_ELEVATE_CAST";
};

instance spellFX_Elevate_Invest (CFx_Base_Proto)
{
	visname_S               =	"MFX_ELEVATE_INVEST";
	emFXCreatedOwnTrj       =	true;
	emTrjOriginNode         =	"ZS_RIGHTHAND";
	emFXCreate_S            =	"spellFX_Elevate_Invest_LH";
	emtrjeasefunc_s         =	"LINEAR";
	emtrjmode_s             =	"FIXED";
	emtrjloopmode_s         =	"NONE";
	emfxlifespan            =	3;
	sfxID                   =	"MFX_ELEVATE_INVEST";
};

instance spellFX_Elevate_Invest_LH (CFx_Base_Proto)
{
	visname_S               =	"MFX_ELEVATE_INVEST";
	emFXCreatedOwnTrj       =	true;
	emTrjOriginNode         =	"ZS_LEFTHAND";
	emtrjeasefunc_s         =	"LINEAR";
	emtrjmode_s             =	"FIXED";
	emtrjloopmode_s         =	"NONE";
	emfxlifespan            =	3;
};

instance spellFX_ELEVATOR_DUST_FIRST (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_DUST";
	emFXCreate_S            =	"spellFX_ELEVATOR_BURST";
	emFXCreatedOwnTrj       =	true;
	emtrjmode_s             =	"NONE";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0.55;
};

instance spellFX_ELEVATOR_BURST (CFx_Base_Proto)
{
	emFXCreate_S            =	"spellFX_ELEVATOR_STONEPARTICLES";
	emFXCreatedOwnTrj       =	true;
	emFXTriggerDelay        =	0.57;
	sfxid                   =	"MFX_ELEVATE_BURST";
};

instance spellFX_ELEVATOR_STONEPARTICLES (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_STONES";
	emFXCreate_S            =	"spellFX_ELEVATOR_STONESFALLING";
	emFXCreatedOwnTrj       =	true;
	emtrjmode_s             =	"NONE";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0.61;
	sfxid                   =	"MFX_ELEVATE_STONES";
	sfxisambient            =	true;
};

instance spellFX_ELEVATOR_STONESFALLING (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_STONESFALL";
	emFXCreatedOwnTrj       =	true;
	emFXCreate_S            =	"spellFX_ELEVATOR_DUSTFALLING";
	emtrjmode_s             =	"FIXED";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0;
};

instance spellFX_ELEVATOR_DUSTFALLING (CFx_Base_Proto)
{
	visname_S               =	"ELEVATOR_DUST_FALLING";
	emFXCreatedOwnTrj       =	true;
	emtrjmode_s             =	"FIXED";
	emTrjOriginNode         =	"BIP01";
	emFXTriggerDelay        =	0;
};

instance spellFX_ELEVATOR_EARTHQUAKE (CFx_Base_Proto)
{
	visName_S               =	"earthquake.eqk";
	userString[0]           =	"2000";
	userString[1]           =	"3";
	userString[2]           =	"5 5 5";
};

///******************************************************************************************
instance spellFX_Crush (CFx_Base_Proto)
{
	visname_S				=	"MFX_Crush_INIT";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	lightPresetname			=	"WHITEBLEND";
};
instance spellFX_Crush_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange				=	0.001;
};
instance spellFX_Crush_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightRange				=	100;
};
instance spellFX_Crush_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Crush_Bridge";
	emtrjeasevel			=	0.000001;
	pfx_ppsisloopingchg		=	true;
	sfxid					=	"MFX_Sleep_Cast";
	emtrjmode_s				=	"TARGET";
	emtrjeasevel			=	500;
	emCheckCollision		=	true;
};

instance spellFX_Crush_Bridge (CFx_Base_Proto)
{
	visname_S				=	"MFX_Crush_CAST";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"TARGET";
	emtrjoriginnode			=	"ZS_RIGHTHAND";
	emtrjnumkeys			=	4;
	emtrjnumkeysvar			=	2;
	emtrjangleelevvar		=	5;
	emtrjangleheadvar		=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjeasevel			=	900;
	emtrjdynupdatedelay		=	0.1;
	emtrjdynupdatetargetonly=	true;
	emactioncolldyn_s		=	"COLLIDE CREATEONCE";
	emactioncollstat_s		=	"COLLIDE";
	emfxcolldynPerc_s		=	"spellFX_Crush_TARGET";
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	sfxid					=	"MFX_Windfist_Cast";
	sfxisambient			=	true;
};
instance spellFX_Crush_Bridge_KEY_CAST (C_ParticleFXEmitKey)
{
	emCheckCollision		=	true;
};
instance spellFX_Crush_Bridge_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0.000001;
	pfx_ppsisloopingchg		=	1;
	sfxid					=	"SPEAR_START"; // "MFX_ICECUBE_COLLIDE";
};

instance spellFX_Crush_TARGET (CFx_Base_Proto)
{
	visname_S				=	"MFX_Crush_ORIGIN";
	emtrjmode_s				=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	sendAssessMagic			=	true;
	lightpresetname			=	"WHITEBLEND";
	emFXLifeSpan			=	18;
};

///******************************************************************************************
///	MYS
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
///	GEO
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
};

///******************************************************************************************
///	NEC
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
	emCheckCollision 		=	true;
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
	sendAssessMagic			=	true;
	sfxid					=	"MFX_Lightning_ORIGIN";
	sfxisambient			=	true;
};

