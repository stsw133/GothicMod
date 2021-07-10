///******************************************************************************************
///	Chaos Mages Spells
///******************************************************************************************
INSTANCE spellFX_cB_Fireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cB_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_cB_Fireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_cB_Fireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_cB_Fireball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//emTrjDynUpdateDelay	=	0.4;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cB_Fireball_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	10;
};

INSTANCE spellFX_cB_Fireball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cB_Fireball_INIT";
	lightrange				=	10;
};

INSTANCE spellFX_cB_Fireball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_cB_Fireball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_cB_Fireball_FIRECLOUD";
	emCheckCollision 		=	1;
};

INSTANCE spellFX_cB_Fireball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cB_Fireball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_cB_Fireball_CAST";
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

INSTANCE spellFX_cB_Fireball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cB_Fireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cB_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cB_Fireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cB_Fireball_Collide1";
	sfxid					=	"MFX_cB_Fireball_Collide1";
};

instance spellFX_cB_Fireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cB_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cB_Fireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_cB_Fireball_Collide1";
	sfxid					=	"MFX_cB_Fireball_Collide1";
};

INSTANCE spellFX_cB_Fireball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cB_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cB_Fireball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cB_Fireball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_cB_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cB_Fireball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cB_Fireball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_cB_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cB_Fireball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cB_Fireball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_cB_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cB_Fireball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cB_Fireball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_cB_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cB_Fireball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cB_Fireball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_cB_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cB_Fireball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cB_Fireball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_cB_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cB_Fireball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cB_Fireball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cB_Fireball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	emAdjustShpToOrigin		=	1;
};

///******************************************************************************************
INSTANCE spellFX_cR_Fireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cR_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_cR_Fireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_cR_Fireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_cR_Fireball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//emTrjDynUpdateDelay	=	0.4;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cR_Fireball_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	10;
};

INSTANCE spellFX_cR_Fireball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cR_Fireball_INIT";
	lightrange				=	10;
};

INSTANCE spellFX_cR_Fireball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_cR_Fireball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_cR_Fireball_FIRECLOUD";
	emCheckCollision 		=	1;
};

INSTANCE spellFX_cR_Fireball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cR_Fireball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_cR_Fireball_CAST";
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

INSTANCE spellFX_cR_Fireball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cR_Fireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cR_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cR_Fireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cR_Fireball_Collide1";
	sfxid					=	"MFX_cR_Fireball_Collide1";
};

instance spellFX_cR_Fireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cR_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cR_Fireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_cR_Fireball_Collide1";
	sfxid					=	"MFX_cR_Fireball_Collide1";
};

INSTANCE spellFX_cR_Fireball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cR_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cR_Fireball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cR_Fireball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_cR_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cR_Fireball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cR_Fireball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_cR_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cR_Fireball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cR_Fireball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_cR_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cR_Fireball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cR_Fireball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_cR_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cR_Fireball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cR_Fireball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_cR_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cR_Fireball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cR_Fireball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_cR_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cR_Fireball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cR_Fireball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cR_Fireball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	emAdjustShpToOrigin		=	1;
};

///******************************************************************************************
INSTANCE spellFX_cG_Fireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cG_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_cG_Fireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_cG_Fireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_cG_Fireball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//emTrjDynUpdateDelay	=	0.4;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cG_Fireball_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	10;
};

INSTANCE spellFX_cG_Fireball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cG_Fireball_INIT";
	lightrange				=	10;
};

INSTANCE spellFX_cG_Fireball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_cG_Fireball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_cG_Fireball_FIRECLOUD";
	emCheckCollision 		=	1;
};

INSTANCE spellFX_cG_Fireball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cG_Fireball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_cG_Fireball_CAST";
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

INSTANCE spellFX_cG_Fireball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cG_Fireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cG_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cG_Fireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cG_Fireball_Collide1";
	sfxid					=	"MFX_cG_Fireball_Collide1";
};

instance spellFX_cG_Fireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cG_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cG_Fireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_cG_Fireball_Collide1";
	sfxid					=	"MFX_cG_Fireball_Collide1";
};

INSTANCE spellFX_cG_Fireball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cG_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cG_Fireball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cG_Fireball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_cG_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cG_Fireball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cG_Fireball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_cG_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cG_Fireball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cG_Fireball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_cG_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cG_Fireball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cG_Fireball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_cG_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cG_Fireball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cG_Fireball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_cG_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cG_Fireball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cG_Fireball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_cG_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cG_Fireball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cG_Fireball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cG_Fireball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	emAdjustShpToOrigin		=	1;
};

