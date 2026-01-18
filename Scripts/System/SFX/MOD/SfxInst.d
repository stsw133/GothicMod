///******************************************************************************************
/// Monster sounds
///******************************************************************************************

/// Bear
	instance BEAR_Ambient					(C_SFX_DEF) {file= "BEAR_Ambient01.wav";			vol = 50;			};
	instance BEAR_Ambient_A1				(C_SFX_DEF) {file= "BEAR_Ambient02.wav";			vol = 50;			};
	instance BEAR_Ambient_A2				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
	instance BEAR_Ambient_A3				(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
	instance BEAR_Ambient_Short				(C_SFX_DEF) {file= "SHA_Ambient_Short01.wav";		vol = 50;			};
	instance BEAR_Ambient_Short_A1			(C_SFX_DEF) {file= "SHA_Ambient_Short02.wav";		vol = 50;			};
	instance BEAR_Ambient_Short_A2			(C_SFX_DEF) {file= "SHA_Ambient_Short03.wav";		vol = 50;			};
	instance BEAR_Ambient_Short_A3			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
	instance BEAR_Ambient_Short_A4			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
	instance BEAR_Ambient_Short_A5			(C_SFX_DEF) {file= "nosound.wav";					vol = 0;			};
	instance BEAR_Attack					(C_SFX_DEF) {file= "BEAR_Attack01.wav";				vol = 100;			};
	instance BEAR_Attack_A1					(C_SFX_DEF) {file= "BEAR_Attack02.wav";				vol = 100;			};
	instance BEAR_Attack_A2					(C_SFX_DEF) {file= "BEAR_Attack03.wav";				vol = 100;			};
	instance BEAR_Attack_A3					(C_SFX_DEF) {file= "BEAR_Attack04.wav";				vol = 100;			};
	instance BEAR_Die						(C_SFX_DEF) {file= "BEAR_Die01.wav";				vol = 127;			};
	instance BEAR_Hurt						(C_SFX_DEF) {file= "BEAR_Hurt01.wav";				vol = 100;			};
	instance BEAR_Hurt_A1					(C_SFX_DEF) {file= "BEAR_Hurt02.wav";				vol = 100;			};
	instance BEAR_Hurt_A2					(C_SFX_DEF) {file= "BEAR_Hurt03.wav";				vol = 100;			};
	instance BEAR_Hurt_A3					(C_SFX_DEF) {file= "BEAR_Hurt04.wav";				vol = 100;			};
	instance BEAR_Roar						(C_SFX_DEF) {file= "BEAR_Roar01.wav";				vol = 127;			};
	instance BEAR_Roar_A1					(C_SFX_DEF) {file= "BEAR_Roar02.wav";				vol = 127;			};
	instance BEAR_Warn						(C_SFX_DEF) {file= "BEAR_Warn01.wav";				vol = 127;			};
	instance BEAR_Warn_A1					(C_SFX_DEF) {file= "BEAR_Warn02.wav";				vol = 127;			};
	instance BEAR_Whine						(C_SFX_DEF) {file= "BEAR_Whine01.wav";				vol = 50;			};
	instance BEAR_Whine_A1					(C_SFX_DEF) {file= "BEAR_Whine02.wav";				vol = 50;			};

///******************************************************************************************
/// Spell sounds
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
