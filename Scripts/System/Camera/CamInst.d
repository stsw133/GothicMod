/*********************************************
**	Camera Instanzen				**
*********************************************/

/* Standard Camera loaded at beginning */
// minRange besser nicht unter 1.5

INSTANCE CamModDialog (CCamSys_Def)
{
	bestRange 			=	3.0;
	minRange  			=	2.5;
	maxRange  			=	3.5;
	bestElevation		=	10.0;
	minElevation		=	0.0;
	maxElevation		=	90.0;
	bestAzimuth			=	45.0;
	minAzimuth			=	-45.0;
	maxAzimuth			=	45.0;
	rotOffsetX			=	0.0;
	rotOffsetY			=	-20.0;
};

INSTANCE CamModLookBack (CCamSys_Def)
{
	bestRange 			=	0.5;
	minRange  			=	1.0;
	maxRange  			=	6.0;
	bestElevation		=	35.0;
	minElevation		=	0.0;
	maxElevation		=	89.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
	rotOffsetX			=	20.0;
	rotOffsetY			=	180.0;
	veloRot 			=	5;
};

/* Tombraider Style - Azimuth Grenzen 0/0/0 - Rotations-Stop-Geschw. langsam, Offset X -15 Grad */

INSTANCE CAMMODNORMAL (CCAMSYS_DEF)
{
	bestrange			=	3.0;
	minrange			=	2.0;
	maxrange			=	10.0;
	bestelevation		=	30.0;
	maxelevation		=	90.000000000;
	minazimuth			=	-90.000000000;
	maxazimuth			=	90.000000000;
	rotoffsetx			=	23.0;
};

INSTANCE CamModInventory (CCamSys_Def)
{
	bestrange			=	2.200000000;
    minrange			=	2.900000095;
    maxrange			=	3.099999905;
    bestelevation		=	20.000000000;
    maxelevation		=	90.000000000;
    bestazimuth			=	0.000000000;
    minazimuth			=	-90.000000000;
    maxazimuth			=	90.000000000;
    rotoffsetx			=	0.000000000;
    rotoffsety			=	0.000000000;
    veloTrans			=	30;	
};

INSTANCE CAMMODMELEE (CCAMSYS_DEF)
{
	bestRange 			=	2.5;
	minRange  			=	1.4;
	maxRange  			=	10.0;
	bestElevation		=	35.0;
	minElevation		=	0.0;
	maxElevation		=	89.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
	rotOffsetX			=	20.0;
	rotOffsetY			=	0.0;
};

/*
INSTANCE CamModRanged(CCamSys_Def)
{
	bestRange 			=	2.5;
	minRange  			=	1.4;
	maxRange  			=	10.0;
	bestElevation		=	35.0;
	minElevation		=	0.0;
	maxElevation		=	89.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
	rotOffsetX			=	20.0;
	rotOffsetY			=	0.0;
};
*/

INSTANCE CAMMODRANGED (CCAMSYS_DEF)
{
	bestrange			=	2;
	minrange			=	0.400000006;
	maxrange			=	5;
	bestelevation		=	54.1522636;
	minelevation		=	40;
	maxelevation		=	90;
	minazimuth			=	34;
	maxazimuth			=	34;
	rotoffsetx			=	40;
	velotrans			=	40;
	velorot				=	2;
	translate			=	1;
	rotate				=	1;
	collision			=	1;
};

INSTANCE CamModMagic (CCamSys_Def)
{
	bestRange 			=	2.5;
	minRange  			=	1.4;
	maxRange  			=	6.0;
	bestElevation		=	35.0;
	minElevation		=	0.0;
	maxElevation		=	89.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
	rotOffsetX			=	20.0;
	rotOffsetY			=	0.0;
};

INSTANCE CamModSwim (CCamSys_Def)
{
	bestRange 			=	3.0;
	minRange  			=	2.9;
	maxRange  			=	5.1;
	bestElevation		=	20.0;
	minElevation		=	10.0;
	maxElevation		=	45.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-45.0;
	maxAzimuth			=	45.0;
	rotOffsetX			=	15.0;
	rotOffsetY			=	0.0;
};

INSTANCE CamModDive (CCamSys_Def)
{
	bestRange 			=	3.0;
	minRange  			=	2.0;
	maxRange  			=	4.0;
	bestElevation		=	-20.0;
	minElevation		=	-60.0;
	maxElevation		=	-10.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-45.0;
	maxAzimuth			=	45.0;
	rotOffsetX			=	-10.0;
	rotOffsetY			=	0.0;
	veloTrans			=	20;	
	rotate				=	0;
};

