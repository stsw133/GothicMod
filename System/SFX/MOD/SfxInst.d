///******************************************************************************************
///	Sound Effects
///******************************************************************************************

/// GeoStone
	INSTANCE MFX_GeoStone_Cast		    	(C_SFX_DEF) {file= "CS_PRAYER_MINECOLLIDE01.wav";	vol = 110;			};
	INSTANCE MFX_GeoStone_Collide		    (C_SFX_DEF) {file= "MFX_STONE_COLLIDE.wav";			vol = 127;			};
	
/// GeoElevate
    INSTANCE MFX_GeoElevate_BURST			(C_SFX_DEF) {file= "TREEDOWN.WAV";                  vol = 127;      pitchOff=0; pitchVar=4; };
    INSTANCE MFX_GeoElevate_STONES			(C_SFX_DEF) {file= "CS_PRAYER_MINECOLLIDE01.WAV";   vol = 127;          };
    INSTANCE MFX_GeoElevate_INVEST			(C_SFX_DEF) {file= "MFX_ELEVATE_INVEST.WAV";        vol = 127;          };
    INSTANCE MFX_GeoElevate_CAST			(C_SFX_DEF) {file= "WSP_WHOSH_01.WAV";              vol = 127;      pitchOff=-5; pitchVar=1; };
	
/// GeoQuake
	INSTANCE MFX_GeoQuake_CAST              (C_SFX_DEF) {file= "MFX_QUAKE_INVEST.WAV";          vol = 90;           };
	INSTANCE MFX_GeoQuake_STOMP             (C_SFX_DEF) {file= "M_STEP_HUGE01.WAV";             vol = 127;      pitchOff=-50;   };
	INSTANCE MFX_GeoQuake_EARTHQUAKE        (C_SFX_DEF) {file= "CS_PRAYER_MINECOLLIDE02.WAV";   vol = 110;          };
	
    INSTANCE MFX_GeoQuake_COLLIDE			(C_SFX_DEF) {file= "CS_IHL_ST_WO.WAV";              vol = 127;          };
    INSTANCE MFX_GeoQuake_INHALE			(C_SFX_DEF) {file= "MFX_EXTRICATE_INHALE.WAV";      vol = 127;          };
	
/// SpermFist
	INSTANCE MFX_Spermfist_Cast				(C_SFX_DEF) {file= "MFX_Spermfist_Cast.wav";		vol = 30;			};      
	INSTANCE MFX_Spermfist_Collide         	(C_SFX_DEF) {file= "MFX_Spermfist_Collide.wav";		vol = 127;			};