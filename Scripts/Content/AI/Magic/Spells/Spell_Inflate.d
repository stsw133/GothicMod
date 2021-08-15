///******************************************************************************************
///	SPL_Inflate
///******************************************************************************************

const int SPL_Cost_Inflate				=	90;
const int SPL_Damage_Inflate			=	5;
const int SPL_Time_Inflate				=	19;

///******************************************************************************************
instance Spell_Inflate (C_Spell_Proto)
{
	time_per_mana						=	0;
	damage_per_level					=	SPL_Damage_Inflate;
	damageType							=	DAM_MAGIC;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
};

func int Spell_Logic_Inflate (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Inflate/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Inflate)
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

func void Spell_Cast_Inflate()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Inflate/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Inflate;
	};
	
	if (!C_BodyStateContains(other, BS_SWIM) && !C_BodyStateContains(other, BS_DIVE))
	&& (!C_NpcIsDown(other) && Npc_GetDistToNpc(self, other) <= 1000)
	&& (other.guild < GIL_SEPERATOR_HUM && other.guild != GIL_KDF && other.guild != GIL_DMT && other.guild != GIL_PAL)
	{
		Npc_ClearAIQueue	(other);
		B_ClearPerceptions	(other);
		AI_StartState		(other, ZS_Inflate, 0, "");
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