INSTANCE CamModJumpUp (CCamSys_Def)
{
	bestRange 			=	2.0;
	minRange  			=	1.0;
	maxRange  			=	2.5;
	bestElevation		=	-30.0;
	minElevation		=	-90.0;
	maxElevation		=	0.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
	veloTrans			=	20;
};

INSTANCE CamModClimb (CCamSys_Def)
{
	bestRange 			=	2.0;
	minRange  			=	1.5;
	maxRange  			=	2.5;
	bestElevation		=	30.0;
	minElevation		=	-90.0;
	maxElevation		=	90.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
};

INSTANCE CamModFall (CCamSys_Def)
{
	bestRange 			=	3.0;
	minRange  			=	1.5;
	maxRange  			=	5.5;
	bestElevation		=	60.0;
	minElevation		=	0.0;
	maxElevation		=	90.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-89.0;
	maxAzimuth			=	89.0;
	rotOffsetX			=	0.0;
	rotOffsetY			=	0.0;
	veloTrans			=	10;
};

INSTANCE CamModDeath (CCamSys_Def)
{
	bestRange 			=	3.0;
	minRange  			=	2.0;
	maxRange  			=	10.0;
	bestElevation		=	80.0;
	minElevation		=	0.0;
	maxElevation		=	90.0;
	bestAzimuth			=	180.0;
	minAzimuth			=	-89.0;
	maxAzimuth			=	89.0;
	rotOffsetX			=	0.0;
	rotOffsetY			=	0.0;
	veloTrans			=	10;
};

INSTANCE CamModFocus (CCamSys_Def)
{
	bestRange 			=	2.5;
	minRange  			=	1.9;
	maxRange  			=	3.5;
	bestElevation		=	25.0;
	minElevation		=	0.0;
	maxElevation		=	90.0;
	bestAzimuth			=	45.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
	rotOffsetX			=	0.0;
	rotOffsetY			=	0.0;
};

// MOBSI Cam-Modes

// DEFAULT
INSTANCE CamModMOBDefault (CCamSys_Def)
{
	bestRange 			=	2.0;
	minRange  			=	1.6;
	maxRange  			=	4.0;
	bestElevation		=	35.0;
	minElevation		=	15.0;
	maxElevation		=	90.0;
	bestAzimuth			=	45.0;
	minAzimuth			=	0.0;
	maxAzimuth			=	90.0;
	rotOffsetX			=	0.0;
	rotOffsetY			=	5.0;
};

// T�r aufziehen (FRONT)
INSTANCE CAMMODMOBDOOR_FRONT (CCAMSYS_DEF)
{
	bestrange			=	1.25;
	minrange			=	0.75;
	maxrange			=	2.0;
	bestelevation		=	40.0;
	maxelevation		=	90.0;
	minelevation		=	30.0;
	bestazimuth			=	45.0;
	minazimuth			=	30.0;
	maxazimuth			=	60.0;
	rotoffsetx			=	30.0;
	rotoffsety			=	-40.0;
};

// T�r aufstossen (BACK)
INSTANCE CAMMODMOBDOOR_BACK (CCAMSYS_DEF)
{
	bestrange			=	1.25;
	minrange			=	0.75;
	maxrange			=	2.0;
	bestelevation		=	40.0;
	maxelevation		=	60.0;
	minelevation		=	30.0;
	bestazimuth			=	-45.0;
	minazimuth			=	-30.0;
	maxazimuth			=	-60.0;
	rotoffsetx			=	30.0;
	rotoffsety			=	40.0;
};

// Leiterbenutzung
INSTANCE CAMMODMOBLADDER (CCAMSYS_DEF)
{
	bestrange			=	3.5;
	minrange			=	1.5;
	maxrange			=	6.0;
	bestelevation		=	0.0;
	maxelevation		=	30.0;
	minelevation		=	-30.0;
	bestazimuth			=	0.0;
	minazimuth			=	-90.0;
	maxazimuth			=	90.0;
	rotoffsetx			=	0.0;
	rotoffsety			=	0.0;
};

// Betten

// Schema: BED_FRONT)

INSTANCE CAMMODMOBBED (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
	rotoffsetx			=	0.0;
	rotoffsety			=	0.0;
};

INSTANCE CAMMODMOBBED_FRONT (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
	rotoffsetx			=	0.0;
	rotoffsety			=	0.0;
};
// Schema: BED_BACK)
INSTANCE CAMMODMOBBED_BACK (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
};

// Schema: BEDHIGH_FRONT

