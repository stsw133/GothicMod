///******************************************************************************************
/// MOD_Damage
///     Calculate helpers
///******************************************************************************************

/// get type prot
func int MOD_DamageGetProtectionForType (var C_Npc slf, var C_Npc oth, var int dmgIndex)
{
	var int curProt; curProt = MEM_ReadStatArr(oth.protection, dmgIndex) - slf.aivar[AIV_Penetration];
	if (curProt < 0)
	{
		curProt = 0;
	};
	
	return curProt;
};

/// calculate base fist dmg
func int MOD_DamageCalculateFistDamage (var C_Npc slf)
{
	return slf.attribute[ATR_STRENGTH] / 2;
};

/// calculate base spell dmg
func int MOD_DamageCalculateSpellDamage (var int curDmg, var C_Npc slf, var int spellLvl)
{
	if		(curDmg >= 50)	{	curDmg = curDmg*spellLvl + slf.attribute[ATR_POWER];	}
	else if	(curDmg > 0)	{	curDmg = curDmg*spellLvl + slf.attribute[ATR_POWER]/2;	};
	
	return curDmg;
};

/// calculate base weapon dmg
func int MOD_DamageGetWeaponAttributeDamage (var C_Item usedWpn, var C_Npc slf)
{
	var int atrDmg;
	
	if		(usedWpn.cond_atr[0] == ATR_HITPOINTS_MAX)	{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP/2;	}
	else if	(usedWpn.cond_atr[0] == ATR_MANA_MAX)		{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_MANA_MAX]/MP_PER_LP/2;		}
	else if	(usedWpn.cond_atr[0] == ATR_STRENGTH)		{	atrDmg = slf.attribute[ATR_STRENGTH];													}
	else if	(usedWpn.cond_atr[0] == ATR_DEXTERITY)		{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_DEXTERITY]/2;				}
	else if	(usedWpn.cond_atr[0] == ATR_POWER)			{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_POWER]/2;					};
	
	return atrDmg;
};

/// if hit is critical (MOD)
func int MOD_DamageApplyCritical (var int atrDmg, var C_Item usedWpn, var C_Npc slf)
{
	var int critChance; critChance = Hlp_Random(100);
	
	if ((usedWpn.flags & ITEM_AXE || usedWpn.flags & ITEM_SWD) && critChance < slf.hitchance[NPC_TALENT_1H])
	|| ((usedWpn.flags & ITEM_2HD_AXE || usedWpn.flags & ITEM_2HD_SWD) && critChance < slf.hitchance[NPC_TALENT_2H])
	|| ((usedWpn.flags & ITEM_BOW) && critChance < slf.hitchance[NPC_TALENT_BOW])
	|| ((usedWpn.flags & ITEM_CROSSBOW) && critChance < slf.hitchance[NPC_TALENT_CROSSBOW])
	{
		if (ATS[ATS_CritDmg] > 0 && Npc_IsPlayer(slf))
		{
			atrDmg = (atrDmg + usedWpn.damageTotal) * (100+slf.aivar[ATS_CritDmg]) / 100;
		}
		else
		{
			atrDmg = atrDmg + usedWpn.damageTotal;
		};
	}
	else
	{
		atrDmg = (atrDmg + usedWpn.damageTotal) / 2;
	};
	
	return atrDmg;
};

/// munition special damage
func int MOD_DamageApplyMunitionEffects (var oSDamageDescriptor dmgDesc, var int atrDmg, var C_Npc slf, var C_Npc oth, var C_Item itemWpn)
{
	if (dmgDesc.weaponMode == 4)
	{
		atrDmg += B_MunitionSpecialDamage(slf, oth, itemWpn, atrDmg);
	};
	
	return atrDmg;
};

/// calculate weapon dmg
func int MOD_DamageCalculateWeaponDamage (var oSDamageDescriptor dmgDesc, var int dmgIndex, var C_Npc slf, var C_Npc oth, var C_Item usedWpn, var C_Item itemWpn)
{
	if (!(dmgDesc.itemWeapon && (dmgDesc.weaponMode == 2 || dmgDesc.weaponMode == 4)))
	{
		return 0;
	};
	
	var int atrDmg; atrDmg = MOD_DamageGetWeaponAttributeDamage(usedWpn, slf);
	atrDmg = MOD_DamageApplyCritical(atrDmg, usedWpn, slf);
	atrDmg = MOD_DamageApplyMunitionEffects(dmgDesc, atrDmg, slf, oth, itemWpn);
	
	if (usedWpn.damageTotal > 0)
	{
		return (atrDmg + MEM_ReadStatArr(slf.damage, dmgIndex)) * MEM_ReadStatArr(usedWpn.damage, dmgIndex) / usedWpn.damageTotal;
	};
	
	return 0;
};

