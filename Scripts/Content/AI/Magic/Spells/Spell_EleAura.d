///******************************************************************************************
///	SPL_EleAura
///******************************************************************************************

const int SPL_Cost_EleAura				=	50;
const int SPL_Time_EleAura				=	60;
const int SPL_Prot_EleAura				=	5;

var int SPL_TimeLeft_EleAura;
var int SPL_AmountToProt_EleAura;

///******************************************************************************************
instance Spell_EleAura (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_EleAura (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_EleAura/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_EleAura)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_EleAura()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleAura/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_EleAura;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_MAGIC] -= SPL_AmountToProt_EleAura;
		self.protection[PROT_POINT] -= SPL_AmountToProt_EleAura;
		self.protection[PROT_FALL] -= SPL_AmountToProt_EleAura;
		SPL_AmountToProt_EleAura = SPL_Prot_EleAura + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_EleAura/100);
		self.protection[PROT_MAGIC] += SPL_AmountToProt_EleAura;
		self.protection[PROT_POINT] += SPL_AmountToProt_EleAura;
		self.protection[PROT_FALL] += SPL_AmountToProt_EleAura;
		
		if (SPL_TimeLeft_EleAura == 0)
		{
			Wld_PlayEffect ("SPELLFX_EleAura_GLOW", self, self, 0, 0, 0, false);
		};
		SPL_TimeLeft_EleAura = SPL_Time_EleAura;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_EleAura()
{
	if (SPL_TimeLeft_EleAura > 0)
	{
		SPL_TimeLeft_EleAura -= 1;
		if (SPL_TimeLeft_EleAura == 0)
		{
			Wld_StopEffect("spellFX_EleAura_GLOW");
			self.protection[PROT_MAGIC] -= SPL_AmountToProt_EleAura;
			self.protection[PROT_POINT] -= SPL_AmountToProt_EleAura;
			self.protection[PROT_FALL] -= SPL_AmountToProt_EleAura;
			SPL_AmountToProt_EleAura = 0;
		};
	};
};
