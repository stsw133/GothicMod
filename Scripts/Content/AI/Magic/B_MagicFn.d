///******************************************************************************************
///	B_MagicFn
///******************************************************************************************
func void B_MagicHurtNpc (var C_Npc slf, var C_Npc oth, var int damage)
{
	Npc_ChangeAttribute (oth, ATR_HITPOINTS, -damage);
	
	if (Npc_IsDead(oth))
	{
		Npc_ClearAIQueue	(oth);
		AI_StandUp			(oth);
		B_ClearPerceptions	(oth);
		MOD_Defeated		(slf, oth, DBP_Killed);
		
		//B_GiveTradeInv(oth);
		//B_GiveDeathInv(oth);
		//B_ClearRuneInv(oth);
		
		B_DeletePetzCrime(oth);
		oth.aivar[AIV_NpcSawPlayerCommit] = CRIME_NONE;
		oth.aivar[AIV_TAPOSITION] = false;
	};
};
///******************************************************************************************
var int B_MagicHurtNpcArea_Damage;
var C_Npc B_MagicHurtNpcArea_Victim;

func void B_MagicHurtNpcArea(var C_Npc oth, var C_Npc slf)
{
	if (Hlp_GetInstanceID(slf) == Hlp_GetInstanceID(B_MagicHurtNpcArea_Victim))
	|| (!Npc_IsPlayer(slf) && oth.guild == slf.guild)
	{
		return;
	};
	
	if (Npc_GetDistToNpc(B_MagicHurtNpcArea_Victim, oth) < NPC_ATTACK_FINISH_DISTANCE)
	{
		B_MagicHurtNpc (slf, oth, B_MagicHurtNpcArea_Damage);
	};
};
///******************************************************************************************
func int B_GetMagicDamage (var C_Npc slf, var int damage, var int scaling)
{
	/// calculate damage
	if (slf.aivar[AIV_SpellLevel] > 0)
	{
		damage += scaling * slf.aivar[AIV_SpellLevel] * slf.attribute[ATR_POWER] / 100;
	}
	else
	{
		damage += scaling * slf.attribute[ATR_POWER] / 100;
	};
	
	return damage;
};
///******************************************************************************************
func void B_SetMagicAura (var int type, var int points, var int time)
{
	/// disabling active aura
	if (mAuraTime > 0 || time == 0)
	{
		if (mAuraType == MAGIC_MYS)
		{
			Wld_StopEffect("SPELLFX_MYSAURA_GLOW");
		}
		else if (mAuraType == MAGIC_GEO)
		{
			Wld_StopEffect("SPELLFX_GEOAURA_GLOW");
			hero.protection[PROT_BLUNT] -= mAuraPoints;
			hero.protection[PROT_EDGE] -= mAuraPoints;
			hero.protection[PROT_POINT] -= mAuraPoints;
		}
		else if (mAuraType == MAGIC_ELE)
		{
			Wld_StopEffect("SPELLFX_ELEAURA_GLOW");
			hero.protection[PROT_POINT] -= mAuraPoints;
			hero.protection[PROT_FALL] -= mAuraPoints;
		}
		else if (mAuraType == MAGIC_PYR)
		{
			Wld_StopEffect("SPELLFX_PYRAURA_GLOW");
			hero.protection[PROT_FIRE] -= mAuraPoints;
		}
		else if (mAuraType == MAGIC_NEC)
		{
			Wld_StopEffect("SPELLFX_NECAURA_GLOW");
			hero.protection[PROT_MAGIC] -= mAuraPoints;
			hero.protection[PROT_BARRIER] -= mAuraPoints;
		};
	};
	
	/// assigning values
	mAuraType = type;
	mAuraPoints = points;
	mAuraTime = time;
	
	/// starting new aura
	if (time > 0)
	{
		if (type == MAGIC_MYS)
		{
			Wld_PlayEffect ("SPELLFX_MysEcho_GLOW", hero, hero, 0, 0, 0, false);
		}
		else if (type == MAGIC_GEO)
		{
			Wld_PlayEffect ("SPELLFX_GeoAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_BLUNT] += points;
			hero.protection[PROT_EDGE] += points;
			hero.protection[PROT_POINT] += points;
		}
		else if (type == MAGIC_ELE)
		{
			Wld_PlayEffect ("SPELLFX_EleAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_POINT] += points;
			hero.protection[PROT_FALL] += points;
		}
		else if (type == MAGIC_PYR)
		{
			Wld_PlayEffect ("SPELLFX_PyrAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_FIRE] += points;
		}
		else if (type == MAGIC_NEC)
		{
			Wld_PlayEffect ("SPELLFX_NecAura_GLOW", hero, hero, 0, 0, 0, false);
			hero.protection[PROT_BARRIER] += points;
			hero.protection[PROT_MAGIC] += points;
		};
	};
};
