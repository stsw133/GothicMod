///******************************************************************************************
///	SPL_NecAura
///******************************************************************************************

const int SPL_Cost_NecAura				=	50;
const int SPL_Prot_NecAura				=	10;
const int SPL_Scaling_NecAura			=	10;
const int SPL_Time_NecAura				=	60;

///******************************************************************************************
instance Spell_NecAura (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_NecAura (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_NecAura/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NecAura)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NecAura()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecAura/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NecAura;
	};
	
	if (Npc_IsPlayer(self))
	{
		B_SetMagicAura (MAGIC_NEC, SPL_Prot_NecAura + self.attribute[ATR_POWER]*SPL_Scaling_NecAura/100, SPL_Time_NecAura);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
