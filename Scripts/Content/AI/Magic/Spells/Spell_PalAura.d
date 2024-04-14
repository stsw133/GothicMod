///******************************************************************************************
/// SPL_PalAura
///******************************************************************************************

const int SPL_Time_PalAura				=	60;
const int SPL_Effect_PalAura			=	100;

const int SPL_Cost_PalFaith				=	20;
const int SPL_Cost_PalGlory				=	80;
const int SPL_Cost_PalJustice			=	200;

///******************************************************************************************
instance Spell_PalFaith (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_PalFaith (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_PalFaith, manaInvested);
};

func void Spell_Cast_PalFaith()
{
	B_SpellCast (self, default, SPL_Cost_PalFaith);
	
	if (Npc_IsPlayer(self))
	{
		mAuraPalType = 1;
		mAuraPalPoints = 0;
		mAuraPalTime = 60;
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_Heal_Heal);
	};
	
	//Npc_SetShieldPoints (self, 1, SPL_Effect_PalAura + self.attribute[ATR_POWER]/2);
};

///******************************************************************************************
instance Spell_PalGlory (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_PalGlory (var int manaInvested)
{	
	return B_SpellLogic (self, default, SPL_Cost_PalGlory, manaInvested);
};

func void Spell_Cast_PalGlory()
{
	B_SpellCast (self, default, SPL_Cost_PalGlory);
	
	if (Npc_IsPlayer(self))
	{
		mAuraPalType = 2;
		mAuraPalPoints = 0;
		mAuraPalTime = 60;
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_Heal_Heal);
	};
	
	//Npc_SetShieldPoints (self, 0, SPL_Effect_PalAura + self.attribute[ATR_POWER]/2);
};

///******************************************************************************************
instance Spell_PalJustice (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_PalJustice (var int manaInvested)
{
	return B_SpellLogic (self, default, SPL_Cost_PalJustice, manaInvested);
};

func void Spell_Cast_PalJustice()
{
	B_SpellCast (self, default, SPL_Cost_PalJustice);
	
	if (Npc_IsPlayer(self))
	{
		mAuraPalType = 3;
		mAuraPalPoints = 0;
		mAuraPalTime = 60;
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_Heal_Heal);
	};
	
	//Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_Effect_PalAura + self.attribute[ATR_POWER]/2);
};
