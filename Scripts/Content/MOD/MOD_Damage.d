///******************************************************************************************
/// MOD_Damage
///     Calculate
///******************************************************************************************
func int MOD_DamageCalculateTotal (var oSDamageDescriptor dmgDesc, var int dmg_IsHit, var C_Npc slf, var C_Npc oth, var int spellId, var int spellLvl)
{
	var int finalDmg; finalDmg = 0;
	var int dontKill; dontKill = false;
	
	var int curDmg; curDmg = 0;
	var int curProt; curProt = 0;
	var C_Item itemWpn; if (dmgDesc.itemWeapon > 0) { itemWpn = MEM_PtrToInst(dmgDesc.itemWeapon); } else { itemWpn = MEM_NullToInst(); };
	var C_Item usedWpn; usedWpn = Npc_GetReadiedWeapon(slf);
	
	/// we add all the damage types to a sum of damage
	var int i; i = 0;
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
			if (curDmg >= 100)		{	curDmg = curDmg * spellLvl + slf.attribute[ATR_POWER];		}
			else if (curDmg > 0)	{	curDmg = curDmg * spellLvl + slf.attribute[ATR_POWER]/2;	};
		}
		/// weapon damage
		else if (dmgDesc.itemWeapon && (dmgDesc.weaponMode == 2 || dmgDesc.weaponMode == 4))
		{
			var int atrDmg;
			
			if		(usedWpn.cond_atr[0] == ATR_HITPOINTS_MAX)	{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_HITPOINTS_MAX]/2/HP_PER_LP;	}
			else if	(usedWpn.cond_atr[0] == ATR_MANA_MAX)		{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_MANA_MAX]/2/MP_PER_LP;		}
			else if	(usedWpn.cond_atr[0] == ATR_STRENGTH)		{	atrDmg = slf.attribute[ATR_STRENGTH];													}
			else if	(usedWpn.cond_atr[0] == ATR_DEXTERITY)		{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_DEXTERITY]/2;				}
			else if	(usedWpn.cond_atr[0] == ATR_POWER)			{	atrDmg = slf.attribute[ATR_STRENGTH]/2 + slf.attribute[ATR_POWER]/2;					};
			
			/// if hit is critical (MOD)
			var int critChance; critChance = Hlp_Random(100);
			
			if ((usedWpn.flags & ITEM_AXE || usedWpn.flags & ITEM_SWD) && critChance < slf.hitchance[NPC_TALENT_1H])
			|| ((usedWpn.flags & ITEM_2HD_AXE || usedWpn.flags & ITEM_2HD_SWD) && critChance < slf.hitchance[NPC_TALENT_2H])
			|| ((usedWpn.flags & ITEM_BOW) && critChance < slf.hitchance[NPC_TALENT_BOW])
			|| ((usedWpn.flags & ITEM_CROSSBOW) && critChance < slf.hitchance[NPC_TALENT_CROSSBOW])
			{
				atrDmg = (atrDmg + usedWpn.damageTotal) * (100+slf.aivar[AIV_CritDamage]) / 100;
			}
			else
			{
				atrDmg = (atrDmg + usedWpn.damageTotal) * 3/4;
			};
			
			/// munition special damage
			if (dmgDesc.weaponMode == 4)
			{
				dontKill = C_DropUnconsciousBase(slf, oth);
				atrDmg += B_MunitionSpecialDamage(slf, oth, itemWpn);
			};
			
			/// calculate damage + divide if more than one type of damage
			if (usedWpn.damageTotal > 0)
			{
				curDmg = (atrDmg + MEM_ReadStatArr(slf.damage, i)) * MEM_ReadStatArr(usedWpn.damage, i) / usedWpn.damageTotal;
			};
		};
		
		/// substract protection from damage (MOD)
		curDmg = (curDmg - curProt + curDmg - (curDmg * curProt / (curProt + 100))) / 2;
		if (curDmg > 0)
		{
			finalDmg += curDmg;
		};
	};
	end;
	
	/// stamina divider
	if (Npc_IsPlayer(slf) && slf.aivar[AIV_Stamina] < 10)
	{
		if (itemWpn.mainflag == ITEM_KAT_NF || usedWpn.flags & ITEM_BOW)
		{
			finalDmg = finalDmg * DAM_NOSTAMINA_PERCENT/100;
		};
	};
	
	/// shield absorption
	var int dmgShielded; dmgShielded = 0;
	
	/// additional effects against player
	if (Npc_IsPlayer(oth))
	{
		/// magic shield
		if (mShieldPoints > 0 && finalDmg > 0)
		{
			if (finalDmg > mShieldPoints)
			{
				dmgShielded = mShieldPoints;
				finalDmg -= mShieldPoints;
				mShieldPoints = 0;
			}
			else
			{
				dmgShielded = finalDmg;
				mShieldPoints -= finalDmg;
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
				MOD_SetPoison(bsPoison + (slf.level-1)/10 + 1);
			};
		};
	};
	
	/// damage increase (artifacts & PAL spell) & damage reduction (artifacts & armor sets)
	if (Npc_IsPlayer(slf) && mDamageIncrease > 0)
	{
		finalDmg += finalDmg * mDamageIncrease / 100;
	}
	else if (Npc_IsPlayer(oth) && mDamageReduction > 0)
	{
		finalDmg -= finalDmg * mDamageReduction / 100;
	};
	
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
	
	/// NPC vs PLAYER
	if (Npc_IsPlayer(slf))
	{
		finalDmg = DIFF_Multiplier(finalDmg, DECREASE);	/// difficulty multiplier
		inFightCounter = 5;	/// for sprint block
	}
	else if (Npc_IsPlayer(oth))
	{
		finalDmg = DIFF_Multiplier(finalDmg, INCREASE);	/// difficulty multiplier
		inFightCounter = 5;	/// for sprint block
	}
	/// NPC vs NPC
	else //if (oth.flags & NPC_FLAG_IMPORTANT)
	{
		finalDmg /= 5;
		if (finalDmg < 1) { finalDmg = 1; };
	};
	
	/// special damage, LS, DR, AD, ...
	B_WeaponSpecialDamage (slf, oth, usedWpn, finalDmg);
	B_WeaponSpecialEffect (slf, oth, usedWpn);
	
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
		B_MagicHurtNpcArea_Damage = finalDmg * slf.aivar[AIV_AreaDamage] / 100;
		B_MagicHurtNpcArea_Victim = Hlp_GetNpc(oth);
		MOD_Broadcast (slf, B_MagicHurtNpcArea);
	};
	
	/// for new exp system
	if (Npc_IsPlayer(slf) || slf.aivar[AIV_PartyMember])
	{
		if (finalDmg > oth.attribute[ATR_HITPOINTS])
		{
			oth.aivar[AIV_DamageDealtByPlayer] += oth.attribute[ATR_HITPOINTS];
		}
		else
		{
			oth.aivar[AIV_DamageDealtByPlayer] += finalDmg;
		};
	};
	
	/// display damage
	if (dmgShielded > 0)				{ PrintS_Ext(ConcatStrings(NAME_DamageShielded, IntToString(dmgShielded)), COL_DamageShielded); };
	
	if (finalDmg > 0)
	{
		if		(Npc_IsPlayer(oth))		{ PrintS_Ext(ConcatStrings(NAME_Damage, IntToString(finalDmg)), COL_DamageTaken); }
		else if	(Npc_IsPlayer(slf))		{ PrintS_Ext(ConcatStrings(NAME_Damage, IntToString(finalDmg)), COL_DamageGiven); };
	};
	
	/// don't kill
	if (dontKill && oth.attribute[ATR_HITPOINTS] > 1 && (oth.attribute[ATR_HITPOINTS] - finalDmg) <= 0)
	{
		finalDmg = oth.attribute[ATR_HITPOINTS] - 1;
	};
	
	return finalDmg;
};

