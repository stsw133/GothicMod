///******************************************************************************************
///	Visual Effects
///******************************************************************************************
instance STARGATE_SCREENBLEND (CFx_Base_Proto)
{
	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps

	visName_S 				=	"screenblend.scx";
	userString[0]			=	"10";
	userString[1]			=	"0 0 0 255";
	userString[2]			=	"3";
	userString[3]			=	"STARGATE_BLEND.TGA";
	visAlphaBlendFunc_S		=	"ADD";
 	emFXLifeSpan    		=	10;
};

//******************************************************************************************
instance spellFX_InvisibleProjectile (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_INVISIBLEPROJECTILE";
	visAlpha				=	1;
	emtrjmode_s 			=	"TARGET";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision 		=	2;				// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (nötig, da dieser FX nicht als Child eingefügt wurde, sondern komplett
     											// unabhängig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
	emActionCollDyn_S 		=	"COLLIDE";
	emActionCollStat_S 		=	"COLLIDE";
};

instance spellFX_InvisibleProjectile_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

//******************************************************************************************
instance spellFX_Thunderstorm (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderstorm_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emFXInvestOrigin_S 		=	"FX_EarthQuake";  // "spellFX_Thunderstorm_INVESTGLOW";
};

instance spellFX_Thunderstorm_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Thunderstorm_RAIN";
	pfx_ppsIsLoopingChg		=	1;
};

instance spellFX_Thunderstorm_RAIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderstorm_Rain";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emActionCollDyn_S		=	"CREATEONCE";
	//emFXCollDyn_S     	=	"spellFX_Thunderstorm_COLLIDEDYNFX";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	1;
	LightPresetName 		=	"CATACLYSM";
	//sfxid					=	"MFX_Firerain_rain";
	//sfxisambient			=	1;
	emFXCreatedOwnTrj 		= 	1;
	emFXCreate_S			=	"spellFX_ThunderStorm_Flash";
	sfxid					=	"MFX_Thunderstorm_IceRain";
	sfxisambient			=	1;
};

instance spellFX_Thunderstorm_INVESTGLOW (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderstorm_InvestGlow";
	emTrjOriginNode 		=	"BIP01";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetName 		=	"REDAMBIENCE";
	//sfxid					=	"MFX_Firerain_INVEST";
	//sfxisambient			=	1;
	emFXCreate_S			=	"FX_EarthQuake";
};

/*
instance spellFX_Thunderstorm_Dome (CFx_Base_Proto)
{
	//visname_S 			=	"MFX_Thunderstorm_Dome";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	//LightPresetName 		=	"CATACLYSM";
	emFXCreatedOwnTrj 		=	1;
};
*/

instance spellFX_Thunderstorm_Flash	(CFx_Base_Proto)
{
	emFXCreatedOwnTrj 		=	1;
	visname_S 				=	"MFX_Thunderstorm_Flashes";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emFXCreate_S			=	"spellFX_ThunderStorm_Screenblend";
	sfxid					=	"MFX_Thunderstorm_Thunder";
	sfxisambient			=	1;
};

instance spellFX_ThunderStorm_Screenblend (CFx_Base_Proto)
{
	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps

	visName_S 				=	"screenblend.scx";
	userString[0]			=	"10";
	userString[1]			=	"0 0 0 120";
	userString[2]			=	"3";
	visAlphaBlendFunc_S		=	"BLEND";
 	//userString[3]			=	"simpleglow.tga";
	emFXLifeSpan    		=	10;
};

/*
instance spellFX_ThunderStorm_Screenblend (CFx_Base_Proto)
{
	visName_S 				=	"screenblend.scx";
	userString[0]			=	"0.5";
	userString[1]			=	"255 255 255 255";
	userString[2]			=	"0.25";
	emFXLifeSpan    		=	0.5;
};
*/

//******************************************************************************************
instance spellFX_Skull (CFX_BASE_PROTO)
{
	visname_s				=	"MFX_SKULL_INIT";
	visalpha				=	1;
	//visalphablendfunc_s	=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"ZS_RIGHTHAND";
	emtrjtargetrange		=	20;
	emtrjnumkeys			=	4;
	emtrjnumkeysvar			=	1;
	emtrjangleelevvar		=	0;
	emtrjangleheadvar		=	0;
	emtrjeasefunc_s			=	"LINEAR";
	emtrjeasevel			=	100;
	emtrjdynupdatedelay		=	20000;
	emFXCreatedOwnTrj		=	1;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
};

instance spellFX_Skull_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange				=	0.001;
};

instance spellFX_Skull_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Skull_Skull";
	pfx_ppsIsLoopingChg		=	1;
	sfxid					=	"MFX_Skull_Cast";
	sfxisambient			=	1;
};

instance spellFX_Skull_Skull (CFX_BASE_PROTO)
{
	visname_s				=	"MFX_SKULL_CAST";
	emtrjmode_s				=	"TARGET SPLINE RANDOM";
	emtrjoriginnode			=	"ZS_RIGHTHAND";
	emtrjtargetrange		=	20;
	emtrjangleelevvar		=	15;
	emtrjangleheadvar		=	25;
	emtrjnumkeys			=	2;
	emtrjnumkeysvar			=	1;
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	0.1;
	emtrjdynupdatetargetonly	=	1;
	emactioncolldyn_s		=	"COLLIDE CREATEONCE"; 	//"COLLIDE CREATEONCE";
	//emactioncollstat_s	=	"COLLIDE CREATEONCE";
	emfxcollstat_s			=	"spellFX_Skull_COLLIDEFX";
	emfxcolldyn_s			=	"spellFX_Skull_SPREAD";
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emtrjeasevel			=	700;
};

instance spellFX_Skull_Skull_KEY_CAST (C_ParticleFXEmitKey)
{
	emCheckCollision 		=	1;
	sfxid					=	"MFX_Skull_Fly";
};

instance spellFX_Skull_SPREAD (CFx_Base_Proto)
{
	visname_S				=	"MFX_SKULL_SPREAD";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"CREATE CREATEQUAD";
	emActionCollDyn_S 		=	"CREATEONCE";
	emFXCollDyn_S     		=	"spellFX_Skull_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision		=	1;
	sfxid					=	"MFX_FIrestorm_Collide";
	sfxisambient			=	1;
};

instance spellFX_Skull_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Skull_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Skull_Collide";
	lightPresetname   		=	"REDAMBIENCE";
};

//******************************************************************************************
instance spellFX_SuckEnergy (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SUCKENERGY_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"PINGPONG_ONCE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S		=	"CREATEONCE";
	//emFXCollDyn_S	   		=	"spellFX_Whirlwind_SENDPERCEPTION";
	emFXCollDynPerc_S	   	=	"spellFX_SuckEnergy_SENDPERCEPTION";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	lightPresetname   		=	"REDAMBIENCE";
	emFXInvestOrigin_S		=	"spellFX_SuckEnergy_Invest";
};

instance spellFX_SuckEnergy_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_SuckEnergy_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_SUCKENERGY_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	800;
	lightrange 				=	0.001;
	emCheckCollision 		=	1;
	sfxid					=	"MFX_SuckEnergy_Cast";
};

instance spellFX_SuckEnergy_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
	pfx_ppsisloopingchg		=	1;
};

instance spellFX_SuckEnergy_Invest (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SUCKENERGY_INVEST";
	emtrjmode_s 			=	"FIXED";
};

instance spellFX_SuckEnergy_SlowTime (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

	emFXTriggerDelay		=	6;				// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    		=	30;				// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      			=	"morph.fov";
 	userString[0]     		=	"0.8";
 	userString[1]     		=	"1.0";
 	userString[2]			=	"120";
 	userString[3]			=	"90";
};

instance spellFX_SuckEnergy_BloodFly (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SUCKENERGY_FLYTOPLAYER";
	emtrjeasevel 			=	0.01;
	emtrjmode_s 			=	"TARGET LINE";
	emTrjOriginNode 		=	"Bip01 Spine2";
	emTrjTargetNode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay		=	0.01;
};

instance spellFX_SuckEnergy_SENDPERCEPTION (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SUCKENERGY_TARGET";
	sendAssessMagic			=	1;
	sfxid					=	"MFX_SuckEnergy_Target";
};

//******************************************************************************************
instance spellFX_Energyball	(CFx_Base_Proto)
{
	visname_S 				=	"MFX_Energyball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_Energyball_TARGET";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Energyball_KEY_INIT (C_ParticleFXEmitKey)
{
	//lightrange 			=	0.001;
};

instance spellFX_Energyball_KEY_INVEST (C_ParticleFXEmitKey)
{
	//lightrange 			=	100;
};

instance spellFX_Energyball_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_ENERGYBALL_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	900;
	sfxid					=	"MFX_Thunderball_Collide3";
	lightpresetname			=	"REDAMBIENCE";
	lightrange 				=	100;
	emCheckCollision 		=	1;
};

instance spellFX_Energyball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Energyball_TARGET (CFx_Base_Proto)  //FLASH
{
	visname_S 				=	"MFX_ENERGYBALL_TARGET";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	sendAssessMagic			=	1;
	sfxid					=	"MFX_Lightning_ORIGIN";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_Icelance (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icelance_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Icelance_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_Icelance_COLLIDEFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXCreatedOwnTrj		=	0;
	lightPresetname   		=	"JUSTWHITE";
};

instance spellFX_Icelance_KEY_OPEN	(C_ParticleFXEmitKey)
{
	lightrange				=	200; //0.001
};

instance spellFX_Icelance_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	200; //0.001
};

instance spellFX_Icelance_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Icelance_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	lightrange 				=	200;
	emCheckCollision 		=	1;
	sfxid					=	"MFX_Icelance_Cast";
	//emCreateFXID			=	"spellFX_InvisibleProjectile";
};

instance spellFX_Icelance_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Icelance_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icelance_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	//lightPresetname   	=	"FIRESMALL";
	sfxid					=	"MFX_Icelance_Collide";
};

/*
instance spellFX_Icelance_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"TENTACLE01_MESH.MMS";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};
*/

//******************************************************************************************
instance SPELLFX_WATERFIST (CFX_BASE_PROTO)
{
	visname_s				=	"MFX_WATERFIST_INIT";
	visalpha				=	1;
	//visalphablendfunc_s	=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjoriginnode			=	"ZS_RIGHTHAND";
	emtrjtargetrange		=	50;
	emtrjnumkeys			=	4;
	emtrjnumkeysvar			=	1;
	emtrjangleelevvar		=	0;
	emtrjangleheadvar		=	0;
	emtrjeasefunc_s			=	"LINEAR";
	emtrjeasevel			=	100;
	emtrjdynupdatedelay		=	20000;
	emFXCreatedOwnTrj		=	1;
	//emactioncolldyn_s		=	"COLLIDE CREATEONCE";
	//emactioncollstat_s	=	"COLLIDE CREATE";
	//emfxcollstat_s		=	"SPELLFX_WATERFIST_COLLIDEFX";
	//emfxcolldyn_s			=	"SPELLFX_WATERFIST_COLLIDEDYNFX";
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
};

instance spellFX_Waterfist_KEY_OPEN	(C_ParticleFXEmitKey)
{
	lightrange				=	0.001;
};

instance spellFX_Waterfist_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Waterfist_INIT";
	lightrange 				=	0.001;
};

instance spellFX_Waterfist_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellfx_waterfist_Abyss";
	pfx_ppsIsLoopingChg		=	1;
};

instance spellFX_Waterfist_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_waterfist_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetname   	=	"FIRESMALL";
	sfxid					=	"MFX_Waterfist_Collide";
	sfxisambient			=	1;
};

instance spellFX_Waterfist_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_waterfist_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetname   	=	"FIRESMALL";
	sfxid					=	"MFX_Waterfist_Collide";
	sfxisambient			=	1;
};

