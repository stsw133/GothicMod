///******************************************************************************************
/// SPL_Firebolt
///******************************************************************************************

const int SPL_Cost_Firebolt				=	10;
const int SPL_Damage_Firebolt			=	50;

///******************************************************************************************
instance Spell_Firebolt (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Firebolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_Firebolt (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_Firebolt, manaInvested);
};

func void Spell_Cast_Firebolt()
{
	B_SpellCast (self, default, SPL_Cost_Firebolt);
};
/*
///******************************************************************************************
///	SPL_Firebolt
///******************************************************************************************

const int SPL_Cost_Firebolt				=	10;
const int SPL_Damage_Firebolt			=	50;

const int SPL_TimingCast_Firebolt		=	2000;
const int SPL_Timing_Firebolt			=	800;

var int SPL_Combo_Firebolt;

///******************************************************************************************
instance Spell_Firebolt (C_Spell_Proto)
{
	damage_per_level					=	SPL_Damage_Firebolt;
	damageType							=	DAM_MAGIC;
};

func void FF_Firebolt()
{
	spellFxAniLetters[SPL_Firebolt] = "RPF";
	SPL_Combo_Firebolt = 0;
};

func int Spell_Logic_Firebolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Firebolt/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Firebolt)
	{
		if (FF_Active(FF_Firebolt))
		{
            FF_Remove(FF_Firebolt);
        };
		
		if (SPL_Combo_Firebolt == 0)
		{
            spellFxAniLetters[SPL_Firebolt] = "RP2";
            SPL_Combo_Firebolt = 1;
            FF_ApplyExt(FF_Firebolt, SPL_TimingCast_Firebolt, 1);
        }
		else if (SPL_Combo_Firebolt == 1)
		{
            spellFxAniLetters[SPL_Firebolt] = "RP3";
            SPL_Combo_Firebolt = 2;
            FF_ApplyExt(FF_Firebolt, SPL_Timing_Firebolt, 1);
        }
		else
		{
            spellFxAniLetters[SPL_Firebolt] = "RP2";
            SPL_Combo_Firebolt = 1;
            FF_ApplyExt(FF_Firebolt, SPL_Timing_Firebolt, 1);
        };
		
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Firebolt()
{
	B_SpellCast (self, default, SPL_Cost_Firebolt);
};
*/