///******************************************************************************************
/// MOD_Damage
///     OnDmg
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
func void MOD_DisableDmgAnimation()
{
	EAX = 0;
	
	/*
	var C_NPC slf;
	slf = _^ (ECX);
	
	var oSDamageDescriptor dmgDescriptor;
	dmgDescriptor = _^ (MEM_ReadInt (ESP + 4));
	
	//Enable by default (seems like oCNpc__Interrupt is called right after oCNpc__OnDamage_Anim)
	NPC_Interrupt_SetEnabled (TRUE);
	
	//If damage was inflicted by Barrier (no attackerNpc) player was not thrown away
	if (!dmgDescriptor.attackerNpc) { return; };
	
	if (C_NPC_IsPlayer (slf))
	{
		//If player is not in fight mode, we can apply animations and interruption
		if (!NPC_IsInFightMode (slf, FMODE_FIST))
		&& (!NPC_IsInFightMode (slf, FMODE_MELEE))
		&& (!NPC_IsInFightMode (slf, FMODE_FAR))
		&& (!NPC_IsInFightMode (slf, FMODE_MAGIC)) {
			return;
		};
		
		//We need to find out damageType
		var int damageType; damageType = 0;
	
		var C_NPC oth;
		oth = _^ (dmgDescriptor.attackerNpc);
		
		//Spell
		if (dmgDescriptor.spellID != 0)
		&& (dmgDescriptor.spellID != -1) {
			//Seems like damageType = dmgDescriptor.spellLevel
			damageType = dmgDescriptor.spellLevel;
		};
	
		var C_Item weapon;
		
		//Weapon
		if (dmgDescriptor.itemWeapon != 0) {
			
			weapon = _^ (dmgDescriptor.itemWeapon);
			
			//Ranged weapon has spellID == -1
			//In case of ranged weapon dmgDescriptor.itemWeapon returns amunition
			//So we have to check either Readied weapon or Equipped weapon (fingers crossed NPC didn't switch these that fast)
			if (dmgDescriptor.spellID == -1) {
				if (NPC_IsInFightMode(oth, FMODE_FAR)) {
					weapon = NPC_GetReadiedWeapon (oth);
				} else if (NPC_HasEquippedRangedWeapon (oth)) {
					weapon = NPC_GetEquippedRangedWeapon (oth);
				};
			};
		
			//Get weapon damageType
			damageType = weapon.damageType;
		//Fist mode - get NPC damageType
		} else {
			damageType = oth.damageType;
		};
		
		//If damage was inflicted by Troll (DAM_FLY) player was not thrown away - so don't do anything here
		if (damageType & DAM_FLY) { return; };
		
		if (damageType != 0) {
			//EAX = 0 will disable animation T_STUMBLE / T_STUMBLEB / T_GOTHIT / (maybe more animations ?)
			EAX = 0;
			
			//Disable interruption for player
			NPC_Interrupt_SetEnabled (FALSE);
		};
	};
	*/
};

///******************************************************************************************
/// MOD_Damage
///******************************************************************************************
func void MOD_Damage()
{
	HookEngineF(6736583, 5, MOD_OnDmg);
	//HookEngineF(6774593, 9, MOD_DisableDmgAnimation);	/// it causes really annoying bugs with looped animations when dead
};
