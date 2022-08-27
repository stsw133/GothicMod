///******************************************************************************************
///	SPL_ChargeZap
///******************************************************************************************

const int SPL_Cost_ChargeZap			=	10; //4*10
const int SPL_Damage_ChargeZap 			=	10;	//4*30
const int SPL_Scaling_ChargeZap			=	150;

///******************************************************************************************
instance Spell_ChargeZap (C_Spell_Proto)
{
	time_per_mana						=	100;
//	damage_per_level					=	SPL_Damage_ChargeZap;
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
	
	if (Npc_GetActiveSpellIsScroll(self) && manaInvested <= SPL_Cost_ChargeZap*1/SPL_Cost_Scroll)
	|| (manaInvested <= SPL_Cost_ChargeZap*1)
	{
		self.aivar[AIV_SpellLevel] = 1;
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	}
	else if (self.aivar[AIV_SpellLevel] <= 1)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*1/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_ChargeZap*1))
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_ChargeZap/SPL_Cost_Scroll);
		}
		else
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_ChargeZap);
		};
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 2;
		return SPL_NEXTLEVEL;
	}
	else if (self.aivar[AIV_SpellLevel] <= 2)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*2/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_ChargeZap*2))
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_ChargeZap/SPL_Cost_Scroll);
		}
		else
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_ChargeZap);
		};
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 3;
		return SPL_NEXTLEVEL;
	}
	else if (self.aivar[AIV_SpellLevel] <= 3)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*3/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_ChargeZap*3))
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_ChargeZap/SPL_Cost_Scroll);
		}
		else
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_ChargeZap);
		};
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 4;
		return SPL_NEXTLEVEL;
	}
	else if (self.aivar[AIV_SpellLevel] == 4)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_ChargeZap*3/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_ChargeZap*3))
	{
		return SPL_DONTINVEST;
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
	
	if (self.attribute[ATR_MANA] < 0)
	{
		self.attribute[ATR_MANA] = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
