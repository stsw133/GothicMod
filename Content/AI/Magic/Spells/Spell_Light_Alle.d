///******************************************************************************************
///	SPL_Light
///******************************************************************************************

const int SPL_Cost_PalLight				=	10;
const int SPL_Cost_LIGHT				=	10;

const int SPL_Duration_PalLIGHT			=	5;
const int SPL_Duration_LIGHT			=	5;

///******************************************************************************************
instance Spell_Light (C_Spell_Proto)
{
	time_per_mana						=	500;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

instance Spell_PalLight (C_Spell_Proto)
{
	time_per_mana						=	500;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_PalLight(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_PalLight/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_PalLight)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_PalLight()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalLight/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_PalLight;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

func int Spell_Logic_Light(var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Light/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Light)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Light()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Light/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Light;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
