///******************************************************************************************
///	SPL_NecProtection
///******************************************************************************************

const int SPL_Cost_NecProtection		=	40;
const int SPL_Time_NecProtection		=	120;
const int SPL_Prot_NecProtection		=	5;

var int SPL_TimeLeft_NecProtection;
var int SPL_AmountToProt_NecProtection;

///******************************************************************************************
instance Spell_NecProtection (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_NecProtection (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_NecProtection/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecProtection)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecProtection()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecProtection/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecProtection;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_BARRIER] -= SPL_AmountToProt_NecProtection;
		self.protection[PROT_FIRE] -= SPL_AmountToProt_NecProtection;
		self.protection[PROT_MAGIC] -= SPL_AmountToProt_NecProtection;
		SPL_AmountToProt_NecProtection = SPL_Prot_NecProtection + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_NecProtection/100);
		self.protection[PROT_BARRIER] += SPL_AmountToProt_NecProtection;
		self.protection[PROT_FIRE] += SPL_AmountToProt_NecProtection;
		self.protection[PROT_MAGIC] += SPL_AmountToProt_NecProtection;
		
		if (SPL_TimeLeft_NecProtection == 0)
		{
			Wld_PlayEffect ("SPELLFX_NecProtection_GLOW", self, self, 0, 0, 0, false);
		};
		SPL_TimeLeft_NecProtection = SPL_Time_NecProtection;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_NecProtection()
{
	if (SPL_TimeLeft_NecProtection > 0)
	{
		SPL_TimeLeft_NecProtection -= 1;
		if (SPL_TimeLeft_NecProtection == 0)
		{
			Wld_StopEffect("spellFX_NecProtection_GLOW");
			self.protection[PROT_BARRIER] -= SPL_AmountToProt_NecProtection;
			self.protection[PROT_FIRE] -= SPL_AmountToProt_NecProtection;
			self.protection[PROT_MAGIC] -= SPL_AmountToProt_NecProtection;
			SPL_AmountToProt_NecProtection = 0;
		};
	};
};
