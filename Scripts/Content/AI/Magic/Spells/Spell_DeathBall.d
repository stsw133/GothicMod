///******************************************************************************************
///	SPL_DeathBall
///******************************************************************************************

const int SPL_Cost_DeathBall			=	40;
const int SPL_Damage_DeathBall			=	200;

///******************************************************************************************
instance Spell_Deathball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Deathball; 
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DeathBall (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Damage_DeathBall/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Damage_DeathBall)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_DeathBall()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Damage_DeathBall/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Damage_DeathBall;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
