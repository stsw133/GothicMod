///******************************************************************************************
/// SFX.D
/// Soundsystem related preferences & Class-Definitions

const int false		=	0;
const int true		=	1;

///******************************************************************************************

const string	PROV_DOLBY_SURR			=	"Dolby Surround";
const string	PROV_A3D				=	"Aureal A3D Interactive(TM)";
const string	PROV_D3D_HW				=	"DirectSound3D Hardware Support";
const string	PROV_D3D_SW				=	"DirectSound3D Software Emulation";
const string	PROV_D3D_EAX			=	"DirectSound3D with Creative Labs EAX(TM)";
const string	PROV_D3D7_FULL_HRTF		=	"DirectSound3D 7+ Software - Full HRTF";
const string	PROV_D3D7_LIGHT_HRTF	=	"DirectSound3D 7+ Software - Light HRTF";
const string	PROV_D3D7_PAN			=	"DirectSound3D 7+ Software - Pan and Volume";
const string	PROV_EAX				=	"Creative Labs EAX (TM)";
const string	PROV_EAX2				=	"Creative Labs EAX 2 (TM)";
const string	PROV_MILES_2D			=	"Miles Fast 2D Positional Audio";
const string	PROV_RSX				=	"RAD Game Tools RSX 3D Audio";

///******************************************************************************************
class C_SNDSYS_CFG
{
	var float	volume;
	var int		bitResolution;
	var int		sampleRate;
	var int		useStereo;
	var int		numSFXChannels;
	var string	used3DProviderName;
};

/// Base Class
class C_SFX
{
	var string	file;				/// sfx filename
	var int		pitchOff;			/// pitchoffset in semitones
	var int		pitchVar;			/// semitone-variance
	var int		vol;				/// 0..1
	var int		loop;				/// 0/1
	var int		loopStartOffset;
	var int		loopEndOffset;
	var float	reverbLevel;		/// 0..1
	var string	pfxName;
};

/// SFX Prototype with default parameters
prototype C_SFX_DEF (C_SFX)
{
	file				=	"";
	pitchOff			=	0;
	pitchVar			=	0;
	vol					=	127;	/// 0..127
	loop				=	false;	/// 0=off; 1=on
	loopStartOffset		=	0;
	loopEndOffset		=	-1;
	reverbLevel			=	1;
};

instance sndSysConfig (C_SNDSYS_CFG)
{
	volume				=	1;		/// 0..1
	bitResolution		=	16;		/// 8 / 16
	sampleRate			=	22100;	/// 11050 - 44100 prefered
	useStereo			=	true;	/// 1 / 0			/// Must be enabled for various 3d provider!!
	numSFXChannels		=	16;		/// 1 - 32
	used3DProviderName	=	PROV_MILES_2D;
};