instance SPELLFX_WATERFIST_ABYSS (CFX_BASE_PROTO)
{
	visname_s				=	"MFX_WATERFIST_CAST";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"TARGET SPLINE RANDOM";
	emtrjoriginnode			=	"ZS_RIGHTHAND";
	//emtrjtargetrange		=	20;
	emtrjnumkeys			=	4;
	emtrjnumkeysvar			=	2;
	emtrjangleelevvar		=	5;
	emtrjangleheadvar		=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjeasevel			=	900;
	emtrjdynupdatedelay		=	0.1;
	emtrjdynupdatetargetonly	=	1;
	emactioncolldyn_s		=	"COLLIDE CREATEONCE";
	emactioncollstat_s		=	"COLLIDE CREATE";
	emfxcollstat_s			=	"SPELLFX_WATERFIST_COLLIDEFX";
	emfxcolldyn_s			=	"SPELLFX_WATERFIST_COLLIDEDYNFX";
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
};

instance spellFX_Waterfist_Abyss_KEY_CAST (C_ParticleFXEmitKey)
{
	emCheckCollision 		=	1;
	sfxid					=	"MFX_Waterfist_Cast";
};

instance spellFX_Waterfist_Abyss_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

//******************************************************************************************
instance spellFX_Swarm (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SWARM_INIT";
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

instance spellFX_Swarm_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_SWARM_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	500;
	emCheckCollision 		=	1;
	sfxid					=	"MFX_Swarm_Cast";
};

instance spellFX_Swarm_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_Greententacle (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GREENTENTACLE_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
};

instance spellFX_Greententacle_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Greententacle_Bridge";
	emtrjeasevel 			=	0.000001;
	pfx_ppsisloopingchg		=	1;
	emtrjmode_s 			=	"TARGET SPLINE RANDOM";
	emtrjeasevel 			=	500;
	emCheckCollision 		=	1;
};

instance spellFX_Greententacle_KEY_COLLIDE (C_ParticleFXEmitKey)
{
};

instance spellFX_Greententacle_Bridge (CFX_BASE_PROTO)
{
	visname_S 				=	"MFX_GREENTENTACLE_CAST";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"TARGET SPLINE RANDOM";
	emtrjoriginnode			=	"ZS_RIGHTHAND";
	//emtrjtargetrange		=	20;
	emtrjnumkeys			=	4;
	emtrjnumkeysvar			=	2;
	emtrjangleelevvar		=	5;
	emtrjangleheadvar		=	10;
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjeasevel			=	900;
	emtrjdynupdatedelay		=	0.1;
	emtrjdynupdatetargetonly	=	1;
	emactioncolldyn_s		=	"COLLIDE CREATEONCE";
	emactioncollstat_s		=	"COLLIDE";
	emfxcolldynPerc_s		=	"SPELLFX_Greententacle_Target";
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
};

instance spellFX_Greententacle_Bridge_KEY_CAST (C_ParticleFXEmitKey)
{
	emCheckCollision 		=	1;
};

instance spellFX_Greententacle_Bridge_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	emtrjeasevel 			=	0.000001;
};

instance SpellFX_Greententacle_TARGET(CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_Greententacle_Target";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Greententacle_Grow";
	sendAssessMagic			=	1;
};

//******************************************************************************************
instance spellFX_Geyser (CFx_Base_Proto)
{
	visname_S 				=	"MFX_GEYSER_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_Geyser_FOUNTAIN";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	//lightPresetname   	=	"AURA";
};

instance spellFX_Geyser_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_Geyser_KEY_INVEST (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
	emCreateFXID			=	"spellFX_Geyser_Rumble";
};

instance spellFX_Geyser_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_GEYSER_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1000;
	lightrange 				=	0.001;
	emCheckCollision 		=	1;
	sfxid					=	"MFX_Geyser_Rumble";
	sfxisambient			=	1;
};

instance spellFX_Geyser_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Geyser_FOUNTAIN (CFx_Base_Proto)  //FLASH
{
	visname_S 				=	"MFX_GEYSER_FOUNTAIN";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	//sendAssessMagic		=	1;
	sfxid					=	"MFX_Geyser_Fountain";
	sfxisambient			=	1;
};

instance spellFX_Geyser_RUMBLE (CFx_Base_Proto)  //FLASH
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	sfxid					=	"MFX_Geyser_Rumble";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_Whirlwind (CFx_Base_Proto)
{
	visname_S 				=	"MFX_WHIRLWIND_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	//emFXCollStat_S	   	=	"spellFX_Whirlwind_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Whirlwind_TARGET";
	emFXCollDynPerc_S     	=	"spellFX_Whirlwind_SENDPERCEPTION";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emFXInvestOrigin_S		=	"spellFX_Whirlwind_Invest";
	//visAlpha				=	0;
};

instance spellFX_Whirlwind_KEY_OPEN(C_ParticleFXEmitKey)
{
	//Lightrange			=	0.01;
};

instance spellFX_Whirlwind_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_WHIRLWIND_INIT";
	//Lightrange			=	0.01;
	scaleDuration			=	0.5;
};

instance spellFX_Whirlwind_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_WHIRLWIND_GROW";
	//emCreateFXID			=	"spellFX_Whirlwind_Invest";
	//Lightrange			=	0.01;
	pfx_visAlphaStart		=	100;
};

instance spellFX_Whirlwind_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_visAlphaStart		=	150;
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	400.;
	emCheckCollision		=	1;
	//Lightrange			=	100;
	sfxid					=	"MFX_Windfist_Cast";
	sfxisambient			=	1;
};

instance spellFX_Whirlwind_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
	pfx_ppsIsLoopingChg		=	1;
	//emCheckCollision		=	0;
};

instance spellFX_Whirlwind_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ICESPELL_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_ICECUBE_COLLIDE";
};

instance spellFX_Whirlwind_Invest (CFx_Base_Proto)
{
	//visname_S 			=	"MFX_WHIRLWIND_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_WHIRLWIND_INVEST";
	sfxisambient			=	1;
};

instance spellFX_Whirlwind_Sound (CFx_Base_Proto)
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_WHIRLWIND_INVEST";
	sfxisambient			=	1;
};

instance spellFX_Whirlwind_TARGET (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_Whirlwind_Target";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//sendAssessMagic		=	1;
	sfxid					=	"MFX_Whirlwind_Target";
	sfxisambient			=	1;
};

instance spellFX_Whirlwind_SENDPERCEPTION (CFx_Base_Proto)
{
	visname_S 				=	"";
	sendAssessMagic			=	1;
};

//******************************************************************************************
instance spellFX_INCOVATION_RED (CFx_Base_Proto)
{
	visname_S 				=	"INVOCATION_RED";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	lightpresetname			=	"REDAMBIENCE";
	sfxid					=	"SFX_Circle";
	sfxisambient			=	1;
};

instance spellFX_INCOVATION_GREEN (CFx_Base_Proto)
{
	visname_S 				=	"INVOCATION_GREEN";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	lightpresetname			=	"POISON";
	sfxid					=	"SFX_Circle";
	sfxisambient			=	1;
};

instance spellFX_INCOVATION_BLUE (CFx_Base_Proto)
{
	visname_S 				=	"INVOCATION_BLUE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	lightpresetname			=	"REDAMBIENCE";
	sfxid					=	"SFX_Circle";
	sfxisambient			=	1;
};

instance spellFX_INCOVATION_VIOLET (CFx_Base_Proto)
{
	visname_S 				=	"INVOCATION_VIOLET";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	lightpresetname			=	"CATACLYSM";
	sfxid					=	"SFX_Circle";
	sfxisambient			=	1;
};

instance spellFX_INCOVATION_WHITE (CFx_Base_Proto)
{
	visname_S 				=	"INVOCATION_WHITE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	lightpresetname			=	"WHITEBLEND";
	sfxid					=	"SFX_Circle";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_LIGHTSTAR_VIOLET (CFx_Base_Proto)
{
	visname_S 				=	"LIGHTSTAR_VIOLET";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

instance spellFX_LIGHTSTAR_WHITE (CFx_Base_Proto)
{
	visname_S 				=	"LIGHTSTAR_WHITE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

instance spellFX_LIGHTSTAR_BLUE (CFx_Base_Proto)
{
	visname_S 				=	"LIGHTSTAR_BLUE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

instance spellFX_LIGHTSTAR_RED (CFx_Base_Proto)
{
	visname_S 				=	"LIGHTSTAR_RED";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

instance spellFX_LIGHTSTAR_GREEN (CFx_Base_Proto)
{
	visname_S 				=	"LIGHTSTAR_GREEN";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

instance spellFX_LIGHTSTAR_ORANGE (CFx_Base_Proto)
{
	visname_S 				=	"LIGHTSTAR_ORANGE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

//******************************************************************************************
instance spellFX_Innoseye (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Innoseye";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	//emFXCreate_S	 		=	"spellFX_PalHeal_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"REDAMBIENCE";
};

//******************************************************************************************
instance spellFX_HealShrine	(CFx_Base_Proto)
{
	visname_S 				=	"MFX_HealShrine";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	//emFXCreate_S	 		=	"spellFX_PalHeal_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"WHITEBLEND";
};

//******************************************************************************************
instance spellFX_RingRitual1 (CFx_Base_Proto) //ADDON
{
	visname_S 				=	"MFX_Firestorm_SPREAD_SMALL";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"CREATE CREATEQUAD";
	//emActionCollDyn_S 	=	"CREATEONCE";
	//emFXCollStat_S	   	=	"spellFX_Firestorm_COLLIDE";		// [Edenfeld] Wenn einkommentiert, erzeugt sehr viele VFX -> nicht sichtbar/Performance Probs.
	emFXCollDyn_S     		=	"spellFX_ChargeFireball_COLLIDEDYNFX";
	//emFXCollDynPerc_S     =	"vob_magicburn";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision		=	1;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"40 40";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
	emFXCreate_S			=	"spellFX_Firestorm_COLLIDE";
	sfxid					=	"MFX_FIrestorm_Collide";
	sfxisambient			=	1;
};

instance spellFX_RingRitual1_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_RingRitual1_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

instance spellFX_RingRitual2 (CFx_Base_Proto) //ADDON
{
	visname_S 				=	"MFX_RINGRITUAL2";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetname   	=	"FIRESMALL";
};

instance spellFX_LIGHTSTAR_RingRitual (CFx_Base_Proto)
{
	visname_S 				=	"LIGHTSTAR_ORANGE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	sfxid					=	"MFX_Firerain_Invest";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_ItemAusbuddeln	(CFx_Base_Proto)
{
	visname_S 				=	"";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjeasevel 			=	0.;
	emTrjOriginNode 		=	"BIP01 Head";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.4;
	emTrjTargetRange		=	1.2;
	emTrjTargetElev 		=	89;
	lightPresetname 		=	"JUSTWHITE";
};

instance spellFX_ItemAusbuddeln_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange 				=	0.01;
};

instance spellFX_ItemAusbuddeln_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange 				=	0.01;
};

instance spellFX_ItemAusbuddeln_KEY_CAST (C_ParticleFXEmitKey)
{
	visName_S				=	"MFX_Light_ORIGIN";
	lightRange				=	1000;
	sfxid					=	"MFX_Light_CAST";
	sfxisambient			=	1;
	emtrjeasevel 			=	1400.;
};

//******************************************************************************************
instance spellFX_BeliarsWeapon_Upgrate (CFx_Base_Proto)
{
	visname_S				=	"MFX_ArmyOfDarkness_Origin";
	lightPresetName 		=	"JUSTWHITE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

//******************************************************************************************
instance spellFX_Maya_Ghost (CFx_Base_Proto)
{
	visname_S				=	"CS_FOKUS1";
	lightPresetName 		=	"JUSTWHITE";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

//******************************************************************************************
instance spellFX_BELIARSRAGE (CFx_Base_Proto)  //FLASH
{
	visname_S 				=	"MFX_BELIARSRAGE_FLASH";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	emFXCreate_S	 		=	"spellFX_BELIARSRAGE_target_Cloud";
	lightPresetName 		=	"JUSTWHITE";
	sfxid					=	"MFX_Barriere_Shoot";
	sfxisambient			=	1;
};

instance spellFX_BELIARSRAGE_target_Cloud (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BELIARSRAGE_TARGET";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay		=	0.01;
};

instance spellFX_BELIARSRAGE_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"FIXED";
	//lightPresetname   	=	"FIRESMALL";
	sfxid					=	"MFX_BeliarWeap";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_Light (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Light_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emFXCreate_S 			=	"spellFX_Light_ACTIVE";
	emFXCreatedOwnTrj 		=	1;
	lightPresetname 		=	"JUSTWHITE";
};

instance spellFX_Light_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange 				=	100;
};

instance spellFX_Light_KEY_INIT(C_ParticleFXEmitKey)
{
	lightRange 				=	100;
};

instance spellFX_Light_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsIsLoopingChg		=	1;
	lightRange 				=	100;
};

instance spellFX_Light_ACTIVE (CFx_Base_Proto)
{
	visname_S 				=	"";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjeasevel 			=	0.;
	emTrjOriginNode 		=	"BIP01 Head";
	emtrjloopmode_s 		=	"HALT";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.4;
	emTrjTargetRange		=	1.2;
	emTrjTargetElev 		=	89;
	lightPresetname 		=	"JUSTWHITE";
};

instance spellFX_Light_ACTIVE_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange 				=	0.01;
};

instance spellFX_Light_ACTIVE_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange 				=	0.01;
};

instance spellFX_Light_ACTIVE_KEY_CAST (C_ParticleFXEmitKey)
{
	visName_S				=	"MFX_Light_ORIGIN";
	lightRange				=	1000;
	sfxid					=	"MFX_Light_CAST";
	sfxisambient			=	1;
	emtrjeasevel 			=	1400.;
};

//******************************************************************************************
instance spellFX_PalLight (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalLight_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emFXCreate_S 			=	"spellFX_PalLight_ACTIVE";
	emFXCreatedOwnTrj 		=	1;
	lightPresetname 		=	"AURA";
};

instance spellFX_PalLight_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange 				=	100;
};

instance spellFX_PalLight_KEY_INIT (C_ParticleFXEmitKey)
{
	lightRange 				=	100;
};
		
instance spellFX_PalLight_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsIsLoopingChg		=	1;
	lightRange 				=	100;
};

instance spellFX_PalLight_ACTIVE (CFx_Base_Proto)
{
	visname_S 				=	"";
	visAlpha				=	1;
	emtrjmode_s 			=	"FOLLOW TARGET";
	emtrjeasevel 			=	0.;
	emTrjOriginNode 		=	"BIP01 Head";
	emtrjloopmode_s 		=	"HALT";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.4;
	emTrjTargetRange		=	1.2;
	emTrjTargetElev 		=	89;
	lightPresetname 		=	"AURA";
};

instance spellFX_PalLight_ACTIVE_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightRange 				=	0.01;
};

instance spellFX_PalLight_ACTIVE_KEY_INIT(C_ParticleFXEmitKey)
{
	lightRange				=	0.01;
};

instance spellFX_PalLight_ACTIVE_KEY_CAST (C_ParticleFXEmitKey)
{
	visName_S				=	"MFX_PalLight_ORIGIN";
	lightRange				=	2000;
	sfxid					=	"MFX_Light_CAST";
	sfxisambient			=	1;
	emtrjeasevel 			=	1400.;
};

//******************************************************************************************
instance spellFX_Firebolt (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Firebolt_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE CREATEQUAD";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Firebolt_COLLIDEFX";
	emFXCollDyn_S	   		=	"spellFX_Firebolt_COLLIDEDYNFX";
	emFXCollDynPerc_S	   	=	"VOB_MAGICBURN";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightPresetname   		=	"FIRESMALL";
	// quadmark
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"40 40";
	userString[2]			=	"MUL";
};

instance spellFX_Firebolt_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.001;
};