/// substract protection from damage (MOD)
func int MOD_DamageApplyProtection (var int curDmg, var int curProt)
{
	return (curDmg - curProt + curDmg - (curDmg * curProt / (curProt + 100))) / 2;
};

/// calculate custom damage percent
func int MOD_CalculateDamagePercent (var int type, var int curDmg)
{
	if (dLevel != DIFF_C)
	{
		return DIFF_Multiplier(curDmg, type);
	};
	
	var int percent;
	if		(type == DECREASE)	{	percent = (customDamageGivenPercent + 1) * 20;	}
	else if	(type == INCREASE)	{	percent = (customDamageTakenPercent + 1) * 20;	};
	
	if (percent <= 0)
	{
		percent = 100;
	};
	
	return curDmg * percent / 100;
};

///******************************************************************************************
/// MOD_Damage
///     Calculate total damage
///******************************************************************************************
func int MOD_DamageCalculateTotal (var oSDamageDescriptor dmgDesc, var int dmg_IsHit, var C_Npc slf, var C_Npc oth, var int spellId, var int spellLvl)
{
	var int finalDmg; finalDmg = 0;
	var int curDmg; curDmg = 0;
	var int curProt; curProt = 0;
	var int dmgShielded; dmgShielded = 0;
	var int dontKill; if (dmgDesc.weaponMode == 4) { dontKill = C_DropUnconsciousBase(slf, oth); } else { dontKill = false; };
	var C_Item itemWpn; if (dmgDesc.itemWeapon > 0) { itemWpn = MEM_PtrToInst(dmgDesc.itemWeapon); } else { itemWpn = MEM_NullToInst(); };
	var C_Item usedWpn; usedWpn = Npc_GetReadiedWeapon(slf);
	
	/// we add all the damage types to a sum of damage
	var int i; i = 0;
	repeat(i, DAM_INDEX_MAX);
	if ((dmgDesc.dmgMode & (1 << i)) == (1 << i))
	{
		curDmg = MEM_ReadStatArr(dmgDesc.dmgArray, i);
		curProt = MOD_DamageGetProtectionForType(slf, oth, i);
		
		/// fist damage
		if (dmgDesc.weaponMode == 1 && slf.guild < GIL_SEPERATOR_HUM)
		{
			curDmg = MOD_DamageCalculateFistDamage(slf);
		}
		/// spell damage
		else if (!dmgDesc.itemWeapon && spellId > 0)
		{
			curDmg = MOD_DamageCalculateSpellDamage(curDmg, slf, spellLvl);
		}
		/// weapon damage
		else if (dmgDesc.itemWeapon && (dmgDesc.weaponMode == 2 || dmgDesc.weaponMode == 4))
		{
			curDmg = MOD_DamageCalculateWeaponDamage(dmgDesc, i, slf, oth, usedWpn, itemWpn);
		};
		
		/// substract protection from damage (MOD)
		curDmg = MOD_DamageApplyProtection(curDmg, curProt);
		if (curDmg > 0)
		{
			finalDmg += curDmg;
		};
	};
	end;
	
	/// additional effects for player
	if (Npc_IsPlayer(slf))
	{
		/// ASD, CD, ...
		if (ATS[ATS_AfterSpellDmg] > 0)
		{
			if (!dmgDesc.itemWeapon && spellId > 0)
			{
				ATS[ATS_AfterSpellHit] = Hlp_GetInstanceID(oth);
			}
			else if (dmgDesc.itemWeapon && ATS[ATS_AfterSpellHit] == Hlp_GetInstanceID(oth))
			{
				finalDmg += ATS[ATS_AfterSpellDmg];
			};
		};
		
		if (ATS[ATS_ComboDmg] > 0)
		{
			finalDmg += ATS[ATS_ComboDmg]*ATS[ATS_InFightHits];
		};
		
		if (ATS[ATS_OverloadDmg] > 0 && ATS[ATS_OverloadTime] >= 5)
		{
			finalDmg += ATS[ATS_OverloadDmg]*slf.attribute[ATR_HITPOINTS_MAX]/100;
			ATS[ATS_OverloadTime] = 0;
		};
		
		/// stamina divider
		if (slf.aivar[AIV_Stamina] < 10)
		{
			if (itemWpn.mainflag == ITEM_KAT_NF || usedWpn.flags & ITEM_BOW)
			{
				finalDmg = finalDmg * DAM_NOSTAMINA_PERCENT/100;
			};
		};
	}
	/// additional effects against player
	else if (Npc_IsPlayer(oth))
	{
		/// magic shield
		if (ATS[ATS_ShieldPoints] > 0 && finalDmg > 0)
		{
			if (finalDmg > ATS[ATS_ShieldPoints])
			{
				dmgShielded = ATS[ATS_ShieldPoints];
				finalDmg -= ATS[ATS_ShieldPoints];
				ATS[ATS_ShieldPoints] = 0;
			}
			else
			{
				dmgShielded = finalDmg;
				ATS[ATS_ShieldPoints] -= finalDmg;
				finalDmg = 0;
			};
		};
		
		/// poison
		if (finalDmg > 0)
		{
			if (slf.aivar[AIV_MM_Real_ID] == ID_BITER)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_BLOODFLY)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_MUMMY)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_SWAMPDRONE)
			|| (slf.aivar[AIV_MM_Real_ID] == ID_SWAMPSHARK)
			{
				MOD_SetPoison(ATS[ATS_PoisonPoints] + (slf.level-1)/10 + 1);
			};
		};
	}
	/// additional effects when NPC vs NPC
	else
	{
		/// orc amulets
		if (ATS[ATS_OrcAmuletType])
		{
			if (slf.guild > GIL_SEPERATOR_ORC && slf.aivar[AIV_PartyMember])
			{
				if (ATS[ATS_OrcAmuletType] == 2 && dmgDesc.itemWeapon && dmgDesc.weaponMode == 2)
				{
					finalDmg += 25;
				}
				else if (ATS[ATS_OrcAmuletType] == 3 && dmgDesc.itemWeapon && dmgDesc.weaponMode == 4)
				{
					finalDmg += 30;
				}
				else if (ATS[ATS_OrcAmuletType] == 4 && !dmgDesc.itemWeapon && spellId > 0)
				{
					finalDmg += 30;
				};
			}
			else if (oth.guild > GIL_SEPERATOR_ORC && oth.aivar[AIV_PartyMember])
			{
				if (ATS[ATS_OrcAmuletType] == 1)
				{
					finalDmg -= 20;
				};
			};
		};
	};
	
	/// damage increase (artifacts & PAL spell) + damage reduction (artifacts & armor sets)
	if		(Npc_IsPlayer(slf) && ATS[ATS_DmgDealtIncr] > 0)	{ finalDmg += finalDmg*ATS[ATS_DmgDealtIncr]/100; }
	else if	(Npc_IsPlayer(oth) && ATS[ATS_DmgTakenDecr] > 0)	{ finalDmg -= finalDmg*ATS[ATS_DmgTakenDecr]/100; };
	
	/// check if we actually got any damage done & apply min-damage *only* if not spell attack
	if (finalDmg < NPC_MINIMAL_DAMAGE + slf.aivar[AIV_MinDamage])
	{
		if (!dmgDesc.hitPfx && !dmgDesc.visualFX)
		|| ((dmgDesc.dmgMode & DAM_FIRE) > 0)
		{
			finalDmg = NPC_MINIMAL_DAMAGE + slf.aivar[AIV_MinDamage];
		}
		else if (finalDmg < 0)
		{
			finalDmg = 0;
		};
	};
	
	/// PLAYER vs NPC
	if (Npc_IsPlayer(slf))
	{
		finalDmg = MOD_CalculateDamagePercent(DECREASE, finalDmg);	/// difficulty multiplier
		ATS[ATS_InFightTime] = 5;	/// for sprint block
		ATS[ATS_InFightHits] += 1;
		
		/// counter dmg
		if (ATS[ATS_CounterDmg] > 0 && ATS[ATS_CounterHit])
		{
			B_MagicHurtNpc (slf, oth, ATS[ATS_CounterDmg]);
			ATS[ATS_CounterHit] = false;
		};
	}
	/// NPC vs PLAYER
	else if (Npc_IsPlayer(oth))
	{
		finalDmg = MOD_CalculateDamagePercent(INCREASE, finalDmg);	/// difficulty multiplier
		ATS[ATS_InFightTime] = 5;	/// for sprint block
		ATS[ATS_CounterHit] = false;
	}
	/// NPC vs NPC
	else if ((dLevel != DIFF_C || customNpcDamageReductionEnabled) && !movieMode)
	{
		finalDmg /= 5;
		if (finalDmg < 1) { finalDmg = 1; };
	};
	
	/// special weapon damage
	B_WeaponSpecialDamage (slf, oth, usedWpn, finalDmg);
	B_WeaponSpecialEffect (slf, oth, usedWpn);
	
	/// AE, AD, BD, LS, Redirect, Reflect, ...
	if (ATS[ATS_AllyEnhancement] > 0 && slf.aivar[AIV_PartyMember])
	&& (hero.attribute[ATR_MANA] >= ATS[ATS_AllyEnhancement]/4)
	{
		Npc_ChangeAttribute(hero, ATR_MANA, -ATS[ATS_AllyEnhancement]/4);
		finalDmg += ATS[ATS_AllyEnhancement];
	};
	
	if (slf.aivar[AIV_AreaDamage] > 0)
	{
		B_MagicHurtNpcArea_Damage = finalDmg * slf.aivar[AIV_AreaDamage] / 100;
		B_MagicHurtNpcArea_Victim = Hlp_GetNpc(oth);
		MOD_Broadcast (slf, B_MagicHurtNpcArea);
	};
	
	if (ATS[ATS_GoldDmg] > 0 && (ATS[ATS_InFightHits] % 3) == 0)
	&& (Npc_IsPlayer(slf) && Npc_HasItems(slf, ItMi_Gold) >= ATS[ATS_GoldDmg]/5)
	{
		B_MagicHurtNpc (slf, oth, ATS[ATS_GoldDmg]);
		Npc_RemoveInvItems(slf, ItMi_Gold, ATS[ATS_GoldDmg]/5);
	};
	
	if (ATS[ATS_BackstabDmg] > 0 && !Npc_CanSeeNpc(oth, slf))
	&& (Npc_IsPlayer(slf) && !Npc_IsInState(oth, ZS_Attack) && !Npc_IsInState(oth, ZS_MM_Attack))
	{
		B_MagicHurtNpc (slf, oth, ATS[ATS_BackstabDmg]*oth.attribute[ATR_HITPOINTS_MAX]/100);
	};
	
	if (slf.aivar[AIV_LifeSteal] > 0)
	{
		Npc_ChangeAttribute (slf, ATR_HITPOINTS, slf.aivar[AIV_LifeSteal]);
	};
	
	if (ATS[ATS_RedirectDmg] > 0)
	&& (oth.aivar[AIV_PartyMember] && !Npc_IsPlayer(slf))
	{
		var int redirectedDmg; redirectedDmg = finalDmg*ATS[ATS_RedirectDmg]/100;
		finalDmg -= redirectedDmg;
		B_MagicHurtNpc (slf, hero, redirectedDmg);
	};
	
	if (oth.aivar[AIV_Reflection] > 0)
	{
		B_MagicHurtNpc (oth, slf, oth.aivar[AIV_Reflection]);
	};
	
	/// for new exp system
	var int appliedDmg; appliedDmg = finalDmg;
	if (appliedDmg > oth.attribute[ATR_HITPOINTS])
	{
		appliedDmg = oth.attribute[ATR_HITPOINTS];
	};
	if (Npc_IsPlayer(slf) || slf.aivar[AIV_PartyMember])
	{
		oth.aivar[AIV_DamageDealtByPlayer] += appliedDmg;
	}
	else
	{
		oth.aivar[AIV_DamageDealtByPlayer] -= appliedDmg;
	};
	
	/// display damage
	if (dmgShielded > 0)				{ PrintS_Ext(ConcatStrings(NAME_DamageShielded, IntToString(dmgShielded)), COL_DamageShielded); };
	if (finalDmg > 0)
	{
		if		(Npc_IsPlayer(oth))		{ PrintS_Ext(ConcatStrings(NAME_Damage, IntToString(finalDmg)), COL_DamageTaken); }
		else if	(Npc_IsPlayer(slf))		{ PrintS_Ext(ConcatStrings(NAME_Damage, IntToString(finalDmg)), COL_DamageGiven); };
	};
	
	/// don't kill
	if (dontKill || (oth.flags & NPC_FLAG_IMPORTANT))
	{
		if (oth.attribute[ATR_HITPOINTS] <= 1)
		{
			finalDmg = 0;
		}
		else if ((oth.attribute[ATR_HITPOINTS] - finalDmg) <= 0)
		{
			finalDmg = oth.attribute[ATR_HITPOINTS] - 1;
		};
	};
	
	return finalDmg;
};

