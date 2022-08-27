///******************************************************************************************
///	SPL_WindFist
///******************************************************************************************

const int SPL_Cost_WindFist				=	20; //4*20
const int SPL_Damage_WindFist			=	50;	//4*50

///******************************************************************************************
instance Spell_WindFist (C_Spell_Proto)
{
	time_per_mana						=	30;
	damage_per_level					=	SPL_Damage_WindFist;
	damageType							=	DAM_FLY;
	canTurnDuringInvest					=	true;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectRange					=	1000;
	targetCollectType					=	TARGET_TYPE_NPCS;
};

func int Spell_Logic_WindFist (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] < SPL_Cost_WindFist/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] < SPL_Cost_WindFist)
	{
		return SPL_DONTINVEST;
	};
	
	if (Npc_GetActiveSpellIsScroll(self) && manaInvested <= SPL_Cost_WindFist*1/SPL_Cost_Scroll)
	|| (manaInvested <= SPL_Cost_WindFist*1)
	{
		self.aivar[AIV_SpellLevel] = 1;
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	}
	else if (self.aivar[AIV_SpellLevel] <= 1)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_WindFist*1/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_WindFist*1))
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_WindFist/SPL_Cost_Scroll);
		}
		else
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_WindFist);
		};
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 2;
		return SPL_NEXTLEVEL;
	}
	else if (self.aivar[AIV_SpellLevel] <= 2)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_WindFist*2/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_WindFist*2))
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_WindFist/SPL_Cost_Scroll);
		}
		else
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_WindFist);
		};
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 3;
		return SPL_NEXTLEVEL;
	}
	else if (self.aivar[AIV_SpellLevel] <= 3)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_WindFist*3/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_WindFist*3))
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_WindFist/SPL_Cost_Scroll);
		}
		else
		{
			self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - SPL_Cost_WindFist);
		};
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 4;
		return SPL_NEXTLEVEL;
	}
	else if (self.aivar[AIV_SpellLevel] == 4)
	&& ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_WindFist*3/SPL_Cost_Scroll)
	|| (manaInvested > SPL_Cost_WindFist*3))
	{
		return SPL_DONTINVEST;
	};
	
	return SPL_STATUS_CANINVEST_NO_MANADEC;
};

func void Spell_Cast_WindFist (var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_WindFist/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_WindFist;
	};
	
	if (self.attribute[ATR_MANA] < 0)
	{
		self.attribute[ATR_MANA] = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