instance spellFX_Firebolt_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Firebolt_INIT";
	//lightrange 			=	0.001;
};

instance spellFX_Firebolt_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"mfx_firebolt_cast";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"Torch_Enlight";
	lightrange 				=	100;
	emCheckCollision 		=	1;
};

instance spellFX_Firebolt_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	visname_S 				=	"";
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	sfxid		  			=	"TORCH_ENLIGHT";
};

instance spellFX_Firebolt_COLLIDEFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Firebolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Firebolt_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Firebolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

//******************************************************************************************
instance spellFX_ChargeFireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ChargeFB_CAST";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_ChargeFireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_ChargeFireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"vob_magicburn";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	30.000;
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_ChargeFireball_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_ChargeFireball_KEY_INIT (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_ChargeFB_INIT";
	//lightrange			=	0.01;
};

instance spellFX_ChargeFireball_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_ChargeFireball_InVEST_BLAST1";
	visname_s				=	"MFX_ChargeFB_CAST_L2";
	lightrange				=	150;
	sfxid					=	"MFX_Fireball_invest1";
	sfxisambient			=	1;
};

instance spellFX_ChargeFireball_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_ChargeFireball_InVEST_BLAST2";
	visname_s				=	"MFX_ChargeFB_CAST_L3";
	sfxid					=	"MFX_Fireball_invest2";
	sfxisambient			=	1;
};

instance spellFX_ChargeFireball_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_ChargeFireball_InVEST_BLAST3";
	visname_s				=	"MFX_ChargeFB_CAST_L4";
	sfxid					=	"MFX_Fireball_invest3";
	sfxisambient			=	1;
};

instance spellFX_ChargeFireball_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_ChargeFireball_InVEST_BLAST4";
	visname_s				=	"MFX_ChargeFB_CAST_L5";
	sfxid					=	"MFX_Fireball_invest4";
	sfxisambient			=	1;
};

instance spellFX_ChargeFireBall_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	//pfx_ppsIsLoopingChg 	=	1;
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCheckCollision 		=	1;
};

instance spellFX_ChargeFireBall_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_ChargeFireball_InVEST_BLAST1 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ChargeFB_INVESTBLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest1";
	sfxisambient			=	1;
	visAlpha 				=	0.3;
};

instance spellFX_ChargeFireball_InVEST_BLAST2 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ChargeFB_INVESTBLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest2";
	sfxisambient			=	1;
	visAlpha 				=	0.5;
};

instance spellFX_ChargeFireball_InVEST_BLAST3 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ChargeFB_INVESTBLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest3";
	sfxisambient			=	1;
	visAlpha 				=	0.8;
};

instance spellFX_ChargeFireball_InVEST_BLAST4 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ChargeFB_INVESTBLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest4";
	sfxisambient			=	1;
	visAlpha 				=	1;
};

instance spellFX_ChargeFireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ChargeFB_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_ChargeFireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Fireball_Collide";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_ChargeFireball_COLLIDE_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide";
	sfxid					=	"MFX_Fireball_Collide2";
};

instance spellFX_ChargeFireball_COLLIDE_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide";
	sfxid					=	"MFX_Fireball_Collide3";
};

instance spellFX_ChargeFireball_COLLIDE_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide";
	sfxid					=	"MFX_Fireball_Collide4";
};

instance spellFX_ChargeFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide2";
	sfxid					=	"MFX_Fireball_Collide2";
};

instance spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide3";
	sfxid					=	"MFX_Fireball_Collide3";
};

instance spellFX_ChargeFireball_COLLIDEDYNFX_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide4";
	sfxid					=	"MFX_Fireball_Collide4";
};

//******************************************************************************************
instance spellFX_InstantFireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_InstantFireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_InstantFireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"VOB_MAGICBURN";
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

instance spellFX_InstantFireball_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_InstantFireball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Fireball_INIT";
	//lightrange			=	0.01;
};

instance spellFX_InstantFireBall_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_IFB_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_InstantFireball_FIRECLOUD";
	emCheckCollision 		=	1;
};

instance spellFX_InstantFireBall_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_InstantFireball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_IFB_CAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"TARGET";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision 		=	2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (nötig, da dieser FX nicht als Child eingefügt wurde, sondern komplett
     												// unabhängig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
	emActionCollDyn_S 		=	"COLLIDE";
	emActionCollStat_S 		= 	"COLLIDE";
};

instance spellFX_InstantFireBall_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_InstantFireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_InstantFireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_InstantFireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_InstantFireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

//******************************************************************************************
instance spellFX_Firestorm (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FireStorm_Init";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Firestorm_SPREAD";
	emFXCollDyn_S     		=	"spellFX_Firestorm_SPREAD";
	emFXCollDynPerc_S     	=	"vob_magicburn";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	emFXInvestORIGIN_S 		=	"spellFX_Firestorm_INVESTSOUND";
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Firestorm_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_Firestorm_KEY_INIT (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_Firestorm_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	emCreateFXID			=	"spellFX_Firestorm_INVESTBLAST1";
};

instance spellFX_Firestorm_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	lightrange				=	150;
	emCreateFXID			=	"spellFX_Firestorm_INVESTBLAST2";
};

instance spellFX_Firestorm_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	lightrange				=	200;
	emCreateFXID			=	"spellFX_Firestorm_INVESTBLAST3";
};

instance spellFX_Firestorm_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	lightrange				=	250;
	emCreateFXID			=	"spellFX_Firestorm_INVESTBLAST4";
};

instance spellFX_Firestorm_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Firestorm_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Firestorm_Cast";
	sfxisambient			=	1;
	emCheckCollision 		=	1;
	lightrange				=	100;
};

instance spellFX_Firestorm_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_FireStorm_INVESTSOUND (CFX_Base_Proto)
{
	visname_s				=	"simpleglow.tga";
	visalpha				=	0.01;
	sfxid					=	"MFX_Firestorm_Invest";
	sfxisambient			=	1;
};

instance spellFX_FireStorm_INVESTBLAST1 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST1";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest1";
	sfxisambient			=	1;
};

instance spellFX_FireStorm_INVESTBLAST2 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST2";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest2";
	sfxisambient			=	1;
};

instance spellFX_FireStorm_INVESTBLAST3 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST3";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest3";
	sfxisambient			=	1;
};

instance spellFX_FireStorm_INVESTBLAST4 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST4";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest4";
	sfxisambient			=	1;
};

instance spellFX_Firestorm_SPREAD (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_SPREAD_SMALL";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"CREATE CREATEQUAD";
	emActionCollDyn_S 		=	"CREATEONCE";
	//emFXCollStat_S	   	=	"spellFX_Firestorm_COLLIDE";		// [Edenfeld] Wenn einkommentiert, erzeugt sehr viele VFX -> nicht sichtbar/Performance Probs.
	emFXCollDyn_S     		=	"spellFX_ChargeFireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"vob_magicburn";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision		=	1;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"40 40";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
	emFXCreate_S			=	"spellFX_Firestorm_COLLIDE";
	sfxid					=	"MFX_FIrestorm_Collide";
	sfxisambient			=	1;
};

instance spellFX_Firestorm_SPREAD_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_Firestorm_SPREAD_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

instance spellFX_Firestorm_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide3";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_Collide3";
};

//******************************************************************************************
instance spellFX_Pyrokinesis (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FireStorm_Init";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Pyrokinesis_SPREAD";
	emFXCollDyn_S     		=	"spellFX_Pyrokinesis_SPREAD";
	emFXCollDynPerc_S     	=	"vob_magicburn";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	emFXInvestORIGIN_S 		=	"spellFX_Pyrokinesis_INVESTSOUND";
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Pyrokinesis_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_Pyrokinesis_KEY_INIT (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_Pyrokinesis_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	emCreateFXID			=	"spellFX_Pyrokinesis_INVESTBLAST1";
};

instance spellFX_Pyrokinesis_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	lightrange				=	150;
	emCreateFXID			=	"spellFX_Pyrokinesis_INVESTBLAST2";
};

instance spellFX_Pyrokinesis_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	lightrange				=	200;
	emCreateFXID			=	"spellFX_Pyrokinesis_INVESTBLAST3";
};

instance spellFX_Pyrokinesis_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	lightrange				=	250;
	emCreateFXID			=	"spellFX_Pyrokinesis_INVESTBLAST4";
};

instance spellFX_Pyrokinesis_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Firestorm_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Firestorm_Cast";
	sfxisambient			=	1;
	emCheckCollision 		=	1;
	lightrange				=	150;
};

instance spellFX_Pyrokinesis_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Pyrokinesis_INVESTSOUND (CFX_Base_Proto)
{
	visname_s				=	"simpleglow.tga";
	visalpha				=	0.01;
	sfxid					=	"MFX_Firestorm_Invest";
	sfxisambient			=	1;
};

