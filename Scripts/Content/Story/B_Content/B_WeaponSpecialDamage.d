///******************************************************************************************

const int BeliarWeaponSpecialDamage = 100;
var int RavenBlitz;

var int SPL_IsActive_PalBless;

///******************************************************************************************
/// B_WeaponSpecialDamage
///******************************************************************************************
func void B_WeaponSpecialDamage (var C_Npc slf, var C_Npc oth, var int dealtDmg)
{
	/// hero
	if (Npc_IsPlayer(slf))
	{
		var int dmg;
		var C_Item wpn; wpn = Npc_GetReadiedWeapon(slf);
		
		/// BeliarWeapon
		if (C_ScHasReadiedBeliarsWeapon())
		&& (Hlp_Random(100) < BeliarDamageChance)
		{
			if (oth.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
			{
				Wld_PlayEffect ("spellFX_BELIARSRAGE", slf, slf, 0, 0, 0, false);
				B_MagicHurtNpc (oth, slf, BeliarWeaponSpecialDamage + BeliarWeapon_LastUpgradeLvl);
			}
			else if (oth.flags != NPC_FLAG_IMMORTAL)
			{
				Wld_PlayEffect ("spellFX_BELIARSRAGE", oth, oth, 0, 0, 0, false);
				B_MagicHurtNpc (slf, oth, BeliarWeaponSpecialDamage + BeliarWeapon_LastUpgradeLvl);
			};
			
			Wld_PlayEffect ("spellFX_BELIARSRAGE_COLLIDE", slf, slf, 0, 0, 0, false);
		};
		
		/// POWER BASED DAMAGE
		if (Hlp_IsItem(wpn, ItMw_Stab_M_02))
		{
			dmg = slf.attribute[ATR_POWER] * 3 / 100;
			
			if (oth.attribute[ATR_HITPOINTS] > dmg)	{	B_MagicHurtNpc (slf, oth, dmg);									}
			else									{	B_MagicHurtNpc (slf, oth, oth.attribute[ATR_HITPOINTS] - 1);	};
		}
		else if (Hlp_IsItem(wpn, ItMw_Stab_H_02))
		{
			dmg = slf.attribute[ATR_POWER] * 5 / 100;
			
			if (oth.attribute[ATR_HITPOINTS] > dmg)	{	B_MagicHurtNpc (slf, oth, dmg);									}
			else									{	B_MagicHurtNpc (slf, oth, oth.attribute[ATR_HITPOINTS] - 1);	};
		};
		
		/// SPL_PalBless
		if (SPL_IsActive_PalBless)
		{
			if (slf.attribute[ATR_MANA] >= SPL_Cost_PalBless)
			{
				Npc_ChangeAttribute (slf, ATR_MANA, -SPL_Cost_PalBless);
				Wld_PlayEffect ("spellFX_PALHOLYBOLT_COLLIDE", oth, oth, 0, 0, 0, false);
				
				if		(Hlp_IsItem(wpn, ItMw_1H_Blessed_03) || Hlp_IsItem(wpn, ItMw_2H_Blessed_03))	{	B_MagicHurtNpc (slf, oth, slf.attribute[ATR_MANA_MAX]*15/100);	}
				else if	(Hlp_IsItem(wpn, ItMw_1H_Blessed_02) || Hlp_IsItem(wpn, ItMw_2H_Blessed_02))	{	B_MagicHurtNpc (slf, oth, slf.attribute[ATR_MANA_MAX]*13/100);	}
				else if	(Hlp_IsItem(wpn, ItMw_1H_Blessed_01) || Hlp_IsItem(wpn, ItMw_2H_Blessed_01))	{	B_MagicHurtNpc (slf, oth, slf.attribute[ATR_MANA_MAX]*11/100);	}
				else if	(Hlp_IsItem(wpn, ItMw_1H_Pal_Sword) || Hlp_IsItem(wpn, ItMw_2H_Pal_Sword))		{	B_MagicHurtNpc (slf, oth, slf.attribute[ATR_MANA_MAX]*7/100);	}
				else																					{	B_MagicHurtNpc (slf, oth, slf.attribute[ATR_MANA_MAX]*5/100);	};
			}
			else
			{
				SPL_IsActive_PalBless = false;
				Wld_StopEffect("SPELLFX_PALBLESS_GLOW");
			};
		};
	};
	
	/// SPL_PalAura
	if (mAuraPalTime > 0 && (Npc_IsPlayer(slf) || Npc_IsPlayer(oth)))
	{
		mAuraPalPoints += dealtDmg;
		if (mAuraPalPoints >= 1000 || hero.attribute[ATR_HITPOINTS] < hero.attribute[ATR_HITPOINTS_MAX]/4)
		{
			if (mAuraPalPoints >= 1000) { mAuraPalPoints = 1000; };
			
			if		(mAuraPalType == 1) { Npc_SetShieldPoints (hero, 1, (mAuraPalPoints*(200+hero.attribute[ATR_POWER]))/2000); Wld_PlayEffect ("spellFX_LearnMP", hero, hero, 0, 0, 0, false); }
			else if	(mAuraPalType == 2) { Npc_SetShieldPoints (hero, 0, (mAuraPalPoints*(200+hero.attribute[ATR_POWER]))/2000); Wld_PlayEffect ("spellFX_LearnSTR", hero, hero, 0, 0, 0, false); }
			else if	(mAuraPalType == 3) { Npc_ChangeAttribute (hero, ATR_HITPOINTS, (mAuraPalPoints*(200+hero.attribute[ATR_POWER]))/2000); Wld_PlayEffect ("spellFX_LearnPOW", hero, hero, 0, 0, 0, false); };
			
			mAuraPalType = 0;
			mAuraPalTime = 0;
		};
	};
	
	/// SPL_Stealth
	if (slf.aivar[AIV_Invisible])
	{
		MOD_SetStealth(slf, 0);
	};
	
	/// SPL_NecAura
	/*
	if (mAuraType == MAGIC_NEC && mAuraTime > 0 && Npc_GetDistToNpc(oth, slf) < 1000 && (Npc_IsPlayer(oth) || oth.aivar[AIV_PartyMember]))
	{
		B_MagicHurtNpc (oth, slf, (SPL_Prot_NecAura + hero.attribute[ATR_POWER]*SPL_Scaling_NecAura/100) / 2);
		Wld_PlayEffect ("spellFX_NecAura_Origin", hero, slf, 0, 0, 0, false);
	};
	*/
	
	/// OTHER: Raven
	if (Hlp_GetInstanceID(oth) == Hlp_GetInstanceID(Raven))
	{
		Wld_PlayEffect ("spellFX_BELIARSRAGE_COLLIDE", oth, oth, 0, 0, 0, false);
		
		if (RavenBlitz <= 0)
		{
			Wld_PlayEffect ("spellFX_BELIARSRAGE", slf, slf, 0, 0, 0, false);
			B_MagicHurtNpc (oth, slf, BeliarWeaponSpecialDamage);
			RavenBlitz += 1;
		}
		else if (RavenBlitz >= 3) 
		{
			if (Hlp_Random(2))
			{
				RavenBlitz = 0;
			};
		}
		else
		{
			RavenBlitz += 1;
		};
	};
};

///******************************************************************************************
/// B_WeaponSpecialEffect
///******************************************************************************************
func void B_WeaponSpecialEffect (var C_Npc slf, var C_Npc oth)
{
	/// hero
	if (Npc_IsPlayer(slf))
	{
		/// SELF FIGHT TEACH
		if (slf.weapon >= 2)
		{
			SelfFightTeach_ADD (slf, slf.weapon-2);
		};
		
		/// MANA REGENERATION
		var C_Item wpn; wpn = Npc_GetReadiedWeapon(slf);
		
		if		(Hlp_IsItem(wpn, ItMw_Stab_L_01))	{	Npc_ChangeAttribute (slf, ATR_MANA, 2);		}
		else if	(Hlp_IsItem(wpn, ItMw_Stab_M_01))	{	Npc_ChangeAttribute (slf, ATR_MANA, 6);		}
		else if	(Hlp_IsItem(wpn, ItMw_Stab_H_01))	{	Npc_ChangeAttribute (slf, ATR_MANA, 10);	};
	};
};
