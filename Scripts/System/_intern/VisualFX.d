///******************************************************************************************
///
///		Visual-Effects	v0.02
///	Class - Definition
///	Author: Carsten Edenfeld
///
///******************************************************************************************

const int false		=	0;
const int true		=	1;

///******************************************************************************************

const int VFX_NUM_USERSTRINGS	=	5;

///******************************************************************************************
class C_ParticleFXEmitKey
{
	/// particle effect related key vars
	
	/// vars which influence all particles all time
	var string	visName_S;
	var float	visSizeScale;
	var float	scaleDuration;			/// time to reach full scale at this key for relevant vars (size, alpha, etc.)
	
	var float	pfx_ppsValue;
	var int		pfx_ppsIsSmoothChg;		/// changes pps smoothing of pfx if set to 1 and pfx pps scale keys are set
	var int		pfx_ppsIsLoopingChg;	/// changes looping of pfx if set to 1
	var float	pfx_scTime;
	var string	pfx_flyGravity_S;
	
	/// vars which influence particles at creation level only
	var string	pfx_shpDim_S;
	var int		pfx_shpIsVolumeChg;		/// changes volume rendering of pfx if set to 1
	var float	pfx_shpScaleFPS;
	var float	pfx_shpDistribWalkSpeed;
	var string	pfx_shpOffsetVec_S;
	var string	pfx_shpDistribType_S;
	var string	pfx_dirMode_S;
	var string	pfx_dirFOR_S;
	var string	pfx_dirModeTargetFOR_S;
	var string	pfx_dirModeTargetPos_S;
	var float	pfx_velAvg;
	var float	pfx_lspPartAvg;
	var float	pfx_visAlphaStart;
	
	var string	lightPresetName;
	var float	lightRange;
	var string	sfxID;
	var int		sfxIsAmbient;
	var string	emCreateFXID;
	
	var float	emFlyGravity;
	var string	emSelfRotVel_S;
	var string	emTrjMode_S;
	var float	emTrjEaseVel;
	var int		emCheckCollision;
	var float	emFXLifeSpan;
};

class CFx_Base
{
	var string	visName_S;
	var string	visSize_S;
	var float	visAlpha;
	var string	visAlphaBlendFunc_S;
	var float	visTexAniFPS;
	var int		visTexAniIsLooping;
	var string	emTrjMode_S;				/// none, target, line, spline, random
	var string	emTrjOriginNode;
	var string	emTrjTargetNode;
	var float	emTrjTargetRange;
	var float	emTrjTargetAzi;
	var float	emTrjTargetElev;
	var int		emTrjNumKeys;
	var int		emTrjNumKeysVar;
	var float	emTrjAngleElevVar;
	var float	emTrjAngleHeadVar;
	var float	emTrjKeyDistVar;
	var string	emTrjLoopMode_S;
	var string	emTrjEaseFunc_S;
	var float	emTrjEaseVel;
	var float	emTrjDynUpdateDelay;
	var int		emTrjDynUpdateTargetOnly;
	var string	emFXCreate_S;
	var string	emFXInvestOrigin_S;
	var string	emFXInvestTarget_S;
	var float	emFXTriggerDelay;
	var int		emFXCreatedOwnTrj;
	var string	emActionCollDyn_S;			/// CREATE, BOUNCE, CREATEONCE, NORESP, COLLIDE
	var string	emActionCollStat_S;			/// CREATE, BOUNCE, CREATEONCE, NORESP, COLLIDE, CREATEQUAD
	var string	emFXCollStat_S;
	var string	emFXCollDyn_S;
	var string	emFXCollDynPerc_S;
	var string	emFXCollStatAlign_S;		/// TRAJECTORY, COLLISIONNORMAL
	var string	emFXCollDynAlign_S;
	var float	emFXLifeSpan;
	var int		emCheckCollision;
	var int		emAdjustShpToOrigin;
	var float	emInvestNextKeyDuration;
	var float	emFlyGravity;
	var string	emSelfRotVel_S;
	var string	userString[VFX_NUM_USERSTRINGS];
	var string	lightPresetName;
	var string	sfxID;
	var int		sfxIsAmbient;
	var int		sendAssessMagic;
	var float	secsPerDamage;
};

prototype CFx_Base_Proto (CFx_Base)
{
	visName_S					=	"";
	visAlpha					=	1;
	emTrjMode_S					=	"FIXED";		/// none, target, line, spline, random
	emTrjOriginNode				=	"ZS_RIGHTHAND";
	emTrjTargetNode				=	"";
	emTrjTargetRange			=	10;
	emTrjTargetAzi				=	0;
	emTrjTargetElev				=	0;
	emTrjNumKeys				=	10;
	emTrjNumKeysVar				=	0;
	emTrjAngleElevVar			=	0;
	emTrjAngleHeadVar			=	0;
	emTrjKeyDistVar				=	0;
	emTrjLoopMode_S				=	"NONE";
	emTrjEaseFunc_S				=	"LINEAR";
	emTrjEaseVel				=	100;
	emTrjDynUpdateDelay			=	2000000;
	emTrjDynUpdateTargetOnly	=	false;
	emFXCreate_S				=	"";
	emFXTriggerDelay			=	0;
	emFXCreatedOwnTrj			=	false;
	emActionCollDyn_S			=	"";				/// CREATE, BOUNCE
	emActionCollStat_S			=	"";				/// CREATE, BOUNCE
	emFXCollStat_S				=	"";
	emFXCollDyn_S				=	"";
	emFXCollDynPerc_S			=	"";
	emFXCollStatAlign_S			=	"";				/// TRAJECTORY, COLLISIONNORMAL
	emFXCollDynAlign_S			=	"";
	emCheckCollision			=	false;
	emAdjustShpToOrigin			=	false;
	emInvestNextKeyDuration		=	0;
	emFlyGravity				=	0;
	emFXLifeSpan				=	-1;				/// -1: forever 
	emSelfRotVel_S				=	"0 0 0";
	lightPresetName				=	"";
	sfxID						=	"";
	sendAssessMagic				=	false;
	secsPerDamage				=	-1;
};