instance spellFX_Pyrokinesis_INVESTBLAST1 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST1";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest1";
	sfxisambient			=	1;
};

instance spellFX_Pyrokinesis_INVESTBLAST2 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST2";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest2";
	sfxisambient			=	1;
};

instance spellFX_Pyrokinesis_INVESTBLAST3 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST3";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest3";
	sfxisambient			=	1;
};

instance spellFX_Pyrokinesis_INVESTBLAST4 (CFX_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INVESTBLAST4";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Fireball_invest4";
	sfxisambient			=	1;
};

instance spellFX_Pyrokinesis_SPREAD (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_SPREAD";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"CREATE CREATEQUAD";
	emActionCollDyn_S 		=	"CREATEONCE";
	//emFXCollStat_S	   	=	"spellFX_Firestorm_COLLIDE";		// [Edenfeld] Wenn einkommentiert, erzeugt sehr viele VFX -> nicht sichtbar/Performance Probs.
	emFXCollDyn_S     		=	"spellFX_ChargeFireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"vob_magicburn";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision		=	1;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"40 40";
	userString[2]			=	"MUL";
	lightPresetname   		=	"FIRESMALL";
	emFXCreate_S			=	"spellFX_Firestorm_COLLIDE";
	sfxid					=	"MFX_FIrestorm_Collide";
	sfxisambient			=	1;
};

instance spellFX_Pyrokinesis_SPREAD_KEY_INIT (C_ParticleFXEmitKey)
{
	//lightrange 			=	0.001;
};

instance spellFX_Pyrokinesis_SPREAD_KEY_CAST (C_ParticleFXEmitKey)
{
	//lightrange 			=	150;
};

//******************************************************************************************
instance spellFX_FireRain (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Firerain_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	lightpresetname			=	"FIRESMALL";
	emFXInvestOrigin_S 		=	"spellFX_FireRAin_INVESTGLOW";
};

instance spellFX_FireRain_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_FireRain_RAIN";
	pfx_ppsIsLoopingChg		=	1;
};

instance spellFX_FireRain_RAIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FireRain_Rain";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emActionCollDyn_S		=	"CREATEONCE";
	emFXCollDyn_S     		=	"spellFX_ChargeFireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"vob_magicburn";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	1;
	LightPresetName 		=	"CATACLYSM";
	sfxid					=	"MFX_Firerain_rain";
	sfxisambient			=	1;
};

instance spellFX_FireRain_SUB (CFx_Base_Proto)		// vorrübergehend, bis er hardcodiert nicht mehr gesucht wird
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 HEAD";
};

instance spellFX_FireRain_INVESTGLOW (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FireRain_INVESTGLOW";
	emTrjOriginNode 		=	"BIP01";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	lightPresetName 		=	"REDAMBIENCE";
	sfxid					=	"MFX_Firerain_INVEST";
	sfxisambient			=	1;
	emFXCreate_S			=	"FX_EarthQuake";
};

//******************************************************************************************
instance spellFX_Teleport (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Teleport_INIT";
	//visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emFXInvestOrigin_S 		=	"spellFX_Teleport_ORIGIN";
	lightpresetname			=	"AURA";
};

instance spellFX_Teleport_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange 				=	0.1;
};

instance spellFX_Teleport_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.1;
};

instance spellFX_Teleport_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	lightrange				=	100;
};

instance spellFX_Teleport_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Teleport_CAST";
	pfx_ppsIsLoopingChg		=	1;
	lightrange 				=	200;
};

instance spellFX_Teleport_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_TELEPORT_INVEST";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	emFXCreate_S			=	"spellFX_Teleport_Ring";
	sfxid					=	"MFX_teleport_invest";
	sfxisambient			=	1;
};

instance spellFX_Teleport_RING (CFx_Base_Proto)
{
	visname_S 				=	"MFX_TELEPORT_RING";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
};

instance spellFX_Teleport_CAST (CFx_Base_Proto)
{
	visname_S 				=	"MFX_TELEPORT_CAST";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	sfxid					=	"MFX_teleport_Cast";
	sfxisambient			=	1;
	emtrjmode_s 			=	"FIXED";
};

//******************************************************************************************
instance spellFX_PalHeal (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	//emFXInvestOrigin_S 	=	"spellFX_PalHeal_ORIGIN";	// in gothic 2 sind die heal zauber instant spells, daher gibts keine investphase
};

instance spellFX_PalHeal_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	1;
	emCreateFXID			=	"spellFX_Heal_ORIGIN";
};

instance spellFX_PalHeal_START (CFx_Base_Proto)	// HEAL START wird im 1. Invest-Key getriggert. Säule aus dem Boden.
{
	visname_S 				=	"MFX_Heal_Start";
	sfxID			  		=	"MFX_Heal_CAST";
	sfxisambient			=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 R FOOT";
};

instance spellFX_PalHeal_ORIGIN	(CFx_Base_Proto)	// HEAL ORIGIN wird automatisch über emFXInvestOrigin_S getriggert. Aura um den Spieler
{
	visname_S 				=	"MFX_Heal_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emFXCreate_S	 		=	"spellFX_PalHeal_START";
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};

instance spellFX_PalHeal_ORIGIN_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_PalHeal_ORIGIN_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

//******************************************************************************************
instance spellFX_Heal (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
};

instance spellFX_Heal_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_HEAL_CAST";
	emCreateFXID			=	"spellFX_Heal_LEFTHAND";
};

instance spellFX_Heal_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	1;
	emCreateFXID			=	"spellFX_Heal_ORIGIN";
};

instance spellFX_Heal_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Heal_HEAVENLIGHT";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_HEAL_CAST";
	sfxisambient			=	1;
};

instance spellFX_Heal_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_HEAL_CAST";
	emTrjOriginNode 		=	"ZS_LEFTHAND";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	LightPresetname			=	"AURA";
};

instance spellFX_Heal_LEFTHAND_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	0.001;
};

instance spellFX_Heal_LEFTHAND_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange 				=	150;
};

//******************************************************************************************
instance spellFX_Transform (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Transform_INIT";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"fixed";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay		=	5000;
};

instance spellFX_transform_KEY_INVEST_0 (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_Transform_ORIGIN";
	emCreateFXID			=	"spellFX_Transform_ORIGIN";
};

instance spellFX_transform_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_Transform_ORIGIN";
	emCreateFXID			=	"spellFX_Transform_ORIGIN";
};

instance spellFX_transform_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingChg		=	1;
	emCreateFXID			=	"spellFX_Transform_BLEND";
};

instance spellFX_Transform_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Transform_ORIGIN";
	emtrjoriginnode 		=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0;
	emselfrotvel_s 			=	"0 0 50";
};

instance spellFX_Transform_BLEND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Transform_BLEND";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_Lightning (CFx_Base_Proto)
{
	visName_S 				=	"MFX_Lightning_Origin";
	visSize_S 				=	"40 40";
	visAlphaBlendFunc_S 	=	"ADD";
	visTexAniFPS 			=	17;
	visTexAniIsLooping 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjNumKeys    		=	4;
	emtrjnumkeysvar 		=	1;
	emtrjangleelevvar 		=	20.;
	emtrjangleheadvar 		=	20.;
	emtrjloopmode_s 		=	"PINGPONG";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.05;
	emselfrotvel_s 			=	"0 0 50";
	emTrjTargetRange		=	20;
	emTrjTargetElev 		=	0;
	emTrjKeyDistVar			=	2;
	emTrjEaseVel			=	150;
};

instance spellFX_Lightning_KEY_INIT (C_ParticleFXEmitKey)
{
	visName_S 				=	"MFX_Lightning_Origin";
};

instance spellFX_Lightning_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visName_S 				=	"Lightning_Single.ltn";
	emtrjmode_s 			=	"TARGET LINE RANDOM";
	emtrjeasevel 			=	3000.;
};

instance spellFX_Lightning_KEY_CAST (C_ParticleFXEmitKey)
{
};

//******************************************************************************************
instance spellFX_LightningFlash (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Lightning_Origin";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollDyn_S		=	"COLLIDE CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_LightningFlash_HEAVENSRAGE";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightPresetname   		=	"AURA";
};

instance spellFX_LightningFlash_KEY_INIT (C_ParticleFXEmitKey)
{
	lightrange 				=	100;
};

instance spellFX_LightningFlash_KEY_INVEST (C_ParticleFXEmitKey)
{
	lightrange 				=	100;
};

instance spellFX_LightningFlash_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_HEAVENSRAGE_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	2000;
	sfxid					=	"MFX_Thunderball_Collide3";
	lightrange 				=	100;
	emCheckCollision 		=	1;
};

instance spellFX_LightningFlash_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_LightningFlash_HEAVENSRAGE	(CFx_Base_Proto)  //FLASH
{
	visname_S 				=	"MFX_HEAVENSRAGE_FLASH";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	sendAssessMagic			=	1;
	emFXCreate_S	 		=	"spellFX_LightningFlash_target_CLOUD";
	lightpresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_Lightning_ORIGIN";
	sfxisambient			=	1;
};

instance spellFX_LightningFlash_target_Cloud (CFx_Base_Proto)
{
	visname_S 				=	"MFX_HEAVENSRAGE_TARGET";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0.01;
};

//******************************************************************************************
/*
instance spellFX_LightningFlash (CFx_Base_Proto)
{
	visName_S 				=	"MFX_Lightning_Origin";
	visSize_S 				=	"140";
	visAlphaBlendFunc_S 	=	"ADD";
	visTexAniFPS 			=	5;
	visTexAniIsLooping 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjNumKeys    		=	1; //4
	emtrjnumkeysvar 		=	1;
	emtrjangleelevvar 		=	20.;
	emtrjangleheadvar 		=	20.;
	//emtrjloopmode_s 		=	"COLLIDE";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.01;
	emFXInvestTarget_S 		=	"spellFX_LightningFlash_target";
	emselfrotvel_s 			=	"0 0 250";
	emTrjTargetRange		=	20;
	emTrjTargetElev 		=	0;
	userString[0]			=	"1";
};

instance spellFX_LightningFlash_KEY_INIT (C_ParticleFXEmitKey)
{
	//visName_S 			=	"lightning_origin_a0.tga";
};

instance spellFX_LightningFlash_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
};

instance spellFX_LightningFlash_KEY_CAST (C_ParticleFXEmitKey)
{
};

instance spellFX_LightningFlash_target (CFx_Base_Proto)  //FLASH
{
	visname_S 				=	"MFX_HEAVENSRAGE_FLASH";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	lightPresetname 		=	"AURA";
	sendAssessMagic			=	1;
	emFXCreate_S	 		=	"spellFX_LightningFlash_target_CLOUD";
	sfxid					=	"MFX_Lightning_ORIGIN";
	sfxisambient			=	1;
};

instance spellFX_LightningFlash_target_Cloud (CFx_Base_Proto)
{
	visname_S 				=	"MFX_HEAVENSRAGE_TARGET";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay		=	0.01;
	//emFXCreate_S	 		=	"spellFX_LightningFlash_target_GROUND";
};

/*
instance spellFX_LightningFlash_target_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_HEAVENSRAGE_GROUND";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0.01;
	emFXCreate_S	 		=	"spellFX_LightningFlash_target_cloud";
	sfxid					=	"MFX_Lightning_Target";
	sfxisambient			=	1;
};
*/

//******************************************************************************************
instance spellFX_Zap (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icebolt_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Zap_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Zap_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//visAlpha				=	0;
};

instance spellFX_Zap_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Icebolt_INIT";
	scaleDuration			=	0.5;
};

instance spellFX_Zap_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_HEAVENSRAGE_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	2000.;
	sfxid					=	"MFX_Thunderball_Collide3";
	emCheckCollision		=	1;
	//emCreateFXID 			=	"FX_CAST2";
};

instance spellFX_Zap_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	emCheckCollision		=	0;
};

instance spellFX_Zap_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icebolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

instance spellFX_Zap_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderbolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
	SendAssessMagic			=	1;
};

