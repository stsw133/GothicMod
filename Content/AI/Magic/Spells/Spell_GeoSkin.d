///******************************************************************************************
///	SPL_GeoSkin
///******************************************************************************************

const int SPL_Cost_GeoSkin				=	40;
const int SPL_Time_GeoSkin				=	2;
const int SPL_Prot_GeoSkin				=	AR_PER_LEVEL;

var int SPL_IsActive_GeoSkin;
var int SPL_AmountToProt_GeoSkin;

///******************************************************************************************
INSTANCE Spell_GeoSkin (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_GeoSkin (var int manaInvested)
{
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoSkin/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_GeoSkin))
	|| (SPL_IsActive_GeoSkin == true)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_GeoSkin()
{
	if (SPL_IsActive_GeoSkin == false)
	{
		if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_GeoSkin/5))
		{
			self.attribute[ATR_MANA] -= SPL_Cost_GeoSkin/5;
		}
		else if (self.attribute[ATR_MANA] >= SPL_Cost_GeoSkin)
		{
			self.attribute[ATR_MANA] -= SPL_Cost_GeoSkin;
		};
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (Npc_IsPlayer(self))
	{
		if (SPL_IsActive_GeoSkin == false)
		{
			SPL_IsActive_GeoSkin = true;
			
			SPL_AmountToProt_GeoSkin = SPL_Prot_GeoSkin + (self.damage[DAM_INDEX_MAGIC] * SPL_Prot_GeoSkin/100);
			self.protection[PROT_BLUNT] += SPL_AmountToProt_GeoSkin;
			self.protection[PROT_EDGE] += SPL_AmountToProt_GeoSkin;
			self.protection[PROT_POINT] += SPL_AmountToProt_GeoSkin;
			
			Wld_PlayEffect ("spellFX_GeoSkin_GLOW", self, self, 0, 0, 0, false);
			Mdl_SetVisualBody (self, "Hum_Body_Stone", self.aivar[AIV_BodyTex], self.aivar[AIV_SkinTex], o_hero.name_3, self.aivar[AIV_FaceTex], self.aivar[AIV_TeethTex], -1);
		}
		else
		{
			SPL_IsActive_GeoSkin = false;
			
			Wld_PlayEffect ("spellFX_GeoSkin_GLOW", self, self, 0, 0, 0, false);
			B_UpdateNpcVisual(self);
			
			self.protection[PROT_BLUNT] -= SPL_AmountToProt_GeoSkin;
			self.protection[PROT_EDGE] -= SPL_AmountToProt_GeoSkin;
			self.protection[PROT_POINT] -= SPL_AmountToProt_GeoSkin;
			SPL_AmountToProt_GeoSkin = 0;
		};
	};
};

///******************************************************************************************
func void Spell_Active_GeoSkin()
{
	if (SPL_IsActive_GeoSkin == true)
	{
		if (self.attribute[ATR_MANA] >= SPL_Time_GeoSkin)
		{
			Npc_ChangeAttribute (self, ATR_MANA, -SPL_Time_GeoSkin);
		}
		else
		{
			SPL_IsActive_GeoSkin = false;
			
			Wld_PlayEffect ("spellFX_GeoSkin_GLOW", self, self, 0, 0, 0, false);
			B_UpdateNpcVisual(self);
			
			self.protection[PROT_BLUNT] -= SPL_AmountToProt_GeoSkin;
			self.protection[PROT_EDGE] -= SPL_AmountToProt_GeoSkin;
			self.protection[PROT_POINT] -= SPL_AmountToProt_GeoSkin;
			SPL_AmountToProt_GeoSkin = 0;
		};
	};
};
