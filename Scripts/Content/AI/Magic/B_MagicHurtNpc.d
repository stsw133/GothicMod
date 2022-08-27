///******************************************************************************************
///	B_MagicHurtNpc
///******************************************************************************************
func void B_MagicHurtNpc (var C_Npc slf, var C_Npc oth, var int damage)
{
	Npc_ChangeAttribute (oth, ATR_HITPOINTS, -damage);
	
	if (Npc_IsDead(oth))
	{
		Npc_ClearAIQueue	(oth);
		AI_StandUp			(oth);
		B_ClearPerceptions	(oth);
		MOD_Defeated		(slf, oth);
	};
};
///******************************************************************************************

const int COLL_DONOTHING			= 0;
const int COLL_DOEVERYTHING			= 1<<0;
const int COLL_APPLYDAMAGE			= 1<<1;
const int COLL_APPLYHALVEDAMAGE		= 1<<2;
const int COLL_APPLYDOUBLEDAMAGE	= 1<<3;
const int COLL_APPLYVICTIMSTATE		= 1<<4;
const int COLL_DONTKILL				= 1<<5;

///******************************************************************************************
func int B_MagicDamageNpc (var C_Npc slf, var C_Npc oth, var int status, var int damage, var int scaling, var int spellLevel)
{
	if (status == COLL_DONOTHING || oth.protection[PROT_MAGIC] < 0)
	{
		return 0;
	};
	
	/// calculate damage
	var int magicDmg;
	if (spellLevel > 0)
	{
		magicDmg = (damage*spellLevel + (scaling*(4+spellLevel)/5 * slf.attribute[ATR_POWER] / 100)) - oth.protection[PROT_MAGIC];
	}
	else
	{
		magicDmg = (damage + (scaling * slf.attribute[ATR_POWER] / 100)) - oth.protection[PROT_MAGIC];
	};
	
	/// multiply damage by half or double
	if ((status & COLL_APPLYHALVEDAMAGE) > 0)
	{
		magicDmg /= 2;
	}
	else if ((status & COLL_APPLYDOUBLEDAMAGE) > 0)
	{
		magicDmg *= 2;
	};
	
	/// damage can not be greater than enemy's hp or hp-1 if spell does not kill
	if (magicDmg > oth.attribute[ATR_HITPOINTS])
	{
		if ((status & COLL_DONTKILL) > 0)
		&& (Wld_GetGuildAttitude(slf.guild, oth.guild) != ATT_HOSTILE)
		&& (oth.guild <= GIL_SEPERATOR_HUM || oth.guild >= GIL_SEPERATOR_ORC)
		{
			magicDmg = oth.attribute[ATR_HITPOINTS] - 1;
		}
		else
		{
			magicDmg = oth.attribute[ATR_HITPOINTS];
		};
		Npc_ClearAIQueue	(oth);
		AI_StandUp			(oth);
		B_ClearPerceptions	(oth);
		AI_StartState 		(oth, ZS_Unconscious, false, "");
		//B_StopLookAt		(oth);
		//AI_StopPointAt		(oth);
	};
	
	/// damage can not be negative
	if (magicDmg < 0)
	{
		magicDmg = 0;
	};
	
	/// deal damage
	Npc_ChangeAttribute (oth, ATR_HITPOINTS, -magicDmg);
	
	/// if enemy dies
	if (Npc_IsDead(oth))
	{
		MOD_Defeated (slf, oth);
	}
	else if (magicDmg > 0 && (status & COLL_DOEVERYTHING) > 0)
	{
		/// hurt animation
		if (Npc_GetDistToNpc(slf, oth) < 250)
		{
			if (!Npc_CanSeeNpc(oth, slf))
			{
				AI_PlayAni (oth, "T_STUMBLE");
			}
			else
			{
				AI_PlayAni (oth, "T_STUMBLEB");
			};
		};
	};
};
