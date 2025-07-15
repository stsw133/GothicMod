///******************************************************************************************
/// MOD_Mobs (temporary solution so there is no need to actually edit ZENs)
///******************************************************************************************

var int MOD_MobInUsage;

///******************************************************************************************
func void MOD_Mobs()
{
	if (C_BodyStateContains(hero, BS_MOBINTERACT))
	|| (C_BodyStateContains(hero, BS_MOBINTERACT_INTERRUPT))
	|| (C_BodyStateContains(hero, BS_SIT))
	{
		var string currentMob; currentMob = Npc_GetDetectedMob(hero);
		if (PLAYER_MOBSI_PRODUCTION == MOBSI_NONE && !Hlp_StrCmp(currentMob, ""))
		{
			//Print(ConcatStrings(ConcatStrings("'", currentMob), "'")); ///TEST!!!
			
			var int mobState; mobState = Wld_GetMobState(hero, currentMob);
			if (mobState == 1 && !MOD_MobInUsage)
			{
				MOD_MobInUsage = true;
				self = Hlp_GetNpc(hero);
				
				/// production mobs
				if		(Hlp_StrCmp(currentMob, "BSSHARP"))		{	self = Hlp_GetNpc(hero); MOBSI_SharpWeapon_S1();	}
				else if	(Hlp_StrCmp(currentMob, "CAULDRON"))	{	self = Hlp_GetNpc(hero); MOBSI_UseCauldron_S1();	}
				else if	(Hlp_StrCmp(currentMob, "HERB"))		{	self = Hlp_GetNpc(hero); MOBSI_UseHerb_S1();		}
				else if	(Hlp_StrCmp(currentMob, "STOVE"))		{	self = Hlp_GetNpc(hero); MOBSI_UseStove_S1();		}
				/// sit mobs
				else if	(Hlp_StrCmp(currentMob, "BENCH"))		{	self = Hlp_GetNpc(hero); RestABit_S1();				}
				else if	(Hlp_StrCmp(currentMob, "CHAIR"))		{	self = Hlp_GetNpc(hero); RestABit_S1();				}
				else if	(Hlp_StrCmp(currentMob, "THRONE"))		{	self = Hlp_GetNpc(hero); RestABit_S1();				};
			}
			else if (mobState < 1)
			{
				MOD_MobInUsage = false;
			};
		};
	};
};
