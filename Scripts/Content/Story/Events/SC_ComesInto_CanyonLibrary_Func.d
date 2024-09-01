///******************************************************************************************

var int SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime;

///******************************************************************************************
/// SC_COMESINTO_CANYONLIBRARY_FUNC
///******************************************************************************************
func void SC_COMESINTO_CANYONLIBRARY_FUNC()
{
	if (!SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime)
	{
		if (!Npc_IsDead(Shadowbeast_Fire_CanyonLib))
		{
			AI_StandUp(Shadowbeast_Fire_CanyonLib);
			Shadowbeast_Fire_CanyonLib.aivar[AIV_EnemyOverride] = false;
			Snd_Play("THRILLJINGLE_03"); 
			Snd_Play("GOL_Ambient_A2");
		};
		SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime = true;
	};
};
