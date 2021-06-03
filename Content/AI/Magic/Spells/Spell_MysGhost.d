///******************************************************************************************
///	SPL_MysGhost
///******************************************************************************************

const int SPL_Cost_MysGhost				=	40;
const int SPL_Time_MysGhost				=	60;
const int SPL_Heal_MysGhost				=	3;
const int SPL_Prot_MysGhost				=	6;

var int SPL_IsActive_MysGhost;
var int SPL_AmountToHeal_MysGhost;
var int SPL_AmountToProt_MysGhost;

///******************************************************************************************
instance Spell_MysGhost (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_MysGhost (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MysGhost/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MysGhost)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MysGhost()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysGhost/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MysGhost;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_FIRE] -= SPL_AmountToProt_MysGhost;
		SPL_AmountToProt_MysGhost = SPL_Prot_MysGhost + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_MysGhost/100);
		self.protection[PROT_FIRE] += SPL_AmountToProt_MysGhost;
		
		if (SPL_IsActive_MysGhost == 0)
		{
			Wld_PlayEffect ("SPELLFX_MysGhost_GLOW", self, self, 0, 0, 0, false);
			B_SetGhost(o_hero, 75);
		};
		SPL_IsActive_MysGhost = SPL_Time_MysGhost;
		SPL_AmountToHeal_MysGhost = 0;
	};
};

///******************************************************************************************
func void Spell_Active_MysGhost()
{
	if (SPL_IsActive_MysGhost > 0)
	{
		SPL_AmountToHeal_MysGhost += (SPL_Heal_MysGhost * 100) + self.damage[DAM_INDEX_MAGIC];
		Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_AmountToHeal_MysGhost/100);
		SPL_AmountToHeal_MysGhost -= SPL_AmountToHeal_MysGhost/100*100;
		
		SPL_IsActive_MysGhost -= 1;
		if (SPL_IsActive_MysGhost == 0)
		{
			Wld_StopEffect("SPELLFX_MysGhost_GLOW");
			B_SetGhost(o_hero, 0);
			
			self.protection[PROT_FIRE] -= SPL_AmountToProt_MysGhost;
			SPL_AmountToProt_MysGhost = 0;
		};
	};
};
