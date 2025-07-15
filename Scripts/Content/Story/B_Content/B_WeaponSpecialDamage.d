///******************************************************************************************

const int BeliarWeaponSpecialDamage = 100;
var int RavenBlitz;

var int SPL_IsActive_PalBless;

///******************************************************************************************
/// B_WeaponSpecialDamage
///******************************************************************************************
func void B_WeaponSpecialDamage (var C_Npc slf, var C_Npc oth, var C_Item wpn, var int dealtDmg)
{
	/// hero
	if (Npc_IsPlayer(slf))
	{
		var int dmg;
		
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
			
			if		(mAuraPalType == 1) { Npc_SetShieldPoints(hero, (mAuraPalPoints*(200+hero.attribute[ATR_POWER]))/2000); Wld_PlayEffect("spellFX_LearnMP", hero, hero, 0, 0, 0, false); }
			else if	(mAuraPalType == 2) { Npc_SetShieldPoints(hero, (mAuraPalPoints*(200+hero.attribute[ATR_POWER]))/2000); Wld_PlayEffect("spellFX_LearnSTR", hero, hero, 0, 0, 0, false); }
			else if	(mAuraPalType == 3) { Npc_ChangeAttribute(hero, ATR_HITPOINTS, (mAuraPalPoints*(200+hero.attribute[ATR_POWER]))/2000); Wld_PlayEffect("spellFX_LearnPOW", hero, hero, 0, 0, 0, false); };
			
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
func void B_WeaponSpecialEffect (var C_Npc slf, var C_Npc oth, var C_Item wpn)
{
	/// hero
	if (Npc_IsPlayer(slf))
	{
		/// SELF FIGHT TEACH
		SelfFightTeach_ADD (slf, slf.weapon-2);
		
		/// MANA REGENERATION
		if (wpn.cond_atr[0] == ATR_POWER)
		{
			Npc_ChangeAttribute (slf, ATR_MANA, slf.attribute[ATR_POWER]/20);
		};
	};
};

///******************************************************************************************
/// B_MunitionSpecialDamage
///******************************************************************************************
func void B_MunitionSpecialBangEffect(var C_Npc oth, var C_Npc slf)
{
	if (Npc_IsPlayer(oth))
	{
		return;
	};
	
	if ((oth.senses & SENSE_HEAR) && (Npc_GetDistToNpc(slf, oth) < oth.senses_range*5))
	{
		AI_Wait		(oth, 2);
		B_ResetAll	(oth);
		AI_StandUp	(oth);
		
		if (oth.guild > GIL_SEPERATOR_ORC)
		{
			AI_SetWalkmode (oth, NPC_RUN);
			AI_GotoNpc (oth, slf);
		}
		else
		{
			B_TurnToNpc (oth, slf);
			B_LookAtNpc (oth, slf);
		};
	};
};
func void B_MunitionSpecialBang(var C_Npc oth)
{
	Snd_Play("MFX_Fireball_Collide1");
	MOD_Broadcast (oth, B_MunitionSpecialBangEffect);
};

///******************************************************************************************
func int B_MunitionSpecialDamage(var C_Npc slf, var C_Npc oth, var C_Item itm)
{
	var int dmg; dmg = 0;
	
	/// sharp arrow
	if (Hlp_GetInstanceID(itm) == Hlp_GetInstanceID(ItRw_SharpArrow))
	{
		dmg = itm.COUNT[1];
	}
	/// hunting arrow
	else if (Hlp_GetInstanceID(itm) == Hlp_GetInstanceID(ItRw_HuntingArrow))
	{
		if (C_NpcIsAnimal(oth))
		{
			dmg = itm.COUNT[1];
		}
		else
		{
			dmg = itm.COUNT[2];
		};
	}
	/// quartz arrow
	else if (Hlp_GetInstanceID(itm) == Hlp_GetInstanceID(ItRw_QuartzArrow))
	{
		if (oth.protection[PROT_POINT] < 100)
		{
			dmg = itm.COUNT[1];
		}
		else
		{
			dmg = itm.COUNT[2];
		};
	}
	/// bang arrow
	else if (Hlp_GetInstanceID(itm) == Hlp_GetInstanceID(ItRw_BangArrow))
	{
		B_MunitionSpecialBang(oth);
	}
	/// magic arrow
	else if (Hlp_GetInstanceID(itm) == Hlp_GetInstanceID(ItRw_MagicArrow))
	{
		dmg = itm.COUNT[1];
	};
	
	return dmg;
};
