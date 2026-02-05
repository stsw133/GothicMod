///******************************************************************************************

const int SPL_Cost_Scroll			=	5;
const int SPL_Percent_Scroll		=	20;

func int B_SpellScrollManaCost (var int cost)
{
	if (dLevel == DIFF_C && !customScrollManaCostMode)
	{
		return SPL_Cost_Scroll;
	};
	
	return cost * SPL_Percent_Scroll / 100;
};

///******************************************************************************************
/// B_SpellLogic
///******************************************************************************************
func int B_SpellLogic (var C_Npc slf, var int type, var int cost, var int manaInvested)
{
	var int scrollCost; scrollCost = B_SpellScrollManaCost(cost);
	
	/// DEFAULT TYPE
	if (type == default)
	{
		if (Npc_GetActiveSpellIsScroll(slf) && slf.attribute[ATR_MANA] >= scrollCost)
		|| (slf.attribute[ATR_MANA] >= cost)
		{
			return SPL_SENDCAST;
		};
		
		return SPL_SENDSTOP;
	};
	/// INVEST TYPE
	if (type == 1)
	{
		if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] < scrollCost)
		|| (self.attribute[ATR_MANA] < cost)
		{
			return SPL_DONTINVEST;
		};
		
		var int newSpellLevel; newSpellLevel = 0;
		
		if ((Npc_GetActiveSpellIsScroll(self) && manaInvested <= scrollCost*1) || (manaInvested <= cost*1))
		{
			self.aivar[AIV_SpellLevel] = 1;
			return SPL_STATUS_CANINVEST_NO_MANADEC;
		}
		else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > scrollCost*1) || (manaInvested > cost*1))
		&& (self.aivar[AIV_SpellLevel] <= 1)
		{
			newSpellLevel = 2;
		}
		else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > scrollCost*2) || (manaInvested > cost*2))
		&& (self.aivar[AIV_SpellLevel] <= 2)
		{
			newSpellLevel = 3;
		}
		else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > scrollCost*3) || (manaInvested > cost*3))
		&& (self.aivar[AIV_SpellLevel] <= 3)
		{
			newSpellLevel = 4;
		}
		else if ((Npc_GetActiveSpellIsScroll(self) && manaInvested > scrollCost*3) || (manaInvested > cost*3))
		&& (self.aivar[AIV_SpellLevel] == 4)
		{
			return SPL_DONTINVEST;
		};
		
		if (newSpellLevel > 1)
		{
			if (Npc_GetActiveSpellIsScroll(self))
			{
				self.attribute[ATR_MANA] -= scrollCost;
			}
			else
			{
				self.attribute[ATR_MANA] -= cost;
			};
			
			self.aivar[AIV_SpellLevel] = newSpellLevel;
			return SPL_NEXTLEVEL;
		};
		
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	};
	/// INFINITE INVEST TYPE
	if (type == 2)
	{
		if (Npc_IsDead(other) || Npc_IsInState(other, ZS_Unconscious))
		{
			return SPL_SENDSTOP;
		};
		
		if (manaInvested == 0)
		{
			if (Npc_GetActiveSpellIsScroll(slf) && slf.attribute[ATR_MANA] >= scrollCost)
			{
				slf.attribute[ATR_MANA] -= scrollCost;
			}
			else if (slf.attribute[ATR_MANA] >= cost)
			{
				slf.attribute[ATR_MANA] -= cost;
			}
			else
			{
				return SPL_SENDSTOP;
			};
		};
		
		return SPL_NEXTLEVEL;
	};
	/// MIN LEVEL
	if (type == 3)
	{
		if (Npc_GetActiveSpellIsScroll(slf) && slf.attribute[ATR_MANA] >= scrollCost)
		|| (slf.attribute[ATR_MANA] >= cost)
		{
			if ((other.level*5 - 50 - slf.attribute[ATR_POWER]) <= 0)
			|| (!Npc_IsPlayer(slf))
			{
				return SPL_SENDCAST;
			}
			else
			{
				Print(ConcatStrings(IntToString(other.level*5 - 50 - slf.attribute[ATR_POWER]), " mocy zaklêæ za ma³o aby odnieœæ skutek!"));
			};
		};
		
		return SPL_SENDSTOP;
	};
	
	return SPL_SENDSTOP;
};

///******************************************************************************************
/// B_SpellCast
///******************************************************************************************
func void B_SpellCast (var C_Npc slf, var int type, var int cost)
{
	if (Npc_GetActiveSpellIsScroll(slf))
	{
		slf.attribute[ATR_MANA] -= B_SpellScrollManaCost(cost);
	}
	else
	{
		slf.attribute[ATR_MANA] -= cost;
	};
	
	slf.aivar[AIV_SelectSpell] += 1;
};
