///******************************************************************************************
///	SPL_GeoProtection
///******************************************************************************************

const int SPL_Cost_GeoProtection		=	40;
const int SPL_Time_GeoProtection		=	120;
const int SPL_Prot_GeoProtection		=	5;

var int SPL_TimeLeft_GeoProtection;
var int SPL_AmountToProt_GeoProtection;

///******************************************************************************************
instance Spell_GeoProtection (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_GeoProtection (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoProtection/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoProtection)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_GeoProtection()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoProtection/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_GeoProtection;
	};
	
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_BLUNT] -= SPL_AmountToProt_GeoProtection;
		self.protection[PROT_EDGE] -= SPL_AmountToProt_GeoProtection;
		self.protection[PROT_POINT] -= SPL_AmountToProt_GeoProtection;
		SPL_AmountToProt_GeoProtection = SPL_Prot_GeoProtection + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_GeoProtection/100);
		self.protection[PROT_BLUNT] += SPL_AmountToProt_GeoProtection;
		self.protection[PROT_EDGE] += SPL_AmountToProt_GeoProtection;
		self.protection[PROT_POINT] += SPL_AmountToProt_GeoProtection;
		
		if (SPL_TimeLeft_GeoProtection == 0)
		{
			Wld_PlayEffect ("SPELLFX_GeoProtection_GLOW", self, self, 0, 0, 0, false);
			Mdl_SetVisualBody (self, "Hum_Body_Stone", self.aivar[AIV_BodyTex], 0, o_hero.name_3, self.aivar[AIV_FaceTex], self.aivar[AIV_TeethTex], -1);
		};
		SPL_TimeLeft_GeoProtection = SPL_Time_GeoProtection;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
func void Spell_Active_GeoProtection()
{
	if (SPL_TimeLeft_GeoProtection > 0)
	{
		SPL_TimeLeft_GeoProtection -= 1;
		if (SPL_TimeLeft_GeoProtection == 0)
		{
			Wld_StopEffect("spellFX_GeoProtection_GLOW");
			//B_UpdateNpcVisual(self);
			
			self.protection[PROT_BLUNT] -= SPL_AmountToProt_GeoProtection;
			self.protection[PROT_EDGE] -= SPL_AmountToProt_GeoProtection;
			self.protection[PROT_POINT] -= SPL_AmountToProt_GeoProtection;
			SPL_AmountToProt_GeoProtection = 0;
		};
	};
};
