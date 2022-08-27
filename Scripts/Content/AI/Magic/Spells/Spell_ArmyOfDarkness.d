///******************************************************************************************
///	SPL_ArmyOfDarkness
///******************************************************************************************

const int SPL_Cost_ArmyOfDarkness		=	150;

///******************************************************************************************
instance Spell_ArmyOfDarkness (C_Spell_Proto)
{
	time_per_mana						=	0;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_ArmyOfDarkness (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_ArmyOfDarkness/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_ArmyOfDarkness)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_ArmyOfDarkness(var int spellLevel)
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ArmyOfDarkness/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_ArmyOfDarkness;
	};
	
	if (Npc_IsPlayer(self))
	{
		if (Npc_GetTalentSkill(self, NPC_TALENT_TYPEOFMAGIC) == MAGIC_GEO)
		{
			Wld_SpawnNpcRange (self, Summoned_StoneGuardian, 6, 800);
		}
		else
		{
			Wld_SpawnNpcRange (self, Summoned_Skeleton, 6, 800);
		};
	}
	else
	{
	    Wld_SpawnNpcRange (self, Skeleton, 6, 800);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
