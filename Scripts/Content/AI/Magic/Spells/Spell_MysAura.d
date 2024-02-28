///******************************************************************************************
///	SPL_MysAura
///******************************************************************************************

const int SPL_Cost_MysAura				=	50;
const int SPL_Time_MysAura				=	60;
const int SPL_Heal_MysAura				=	5;
const int SPL_Prot_MysAura				=	5;

var int SPL_TimeLeft_MysAura;
var int SPL_AmountToHeal_MysAura;
var int SPL_AmountToProt_MysAura;

///******************************************************************************************
instance Spell_MysAura (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_MysAura (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_MysAura/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysAura)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysAura()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysAura/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysAura;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_FIRE] -= SPL_AmountToProt_MysAura;
		SPL_AmountToProt_MysAura = SPL_Prot_MysAura + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_MysAura/100);
		self.flags = NPC_FLAG_IMMORTAL;
		self.protection[PROT_FIRE] += SPL_AmountToProt_MysAura;
		
		if (SPL_TimeLeft_MysAura == 0)
		{
			Wld_PlayEffect ("SPELLFX_MysAura_GLOW", self, self, 0, 0, 0, false);
			B_SetVisibilityPercent(o_hero, 25);
		};
		SPL_TimeLeft_MysAura = SPL_Time_MysAura;
		SPL_AmountToHeal_MysAura = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_MysAura()
{
	if (SPL_TimeLeft_MysAura > 0)
	{
		SPL_AmountToHeal_MysAura += (SPL_Heal_MysAura * 100) + self.damage[DAM_INDEX_MAGIC];
		Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_AmountToHeal_MysAura/100);
		SPL_AmountToHeal_MysAura -= SPL_AmountToHeal_MysAura/100*100;
		
		SPL_TimeLeft_MysAura -= 1;
		if (SPL_TimeLeft_MysAura == 0)
		{
			Wld_StopEffect("SPELLFX_MysAura_GLOW");
			B_SetVisibilityPercent(o_hero, 100);
			
			self.protection[PROT_FIRE] -= SPL_AmountToProt_MysAura;
			SPL_AmountToProt_MysAura = 0;
		};
	};
};
