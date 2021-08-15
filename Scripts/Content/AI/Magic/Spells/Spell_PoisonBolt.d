///******************************************************************************************
///	SPL_PoisonBolt
///******************************************************************************************

const int SPL_Cost_PoisonBolt			=	5;
const int SPL_Damage_PoisonBolt			=	10;

///******************************************************************************************
instance Spell_PoisonBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_PoisonBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PoisonBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PoisonBolt/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PoisonBolt)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_PoisonBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PoisonBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PoisonBolt;
	};
	
	if (Npc_IsPlayer(other))
	{
		MOD_PoisonON(other);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
