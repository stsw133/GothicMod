
var int SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime;

func void SC_COMESINTO_CANYONLIBRARY_FUNC()
{
	if (SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime == false)
	{
		if ((Npc_IsDead(ShadowBeast_Fire_CanyonLib)) == false)
		{
			AI_StandUp(ShadowBeast_Fire_CanyonLib);
			ShadowBeast_Fire_CanyonLib.aivar[AIV_EnemyOverride] = false;
			Snd_Play("THRILLJINGLE_03"); 
			Snd_Play("GOL_Ambient_A2");
		};
		SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime = true;
	};
};
