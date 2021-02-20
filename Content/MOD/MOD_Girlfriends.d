///******************************************************************************************
///	MOD_Girlfriends
///******************************************************************************************

const int MAX_LOVE				=	100000;		/// 100 000 = 100%

const int gf_pal				=	0;
const int gf_bdt				=	1;
const int gf_sun				=	2;
const int gf_fgt				=	3;
const int gf_cat				=	4;
const int gf_vct				=	5;
const int gf_mag				=	6;

var int girlfriend[7];

///******************************************************************************************
func void MOD_StopTalkingWithGirl (var C_NPC slf)
{
	talkingWithGirl = false;
	Bar_Delete(Bar_expBar);
	AI_StopProcessInfos(slf);
};