//******************************************************************************************
instance spellFX_PalHolyBolt (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalHolyBolt_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_PalHolyBolt_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_PalHolyBolt_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"AURA";
	//visAlpha				=	0;
};

instance spellFX_PalHolyBolt_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_PalHolyBolt_INIT";
	scaleDuration			=	0.5;
	lightrange				=	100;
};

instance spellFX_PalHolyBolt_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_PalHolyBolt_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1600.;
	sfxid					=	"MFX_Thunderbolt_Cast";
	emCheckCollision		=	1;
	lightrange				=	100;
	//emCreateFXID 			=	"FX_CAST2";
};

instance spellFX_PalHolyBolt_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	emCheckCollision		=	0;
};

instance spellFX_PalHolyBolt_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalHolyBolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

instance spellFX_PalHolyBolt_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalHolyBolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

//******************************************************************************************
instance spellFX_Icebolt (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icebolt_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Icebolt_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Icebolt_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//visAlpha				=	0;
};

instance spellFX_Icebolt_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Icebolt_INIT";
	scaleDuration			=	0.5;
};

instance spellFX_Icebolt_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Icebolt_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"mfx_thunderbolt_cast";
	emCheckCollision		=	1;
	//emCreateFXID 			=	"FX_CAST2";
};

instance spellFX_Icebolt_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	emCheckCollision		=	0;
};

instance spellFX_Icebolt_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icebolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

instance spellFX_Icebolt_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderbolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
	SendAssessMagic			=	1;
};

//******************************************************************************************
instance spellFX_chargezap (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_chargezap_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_chargezap_COLLIDE";
	emFXCollDynPerc_S     	=	"spellFX_Thunderspell_SENDPERCEPTION";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"AURA";
};

instance spellFX_chargezap_KEY_OPEN (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Thunderball_INIT";
	lightrange				=	100;
};

instance spellFX_chargezap_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Thunderball_INIT";
	lightrange				=	100;
};

instance spellFX_chargezap_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Thunderball_INVEST";
	emCreateFXID			=	"spellFX_chargezap_InVEST_BLAST1";
	lightrange				=	150;
	sfxid					=	"MFX_Thunderball_invest1";
	sfxisambient			=	1;
};

instance spellFX_chargezap_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Thunderball_INVEST_L2";
	emCreateFXID			=	"spellFX_chargezap_InVEST_BLAST2";
	lightrange				=	200;
	sfxid					=	"MFX_Thunderball_invest2";
	sfxisambient			=	1;
};

instance spellFX_chargezap_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Thunderball_INVEST_L3";
	emCreateFXID			=	"spellFX_chargezap_InVEST_BLAST3";
	lightrange				=	250;
	sfxid					=	"MFX_Thunderball_invest3";
	sfxisambient			=	1;
};

instance spellFX_chargezap_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Thunderball_INVEST_L4";
	emCreateFXID			=	"spellFX_chargezap_InVEST_BLAST4";
	lightrange				=	300;
	sfxid					=	"MFX_Thunderball_invest4";
	sfxisambient			=	1;
};

instance spellFX_chargezap_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_Thunderball_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Thunderball_Cast";
	sfxisambient			=	1;
	emCheckCollision		=	1;
};

instance spellFX_chargezap_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_chargezap_InVEST_BLAST1 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_INVEST_BLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetname 		=	"WHITEBLEND";
	sfxid					=	"MFX_Thunderball_invest1";
	sfxisambient			=	1;
	visAlpha 				=	0.3;
};

instance spellFX_chargezap_InVEST_BLAST2 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_INVEST_BLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetname 		=	"WHITEBLEND";
	sfxid					=	"MFX_Thunderball_invest2";
	sfxisambient			=	1;
	visAlpha 				=	0.5;
};

instance spellFX_chargezap_InVEST_BLAST3 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_INVEST_BLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetname 		=	"WHITEBLEND";
	sfxid					=	"MFX_Thunderball_invest3";
	sfxisambient			=	1;
	visAlpha 				=	0.8;
};

instance spellFX_chargezap_InVEST_BLAST4 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_INVEST_BLAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	//lightPresetname 		=	"WHITEBLEND";
	sfxid					=	"MFX_Thunderball_invest4";
	sfxisambient			=	1;
	visAlpha 				=	1;
};

instance spellFX_chargezap_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_chargezap_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Thunderball_Collide1";
	sfxid					=	"MFX_Thunderball_Collide1";
};

instance spellFX_chargezap_COLLIDE_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Thunderball_Collide2";
	sfxid					=	"MFX_Thunderball_Collide2";
};

instance spellFX_chargezap_COLLIDE_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Thunderball_Collide3";
	sfxid					=	"MFX_Thunderball_Collide3";
};

instance spellFX_chargezap_COLLIDE_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Thunderball_Collide4";
	sfxid					=	"MFX_Thunderball_Collide4";
};

//******************************************************************************************
instance spellFX_IceCube (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icecube_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
///	emFXCollStat_S	   		=	"spellFX_IceCube_COLLIDE";
	//emFXCollDyn_S     	=	"spellFX_Icespell_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_Icespell_SENDPERCEPTION";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	emFXInvestOrigin_S		=	"spellFX_Icespell_Invest";
	//visAlpha				=	0;
	lightPresetname   		=	"JUSTWHITE";
};

instance spellFX_IceCube_KEY_OPEN (C_ParticleFXEmitKey)
{
	Lightrange				=	100;
};

instance spellFX_IceCube_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Icecube_INIT";
	Lightrange				=	100;
	scaleDuration			=	0.5;
};

instance spellFX_IceCube_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_ICECUBE_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1000.;
	emCheckCollision		=	1;
	sfxid					=	"MFX_Icecube_cast";
	sfxisambient			=	1;
	//emCreateFXID 			=	"FX_CAST2";
	Lightrange				=	100;
};

instance spellFX_IceCube_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
	//emCheckCollision		=	0;
};

instance spellFX_IceCube_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ICESPELL_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_ICECUBE_COLLIDE";
};

instance spellFX_Icespell_Invest (CFx_Base_Proto)
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_ICECUBE_INVEST";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_IceWave (CFx_Base_Proto)
{
	visname_S 				=	"MFX_IceCUBE_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	lightpresetname			=	"JUSTWHITE";
	emFXInvestOrigin_S		=	"spellFX_Icespell_Invest";
};

instance SPELLFX_ICEWAVE_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	100;
};

instance spellFX_Icewave_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_IceCUBE_INIT";
	lightrange				=	100;
};

instance spellFX_Icewave_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Icewave_WAVE";
	pfx_ppsIsLoopingChg 	=	1;
	sfxid					=	"MFX_Icewave_Cast";
	sfxisambient			=	1;
	lightrange				=	100;
};

instance spellFX_IceWave_WAVE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Icewave_WAVE";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emActionCollDyn_S		=	"CREATEONCE";
	//emFXCollDyn_S			=	"spellFX_IceSpell_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_Icespell_SENDPERCEPTION";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	1;
	LightPresetName			=	"JUSTWHITE";
};

instance spellFX_IceWave_WAVE_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	0.01;
};

instance spellFX_IceWave_WAVE_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	0.01;
};

instance spellFX_IceWave_WAVE_KEY_CAST (C_ParticleFXEmitKey)
{
	LightRange				=	500;
};

instance spellFX_Icewave_SUB (CFx_Base_Proto)	// vorrübergehend, bis er hardcodiert nicht mehr gesucht wird
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 HEAD";
};

//******************************************************************************************
instance spellFX_SummonCreature_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_Origin";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	sfxid					=	"MFX_Transform_Cast";
	sfxisambient			=	1;
	emFXCreate_S 			=	"FX_EarthQuake";
};

instance spellFX_SummonCreature_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT2";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
};

instance spellFX_SummonGolem (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonGolem_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonGolem_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonGolem_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonGolem_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_SummonSkeleton (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonSkeleton_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonSkeleton_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonSkeleton_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonSkeleton_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_SummonGoblinSkeleton (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonGoblinSkeleton_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonGoblinSkeleton_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonGoblinSkeleton_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonGoblinSkeleton_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_SummonWolf (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonWolf_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonWolf_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonWolf_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonWolf_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_SummonDemon (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonDemon_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonDemon_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonDemon_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonDemon_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_SummonGuardian (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonGuardian_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonGuardian_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonGuardian_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonGuardian_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_SummonZombie (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonZombie_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonZombie_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonZombie_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonZombie_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_SummonMud (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_SummonMud_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonMud_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_SummonMud_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"FX_EarthQuake";
};

instance spellFX_SummonMud_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_ArmyOfDarkness (CFx_Base_Proto)
{
	visname_S 				=	"MFX_ArmyOfDarkness_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	LightPresetname 		=	"REDAMBIENCE";
};

instance spellFX_ArmyOfDarkness_KEY_OPEN (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_ArmyOfDarkness_KEY_INIT (C_ParticleFXEmitKey)
{
	LightRange				=	100;
};

instance spellFX_ArmyOfDarkness_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	LightRange				=	200;
	emCreateFXID			=	"spellFX_SummonCreature_LEFTHAND";
};

instance spellFX_ArmyOfDarkness_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_SummonCreature_ORIGIN";
	pfx_ppsisloopingchg		=	1;
};

//******************************************************************************************
instance spellFX_MassDeath (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MassDeath_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjloopmode_s 		=	"NONE";
	emFXCreatedOwnTrj 		=	0;
	lightpresetname			=	"REDAMBIENCE";
};

instance spellFX_MassDeath_KEY_INIT(C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_MassDeath_INIT";
	lightrange				=	100;
};

instance spellFX_MassDeath_KEY_INVEST_1	(C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_MASSDEATH_RIGHTHAND";
	emCreateFXID			=	"spellFX_MassDeath_LEFTHAND";
};

instance spellFX_MassDeath_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_MassDeath_EXPLOSION";
	pfx_ppsIsLoopingChg		=	1;
};

instance spellFX_Massdeath_EXPLOSION (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MASSDEATH_EXPLOSION";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
	emFXCreate_S			=	"spellFX_MassDeath_GROUND";
};

instance spellFX_MassDeath_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MassDeath_CAST";
	emTrjOriginNode 		=	"BIP01 R Foot";
	emActionCollDyn_S		=	"CREATEONCE";
	emFXCollDyn_S			=	"spellFX_MassDeath_COLLIDEDYNFX";
	emFXCollDynAlign_S		=	"COLLISIONNORMAL";
	emCheckCollision		=	1;
	LightPresetName			=	"REDAMBIENCE";
	sfxid					=	"MFX_Massdeath_Cast";
	sfxisambient			=	1;
};

instance spellFX_Massdeath_LEFTHAND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MASSDEATH_LEFTHAND";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"Bip01 L Hand";
	emFXCreate_S			=	"FX_EARTHQUAKE";
};

instance spellFX_MassDeath_SUB (CFx_Base_Proto)	// vorrübergehend, bis er hardcodiert nicht mehr gesucht wird
{
	visname_S 				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 HEAD";
};

instance spellFX_MassDeath_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Massdeath_TARGET";
	emTrjOriginNode 		=	"BIP01";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_MassdeatH_Target";
};

//******************************************************************************************
instance spellFX_DestroyUndead (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DestroyUndead_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Destroyundead_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Destroyundead_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"AURA";
};

instance spellFX_DestroyUndead_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DestroyUndead_INIT";
	lightrange				=	100;
};

instance spellFX_DestroyUndead_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DestroyUndead_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	800.;
	sfxid					=	"MFX_DestroyUndead_Cast";
	sfxisambient			=	1;
	//emCreateFXID 			=	"FX_CAST2";
	emCheckCollision 		=	1;
};

instance spellFX_Destroyundead_COLLIDE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

instance spellFX_Destroyundead_COLLIDEDYNFX (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_PalRepelEvil (CFx_Base_Proto)
{
	visname_S 				=	"MFX_REPELEVIL_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_PalRepelEvil_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_PalRepelEvil_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"JUSTWHITE";
};

instance spellFX_PalRepelEvil_KEY_INIT (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_DestroyUndead_INIT";
	lightrange				=	200;
};

instance spellFX_PalRepelEvil_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	200;
};

