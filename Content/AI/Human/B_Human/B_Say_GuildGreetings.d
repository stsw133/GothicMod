///******************************************************************************************
///	B_Say_GuildGreetings
///******************************************************************************************
func void B_Say_GuildGreetings (var C_NPC slf, var C_NPC oth)
{
	if (slf.guild == GIL_MIL)
	&& ((oth.guild == GIL_MIL) || (oth.guild == GIL_PAL))
	{
		B_Say_Overlay (slf, oth, "$MILGREETINGS");
		return;
	};
	
	if (slf.guild == GIL_PAL)
	&& ((oth.guild == GIL_PAL) || (oth.guild == GIL_MIL) || (oth.guild == GIL_KDF))
	{
		B_Say_Overlay (slf, oth, "$PALGREETINGS");
		return;
	};
	
	if (slf.guild == GIL_KDF)
	&& ((oth.guild == GIL_PAL) || (oth.guild == GIL_NOV) || (oth.guild == GIL_KDF))
	{
		B_Say_Overlay (slf, oth, "$PALGREETINGS");
		return;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Bartok))
	&& (Bartok_OrkGesagt)
	{
		AI_Output (slf, oth, "DIA_Bartok_Angekommen_04_02");
		return;
	};
	
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Koch))
	{
		AI_Output (slf, oth, "Hackebeil_01_00");
		return;
	};
	
	if (Hlp_Random(100) <= 10)
	&& (Wld_IsRaining())
	{
		B_Say_Overlay (slf, oth, "$WEATHER");
		return;
	};
};
