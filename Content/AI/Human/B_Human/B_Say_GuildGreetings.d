///******************************************************************************************
///	B_Say_GuildGreetings
///******************************************************************************************
func void B_Say_GuildGreetings (var C_NPC slf, var C_NPC oth)
{
	if (slf.guild == GIL_MIL)
	&& ((oth.guild == GIL_MIL) || (oth.guild == GIL_PAL))
	{
//		AI_LookAtNpc	(slf, oth);
//		AI_PlayAni		(slf, "T_GREETGRD");
		B_Say_Overlay	(slf, oth, "$MILGREETINGS");
		return;
	};
	
	if (slf.guild == GIL_PAL)
	&& ((oth.guild == GIL_PAL) || (oth.guild == GIL_MIL) || (oth.guild == GIL_KDF))
	{
//		AI_LookAtNpc	(slf, oth);
//		AI_PlayAni		(slf, "T_GREETGRD");
		B_Say_Overlay	(slf, oth, "$PALGREETINGS");
		return;
	};
	
	if (slf.guild == GIL_KDF)
	&& ((oth.guild == GIL_PAL) || (oth.guild == GIL_NOV) || (oth.guild == GIL_KDF))
	{
//		AI_LookAtNpc	(slf, oth);
//		AI_PlayAni		(slf, "T_GREETNOV");
		B_Say_Overlay	(slf, oth, "$PALGREETINGS");
		return;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Bartok))
	&& (Bartok_OrkGesagt == true)
	{
		B_Bartok_ShitAnOrc();
		return;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Koch))
	{
		B_Koch_Hackebeil();
		return;
	};
	
	var int zufall; zufall = Hlp_Random(100); 
	
	if (zufall <= 10)
	&& (Wld_IsRaining())
	{
		B_Say_Overlay (slf, oth, "$WEATHER");
		return;
	};
};
