///******************************************************************************************
///	zEngine Music-Script File
///******************************************************************************************

const int false		=	0;
const int true		=	1;

/// direct music specific motif names
const string	MOTIF_DEATH						=	"J_DEATH";
const string	MOTIF_RESURRECTION				=	"J_RESURRECT";
const string	MOTIF_FOUNDITEM					=	"J_FOUNDITEM";
const string	MOTIF_SOLVEDMISSION				=	"J_MISSOLVED";
const string	MOTIF_FAILEDMISSION				=	"J_MISFAILED";
const string	MOTIF_KILLEDENEMY				=	"J_KILLEDENEMY";
const string	MOTIF_KILLEDBIGENEMY			=	"J_KILLEDBIGENEMY";
const string	MOTIF_LEVEL_GAIN				=	"J_LEVELGAIN";
const string	MOTIF_ATTITUDE_INCREASE			=	"J_INC_AT";
const string	MOTIF_ATTITUDE_DECREASE			=	"J_DEC_AT";
const string	MOTIF_TRAP_ACTIVATE				=	"J_TRAP_ACTIVATE";
const string	MOTIF_STEAL_FAIL				=	"J_STEAL_FAIL";
const string	MOTIF_REFRESH_MANA				=	"J_MANA_REFRESH";
const string	MOTIF_REFRESH_HEALTH			=	"J_HEALTH_REFRESH";
const string	MOTIF_REFRESH_PSI				=	"J_PSI_REFRESH";
const string	MOTIF_HEALTHLOW					=	"J_HEALTH_LOW";

/// main transition defines
const int		TRANSITION_TYPE_NONE			=	1;
const int		TRANSITION_TYPE_GROOVE			=	2;
const int		TRANSITION_TYPE_FILL			=	3;
const int		TRANSITION_TYPE_BREAK			=	4;
const int		TRANSITION_TYPE_INTRO			=	5;
const int		TRANSITION_TYPE_END				=	6;
const int		TRANSITION_TYPE_ENDANDINTRO		=	7;

/// sub transition type defines
const int		TRANSITION_SUB_TYPE_IMMEDIATE	=	1;
const int		TRANSITION_SUB_TYPE_BEAT		=	2;
const int		TRANSITION_SUB_TYPE_MEASURE		=	3;

///******************************************************************************************
/// global music configuration class
class C_MUSICSYS_CFG
{
	var float	volume;
	var int		bitResolution;
	var int		globalReverbEnabled;
	var int		sampleRate;
	var int		numChannels;
	var int		reverbBufferSize;
};

/// base theme class
class C_MUSICTHEME
{
	var string	file;
	var float	vol;
	var int		loop;
	var float	reverbMix;
	var float	reverbTime;
	var int		transType;
	var int		transSubType;
};

/// base jingle class
class C_MUSICJINGLE
{
	var string	name;
	var int		loop;
	var float	vol;
	var int		transSubType;
};

/// theme Prototype with default parameters
prototype C_MUSICTHEME_DEF (C_MUSICTHEME)
{
	// file			=	"";	/// midi file or direct music segment
	vol				=	1;		/// 0..1
	loop			=	true;	/// 0=off; 1=on
	transType		=	TRANSITION_TYPE_NONE;
	transSubType	=	TRANSITION_SUB_TYPE_MEASURE;
	reverbMix		=	-80;
	reverbTime		=	9000;
};

/// jingle Prototype with default parameters
prototype C_MUSICJINGLE_DEF (C_MUSICJINGLE)
{
	name			=	"";		/// motif - name or wave
	vol				=	1;		/// 0..1
	loop			=	false;
	transSubType	=	TRANSITION_SUB_TYPE_BEAT;
};
