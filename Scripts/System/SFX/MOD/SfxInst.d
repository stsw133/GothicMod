///******************************************************************************************
/// Sound Effects
///******************************************************************************************

/// SPL_Glory
	instance MFX_Glory_CAST					(C_SFX_DEF) { file = "MFX_GLORY_CAST.wav";			vol = 127;									};
	
/// SPL_Resurrection
	instance MFX_Resurrection_Target		(C_SFX_DEF) { file = "MFX_Massdeath_Target.wav";	vol = 50;									};
	
/// SPL_Picklock
	instance MFX_Picklock_CAST				(C_SFX_DEF) { file = "MFX_PICKLOCK_CAST.wav";		vol = 127;	loopEndOffset = -1;	reverbLevel = 1;	};
	instance MFX_Picklock_INVEST			(C_SFX_DEF) { file = "MFX_PICKLOCK_INVEST.wav";		vol = 80;	loopEndOffset = -1;	reverbLevel = 1;	};
	
/// SPL_Explosion
	instance MFX_Explosion_CAST				(C_SFX_DEF) { file = "MFX_EXPLOSION_CAST.wav";		vol = 127;	pitchOff = -50;					};
	instance MFX_Explosion_SPHERE			(C_SFX_DEF) { file = "CS_PRAYER_FOKUSFINAL.wav";	vol = 50;									};
	
/// SPL_Earthquake
	instance MFX_Earthquake_CAST			(C_SFX_DEF) { file = "MFX_QUAKE_INVEST.wav";		vol = 90;									};
	instance MFX_Earthquake_STOMP			(C_SFX_DEF) { file = "M_STEP_HUGE01.wav";			vol = 127;	pitchOff = -50;					};
	instance MFX_Earthquake_EARTHQUAKE		(C_SFX_DEF) { file = "CS_PRAYER_MINECOLLIDE02.wav";	vol = 110;									};
	
	instance MFX_Earthquake_COLLIDE			(C_SFX_DEF) { file = "CS_IHL_ST_WO.wav";			vol = 127;									};
	instance MFX_Earthquake_INHALE			(C_SFX_DEF) { file = "MFX_EXTRICATE_INHALE.wav";	vol = 127;									};
	
/// SPL_Rock
	instance MFX_Rock_Cast					(C_SFX_DEF) { file = "CS_PRAYER_MINECOLLIDE01.wav";	vol = 110;									};
	instance MFX_Rock_Collide				(C_SFX_DEF) { file = "MFX_STONE_COLLIDE.wav";		vol = 127;									};
	
/// SPL_Elevate
	instance MFX_Elevate_BURST				(C_SFX_DEF) { file = "TREEDOWN.wav";				vol = 127;	pitchOff = 0;	pitchVar = 4;	};
	instance MFX_Elevate_STONES				(C_SFX_DEF) { file = "CS_PRAYER_MINECOLLIDE01.wav";	vol = 127;									};
	instance MFX_Elevate_INVEST				(C_SFX_DEF) { file = "MFX_ELEVATE_INVEST.wav";		vol = 127;									};
	instance MFX_Elevate_CAST				(C_SFX_DEF) { file = "WSP_WHOSH_01.wav";			vol = 127;	pitchOff = -5;	pitchVar = 1;	};
