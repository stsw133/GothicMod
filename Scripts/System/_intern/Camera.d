///******************************************************************************************
///
///	Cam_sys Class
///
///******************************************************************************************

const int false		=	0;
const int true		=	1;

///******************************************************************************************
class CCamSys
{
	/// angles -180 to 180
	var float	bestRange;
	var float	minRange;
	var float	maxRange;
	var float	bestElevation;
	var float	minElevation;
	var float	maxElevation;
	var float	bestAzimuth;
	var float	minAzimuth;
	var float	maxAzimuth;
	var float	bestRotZ;
	var float	minRotZ;
	var float	maxRotZ;
	var float	rotOffsetX;
	var float	rotOffsetY;
	var float	rotOffsetZ;
	var float	targetOffsetX;
	var float	targetOffsetY;
	var float	targetOffsetZ;
	
	/// dynamic
	var float	veloTrans;	/// velocity while easing   to best position
	var float	veloRot;	/// velocity while rotating to best orientation
	
	var int		translate;	/// rotate around target, 1:on, 0:off
	var int		rotate;		/// rotate around target, 1:on, 0:off
	var int		collision;	/// disable collision for this mode (ideal pos must be near player)
};

prototype CCamSys_Def (CCamSys)
{
	bestRange		=	2.0;
	minRange		=	1.99;
	maxRange		=	4.01;
	bestElevation	=	0.0;
	minElevation	=	0.0;
	maxElevation	=	89.0;
	bestAzimuth		=	0.0;
	minAzimuth		=	-90.0;
	maxAzimuth		=	90.0;
	bestRotZ		=	0.0;
	minRotZ			=	0.0;
	maxRotZ			=	0.0;
	rotOffsetX		=	20.0;
	rotOffsetY		=	0.0;
	rotOffsetZ		=	0.0;
	targetOffsetX	=	0.0;
	targetOffsetY	=	0.0;
	targetOffsetZ	=	0.0;
	
	/// dynamic
	translate		=	true;
	rotate			=	true;
	collision		=	true;
	
	veloTrans		=	40;
	veloRot			=	2;
};
