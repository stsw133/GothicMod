///******************************************************************************************
///	SPL_ChargeZap
///******************************************************************************************

const int SPL_Cost_ChargeZap			=	30; //4*10
const int SPL_Damage_ChargeZap 			=	30;	//4*30
const int SPL_Scaling_ChargeZap			=	140;

///******************************************************************************************
instance Spell_ChargeZap (C_Spell_Proto)
{
	time_per_mana						=	100;
	damage_per_level					=	SPL_Damage_ChargeZap;
	damageType							=	DAM_MAGIC;
	canTurnDuringInvest					=	true;
};

func int Spell_Logic_ChargeZap (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] < SPL_Cost_ChargeZap/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] < SPL_Cost_ChargeZap)
	{
		return SPL_DONTINVEST;
	};
	
	var int newSpellLevel; newSpellLevel = 0;
	
	if ((Npc_GetActiveSpellIsScroll(self) && manaInvested <= SPL_Cost_ChargeZap*1/SPL_Cost_Scroll) || (manaInvested <= SPL_Cost_ChargeZap*1))
	{
		self.aivar[AIV_SpellLevel] = 1;
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*1/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_ChargeZap*1))
	&& (self.aivar[AIV_SpellLevel] <= 1)
	{
		newSpellLevel = 2;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*2/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_ChargeZap*2))
	&& (self.aivar[AIV_SpellLevel] <= 2)
	{
		newSpellLevel = 3;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*3/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_ChargeZap*3))
	&& (self.aivar[AIV_SpellLevel] <= 3)
	{
		newSpellLevel = 4;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*3/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_ChargeZap*3))
	&& (self.aivar[AIV_SpellLevel] == 4)
	{
		return SPL_DONTINVEST;
	};
	
	if (newSpellLevel > 1)
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] -= SPL_Cost_ChargeZap/SPL_Cost_Scroll;
		}
		else
		{
			self.attribute[ATR_MANA] -= SPL_Cost_ChargeZap;
		};
		
//		if (self.attribute[ATR_MANA] < 0)
//		{
//	   		self.attribute[ATR_MANA] = 0;
//		};
		
		self.aivar[AIV_SpellLevel] = newSpellLevel;
		return SPL_NEXTLEVEL;
	};
	
	return SPL_STATUS_CANINVEST_NO_MANADEC;
};

func void Spell_Cast_ChargeZap (var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ChargeZap/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ChargeZap;
	};
	
//	if (self.attribute[ATR_MANA] < 0)
//	{
//		self.attribute[ATR_MANA] = 0;
//	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
