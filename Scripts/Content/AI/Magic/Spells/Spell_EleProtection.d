///******************************************************************************************
///	SPL_EleProtection
///******************************************************************************************

const int SPL_Cost_EleProtection		=	40;
const int SPL_Time_EleProtection		=	120;
const int SPL_Prot_EleProtection		=	5;

var int SPL_TimeLeft_EleProtection;
var int SPL_AmountToProt_EleProtection;

///******************************************************************************************
instance Spell_EleProtection (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_EleProtection (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_EleProtection/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleProtection)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleProtection()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleProtection/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleProtection;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_MAGIC] -= SPL_AmountToProt_EleProtection;
		self.protection[PROT_POINT] -= SPL_AmountToProt_EleProtection;
		self.protection[PROT_FALL] -= SPL_AmountToProt_EleProtection;
		SPL_AmountToProt_EleProtection = SPL_Prot_EleProtection + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_EleProtection/100);
		self.protection[PROT_MAGIC] += SPL_AmountToProt_EleProtection;
		self.protection[PROT_POINT] += SPL_AmountToProt_EleProtection;
		self.protection[PROT_FALL] += SPL_AmountToProt_EleProtection;
		
		if (SPL_TimeLeft_EleProtection == 0)
		{
			Wld_PlayEffect ("SPELLFX_EleProtection_GLOW", self, self, 0, 0, 0, false);
		};
		SPL_TimeLeft_EleProtection = SPL_Time_EleProtection;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_EleProtection()
{
	if (SPL_TimeLeft_EleProtection > 0)
	{
		SPL_TimeLeft_EleProtection -= 1;
		if (SPL_TimeLeft_EleProtection == 0)
		{
			Wld_StopEffect("spellFX_EleProtection_GLOW");
			self.protection[PROT_MAGIC] -= SPL_AmountToProt_EleProtection;
			self.protection[PROT_POINT] -= SPL_AmountToProt_EleProtection;
			self.protection[PROT_FALL] -= SPL_AmountToProt_EleProtection;
			SPL_AmountToProt_EleProtection = 0;
		};
	};
};
