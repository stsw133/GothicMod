///******************************************************************************************
///	SPL_Pyrokinesis
///******************************************************************************************

const int SPL_Cost_Pyrokinesis			=	50;	//4*50
const int SPL_Damage_Pyrokinesis 		=	50;	//4*75
const int SPL_Scaling_Pyrokinesis		=	180/4;

///******************************************************************************************
instance Spell_Pyrokinesis (C_Spell_Proto)
{
	time_per_mana						=	30;
	damage_per_level					=	SPL_Damage_Pyrokinesis;
	damageType							=	DAM_MAGIC;
	canTurnDuringInvest					=	true;
};

func int Spell_Logic_Pyrokinesis (var int manaInvested) 
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] < SPL_Cost_Pyrokinesis/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] < SPL_Cost_Pyrokinesis)
	{
		return SPL_DONTINVEST;
	};
	
	var int newSpellLevel; newSpellLevel = 0;
	
	if ((Npc_GetActiveSpellIsScroll(self) && manaInvested <= SPL_Cost_Pyrokinesis*1/SPL_Cost_Scroll) || (manaInvested <= SPL_Cost_Pyrokinesis*1))
	{
		self.aivar[AIV_SpellLevel] = 1;
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_Pyrokinesis*1/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_Pyrokinesis*1))
	&& (self.aivar[AIV_SpellLevel] <= 1)
	{
		newSpellLevel = 2;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_Pyrokinesis*2/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_Pyrokinesis*2))
	&& (self.aivar[AIV_SpellLevel] <= 2)
	{
		newSpellLevel = 3;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_Pyrokinesis*3/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_Pyrokinesis*3))
	&& (self.aivar[AIV_SpellLevel] <= 3)
	{
		newSpellLevel = 4;
	}
	else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > SPL_Cost_Pyrokinesis*3/SPL_Cost_Scroll) || (manaInvested > SPL_Cost_Pyrokinesis*3))
	&& (self.aivar[AIV_SpellLevel] == 4)
	{
		return SPL_DONTINVEST;
	};
	
	if (newSpellLevel > 1)
	{
		if (Npc_GetActiveSpellIsScroll(self))
		{
			self.attribute[ATR_MANA] -= SPL_Cost_Pyrokinesis/SPL_Cost_Scroll;
		}
		else
		{
			self.attribute[ATR_MANA] -= SPL_Cost_Pyrokinesis;
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

func void Spell_Cast_Pyrokinesis (var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Pyrokinesis/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Pyrokinesis;
	};
	
//	if (self.attribute[ATR_MANA] < 0)
//	{
//		self.attribute[ATR_MANA] = 0;
//	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
