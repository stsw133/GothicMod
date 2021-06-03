///******************************************************************************************
///	SPL_PalHolyBolt
///******************************************************************************************

const int SPL_Cost_PalHolyBolt			=	20;	//10
const int SPL_Damage_PalHolyBolt		=	200;	//100

///******************************************************************************************
instance Spell_PalHolyBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_PalHolyBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_PalHolyBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalHolyBolt/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalHolyBolt)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalHolyBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalHolyBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalHolyBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
