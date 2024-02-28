///******************************************************************************************
///	SPL_GeoAura
///******************************************************************************************

const int SPL_Cost_GeoAura				=	50;
const int SPL_Prot_GeoAura				=	10;
const int SPL_Scaling_GeoAura			=	10;
const int SPL_Time_GeoAura				=	60;

///******************************************************************************************
instance Spell_GeoAura (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_GeoAura (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_GeoAura/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoAura)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_GeoAura()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoAura/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoAura;
	};
	
	if (Npc_IsPlayer(self))
	{
		B_SetMagicAura (MAGIC_GEO, SPL_Prot_GeoAura + self.attribute[ATR_POWER]*SPL_Scaling_GeoAura/100, SPL_Time_GeoAura);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
