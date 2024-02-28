///******************************************************************************************
///	MOD_Damage
///  Calculate
///******************************************************************************************
func int DMG_Calculate (var oSDamageDescriptor dmgDesc, var int dmg_IsHit, var C_Npc slf, var C_Npc oth, var int spellId, var int spellLvl)
{
	var int dmg; dmg = 0;
	var int curDmg; curDmg = 0;
	var int curProt; curProt = 0;
	//var C_Item weaponItem; weaponItem = MEM_NullToInst();
	
	/// we add all the damage types to a sum of damage
	var int i;
	repeat(i, DAM_INDEX_MAX);
	if ((dmgDesc.dmgMode & (1 << i)) == (1 << i))
	{
		curDmg = MEM_ReadStatArr(dmgDesc.dmgArray, i);
		curProt = MEM_ReadStatArr(oth.protection, i);
		
		/// fist damage
		if (dmgDesc.weaponMode == 1 && slf.guild <= GIL_SEPERATOR_HUM)
		{
			curDmg = slf.attribute[ATR_STRENGTH] / 2;
		}
		/// spell damage
		else if ((spellId > 0 && !dmgDesc.itemWeapon) /*&& (i == DAM_INDEX_BARRIER || i == DAM_INDEX_FIRE || i == DAM_INDEX_FLY || i == DAM_INDEX_MAGIC)*/)
		{
			/*
			/// MYS
			if	(spellID == SPL_MysBall)
			{
				curDmg = SPL_Damage_MysBall + (SPL_AllDamage_MysBall*SPL_Percent_MysBall/100) + (SPL_Scaling_MysBall*slf.attribute[ATR_POWER]/100);
				SPL_AllDamage_MysBall = 0;
			};
			*/
			
			if (curDmg < 100)
			{
				curDmg = curDmg * spellLvl + slf.attribute[ATR_POWER]/2;
			}
			else
			{
				curDmg = curDmg * spellLvl + slf.attribute[ATR_POWER];
			};
		}
		/// weapon damage
		else if (dmgDesc.itemWeapon && (dmgDesc.weaponMode == 2 || dmgDesc.weaponMode == 4))
		{
			var C_Item wpn; wpn = Npc_GetReadiedWeapon(slf);
			
			/// check if critical
			var int critType; critType = 0;
			var int critChance; critChance = r_Max(100);
			
			if ((wpn.flags & ITEM_AXE || wpn.flags & ITEM_DAG || wpn.flags & ITEM_SWD) && critChance <= slf.hitchance[NPC_TALENT_1H])
			|| ((wpn.flags & ITEM_2HD_AXE || wpn.flags & ITEM_2HD_SWD) && critChance <= slf.hitchance[NPC_TALENT_2H])
			|| ((wpn.flags & ITEM_BOW) && critChance <= slf.hitchance[NPC_TALENT_BOW])
			|| ((wpn.flags & ITEM_CROSSBOW) && critChance <= slf.hitchance[NPC_TALENT_CROSSBOW])
			{
				critType = wpn.mainflag;
			};
			
			/// get weapon damage
			var int atrDmg;
			/*
			if		(wpn.cond_atr[0] == ATR_HITPOINTS_MAX)	{ atrDmg = wpn.damageTotal + slf.attribute[Atr_HITPOINTS_MAX]/HP_PER_LP/2;	}
			else if	(wpn.cond_atr[0] == ATR_MANA_MAX)		{ atrDmg = wpn.damageTotal + slf.attribute[ATR_MANA_MAX]/MP_PER_LP/2;		}
			else if	(wpn.cond_atr[0] == ATR_STRENGTH)		{ atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH]/2;					}
			else if	(wpn.cond_atr[0] == ATR_DEXTERITY)		{ atrDmg = wpn.damageTotal + slf.attribute[ATR_DEXTERITY]/2;				}
			else if	(wpn.cond_atr[0] == ATR_POWER)			{ atrDmg = wpn.damageTotal + slf.attribute[ATR_POWER]/2;					}
			else if	(wpn.cond_atr[0] == default)			{ atrDmg = wpn.damageTotal;													}
			else											{ atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH]/2;					};
			*/
			if	(wpn.cond_atr[0] == default)	{ atrDmg = wpn.damageTotal;									}
			else								{ atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH];	};
			
			/// multiple types of damage multiplier
			if (wpn.damageTotal > 0)
			{
				curDmg = (atrDmg + MEM_ReadStatArr(slf.damage, i)) * MEM_ReadStatArr(wpn.damage, i) / wpn.damageTotal;
			};
		};
		
		/// substract protection from damage (ORIGINAL)
		/*
		curDmg = (curDmg - curProt);
		if (curDmg > 0)
		{
			dmg += curDmg;
		};
		*/
		/// substract protection from damage (MOD)
		curDmg = (curDmg - curProt + curDmg - (curDmg * curProt / (curProt + 100))) / 2;
		if (curDmg > 0)
		{
			dmg += curDmg;
		};
	};
	end;
	
	/// if we did not achieve a "critical hit", reduce damage accordingly (ORIGINAL)
	/*
	if (!dmg_IsHit)
	{
		dmg = dmg * NPC_MINIMAL_PERCENT/100;
	};
	*/
	/// if hit is critical (MOD)
	if (critType > 0)
	{
		if (critType == ITEM_KAT_FF)
		{
			dmg = dmg * (1+DAM_CRITICAL_MULTIPLIER) / 2;
		}
		else
		{
			dmg *= DAM_CRITICAL_MULTIPLIER;
		};
	};
	/// stamina divider
	if (Npc_IsPlayer(slf) && !(spellId > 0 && !dmgDesc.itemWeapon) && slf.aivar[AIV_Stamina] < 10)
	{
		dmg = dmg * DAM_NOSTAMINA_PERCENT/100;
	};
	
	/// additional player effects
	if (Npc_IsPlayer(oth))
	{
		if (dmg > 0)
		{
			/// poison
			if (slf.aivar[AIV_MM_Real_ID] == ID_BITER)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_BLOODFLY)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_MUMMY)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_SWAMPDRONE)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_SWAMPSHARK)
			{
				MOD_SetPoison(bsPoison + (slf.level-1)/10 + 1);
			};
		};
	};
	
	/// we check if we actually got any damage done & apply min-damage *only* if not spell attack
	if (dmg < NPC_MINIMAL_DAMAGE)
	{
		if (!dmgDesc.hitPfx && !dmgDesc.visualFX)
		|| ((dmgDesc.dmgMode & DAM_FIRE) > 0)
		{
			dmg = NPC_MINIMAL_DAMAGE;
		}
		else if (dmg < 0)
		{
			dmg = 0;
		};
	};
	
	/// difficulty multiplier
	if (Npc_IsPlayer(slf))
	{
		dmg = DIFF_Multiplier(dmg, DECREASE);
	}
	else if (Npc_IsPlayer(oth))
	{
		dmg = DIFF_Multiplier(dmg, INCREASE);
	};
	
	/// NPC vs NPC
	if ((!Npc_IsPlayer(slf) && !Npc_IsPlayer(oth)) || oth.flags == NPC_FLAG_IMPORTANT)
	{
		dmg = dmg * NPC_MINIMAL_PERCENT/100;
		if (dmg < 1) { dmg = 1; };
	};
	
	/// LS, DR, AD
	if (slf.aivar[AIV_LifeSteal] > 0)
	{
		Npc_ChangeAttribute (slf, ATR_HITPOINTS, slf.aivar[AIV_LifeSteal]);
	};
	if (oth.aivar[AIV_DmgReflection] > 0)
	{
		B_MagicHurtNpc (oth, slf, oth.aivar[AIV_DmgReflection]);
	};
	if (slf.aivar[AIV_AreaDmg] > 0)
	{
		B_MagicHurtNpcArea_Damage = dmg*slf.aivar[AIV_AreaDmg]/100;
		B_MagicHurtNpcArea_Victim = Hlp_GetNpc(oth);
		MOD_Broadcast (slf, B_MagicHurtNpcArea);
	};
	B_WeaponSpecialDamage (slf, oth);
	B_WeaponSpecialEffect (slf, oth);
	
	/// SPL_MysBall
	SPL_AllDamage_MysBall += dmg;
	if (Npc_GetDistToNpc(oth, hero) < 1500)	{	inFightCounter = 25;	};
	
	/// display text
	if		(Npc_IsPlayer(slf))		{ PrintS_Ext (ConcatStrings(NAME_Damage, IntToString(dmg)), COL_DamageGiven); }
	else if	(Npc_IsPlayer(oth))		{ PrintS_Ext (ConcatStrings(NAME_Damage, IntToString(dmg)), COL_DamageTaken); };
	
	return dmg;
};

