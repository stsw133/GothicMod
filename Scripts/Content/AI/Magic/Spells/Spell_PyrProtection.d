///******************************************************************************************
///	SPL_PyrProtection
///******************************************************************************************

const int SPL_Cost_PyrProtection		=	40;
const int SPL_Time_PyrProtection		=	120;
const int SPL_Prot_PyrProtection		=	5;

var int SPL_TimeLeft_PyrProtection;
var int SPL_AmountToProt_PyrProtection;

///******************************************************************************************
instance Spell_PyrProtection (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_PyrProtection (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PyrProtection/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrProtection)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrProtection()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrProtection/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrProtection;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_FIRE] -= SPL_AmountToProt_PyrProtection;
		SPL_AmountToProt_PyrProtection = SPL_Prot_PyrProtection + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_PyrProtection/100);
		self.protection[PROT_FIRE] += SPL_AmountToProt_PyrProtection;
		
		if (SPL_TimeLeft_PyrProtection == 0)
		{
			Wld_PlayEffect ("SPELLFX_PyrProtection_GLOW", self, self, 0, 0, 0, false);
		};
		SPL_TimeLeft_PyrProtection = SPL_Time_PyrProtection;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_PyrProtection()
{
	if (SPL_TimeLeft_PyrProtection > 0)
	{
		SPL_TimeLeft_PyrProtection -= 1;
		if (SPL_TimeLeft_PyrProtection == 0)
		{
			Wld_StopEffect("spellFX_PyrProtection_GLOW");
			self.protection[PROT_FIRE] -= SPL_AmountToProt_PyrProtection;
			SPL_AmountToProt_PyrProtection = 0;
		};
	};
};
