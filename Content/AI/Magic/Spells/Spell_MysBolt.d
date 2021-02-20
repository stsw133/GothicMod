///******************************************************************************************
///	SPL_MysBolt
///******************************************************************************************

const int SPL_Cost_MysBolt				=	20;
const int SPL_Damage_MysBolt			=	90;
const int SPL_Heal_MysBolt				=	30;
/*
const int SPL_TimingCast_MysBolt		=	2000;
const int SPL_Timing_MysBolt			=	800;

var int SPL_Combo_MysBolt;
*/
///******************************************************************************************
INSTANCE Spell_MysBolt (C_Spell_Proto)
{
	time_per_mana						=	0;
//	spelltype 							=	SPELL_NEUTRAL;
	damage_per_level					=	SPL_Damage_MysBolt;
	damageType							=	DAM_MAGIC;
//	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};
/*
func void FF_MysBolt()
{
	spellFxAniLetters[SPL_MysBolt] = "RPF";
	SPL_Combo_MysBolt = 0;
};
*/
func int Spell_Logic_MysBolt (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysBolt/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysBolt)
	{
		/*
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
		*/
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MysBolt()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysBolt/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysBolt/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MysBolt)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysBolt;
	};
	self.aivar[AIV_SelectSpell] += 1;
};
