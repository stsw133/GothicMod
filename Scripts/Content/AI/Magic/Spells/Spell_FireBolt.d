///******************************************************************************************
///	SPL_FireBolt
///******************************************************************************************

const int SPL_Cost_FireBolt				=	5;	//5
const int SPL_Damage_FireBolt			=	5;	//25
const int SPL_Scaling_FireBolt			=	90;

///******************************************************************************************
instance Spell_FireBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_FireBolt;
	damageType							=	DAM_MAGIC;
};

func int Spell_Logic_FireBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_FireBolt/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_FireBolt)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
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
/*
///******************************************************************************************
///	SPL_MysBolt
///******************************************************************************************

const int SPL_Cost_MysBolt				=	25;
const int SPL_Damage_MysBolt			=	25;

const int SPL_TimingCast_MysBolt		=	2000;
const int SPL_Timing_MysBolt			=	800;

var int SPL_Combo_MysBolt;

///******************************************************************************************
instance Spell_MysBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_MysBolt;
	damageType							=	DAM_MAGIC;
};

func void FF_MysBolt()
{
	spellFxAniLetters[SPL_MysBolt] = "RPF";
	SPL_Combo_MysBolt = 0;
};

func int Spell_Logic_MysBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MysBolt/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysBolt)
	{
		if (FF_Active(FF_MysBolt))
		{
            FF_Remove(FF_MysBolt);
        };
		
		if (SPL_Combo_MysBolt == 0)
		{
            spellFxAniLetters[SPL_MysBolt] = "RP2";
            SPL_Combo_MysBolt = 1;
            FF_ApplyExt(FF_MysBolt, SPL_TimingCast_MysBolt, 1);
        }
		else if (SPL_Combo_MysBolt == 1)
		{
            spellFxAniLetters[SPL_MysBolt] = "RP3";
            SPL_Combo_MysBolt = 2;
            FF_ApplyExt(FF_MysBolt, SPL_Timing_MysBolt, 1);
        }
		else
		{
            spellFxAniLetters[SPL_MysBolt] = "RP2";
            SPL_Combo_MysBolt = 1;
            FF_ApplyExt(FF_MysBolt, SPL_Timing_MysBolt, 1);
        };
		
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysBolt()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysBolt/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysBolt;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
*/