///******************************************************************************************
/// SPL_Tame
///******************************************************************************************

const int SPL_Cost_Tame					=	75;

///******************************************************************************************
instance Spell_Tame (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectRange					=	1000;
};

func int Spell_Logic_Tame (var int manaInvested)
{
	if (!C_NpcIsAnimal(other))
	{
		Print("U¿ycie dozwolone jedynie na zwierzêtach!");
		return SPL_SENDSTOP;
	};
	
	return B_SpellLogic(self, 3, SPL_Cost_Tame, manaInvested);
};

func void Spell_Cast_Tame()
{
	B_SpellCast (self, 3, SPL_Cost_Tame);
	
	if (Npc_IsPlayer(self))
	{
		Spell_ResetPlayerManagedCreatures();
		
		if (C_NpcIsAnimal(other))
		{
			NpcFn_SetMonsterAsSummoned(other, true);
			Spell_SetPlayerManagedCreature (0, other);
			Wld_PlayEffect ("spellFX_Tame_GROUND", other, other, 0, 0, 0, false);
		};
	};
};