///******************************************************************************************
///	MOD_Damage
///  OnDmg
///******************************************************************************************
func int DMG_OnDmg (var int victimPtr, var int attackerPtr, var int dmg, var int dmgDescriptorPtr, var int dmg_IsHit)
{
	var oSDamageDescriptor dmgDesc; dmgDesc = MEM_PtrToInst(dmgDescriptorPtr);
	
	if (dmgDescriptor.attackerNpc == 0 || victimPtr == 0)
	{
		return dmg;
	};
	
	var int dmgIsPFX; dmgIsPFX = false;
	var C_Npc victimNpc; victimNpc = MEM_PtrToInst(victimPtr);
	var int spellId; spellId = dmgDesc.spellID;
	var int spellLvl; spellLvl = dmgDesc.spellLevel;
	var oCVisualFX visFx;
	
	if (!attackerptr)
	{
        attackerptr = dmgDesc.attackerNpc;
    };
	
	if (dmgDesc.hitPfx && spellId <= 0)
	{
		visFx = MEM_PtrToInst(dmgDesc.hitPfx);
		
		if (!attackerptr)
		{
			attackerptr = visFx.inflictor;
		};
		
		dmgIsPFX = true;
	};
	
	if (attackerptr)
	{
		var C_Npc attackerNpc; attackerNpc = MEM_PtrToInst(attackerptr);
		
		if (!dmgIsPFX)
		{
			dmg = DMG_Calculate(dmgDesc, dmg_IsHit, attackerNpc, victimNpc, spellId, spellLvl);
		};
    };
	
	return dmg;
};

///******************************************************************************************
func void _DMG_OnDmg()
{
	var int dmgDesc; dmgDesc = MEM_ReadInt((ESP + 640) + 4);
	var int dmg_IsHit; dmg_IsHit = MEM_ReadInt((ESP + 640) - 356);
    
    EDI = DMG_OnDmg(EBP, MEM_ReadInt(dmgDesc+8), EDI, +dmgDesc, +dmg_IsHit);
};

///******************************************************************************************
func void MOD_Damage()
{
	//const int dmg = 0;
	//if (dmg) { return; };
	HookEngineF(6736583, 5, _DMG_OnDmg);
	//dmg = 1;
};
