///******************************************************************************************
///	MOD_Damage
///  Calculate
///******************************************************************************************
func int DMG_Calculate (var oSDamageDescriptor dmgDesc, var int dmg_IsHit, var C_Npc slf, var C_Npc oth, var int spellId, var int spellLvl)
{
	var int dmg; dmg = 0;
	var int curDmg; curDmg = 0;
	var int curProt; curProt = 0;
	var C_Item wpn; wpn = Npc_GetReadiedWeapon(slf);
	
	/// shield absorption
	var int dmgPh; dmgPh = 0;
	var int dmgMg; dmgMg = 0;
	var int dmgShielded; dmgShielded = 0;
	
	/// check if critical
	var int critType; critType = 0;
	var int critChance; critChance = Hlp_Random(100);
	
	if (dmgDesc.itemWeapon)
	{
		if ((wpn.flags & ITEM_AXE || wpn.flags & ITEM_DAG || wpn.flags & ITEM_SWD) && critChance < slf.hitchance[NPC_TALENT_1H])
		|| ((wpn.flags & ITEM_2HD_AXE || wpn.flags & ITEM_2HD_SWD) && critChance < slf.hitchance[NPC_TALENT_2H])
		|| ((wpn.flags & ITEM_BOW) && critChance < slf.hitchance[NPC_TALENT_BOW])
		|| ((wpn.flags & ITEM_CROSSBOW) && critChance < slf.hitchance[NPC_TALENT_CROSSBOW])
		{
			critType = wpn.mainflag;
		};
	};
	
	/// we add all the damage types to a sum of damage
	var int i;
	repeat(i, DAM_INDEX_MAX);
	if ((dmgDesc.dmgMode & (1 << i)) == (1 << i))
	{
		curDmg = MEM_ReadStatArr(dmgDesc.dmgArray, i);
		curProt = MEM_ReadStatArr(oth.protection, i);
		
		/// fist damage
		if (dmgDesc.weaponMode == 1 && slf.guild < GIL_SEPERATOR_HUM)
		{
			curDmg = slf.attribute[ATR_STRENGTH] / 2;
		}
		/// spell damage
		else if ((spellId > 0 && !dmgDesc.itemWeapon))
		{
			if (curDmg >= 100)
			{
				curDmg = curDmg * spellLvl + slf.attribute[ATR_POWER];
			}
			else if (curDmg > 0)
			{
				curDmg = curDmg * spellLvl + slf.attribute[ATR_POWER]/2;
			};
		}
		/// weapon damage
		else if (dmgDesc.itemWeapon && (dmgDesc.weaponMode == 2 || dmgDesc.weaponMode == 4))
		{
			var int atrDmg;
			
			if		(wpn.cond_atr[0] == default)			{	atrDmg = wpn.damageTotal;																					}
			else if	(wpn.cond_atr[0] == ATR_HITPOINTS_MAX)	{	atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_HITPOINTS_MAX]/2/HP_PER_LP;	}
			else if	(wpn.cond_atr[0] == ATR_MANA_MAX)		{	atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_MANA_MAX]/2/MP_PER_LP;			}
			else if	(wpn.cond_atr[0] == ATR_STRENGTH)		{	atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH];														}
			else if	(wpn.cond_atr[0] == ATR_DEXTERITY)		{	atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_DEXTERITY]/2;					}
			else if	(wpn.cond_atr[0] == ATR_POWER)			{	atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_POWER]/2;						}
			else											{	atrDmg = wpn.damageTotal + slf.attribute[ATR_STRENGTH];														};
			
			/// if more than one type of damage
			if (wpn.damageTotal > 0)
			{
				curDmg = (atrDmg + MEM_ReadStatArr(slf.damage, i)) * MEM_ReadStatArr(wpn.damage, i) / wpn.damageTotal;
			};
		};
		
		/// substract protection from damage (MOD)
		curDmg = (curDmg - curProt + curDmg - (curDmg * curProt / (curProt + 100))) / 2;
		if (curDmg > 0)
		{
			dmg += curDmg;
			
			if (spellId > 0 && !dmgDesc.itemWeapon)	{ dmgMg += curDmg; }
			else									{ dmgPh += curDmg; };
		};
	};
	end;
	
	/// if hit is critical (MOD)
	if (critType > 0)
	{
		if (critType == ITEM_KAT_FF)
		{
			dmg = dmg * (100+(DAM_CRITICAL_MULTIPLIER*100)) / 200 + dmg * slf.aivar[AIV_CritDamage] / 100;
		}
		else //if (critType == ITEM_KAT_NF)
		{
			dmg = dmg * (DAM_CRITICAL_MULTIPLIER*100 + slf.aivar[AIV_CritDamage]) / 100;
		};
	};
	
	/// stamina divider
	if (Npc_IsPlayer(slf) && !(spellId > 0 && !dmgDesc.itemWeapon) && slf.aivar[AIV_Stamina] < 10)
	{
		dmg = dmg * DAM_NOSTAMINA_PERCENT/100;
	};
	
	/// additional effects against player
	if (Npc_IsPlayer(oth))
	{
		/// shield
		if (mShieldMgPoints > 0 && dmgMg > 0)
		{
			if (dmgMg > mShieldMgPoints)
			{
				dmgShielded += mShieldMgPoints;
				dmg -= mShieldMgPoints;
				mShieldMgPoints = 0;
			}
			else
			{
				dmgShielded += dmg;
				mShieldMgPoints -= dmg;
				dmg = 0;
			};
		};
		if (mShieldPhPoints > 0 && dmgPh > 0)
		{
			if (dmgPh > mShieldPhPoints)
			{
				dmgShielded += mShieldPhPoints;
				dmg -= mShieldPhPoints;
				mShieldPhPoints = 0;
			}
			else
			{
				dmgShielded += dmg;
				mShieldPhPoints -= dmg;
				dmg = 0;
			};
		};
		if (dmgShielded > 0)
		{
			PrintS_Ext (ConcatStrings(NAME_DamageShielded, IntToString(dmgShielded)), COL_DamageShielded);
		};
		
		/// poison
		if (dmg > 0)
		{
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
	
	/// damage increase (PAL spell & artifacts) & damage reduction (armor sets & artifacts)
	if (Npc_IsPlayer(slf) && mDamageIncrease > 0)
	{
		dmg += dmg*mDamageIncrease/100;
	}
	else if (Npc_IsPlayer(oth) && mDamageReduction > 0)
	{
		dmg -= dmg*mDamageReduction/100;
	};
	
	/// we check if we actually got any damage done & apply min-damage *only* if not spell attack
	if (dmg < NPC_MINIMAL_DAMAGE + slf.aivar[AIV_MinDamage])
	{
		if (!dmgDesc.hitPfx && !dmgDesc.visualFX)
		|| ((dmgDesc.dmgMode & DAM_FIRE) > 0)
		{
			dmg = NPC_MINIMAL_DAMAGE + slf.aivar[AIV_MinDamage];
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
	}
	/// NPC vs NPC
	else if (oth.flags & NPC_FLAG_IMPORTANT)
	{
		dmg /= 10;
		if (dmg < 1) { dmg = 1; };
	};
	
	/// LS, DR, AD, ...
	if (slf.aivar[AIV_LifeSteal] > 0)
	{
		Npc_ChangeAttribute (slf, ATR_HITPOINTS, slf.aivar[AIV_LifeSteal]);
	};
	if (oth.aivar[AIV_DmgReflection] > 0)
	{
		B_MagicHurtNpc (oth, slf, oth.aivar[AIV_DmgReflection]);
	};
	if (slf.aivar[AIV_AreaDamage] > 0)
	{
		B_MagicHurtNpcArea_Damage = dmg*slf.aivar[AIV_AreaDamage]/100;
		B_MagicHurtNpcArea_Victim = Hlp_GetNpc(oth);
		MOD_Broadcast (slf, B_MagicHurtNpcArea);
	};
	B_WeaponSpecialDamage (slf, oth, dmg);
	B_WeaponSpecialEffect (slf, oth);
	
	/// display text
	if (dmg > 0)
	{
		if		(Npc_IsPlayer(oth))		{ PrintS_Ext (ConcatStrings(NAME_Damage, IntToString(dmg)), COL_DamageTaken); }
		else if	(Npc_IsPlayer(slf))		{ PrintS_Ext (ConcatStrings(NAME_Damage, IntToString(dmg)), COL_DamageGiven); };
	};
	
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
	HookEngineF(6736583, 5, _DMG_OnDmg);
};
