///******************************************************************************************
///
///		Particle-Effects	v0.01 (<=>Docs)
///	Class - Definitions 
///	Author: Dieter Hildebrandt
///
///******************************************************************************************

const int false		=	0;
const int true		=	1;

///******************************************************************************************
class C_ParticleFX
{
	/// 1) Emitter: zeitliches  Austoss-Verhalten, particles-per-second
	var float	ppsValue;
	var string	ppsScaleKeys_S;
	var int		ppsIsLooping;
	var int		ppsIsSmooth;
	var float	ppsFPS;
	var string	ppsCreateEm_S;
	var float	ppsCreateEmDelay;
	
	/// 2) Emitter: raeumliches Austoss-Verhalten
	var string	shpType_S;			/// "point, line, box, circle, sphere, mesh"
	var string	shpFOR_S;			/// "object,world"
	var string	shpOffsetVec_S;
	var string	shpDistribType_S;	/// "RAND, UNIFORM, WALK"
	var float	shpDistribWalkSpeed;
	var int		shpIsVolume;
	var string	shpDim_S;			/// "", "30", "10 20 30", "30", "30", "" /// line: nur 1 Dimension !=0 /// shape Dimensions
	var string	shpMesh_S;			/// "cross.3ds"
	var int		shpMeshRender_B;
	var string	shpScaleKeys_S;		/// "[1.0] [0.8 0.9 0.2] [1.0]"
	var int		shpScaleIsLooping;
	var int		shpScaleIsSmooth;
	var float	shpScaleFPS;
	
	/// 3) Partikel: Start Richtung/Speed:
	var string	dirMode_S;			/// "DIR, TARGET, MESH_POLY"
	var string	dirFOR_S;			/// "OBJECT, WORLD"
	var string	dirModeTargetFOR_S;
	var string	dirModeTargetPos_S;	/// "30 23 67"
	var float	dirAngleHead;
	var float	dirAngleHeadVar;
	var float	dirAngleElev;
	var float	dirAngleElevVar;
	var float	velAvg;
	var float	velVar;
	
	/// 4) Partikel: Lebensdauer
	var float	lspPartAvg;
	var float	lspPartVar;
	
	/// 5) Partikel: Flugverhalten (gravity, nicht-linear?, mesh-selfRot?,..)
	/// grav: a) nur Y, b) XYZ, c) auf Ziel zu steuern
	// var string	flyMode_S;	/// "LINEAR, LIN_SINUS,.."
	/// flyMeshSelfRotSpeedMin, flyMeshSelfRotSpeedMax
	var string	flyGravity_S;
	var int		flyCollDet_B;
	
	/// 6) Partikel: Visualisierung
	var string	visName_S;			/// "NAME_V0_A0.TGA/.3DS" (Variation, Animation)
	var string	visOrientation_S;	/// "NONE, VELO"
	var int		visTexIsQuadPoly;	/// 0=triMesh, 1=quadMesh
	var float	visTexAniFPS;
	var int		visTexAniIsLooping;	/// 0=oneShot, 1=looping
	/// color (nur Tex, lifeSpan-Sync)
	var string	visTexColorStart_S;
	var string	visTexColorEnd_S;
	/// size-ani (nur Tex, lifeSpan-Sync)
	var string	visSizeStart_S;
	var float	visSizeEndScale;
	/// alpha (lifeSpan-Sync)
	var string	visAlphaFunc_S;
	var float	visAlphaStart;
	var float	visAlphaEnd;
	
	/// 7) misc effects
	
	/// trail
	var float	trlFadeSpeed;
	var string	trlTexture_S;
	var float	trlWidth;
	
	/// marks
	var float	mrkFadeSpeed;
	var string	mrkTexture_S;
	var float	mrkSize;
	
	/// flocking
	var string	flockMode;
	var float	flockStrength;
	
	/// local frame of reference override
	/// calculates the position of the particles each frame relative to the emitters pos/rot
	/// can be expensive
	/// WARNING: in comb with flyCollDet_B this can be a performance-hog deluxe
	var int		useEmittersFOR;
	
	/// optional you can set a valid timeperiod in which this pfx should be rendered (e.g. "8 22": should be rendererd from 8 to 22 o clock")
	var string	timeStartEnd_S;
	
	/// with the next setting you can define weather this pfx is an ambient pfx, thus can be disabled in the gothic.ini with the value [ENGINE]/noAmbientPFX
	var int		m_bIsAmbientPFX;
};