instance spellFX_PalRepelEvil_KEY_CAST (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_RepelEvil_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	800.;
	sfxid					=	"MFX_DestroyUndead_Cast";
	lightrange				=	200;
	emCreateFXID			=	"spellFX_RepelEvil_TRAIL";
	sfxisambient			=	1;
	emCheckCollision 		=	1;
};

instance spellFX_PalRepelEvil_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0.0001;
};

instance spellFX_REPELEVIL_TRAIL (CFx_Base_Proto)
{
	emtrjeasevel 			=	800.;
	visname_S 				=	"MFX_REPELEVIL_TRAIL";
	visAlpha				=	1;
	emtrjmode_s 			=	"TARGET";
	emCheckCollision 		=	1;
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S 		=	"COLLIDE";
	lightpresetname			=	"WHITEBLEND";
};

instance spellFX_REPELEVIL_TRAIL_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
	lightrange				=	500;
};

instance spellFX_PalRepelEvil_COLLIDE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_RepelEvil_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

instance spellFX_PalRepelEvil_COLLIDEDYNFX (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_RepelEvil_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_MasterOfDisaster (CFx_Base_Proto)
{
	visname_S 				=	"MFX_MasterOfDisaster_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_MasterOfDisaster_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_MasterOfDisaster_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"JUSTWHITE";
};

instance spellFX_MasterOfDisaster_KEY_INIT (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_DestroyUndead_INIT";
};

instance spellFX_MasterOfDisaster_KEY_CAST (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_RepelEvil_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	2500.;
	sfxid					=	"MFX_DestroyUndead_Cast";
	sfxisambient			=	1;
	emCheckCollision 		=	1;
};

instance spellFX_MasterOfDisaster_TRAIL (CFx_Base_Proto)
{
	emtrjeasevel 			=	800.;
	visname_S 				=	"MFX_MasterOfDisaster_TRAIL";
	visAlpha				=	1;
	emtrjmode_s 			=	"TARGET";
	emCheckCollision 		=	1;
	emActionCollStat_S		=	"COLLIDE";
	emActionCollDyn_S 		=	"COLLIDE";
};

instance spellFX_MasterOfDisaster_TRAIL_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_MasterOfDisaster_COLLIDE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_MasterOfDisaster_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

instance spellFX_MasterOfDisaster_COLLIDEDYNFX (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_MasterOfDisaster_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"JUSTWHITE";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_PalDestroyEvil (CFx_Base_Proto)
{
	visname_S 				=	"MFX_DestroyUndead_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_PalDestroyEvil_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_PalDestroyEvil_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"AURA";
};

instance spellFX_PalDestroyEvil_KEY_INIT (C_ParticleFXEmitKey)
{
	//visname_S 			=	"MFX_DestroyUndead_INIT";
	lightrange				=	100;
};

instance spellFX_PalDestroyEvil_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_DestroyUndead_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	800.;
	sfxid					=	"MFX_DestroyUndead_Cast";
	sfxisambient			=	1;
	//emCreateFXID 			=	"FX_CAST2";
	emCheckCollision 		=	1;
};

instance spellFX_PalDestroyEvil_COLLIDE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

instance spellFX_PalDestroyEvil_COLLIDEDYNFX (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01";
	visname_S 				=	"MFX_DESTROYUNDEAD_COLLIDE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_DESTROYUNDEAD_COLLIDE";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_WindFist (CFx_Base_Proto)
{
	visname_S 				=	"MFX_WINDFIST_INIT";
	vissize_s				=	"1 1";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjnumkeys 			=	7;
	emtrjnumkeysvar 		=	3;
	emtrjangleelevvar 		=	5.;
	emtrjangleheadvar 		=	20.;
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay		=	200000;
	emTrjTargetRange		=	100;
	emTrjTargetElev 		=	1;
	emActionCollDyn_S 		=	"CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_Windfist_COLLIDEDYNFX";	//Sendet perception
	emFXInvestOrigin_S		=	"spellFX_Windfist_Invest";
};

instance spellFX_WINDFIST_KEY_INIT (C_ParticleFXEmitKey)
{
	emCheckCollision		=	0;
};

/*
instance spellFX_Windfist_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Windfist_INVESTBLAST";
};

instance spellFX_Windfist_KEY_INVEST_2 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Windfist_INVESTBLAST";
};

instance spellFX_Windfist_KEY_INVEST_3 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Windfist_INVESTBLAST";
};

instance spellFX_Windfist_KEY_INVEST_4 (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Windfist_INVESTBLAST";
};
*/

instance spellFX_WINDFIST_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_WINDFIST_COLLISIONDUMMY";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	2500.;
	emCheckCollision		=	1;
	emCreateFXID			=	"spellFX_WINDFIST_CAST";
};

instance spellFX_Windfist_Invest (CFx_Base_Proto)
{
	visname_S				=	"MFX_WINDFIST_INVEST";
	sfxid					=	"MFX_WINDFIST_INVEST";
	sfxisambient			=	1;
};

instance spellFX_Windfist_INVESTBLAST (CFX_Base_Proto)
{
	visname_S				=	"MFX_WINDFIST_INVEST_BLAST";
	sfxid					=	"MFX_WINDFIST_INVESBLAST";
	sfxisambient			=	1;
};

instance spellFX_Windfist_Cast (CFx_Base_Proto)
{
	visname_S				=	"MFX_WINDFIST_Cast";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	sfxid					=	"MFX_Windfist_Cast";
	sfxisambient			=	1;
};

instance spellFX_Windfist_COLLIDEDYNFX (CFx_Base_Proto)	//Sendet perception
{
	visname_S				=	"MFX_WINDFIST_COLLIDE";
	sendAssessMagic			=	1;
};

//******************************************************************************************
instance spellFX_Sleep (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SLEEP_INIT";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"fixed";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.;
	//emFXInvestOrigin_S 	=	"spellFX_Sleep_ORIGIN";
	//emFXInvestTarget_S 	=	"spellFX_Sleep_TARGET";
};

instance spellFX_Sleep_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_SLEEP_INIT";
};

instance spellFX_Sleep_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_SLEEP_ORIGIN";
	//emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Sleep_Cast";
	//emCreateFXID 			=	"FX_CAST2";
};

instance spellFX_Sleep_ORIGIN (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SLEEP_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

instance spellFX_Sleep_TARGET (CFx_Base_Proto)
{
	lightPresetname 		=	"AURA";
	visname_S 				=	"MFX_SLEEP_TARGET";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	//sendAssessMagic		=	1;
};

//******************************************************************************************
instance spellFX_Charm (CFx_Base_Proto)
{
	visname_S 				=	"MFX_CHARM_INIT";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjmode_s 			=	"fixed";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjdynupdatedelay 	=	0.;
	//emFXInvestOrigin_S 	=	"spellFX_Sleep_ORIGIN";
	emFXInvestTarget_S 		=	"spellFX_Charm_TARGET";
};

instance spellFX_CHARM_KEY_INIT	(C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_CHARM_INIT";
};

instance spellFX_CHARM_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_CHARM_ORIGIN";
	//emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Sleep_Cast";
	//emCreateFXID 			=	"FX_CAST2";
};

instance spellFX_CHARM_ORIGIN (CFx_Base_Proto)
{
	visname_S				=	"MFX_CHARM_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};

instance spellFX_CHARM_TARGET	(CFx_Base_Proto)
{
	lightPresetname 		=	"AURA";
	visname_S 				=	"MFX_CHARM_TARGET";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"BIP01";
	emtrjdynupdatedelay 	=	0;
	//sendAssessMagic		=	1;
};

//******************************************************************************************
/*
instance spellFX_Pyrokinesis (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Firestorm_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 HEAD";
	emtrjnumkeys 			=	1;
	emtrjnumkeysvar 		=	1;
	emtrjangleelevvar 		=	15.;
	emtrjangleheadvar 		=	0.;
	emtrjdynupdatedelay 	=	0.;
	emFXInvestTarget_S 		=	"spellFX_Pyrokinesis_target";
	emTrjTargetRange		=	0;
	emTrjTargetElev 		=	0;
};

instance spellFX_Pyrokinesis_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsIsLoopingChg		=	1;
	emCreateFXID			=	"spellFX_Pyrokinesis_BRIDGE";
};

instance spellFX_Pyrokinesis_TARGET (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Pyrokinesis_TARGET";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01 HEAD";
	lightPresetname 		=	"FIRESMALL";
	emTrjTargetRange		=	0;
	emTrjTargetElev 		=	0;
	sendAssessMagic			=	1;
	emtrjdynupdatedelay 	=	0.01;
	sfxid					=	"MFX_Pyrokinesis_target";
	sfxisambient			=	1;
};

instance spellFX_Pyrokinesis_BRIDGE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PYROKINESIS_BRIDGE";
	emtrjmode_s 			=	"FIXED";
	emtrjoriginnode 		=	"ZS_RIGHTHAND";
	emtrjdynupdatedelay 	=	0;
};
*/

//******************************************************************************************
instance spellFX_Fear (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FEAR_INIT";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	lightpresetname			=	"REDAMBIENCE";
	emtrjdynupdatedelay 	=	10000;
};

instance spellFX_Fear_KEY_INIT (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0.;
	LightRange				=	100;
};

instance spellFX_Fear_KEY_OPEN (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.;
	lightrange				=	100;
};

instance spellFX_Fear_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	//emCreateFXID			=	"spellFX_Fear_WINGS2";
	lightrange				=	100;
};

instance spellFX_Fear_KEY_CAST (C_ParticleFXEmitKey)
{
	emCreateFXID			=	"spellFX_Fear_GROUND";
	pfx_ppsIsLoopingChg		=	1;
	lightrange				=	300;
};

instance spellFX_Fear_WINGS (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FEAR_WINGS";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	10000;
	//emFXCreatedOwnTrj 	=	0;
	emFXCreate_S			=	"FX_Earthquake";
};

instance spellFX_Fear_WINGS2 (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FEAR_WINGS2";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	10000;
	emFXCreate_S			=	"spellFX_Fear_GROUND";
};

instance spellFX_Fear_GROUND (CFx_Base_Proto)
{
	visname_S 				=	"MFX_FEAR_ORIGIN";
	emtrjmode_s 			=	"FIXED";
	emtrjeasefunc_s 		=	"linear";
	emTrjOriginNode 		=	"BIP01";
	emtrjdynupdatedelay 	=	10000;
	sfxid					=	"MFX_FEAR_CAST";
	sfxisambient			=	1;
};

instance spellFX_FEAR_SENDPERCEPTION (CFx_Base_Proto)	//Sendet perception
{
	visname_S				=	"";
	sfxid					=	"HAMMER";
	sendassessmagic			=	1;
};

//******************************************************************************************
instance spellFX_BreathOfDeath (CFx_Base_Proto)
{
	visname_S 				=	"MFX_BreathOfDeath_INIT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollDyn_S 		=	"CREATEONCE";
	emFXCollDyn_S	   		=	"spellFX_BreathOfDeath_Target";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	30.000;
};

instance spellFX_BreathOfDeath_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	//emCreateFXID			=	"SpellFX_BreathOfDeath_Invest";
};

instance spellFX_BreathOfDeath_KEY_CAST (C_ParticleFXEmitKey)
{
	pfx_ppsisloopingchg		=	1;
	emCreateFXID			=	"spellFX_BreathOfDeath_CAST";
};

instance spellFX_BreathOfDeath_Invest (CFx_Base_Proto)
{
	visname_S				=	"MFX_BREATHOFDEATH_INVEST";
	sfxid					=	"MFX_BREATHOFDEATH_INVEST";
	sfxisambient			=	1;
};

instance spellFX_BreathOfDeath_Cast (CFx_Base_Proto)
{
	visname_S				=	"MFX_BreathOfDeath_Cast";
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
	emFXCollDyn_S	   		=	"spellFX_BreathOfDeath_Target";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	30.000;
	sfxid					=	"MFX_BreathOfDeath_Cast";
	sfxisambient			=	1;
};

instance spellFX_BreathOfDeath_Cast_KEY_CAST (C_ParticleFXEmitKey)
{
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	800.;
	emCheckCollision		=	1;
};

