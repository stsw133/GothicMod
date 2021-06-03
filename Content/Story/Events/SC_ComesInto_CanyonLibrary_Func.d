var int SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime;
func void SC_COMESINTO_CANYONLIBRARY_FUNC ()
{
	if (SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime == FALSE)
	{
		if ((Npc_IsDead(Shadowbeast_Fire_CanyonLib))== FALSE)
		{
			AI_StandUp (Shadowbeast_Fire_CanyonLib);
			Shadowbeast_Fire_CanyonLib.aivar[AIV_EnemyOverride] = FALSE;	///new!!! because is gothic does not understand aivar (???)
			Snd_Play ("THRILLJINGLE_03"); 
			Snd_Play ("GOL_Ambient_A2");
		};
		SC_COMESINTO_CANYONLIBRARY_FUNC_OneTime = TRUE;
	};
};
