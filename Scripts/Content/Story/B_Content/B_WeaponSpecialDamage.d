///******************************************************************************************
///	B_WeaponSpecialDamage
///******************************************************************************************

var int RavenBlitz;
var int SPL_IsActive_PalBless;

///******************************************************************************************
func void B_WeaponSpecialDamage (var C_Npc oth, var C_Npc slf)
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
		var int DamageRandy; DamageRandy = Hlp_Random(100);
		
		/// BeliarWeapon
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
		
		/// when SPL_PalBless is active
		if (SPL_IsActive_PalBless)
		{
			if (oth.attribute[ATR_MANA] >= SPL_Cost_PalBless)
			{
				Npc_ChangeAttribute (oth, ATR_MANA, -SPL_Cost_PalBless);	/// -2 many na atak
				Wld_PlayEffect ("spellFX_PALHOLYBOLT_COLLIDE", slf, slf, 0, 0, 0, false);
				B_MagicHurtNpc (oth, slf, oth.attribute[ATR_MANA_MAX] / 10);	/// 10% max. many
			}
			else
			{
				SPL_IsActive_PalBless = false;
				Wld_StopEffect("SPELLFX_PALBLESS_GLOW");
			};
		};
	};
};