///******************************************************************************************
INSTANCE spellFX_cY_Fireball (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cY_Fireball_INIT";
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode 		=	"ZS_RIGHTHAND";
	emtrjtargetnode 		=	"BIP01 FIRE";
	emtrjloopmode_s 		=	"NONE";
	emtrjeasefunc_s 		=	"LINEAR";
	emActionCollStat_S		=	"COLLIDE CREATEONCE CREATEQUAD";
	emActionCollDyn_S 		=	"COLLIDE CREATEONCE";
	emFXCollStat_S	   		=	"spellFX_cY_Fireball_COLLIDE";
	emFXCollDyn_S     		=	"spellFX_cY_Fireball_COLLIDEDYNFX";
	emFXCollDynPerc_S     	=	"spellFX_cY_Fireball_MAGICBURN";
	emFXCollStatAlign_S		=	"COLLISIONNORMAL";
	emFXCreatedOwnTrj 		=	0;
	emTrjTargetRange	 	=	20;
	emTrjTargetElev 		=	0;
	emTrjDynUpdateDelay		=	20000;
	//emTrjDynUpdateDelay	=	0.4;
	userString[0]			=	"fireballquadmark.tga";
	userString[1]			=	"100 100";
	userString[2]			=	"MUL";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cY_Fireball_KEY_OPEN (C_ParticleFXEmitKey)
{
	lightrange				=	10;
};

INSTANCE spellFX_cY_Fireball_KEY_INIT (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cY_Fireball_INIT";
	lightrange				=	10;
};

INSTANCE spellFX_cY_Fireball_KEY_CAST (C_ParticleFXEmitKey)
{
	lightrange				=	100;
	visname_S 				=	"MFX_cY_Fireball_PFXTRAIL";
	emtrjmode_s 			=	"TARGET";
	emSelfRotVel_S			=	"100 100 100";
	emtrjeasevel 			=	1400.;
	sfxid					=	"MFX_Fireball_Cast";
	sfxisambient			=	1;
	emCreateFXID			=	"spellFX_cY_Fireball_FIRECLOUD";
	emCheckCollision 		=	1;
};

INSTANCE spellFX_cY_Fireball_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	pfx_flygravity_s		=	"0 0.0002 0";
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cY_Fireball_FIRECLOUD (CFx_Base_Proto)
{
	emtrjeasevel 			=	1400.;
	visname_S 				=	"MFX_cY_Fireball_CAST";
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

INSTANCE spellFX_cY_Fireball_FIRECLOUD_KEY_COLLIDE (C_ParticleFXEmitKey)
{
	emtrjeasevel 			=	0.000001;
};

instance spellFX_cY_Fireball_COLLIDE (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cY_Fireball_Collide1";
	visAlpha				=	1;
	emtrjmode_s 			=	"FIXED";
	emTrjOriginNode			=	"BIP01";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cY_Fireball_COLLIDE_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S 				=	"MFX_cY_Fireball_Collide1";
	sfxid					=	"MFX_cY_Fireball_Collide1";
};

instance spellFX_cY_Fireball_COLLIDEDYNFX (CFx_Base_Proto)
{
	visname_S 				=	"MFX_cY_Fireball_Collide1";
	visAlpha				=	1;
	emTrjOriginNode			=	"BIP01";
	emtrjmode_s 			=	"FIXED";
	lightPresetname   		=	"AURA";
};

INSTANCE spellFX_cY_Fireball_COLLIDEDYNFX_KEY_INVEST_1 (C_ParticleFXEmitKey)
{
	visname_S				=	"MFX_cY_Fireball_Collide1";
	sfxid					=	"MFX_cY_Fireball_Collide1";
};

INSTANCE spellFX_cY_Fireball_MAGICBURN (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cY_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cY_Fireball_MAGICBURN_CHILD1";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	lightpresetname			=	"AURA";
	sfxid					=	"MFX_Firespell_Humanburn";
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cY_Fireball_MAGICBURN_CHILD1 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R UPPERARM";
	visname_S 				=	"MFX_cY_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cY_Fireball_MAGICBURN_CHILD2";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cY_Fireball_MAGICBURN_CHILD2 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L UPPERARM";
	visname_S 				=	"MFX_cY_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cY_Fireball_MAGICBURN_CHILD3";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cY_Fireball_MAGICBURN_CHILD3 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L HAND";
	visname_S 				=	"MFX_cY_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cY_Fireball_MAGICBURN_CHILD4";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cY_Fireball_MAGICBURN_CHILD4 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R HAND";
	visname_S 				=	"MFX_cY_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cY_Fireball_MAGICBURN_CHILD5";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cY_Fireball_MAGICBURN_CHILD5 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 L FOOT";
	visname_S 				=	"MFX_cY_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cY_Fireball_MAGICBURN_CHILD6";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cY_Fireball_MAGICBURN_CHILD6 (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 R FOOT";
	visname_S 				=	"MFX_cY_Fireball_HUMANBURN";
	emFXCreate_S 			=	"spellFX_cY_Fireball_HUMANSMOKE";
	emFXCreatedOwnTrj 		=	1;
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay 	=	0.;
	sendAssessMagic			=	1;
	//emAdjustShpToOrigin	=	1;
};

INSTANCE spellFX_cY_Fireball_HUMANSMOKE (CFx_Base_Proto)
{
	emTrjOriginNode 		=	"BIP01 FIRE";
	visname_S 				=	"MFX_cY_Fireball_HUMANSMOKE";
	emtrjmode_s 			=	"FIXED";
	emtrjdynupdatedelay		=	0.;
	emAdjustShpToOrigin		=	1;
};

///******************************************************************************************
INSTANCE spellFX_SuperSlowTime (CFx_Base_Proto)
{
	// userstring 0: world  time scaler
	// userstring 1: player time scaler

 	visName_S      			=	"time.slw";
 	userString[0]     		=	"0.1";
 	userString[1]     		=	"1.4";
	emFXLifeSpan    		=	120;
	emFXTriggerDelay		=	0;
};
