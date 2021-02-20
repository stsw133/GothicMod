///******************************************************************************************
///	SPL_Rage
///******************************************************************************************

const int SPL_Cost_Rage					=	45;

///******************************************************************************************
INSTANCE Spell_Rage (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Rage (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Rage/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Rage)
	{
		//AI_PlayAni (other, "T_PSI_VICTIM");
		
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Rage()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Rage/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Rage/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Rage)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Rage;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	Npc_ClearAIQueue(other);
    B_ClearPerceptions(other);
    AI_StartState(other, ZS_MagicRage, 0, "");
};

///******************************************************************************************
///	SPL_MassRage
///******************************************************************************************

const int SPL_Cost_MassRage				=	180;

///******************************************************************************************
INSTANCE Spell_MassRage (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MassRage (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassRage/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MassRage)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_MassRage()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassRage/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassRage/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_MassRage)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassRage;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	if (other.guild != GIL_DRAGON)
	{
		AI_SetNpcsToState (self, ZS_MagicRage, 1000);
	};
};
