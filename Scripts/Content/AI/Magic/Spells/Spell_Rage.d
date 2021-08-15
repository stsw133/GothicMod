///******************************************************************************************
///	SPL_Rage
///******************************************************************************************

const int SPL_Cost_Rage					=	100;

///******************************************************************************************
instance Spell_Rage (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Rage (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Rage/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Rage)
	{
		if (other.level+10 - self.level - Npc_GetPowerPoints(self)/50 <= 0)
		|| (!Npc_IsPlayer(self))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print(ConcatStrings(IntToString(other.level+10 - self.level - Npc_GetPowerPoints(self)/50), " poziomów za mało aby odnieść skutek!"));
		};
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_Rage()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Rage/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Rage;
	};
	
	//AI_PlayAni (other, "T_PSI_VICTIM");
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_MagicRage, 0, "");
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};

///******************************************************************************************
///	SPL_MassRage
///******************************************************************************************

const int SPL_Cost_MassRage				=	300;

///******************************************************************************************
instance Spell_MassRage (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_MassRage (var int manaInvested)
{	
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_MassRage/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_MassRage)
	{
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_MassRage()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassRage/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_MassRage;
	};
	
	//AI_PlayAni (other, "T_PSI_VICTIM");
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	{
		AI_SetNpcsToState (self, ZS_MagicRage, 1000);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
