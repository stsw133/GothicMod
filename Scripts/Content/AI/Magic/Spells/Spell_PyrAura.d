///******************************************************************************************
///	SPL_PyrAura
///******************************************************************************************

const int SPL_Cost_PyrAura				=	50;
const int SPL_Time_PyrAura				=	60;
const int SPL_Prot_PyrAura				=	5;

var int SPL_TimeLeft_PyrAura;
var int SPL_AmountToProt_PyrAura;

///******************************************************************************************
instance Spell_PyrAura (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_PyrAura (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_PyrAura/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PyrAura)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_PyrAura()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrAura/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PyrAura;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_FIRE] -= SPL_AmountToProt_PyrAura;
		SPL_AmountToProt_PyrAura = SPL_Prot_PyrAura + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_PyrAura/100);
		self.protection[PROT_FIRE] += SPL_AmountToProt_PyrAura;
		
		if (SPL_TimeLeft_PyrAura == 0)
		{
			Wld_PlayEffect ("SPELLFX_PyrAura_GLOW", self, self, 0, 0, 0, false);
		};
		SPL_TimeLeft_PyrAura = SPL_Time_PyrAura;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_PyrAura()
{
	if (SPL_TimeLeft_PyrAura > 0)
	{
		SPL_TimeLeft_PyrAura -= 1;
		if (SPL_TimeLeft_PyrAura == 0)
		{
			Wld_StopEffect("spellFX_PyrAura_GLOW");
			self.protection[PROT_FIRE] -= SPL_AmountToProt_PyrAura;
			SPL_AmountToProt_PyrAura = 0;
		};
	};
};
