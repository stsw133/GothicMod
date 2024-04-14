///******************************************************************************************
/// NpcSpells
///******************************************************************************************

const int SPL_Cost_ConcussionSpell		=	60;
const int SPL_Damage_ConcussionSpell	=	300;

const int SPL_Cost_DeathSpell			=	60;
const int SPL_Damage_DeathSpell			=	300;

const int SPL_Cost_Dragonball			=	80;
const int SPL_Damage_Dragonball			=	400;

const int SPL_Cost_BlackDragonball		=	100;
const int SPL_Damage_BlackDragonball	=	500;

const int SPL_Cost_ColorFireball		=	50;
const int SPL_Damage_ColorFireball		=	250;

///******************************************************************************************
instance Spell_ConcussionSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_ConcussionSpell;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_ConcussionSpell (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_ConcussionSpell, manaInvested);
};

func void Spell_Cast_ConcussionSpell()
{
	B_SpellCast (self, default, SPL_Cost_ConcussionSpell);
};

///******************************************************************************************
instance Spell_DeathSpell (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_DeathSpell;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_DeathSpell (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_DeathSpell, manaInvested);
};

func void Spell_Cast_DeathSpell()
{
	B_SpellCast (self, default, SPL_Cost_DeathSpell);
};

///******************************************************************************************
instance Spell_Dragonball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Dragonball; 
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Dragonball (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Dragonball, manaInvested);
};

func void Spell_Cast_Dragonball()
{
	B_SpellCast (self, default, SPL_Cost_DragonBall);
};

///******************************************************************************************
instance Spell_BlackDragonball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_BlackDragonball; 
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_BlackDragonball (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_BlackDragonball, manaInvested);
};

func void Spell_Cast_BlackDragonball()
{
	B_SpellCast (self, default, SPL_Cost_BlackDragonball);
};

///******************************************************************************************
instance Spell_BlueFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_ColorFireball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_BlueFireball (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_ColorFireball, manaInvested);
};

func void Spell_Cast_BlueFireball()
{
	B_SpellCast (self, default, SPL_Cost_ColorFireball);
};

///******************************************************************************************
instance Spell_RedFireball (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level 					=	SPL_Damage_ColorFireball;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_RedFireball (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_ColorFireball, manaInvested);
};

func void Spell_Cast_RedFireball()
{
	B_SpellCast (self, default, SPL_Cost_ColorFireball);
};
