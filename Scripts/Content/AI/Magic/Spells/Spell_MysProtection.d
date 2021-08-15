///******************************************************************************************
///	SPL_MysProtection
///******************************************************************************************

const int SPL_Cost_MysProtection		=	40;
const int SPL_Time_MysProtection		=	30;
const int SPL_Heal_MysProtection		=	5;
const int SPL_Prot_MysProtection		=	5;

var int SPL_TimeLeft_MysProtection;
var int SPL_AmountToHeal_MysProtection;
var int SPL_AmountToProt_MysProtection;

///******************************************************************************************
instance Spell_MysProtection (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_MysProtection (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysProtection/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysProtection)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_MysProtection()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysProtection/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysProtection;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_FIRE] -= SPL_AmountToProt_MysProtection;
		SPL_AmountToProt_MysProtection = SPL_Prot_MysProtection + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_MysProtection/100);
		self.flags = NPC_FLAG_IMMORTAL;
		self.protection[PROT_FIRE] += SPL_AmountToProt_MysProtection;
		
		if (SPL_TimeLeft_MysProtection == 0)
		{
			Wld_PlayEffect ("SPELLFX_MysProtection_GLOW", self, self, 0, 0, 0, false);
			B_SetVisibilityPercent(o_hero, 25);
		};
		SPL_TimeLeft_MysProtection = SPL_Time_MysProtection;
		SPL_AmountToHeal_MysProtection = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_MysProtection()
{
	if (SPL_TimeLeft_MysProtection > 0)
	{
		SPL_AmountToHeal_MysProtection += (SPL_Heal_MysProtection * 100) + self.damage[DAM_INDEX_MAGIC];
		Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_AmountToHeal_MysProtection/100);
		SPL_AmountToHeal_MysProtection -= SPL_AmountToHeal_MysProtection/100*100;
		
		SPL_TimeLeft_MysProtection -= 1;
		if (SPL_TimeLeft_MysProtection == 0)
		{
			Wld_StopEffect("SPELLFX_MysProtection_GLOW");
			B_SetVisibilityPercent(o_hero, 100);
			
			self.protection[PROT_FIRE] -= SPL_AmountToProt_MysProtection;
			SPL_AmountToProt_MysProtection = 0;
		};
	};
};
