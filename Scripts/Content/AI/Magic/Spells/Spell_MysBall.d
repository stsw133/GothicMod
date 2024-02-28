///******************************************************************************************
///	SPL_MysBall
///******************************************************************************************

const int SPL_Cost_MysBall				=	25;
const int SPL_Damage_MysBall			=	25;
const int SPL_Percent_MysBall			=	10;
const int SPL_Scaling_MysBall			=	100;
var int SPL_AllDamage_MysBall;

///******************************************************************************************
instance Spell_MysBall (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_MysBall;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_MysBall (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MysBall/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysBall)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysBall()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysBall/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysBall;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