INSTANCE CAMMODMOBBEDHIGH (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
};

INSTANCE CAMMODMOBBEDHIGH_FRONT (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
};
// Schema: BEDHIGH_BACK
INSTANCE CAMMODMOBBEDHIGH_BACK (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
};

// Schema: BEDLOW_FRONT

INSTANCE CAMMODMOBBEDLOW (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
};

INSTANCE CAMMODMOBBEDLOW_FRONT (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
};
// Schema: BEDLOW_BACK
INSTANCE CAMMODMOBBEDLOW_BACK (CCAMSYS_DEF)
{
	bestrange			=	2.0;
	minrange			=	1.0;
	maxrange			=	3.0;
	bestelevation		=	80.0;
	maxelevation		=	90.0;
	minelevation		=	60.0;
	bestazimuth			=	90.0;
	minazimuth			=	0.0;
	maxazimuth			=	180.0;
};

// auf Stuhl sitzen (CHAIR)
/*	[EDENFELD] Auskommentiert. Macht noch Probs...
INSTANCE CAMMODMOBCHAIR (CCAMSYS_DEF)
{
	bestrange			=	1.5;
	minrange			=	0.5;
	maxrange			=	2.5;
	bestelevation		=	-10.0;
	minelevation		=	30.0;
	maxelevation		=	90.0;
	bestazimuth			=	180.0;
	minazimuth			=	-180.0;
	maxazimuth			=	180.0;
	rotoffsetx			=	0.0;
};
*/
// auf Bank sitzen (BENCH)
INSTANCE CAMMODMOBBENCH (CCAMSYS_DEF)
{
	bestrange			=	1.2;
	minrange			=	0.5;
	maxrange			=	1.9;
	bestelevation		=	10.0;
	minelevation		=	30.0;
	maxelevation		=	90.0;
	bestazimuth			=	0.0;
	minazimuth			=	-180.0;
	maxazimuth			=	180.0;
	rotoffsetx			=	0.0;
};

// im Fa� verstecken
INSTANCE CAMMODMOBBARRELO (CCAMSYS_DEF)
{
	bestrange			=	1.5;
	minrange			=	0.5;
	maxrange			=	3.0;
	bestelevation		=	75.0;
	maxelevation		=	90.0;
	minelevation		=	0.0;
	bestazimuth			=	-30.0;
	minazimuth			=	-90.0;
	maxazimuth			=	90.0;
	rotoffsetx			=	20.0;
	rotoffsety			=	0.0;
};

// internal Cameras. Change at own risk

// Firstperson Camera
// bis auf die Tr�gheitsconstanten indolenceTrans & indolenceHead sind die Vars irrelevant
// vielleicht sind auch noch andere Parameter sinnvoll

INSTANCE CamModFirstPerson (CCamSys_Def)
{
	bestRange 			=	2.0; 
	minRange  			=	2.0;
	maxRange  			=	2.0;
	bestElevation		=	0.0;
	minElevation		=	-90.0;
	maxElevation		=	90.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-45.0;
	maxAzimuth			=	45.0;
	rotOffsetX			=	0.0;
	rotOffsetY			=	0.0;
	veloRot				=	10000;
	veloTrans			=	35;
};

INSTANCE CamModLook (CCamSys_Def)
{
	bestRange 			=	3.0;
	minRange  			=	1.5;
	maxRange  			=	6.5;
	bestElevation		=	30.0;
	minElevation		=	-55.0;
	maxElevation		=	80.0;
	bestAzimuth			=	0.0;
	minAzimuth			=	-90.0;
	maxAzimuth			=	90.0;
	veloTrans			=	35;
};

INSTANCE CamModRangedShort (CCamSys_Def)
{
	bestRange 			=	0.5;
	minRange  			=	0.4;
	maxRange  			=	1.2;
	bestElevation		=	60.0;
	minElevation		=	40.0;
	maxElevation		=	90.0;		// CHANGED
	bestAzimuth			=	34.0;
	minAzimuth			=	34.0;
	maxAzimuth			=	34.0;
	rotOffsetX			=	55.0;
	rotOffsetY			=	-27.0;
};

INSTANCE CamModShoulder (CCamSys_Def)
{
	bestRange 			=	0.75;
	minRange  			=	0.4;
	maxRange  			=	1.2;
	bestElevation		=	80.0;
	minElevation		=	40.0;
	maxElevation		=	90.0;		// CHANGED
	bestAzimuth			=	90.0;
	minAzimuth			=	0.0;
	maxAzimuth			=	0.0;
};