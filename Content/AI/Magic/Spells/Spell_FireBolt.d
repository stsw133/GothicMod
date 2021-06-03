///******************************************************************************************
///	SPL_FireBolt
///******************************************************************************************

const int SPL_Cost_FireBolt				=	5;
const int SPL_Damage_FireBolt			=	25;

///******************************************************************************************
instance Spell_FireBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_FireBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_FireBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_FireBolt/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_FireBolt)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_FireBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_FireBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_FireBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
