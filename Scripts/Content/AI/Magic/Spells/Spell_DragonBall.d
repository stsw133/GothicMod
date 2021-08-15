///******************************************************************************************
///	SPL_DragonBall
///******************************************************************************************

const int SPL_Cost_DragonBall			=	80;
const int SPL_Damage_DragonBall			=	240;

///******************************************************************************************
instance Spell_DragonBall (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_DragonBall; 
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DragonBall (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Damage_DragonBall/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Damage_DragonBall)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_DragonBalll()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Damage_DragonBall/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Damage_DragonBall;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
///	SPL_BlackDragonBall
///******************************************************************************************

const int SPL_Cost_BlackDragonBall		=	100;
const int SPL_Damage_BlackDragonBall	=	300;

///******************************************************************************************
instance Spell_BlackDragonBall (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_BlackDragonBall; 
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_BlackDragonBall (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Damage_BlackDragonBall/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Damage_BlackDragonBall)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_BlackDragonBalll()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Damage_BlackDragonBall/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Damage_BlackDragonBall;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
/*
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
	};
	return SPL_SENDSTOP;
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
*/