///******************************************************************************************
/// MOD_Damage
///     CheckDmg
///******************************************************************************************
func int MOD_CheckDmg (var int victimPtr, var int attackerPtr, var int dmg, var int dmgDescriptorPtr, var int dmg_IsHit)
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
			dmg = MOD_DamageCalculateTotal(dmgDesc, dmg_IsHit, attackerNpc, victimNpc, spellId, spellLvl);
		};
	};
	
	return dmg;
};

///******************************************************************************************
func void MOD_OnDmg()
{
	var int dmgDesc; dmgDesc = MEM_ReadInt((ESP + 640) + 4);
	var int dmg_IsHit; dmg_IsHit = MEM_ReadInt((ESP + 640) - 356);
	
	EDI = MOD_CheckDmg(EBP, MEM_ReadInt(dmgDesc+8), EDI, +dmgDesc, +dmg_IsHit);
};

///******************************************************************************************
/// MOD_Damage
///     Disable damage animation
///******************************************************************************************
/*
func void MOD_DisableDmgAnimation()
{
	var C_Npc slf; slf = _^ (ECX);
	
	var oSDamageDescriptor dmgDescriptor;
	dmgDescriptor = _^ (MEM_ReadInt (ESP + 4));
	
	//Enable by default (seems like oCNpc__Interrupt is called right after oCNpc__OnDamage_Anim)
	NPC_Interrupt_SetEnabled(true);
	
	//If damage was inflicted by Barrier (no attackerNpc) player was not thrown away
	if (!dmgDescriptor.attackerNpc)
	{
		return;
	};
	
	if (C_NPC_IsPlayer(slf))
	{
		//If player is not in fight mode, we can apply animations and interruption
		if (!NPC_IsInFightMode(slf, FMODE_FIST))
		&& (!NPC_IsInFightMode(slf, FMODE_MELEE))
		&& (!NPC_IsInFightMode(slf, FMODE_FAR))
		&& (!NPC_IsInFightMode(slf, FMODE_MAGIC))
		{
			return;
		};
		
		//We need to find out damageType
		var int damageType; damageType = 0;
	
		var C_Npc oth;
		oth = _^(dmgDescriptor.attackerNpc);
		
		//Spell
		if (dmgDescriptor.spellID != 0)
		&& (dmgDescriptor.spellID != -1)
		{
			//Seems like damageType = dmgDescriptor.spellLevel
			damageType = dmgDescriptor.spellLevel;
		};
	
		var C_Item weapon;
		
		//Weapon
		if (dmgDescriptor.itemWeapon != 0)
		{
			weapon = _^ (dmgDescriptor.itemWeapon);
			
			//Ranged weapon has spellID == -1
			//In case of ranged weapon dmgDescriptor.itemWeapon returns amunition
			//So we have to check either Readied weapon or Equipped weapon (fingers crossed NPC didn't switch these that fast)
			if (dmgDescriptor.spellID == -1)
			{
				if (NPC_IsInFightMode(oth, FMODE_FAR))
				{
					weapon = NPC_GetReadiedWeapon(oth);
				}
				else if (NPC_HasEquippedRangedWeapon(oth))
				{
					weapon = NPC_GetEquippedRangedWeapon(oth);
				};
			};
			
			//Get weapon damageType
			damageType = weapon.damageType;
		}
		else
		{
			//Fist mode - get NPC damageType
			damageType = oth.damageType;
		};
		
		//If damage was inflicted by Troll (DAM_FLY) player was not thrown away - so don't do anything here
		if (damageType & DAM_FLY)
		{
			return;
		};
		
		if (damageType != 0)
		{
			//EAX = 0 will disable animation T_STUMBLE / T_STUMBLEB / T_GOTHIT / (maybe more animations ?)
			EAX = 0;
			
			//Disable interruption for player
			NPC_Interrupt_SetEnabled(false);
		};
	};
};
*/
///******************************************************************************************
/// MOD_Damage
///******************************************************************************************
func void MOD_Damage()
{
	HookEngineF(6736583, 5, MOD_OnDmg);
	//HookEngineF(6774593, 9, MOD_DisableDmgAnimation);	/// it causes really annoying bugs with looped animations when dead
};