instance spellFX_BreathOfDeath_Target (CFx_Base_Proto)
{
	visname_S				=	"MFX_BREATHOFDEATH_COLLIDE";
	sfxid					=	"MFX_BREATHOFDEATH_TARGET";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_Shrink (CFx_Base_Proto)
{
	visname_S 				=	"MFX_SHRINK_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01";
	emtrjnumkeys 			=	5;
	emtrjnumkeysvar 		=	1;
	emtrjangleelevvar 		=	15.;
	emtrjangleheadvar 		=	0.;
	emtrjeasefunc_s 		=	"LINEAR";
	emtrjloopmode_s			=	"HALT";
	emtrjdynupdatedelay 	=	0.;
	emTrjTargetRange		=	0;
	emTrjTargetElev 		=	0;
	lightpresetname			=	"FX_LIGHT1";
	emFXInvestOrigin_S		=	"spellFX_SHRINK_ORIGIN";
};

instance spellFX_Shrink_KEY_OPEN (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0.01;
	LightRange				=	200;
};

instance spellFX_Shrink_KEY_INIT (C_ParticleFXEmitKey)
{
	emtrjeasevel			=	0.01;
	LightRange				=	200;
};

instance spellFX_Shrink_KEY_CAST (C_ParticleFXEmitKey)
{
	emtrjmode_s 			=	"TARGET LINE";
	visname_S 				=	"MFX_SHRINK_TARGET";
	emtrjeasevel			=	6000;
	LightRange				=	200;
	sfxid					=	"MFX_SHRINK_CAST";
	sfxisambient			=	1;
};

instance spellFX_Shrink_Origin (CFx_Base_Proto)
{
	emFXCreatedOwnTrj 		=	0;
	visname_S				=	"";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	sfxid					=	"MFX_SHRINK_INVEST";
	sfxisambient			=	1;
};

//******************************************************************************************
instance spellFX_Concussionbolt (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalHolyBolt_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATE";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Concussionbolt_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Concussionbolt_COLLIDEDYNFX";
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	lightpresetname			=	"AURA";
	//visAlpha				=	0;
};

instance spellFX_Concussionbolt_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_PalHolyBolt_INIT";
	scaleDuration			=	0.5;
	lightrange				=	100;
};

instance spellFX_Concussionbolt_KEY_CAST (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_PalHolyBolt_CAST";
	emtrjmode_s 			=	"TARGET";
	emtrjeasevel 			=	1600.;
	sfxid					=	"MFX_PalHolyBolt_Cast";
	emCheckCollision		=	1;
	lightrange				=	100;
	//emCreateFXID 			=	"FX_CAST2";
};

instance spellFX_Concussionbolt_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
	emCheckCollision		=	0;
};

instance spellFX_Concussionbolt_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalHolyBolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

instance spellFX_Concussionbolt_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_PalHolyBolt_Collide";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"Torch_Enlight";
};

//******************************************************************************************
instance spellFX_Deathbolt (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Deathbolt_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Deathbolt_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"VOB_MAGICBURN";
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

instance spellFX_Deathbolt_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_Deathbolt_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Fireball_INIT";
	//lightrange			=	0.01;
};

instance spellFX_Deathbolt_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_IFB_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_InstantFireball_FIRECLOUD";
	emCheckCollision 		=	1;
};

instance spellFX_Deathbolt_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Deathbolt_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_IFB_CAST";
	visAlpha				=	1;
	emtrjmode_s 			=	"TARGET";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emTrjDynUpdateDelay		=	20000;
	emCheckCollision 		=	2;					// [EDENFELD, neu] 2: Coll, aber keinen Schaden abziehen (nötig, da dieser FX nicht als Child eingefügt wurde, sondern komplett
     												// unabhängig mit Coll in die Welt gesetzt wurde. Der Schaden wird aber schon von spellFX_InstantFireball berechnet.)
	emActionCollDyn_S 		=	"COLLIDE";
	emActionCollStat_S 		=	"COLLIDE";
};

instance spellFX_Deathbolt_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Deathbolt_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Deathbolt_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_Deathbolt_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Deathbolt_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

//******************************************************************************************
instance spellFX_Deathball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_Deathball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_Deathball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"VOB_MAGICBURN";
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

instance spellFX_Deathball_KEY_OPEN (C_ParticleFXEmitKey)
{
	//lightrange			=	0.01;
};

instance spellFX_Deathball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_Fireball_INIT";
	//lightrange			=	0.01;
};

instance spellFX_Deathball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	200;
	visname_S 				=	"MFX_IFB_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_InstantFireball_FIRECLOUD";
	emCheckCollision 		=	1;
};

instance spellFX_Deathball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Deathball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel			=	1400.;
	visname_S				=	"MFX_IFB_CAST";
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

instance spellFX_Deathball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_Deathball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Deathball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

instance spellFX_Deathball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"FIRESMALL";
};

instance spellFX_Deathball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_Fireball_Collide1";
	sfxid					=	"MFX_Fireball_Collide1";
};

//******************************************************************************************
instance VOB_BURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_Firespell_HUMANBURN";
	emFXCreate_S 			=	"VOB_BURN_CHILD1";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin	=	1;
};

instance VOB_BURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_Firespell_HUMANBURN";
	emFXCreate_S 			=	"VOB_BURN_CHILD2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_BURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_Firespell_HUMANBURN";
	emFXCreate_S 			=	"VOB_BURN_CHILD3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_BURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_Firespell_HUMANBURN";
	emFXCreate_S 			=	"VOB_BURN_CHILD4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_BURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_Firespell_HUMANBURN";
	emFXCreate_S 			=	"VOB_BURN_CHILD5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_BURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_Firespell_HUMANBURN";
	emFXCreate_S 			=	"VOB_BURN_CHILD6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_BURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_Firespell_HUMANBURN";
	emFXCreate_S 			=	"spellFX_Firespell_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_MagicFire_HUMANBURN";
	emFXCreate_S 			=	"VOB_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"FIRESMALL";
	sfxid					=	"MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin	=	1;
};

instance VOB_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_MagicFire_HUMANBURN";
	emFXCreate_S 			=	"VOB_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_MagicFire_HUMANBURN";
	emFXCreate_S 			=	"VOB_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_MagicFire_HUMANBURN";
	emFXCreate_S 			=	"VOB_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_MagicFire_HUMANBURN";
	emFXCreate_S 			=	"VOB_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_MagicFire_HUMANBURN";
	emFXCreate_S 			=	"VOB_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

instance VOB_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_MagicFire_HUMANBURN";
	emFXCreate_S 			=	"spellFX_MagicFire_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
	//emAdjustShpToOrigin	=	1;
};

instance spellFX_MagicFire_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_MagicFire_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	emAdjustShpToOrigin		=	1;
};

instance spellFX_Firespell_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_Firespell_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	emAdjustShpToOrigin		=	1;
};

instance spellFX_Lightning_TARGET (CFx_Base_Proto)
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 Head";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sfxid					=	"MFX_Lightning_Target";
	emfxcreate_s			=	"spellFX_Thunderspell_TARGET_CHILD1";
};

instance spellFX_Thunderspell_SENDPERCEPTION (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 Head";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sendAssessMagic			=	1;
	sfxid					=	"MFX_Lightning_Target";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD1";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_SENDPERCEPTION_CHILD1 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD2";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD2 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD3";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD3 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 L HAND";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD4";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD4 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 R HAND";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD5";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD5 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD6";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD6 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD7";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD7 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 L THIGH";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD8";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD8 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 R THIGH";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD9";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD9 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 L CALF";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD10";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD10 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01 R CALF";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emfxcreate_s			=	"spellFX_Thunderspell_SENDPERCEPTION_CHILD11";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_Thunderspell_TARGET_CHILD11 (CFx_Base_Proto)	// gehört zu FX-Kette. DO NOT DELETE
{
	visname_S 				=	"MFX_Thunderball_Target";
	emTrjOriginNode 		=	"BIP01";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emFXCreatedOwnTrj 		=	1;
};

instance spellFX_IceSpell_SENDPERCEPTION (CFx_Base_Proto)
{
	visname_S 				=	"MFX_IceSpell_Target";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	sendAssessMagic			=	1;
	emAdjustShpToOrigin 	=	1;
	sfxid					=	"MFX_Icecube_Target";
};

instance FX_EarthQuake (CFx_Base_Proto)
{
	visName_S 				=	"earthquake.eqk";
	userString[0]			=	"1000";
	userString[1]			=	"5";
	userString[2]			=	"5 5 5";
	sfxid					= 	"MFX_EarthQuake";
	sfxIsAmbient			=	1;
};

instance CONTROL_LEAVERANGEFX (CFx_Base_Proto)
{
	visName_S 				=	"screenblend.scx";
	userString[0]			=   "1";
	userString[1]			=	"0 100 0 100";
	userString[2]			=	"0.5";
};

instance CONTROL_CASTBLEND (CFx_Base_Proto)
{
	visName_S 				= 	"screenblend.scx";
	userString[0]			=   "0.5";
	userString[1]			=	"255 255 255 255";
	userString[2]			=	"0.5";
	emFXLifeSpan			=	0.6;
};

instance TRANSFORM_CASTBLEND (CFx_Base_Proto)
{
	visName_S 				=	"screenblend.scx";
	userString[0]			=	"0.5";
	userString[1]			=	"255 0 0 255";
	userString[2]			=	"0.5";
	emFXLifeSpan			=	0.6;
};

instance TRANSFORM_NOPLACEFX (CFx_Base_Proto)
{
	visName_S				= 	"screenblend.scx";
	userString[0]			=   "1";
	userString[1]			=	"255 0 0 100";
	userString[2]			=	"1.5";
	emFXLifeSpan			=	0.6;
};

instance DEMENTOR_FX (CFx_Base_Proto)
{
 	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps

 	visName_S      			=	"screenblend.scx";
	emfxcreate_s			=	"FOV_MORPH1";
 	userString[0]     		=	"100000000000";
 	userString[1]     		=	"0 0 0 100";
 	userString[2]     		=	"0.5";
 	userString[3]     		=	"ScreenFX_Dem_a0";
 	userString[4]     		=	"8";
 	visAlphaBlendFunc_S		=	"BLEND";
 	sfxid      				=	"Dementhor_Talk";
	sfxisambient     		=	1;
};

instance FOV_MORPH1 (CFx_Base_Proto)
{
 	// userstring 0: fov morph amplitude scaler
 	// userstring 1: fov morph speed scaler
 	// userString 2: fov base x (leave empty for default)
 	// userString 3: fov base y (leave empty for default)

 	visName_S      			=	"morph.fov";
 	userString[0]     		=	"1.0";
 	userString[1]     		=	"1.0";
 	userString[2]			=	"90";
 	userString[3]			=	"67";
};

instance FOV_MORPH2 (CFx_Base_Proto)
{
 	// userstring 0: fov morph amplitude scaler
 	// userstring 1: fov morph speed scaler
 	// userString 2: fov base x (leave empty for default)
 	// userString 3: fov base y (leave empty for default)

 	visName_S      			=	"morph.fov";
 	userString[0]     		=	"0.8";
 	userString[1]     		=	"1.0";
 	userString[2]			=	"120";
 	userString[3]			=	"90";
};

instance SLOW_MOTION (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      			=	"time.slw";
 	userString[0]     		=	"0.5";
 	userString[1]     		=	"1.0";
 	emFxCreate_s			=	"FOV_MORPH2";
	emFXLifeSpan    		=	15;	// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay		=	3;	// achtung, zeitdauer ist hier skaliert mit dem time scaler
};

instance FOCUS_HIGHLIGHT (CFx_Base_Proto)
{
	visname_S 				=	"FOCUS_HIGHLIGHT.TGA";
	visSize_S				=	"100 100";
	emAdjustShpToOrigin 	=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"BIP01";
	emTrjTargetRange		=	0;
	emTrjTargetElev 		=	0;
};

instance SLOW_TIME (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      			=	"time.slw";
 	userString[0]     		=	"0.5";
 	userString[1]     		=	"0.5";
	emFXLifeSpan    		=	30;	// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXTriggerDelay		=	6;	// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXCreate_S			=	"SLOW_TIME_CHILD";
	emTrjOriginNode 		=	"BIP01";
};

instance SLOW_TIME_CHILD (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      			=	"SMOKE_JOINT_SLOW_TIME";
	emFXTriggerDelay		=	6;	// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	sfxid      				=	"MFX_Telekinesis_StartInvest";
 	sfxisambient     		=	1;
	emFXCreate_S			=	"SLOW_TIME_CHILD2";
};

instance SLOW_TIME_CHILD2 (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

	emFXTriggerDelay		=	6;	// achtung, zeitdauer ist hier skaliert mit dem time scaler
	emFXLifeSpan    		=	30;	// achtung, zeitdauer ist hier skaliert mit dem time scaler
 	visName_S      			=	"morph.fov";
 	userString[0]     		=	"0.8";
 	userString[1]     		=	"1.0";
 	userString[2]			=	"120";
 	userString[3]			=	"90";
};

instance BLACK_SCREEN (CFx_Base_Proto)
{
 	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps

 	visName_S      			=	"screenblend.scx";
 	userString[0]     		=	"100000000000";
 	userString[1]     		=	"0 0 0 255";
 	userString[2]     		=	"0";
 	visAlphaBlendFunc_S 	=	"BLEND";
	emFXLifeSpan    		=	2;	// Dauer is Sekunden (über timer skaliert)
};

instance SLEEP_BLEND (CFx_Base_Proto)
{
 	// userstring 0: screenblend loop duration
 	// userstring 1: screenblend color
 	// userstring 2: screenblend in/out duration
 	// userstring 3: screenblend texture
 	// userstring 4: tex ani fps

 	visName_S      			=	"screenblend.scx";
 	userString[0]     		=	"100000000000";
 	userString[1]     		=	"0 0 0 255";
 	userString[2]     		=	"0";
 	visAlphaBlendFunc_S 	=	"BLEND";
	emFXLifeSpan    		=	2;	// Dauer is Sekunden (über timer skaliert)
};

//******************************************************************************************
//	Special Effects
//******************************************************************************************
instance SPELLFX_FIREARMOR (CFX_BASE_PROTO)
{
	visname_s				=	"FIRE_MODEL_KAIRO";
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
	lightpresetname			=	"FIRESMALL";//Joly: nicht FIRE
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
	emFXCreate_S			=	"SPELLFX_FIREARMOR_SMOKE";
};

instance SPELLFX_FIREARMOR_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};

