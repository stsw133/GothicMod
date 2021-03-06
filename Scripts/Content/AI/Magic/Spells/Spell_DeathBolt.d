//******************************************************************************************
//	SPL_DeathBolt
//******************************************************************************************

const int SPL_Cost_DeathBolt			=	40;
const int SPL_Damage_DeathBolt			=	200;

//******************************************************************************************
instance Spell_DeathBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_DeathBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DeathBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_DeathBolt/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_DeathBolt)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_DeathBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DeathBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_DeathBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
