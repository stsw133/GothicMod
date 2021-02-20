//******************************************************************************************
//	B_BeliarsWeaponSpecialDamage
//******************************************************************************************

var int RavenBlitz;

//******************************************************************************************
func void B_BeliarsWeaponSpecialDamage (var C_NPC oth, var C_NPC slf) //other ist angreifer, slf ist victim
{
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(Raven))
	{
		Wld_PlayEffect ("spellFX_BELIARSRAGE_COLLIDE", slf, slf, 0, 0, 0, false);

		if (RavenBlitz <= 0)
		{
			Wld_PlayEffect ("spellFX_BELIARSRAGE", oth, oth, 0, 0, 0, false);
			B_MagicHurtNpc (slf, oth, 50);
			RavenBlitz += 1;
		}
		else if (RavenBlitz >= 3) 
		{
			var int RavenRandy; RavenRandy = Hlp_Random(100);

			if (RavenRandy <= 50)
			{
				RavenBlitz = 0;
			};
		}
		else
		{
			RavenBlitz += 1;
		};
	}
	else if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(hero))
	{
		var int DamageRandy;
		DamageRandy = Hlp_Random(100);

		if (C_ScHasReadiedBeliarsWeapon())
		&& (DamageRandy <= BeliarDamageChance)
		{
			if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
			{
				Wld_PlayEffect ("spellFX_BELIARSRAGE", oth, oth, 0, 0, 0, false);
				B_MagicHurtNpc (slf, oth, 50);	//100
			}
			else if (slf.flags != NPC_FLAG_IMMORTAL)
			{
				Wld_PlayEffect ("spellFX_BELIARSRAGE", slf, slf, 0, 0, 0, false);
				B_MagicHurtNpc (oth, slf, 50);	//100			
			};

			Wld_PlayEffect ("spellFX_BELIARSRAGE_COLLIDE", hero, hero, 0, 0, 0, false);
		};
		
		//when SPL_PalBless is active
		if (SPL_IsActive_PalBless == true)
		{
			Wld_PlayEffect ("spellFX_PALHOLYBOLT_COLLIDE", slf, slf, 0, 0, 0, false);
			B_MagicHurtNpc (oth, slf, oth.attribute[ATR_MANA_MAX]/10);
		};
	};
};