instance SPELLFX_FIREARMOR_SMOKE (CFX_BASE_PROTO)
{
	visname_s				=	"SMOKE_MODEL_KAIRO";
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

instance SPELLFX_FIREARMOR_SMOKE_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	0.001;
};

//******************************************************************************************
instance SPELLFX_FIRESWORD (CFX_BASE_PROTO)
{
	visname_S 				=	"FIRE_SWORD";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	lightPresetname			=	"FIRESMALL";
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_FIRESWORDBLACK (CFX_BASE_PROTO)
{
	visname_S 				=	"FIRE_SWORDBLACK";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	//lightPresetname		= "JUSTWHITE";
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_FIRESWORDBLACK_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	200;
};

instance SPELLFX_FIRESWORD_ATTACK (CFX_BASE_PROTO)
{
	visname_S				=	"FIRE_SWORD_ATTACK";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	emAdjustShpToOrigin 	=	1;
};

instance SPELLFX_FIRESWORD_HIT (CFX_BASE_PROTO)
{
	visname_S				=	"FIRE_SWORD_HIT";
	emTrjOriginNode			=	"ZS_RIGHTHAND";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_FIRESWORD_KEY_CAST (C_ParticleFxEmitKey)
{
	lightrange				=	500;
};

instance SPELLFX_FIRESWORD_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	visname_S				=	"FIRE_SWORD";
	lightrange				=	100;
	pfx_ppsValue			=	100;
};

instance SPELLFX_FIRESWORD_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	visname_S				=	"FIRE_SWORD";
	lightrange				=	300;
	pfx_ppsValue			=	150;
};

instance SPELLFX_FIRESWORD_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	emCreateFXID			=	"SPELLFX_FIRESWORD_ATTACK";
	lightrange				=	400;
};

instance SPELLFX_FIRESWORD_KEY_INVEST_4 (C_PARTICLEFXEMITKEY)	
{
	emCreateFXID			=	"SPELLFX_FIRESWORD_HIT";
	lightrange				=	600;
	pfx_ppsValue			=	300;
};

instance SPELLFX_FIRESWORD_KEY_INVEST_5 (C_PARTICLEFXEMITKEY)	
{
	visname_S				=	"FIRE_SWORD";
	lightrange				=	100;
	pfx_ppsValue			=	150;
};

//******************************************************************************************
instance SPELLFX_MAGESTAFF1 (CFX_BASE_PROTO)
{
	visname_S 				=	"MAGESTAFF1";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	//Joly:lightPresetname	=	"FIRESMALL";
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_MAGESTAFF2 (CFX_BASE_PROTO)
{
	visname_S 				=	"MAGESTAFF2";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	//Joly:lightPresetname	=	"FIRESMALL";
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_MAGESTAFF3 (CFX_BASE_PROTO)
{
	visname_S 				=	"MAGESTAFF3";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	//Joly:lightPresetname	=	"FIRESMALL";
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_MAGESTAFF4 (CFX_BASE_PROTO)
{
	visname_S 				=	"MAGESTAFF4";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	//Joly:lightPresetname	=	"FIRESMALL";
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_MAGESTAFF5 (CFX_BASE_PROTO)
{
	visname_S 				=	"MAGESTAFF5";
	visAlpha				=	1;
	emtrjmode_s				=	"FIXED";
	//Joly:lightPresetname	=	"FIRESMALL";
	emAdjustShpToOrigin		=	1;
};

//******************************************************************************************
instance SPELLFX_BOW (CFX_BASE_PROTO)
{
	visname_s				=	"MAGIC_BOW";
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

instance SPELLFX_FIREBOW (CFX_BASE_PROTO)
{
	visname_s				=	"FIRE_BOW";
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

instance SPELLFX_ARROW (CFX_BASE_PROTO)
{
	visname_s				=	"MAGIC_ARROW";
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
	lightpresetname			=	"AURA";
};

instance SPELLFX_ARROW_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	lightrange				=	100;
};

instance SPELLFX_ARROW_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	lightrange				=	300;
};

instance SPELLFX_ARROW_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	lightrange				=	400;
};

instance SPELLFX_FIREARROW (CFX_BASE_PROTO)
{
	visname_s				=	"FIRE_ARROW";
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
	lightpresetname			=	"FIRESMALL";
};

instance SPELLFX_FIREARROW_KEY_INVEST_1 (C_ParticleFxEmitKey)	
{
	lightrange				=	100;
};

instance SPELLFX_FIREARROW_KEY_INVEST_2 (C_PARTICLEFXEMITKEY)	
{
	lightrange				=	300;
};

instance SPELLFX_FIREARROW_KEY_INVEST_3 (C_PARTICLEFXEMITKEY)	
{
	lightrange				=	400;
};

//******************************************************************************************
instance SPELLFX_CROSSBOW (CFX_BASE_PROTO)
{
	visname_s				=	"MAGIC_CROSSBOW";
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

instance SPELLFX_BOLT (CFX_BASE_PROTO)
{
	visname_s				=	"MAGIC_BOLT";
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
	lightpresetname			=	"AURA";
};

instance SPELLFX_BOLT_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	200;
};

//******************************************************************************************
instance SPELLFX_ITEMGLIMMER (CFX_BASE_PROTO)
{
	visname_s				=	"ITEM_GLIMMER";
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

//******************************************************************************************
instance SPELLFX_HEALTHPOTION (CFX_BASE_PROTO)
{
	visname_s				=	"HEALTH_POTION";
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

instance SPELLFX_MANAPOTION (CFX_BASE_PROTO)
{
	visname_s				=	"MANA_POTION";
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

instance SPELLFX_YELLOWPOTION (CFX_BASE_PROTO)
{
	visname_s				=	"YELLOW_POTION";
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

instance SPELLFX_PURPLEPOTION (CFX_BASE_PROTO)
{
	visname_s				=	"PURPLE_POTION";
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

//******************************************************************************************
instance SPELLFX_WEAKGLIMMER (CFX_BASE_PROTO)
{
	visname_s				=	"WEAK_GLIMMER";
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

instance SPELLFX_WEAKGLIMMER_RED (CFX_BASE_PROTO)
{
	visname_s				=	"WEAK_GLIMMER_RED";
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

instance SPELLFX_WEAKGLIMMER_BLUE (CFX_BASE_PROTO)
{
	visname_s				=	"WEAK_GLIMMER_BLUE";
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

instance SPELLFX_WEAKGLIMMER_YELLOW (CFX_BASE_PROTO)
{
	visname_s				=	"WEAK_GLIMMER_YELLOW";
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

instance SPELLFX_WEAKGLIMMER_GREEN (CFX_BASE_PROTO)
{
	visname_s				=	"WEAK_GLIMMER_GREEN";
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

instance SPELLFX_WEAKGLIMMER_LBLUE (CFX_BASE_PROTO)
{
	visname_s				=	"WEAK_GLIMMER_LBLUE";
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

instance SPELLFX_WEAKGLIMMER_PURPLE (CFX_BASE_PROTO)
{
	visname_s				=	"WEAK_GLIMMER_PURPLE";
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

//******************************************************************************************
instance SPELLFX_ITEMSTARS (CFX_BASE_PROTO)
{
	visname_s				=	"ITEM_STARS";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	0.1;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_ITEMSTARS_RED (CFX_BASE_PROTO)
{
	visname_s				=	"ITEM_STARS_RED";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	0.1;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_ITEMSTARS_BLUE (CFX_BASE_PROTO)
{
	visname_s				=	"ITEM_STARS_BLUE";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	0.1;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

instance SPELLFX_ITEMSTARS_YELLOW (CFX_BASE_PROTO)
{
	visname_s				=	"ITEM_STARS_YELLOW";
	visalpha				=	1;
	visalphablendfunc_s		=	"ADD";
	emtrjmode_s				=	"FIXED";
	emtrjloopmode_s			=	"NONE";
	emtrjeasefunc_s			=	"LINEAR";
	emtrjdynupdatedelay		=	0.1;
	emfxlifespan			=	-1;
	emselfrotvel_s			=	"0 0 0";
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
};

//******************************************************************************************
instance SPELLFX_GLOW (CFX_BASE_PROTO)
{
	visname_s				=	"GOLD_GLOW";
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

instance SPELLFX_GLOW_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	100;
};

//******************************************************************************************
instance SPELLFX_UNDEAD_DRAGON (CFX_BASE_PROTO)
{
	visname_s				=	"UNDEAD_DRAGON";
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
	lightpresetname			=	"AURA";//Joly: nicht FIRE
	secsperdamage			=	-1;
	emAdjustShpToOrigin		=	1;
	emFXCreate_S			=	"SPELLFX_DRAGONEYE_LEFT";
	emFXCreatedOwnTrj		=	1;	// alle children dieses fx haben eine eigene flugbahn!!!
};

instance SPELLFX_DRAGONEYE_LEFT (CFX_BASE_PROTO)
{
	visname_s				=	"DRAGON_EYE_LEFT";
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
	emFXCreate_S			=	"SPELLFX_DRAGONEYE_RIGHT";
	emFXCreatedOwnTrj		=	1;	// alle children dieses fx haben eine eigene flugbahn!!!
};

instance SPELLFX_DRAGONEYE_RIGHT (CFX_BASE_PROTO)
{
	visname_s				=	"DRAGON_EYE_RIGHT";
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
	emFXCreatedOwnTrj		=	1;	// alle children dieses fx haben eine eigene flugbahn!!!
};

instance SPELLFX_UNDEAD_DRAGON_KEY_CAST (C_PARTICLEFXEMITKEY)
{
	lightrange				=	500;
};

//******************************************************************************************
instance SPELLFX_WATERFIST_CAST (CFx_Base)
{
};
