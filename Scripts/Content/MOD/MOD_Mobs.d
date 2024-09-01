///******************************************************************************************
/// MOD_Mobs (temporary solution so there is no need to actually edit ZENs)
///******************************************************************************************

var int MOD_MobInUsage;

///******************************************************************************************
func void MOD_Mobs()
{
	var string currentMob; currentMob = Npc_GetDetectedMob(hero);
	
	if (C_BodyStateContains(hero, BS_MOBINTERACT) || C_BodyStateContains(hero, BS_MOBINTERACT_INTERRUPT))
	{
		if (!Hlp_StrCmp(currentMob, "") && PLAYER_MOBSI_PRODUCTION == MOBSI_NONE)
		{
			Print(ConcatStrings(ConcatStrings("'", currentMob), "'"));
			
			if (Wld_GetMobState(hero, currentMob) == 1 && !MOD_MobInUsage)
			{
				MOD_MobInUsage = true;
				if (Hlp_StrCmp(currentMob, "BAUMSAEGE"))	{	self = Hlp_GetNpc(hero); MOBSI_MakeWood_S1();		};
				if (Hlp_StrCmp(currentMob, "BSSHARP"))		{	self = Hlp_GetNpc(hero); MOBSI_SharpWeapon_S1();	};
				if (Hlp_StrCmp(currentMob, "HERB"))			{	self = Hlp_GetNpc(hero); MOBSI_MakeTabak_S1();		};
				if (Hlp_StrCmp(currentMob, "STOVE"))		{	self = Hlp_GetNpc(hero); MOBSI_UseStove_S1();		};
			}
			else if (Wld_GetMobState(hero, currentMob) < 1)
			{
				MOD_MobInUsage = false;
			};
		};
	};
};
