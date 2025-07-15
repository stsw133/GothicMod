///******************************************************************************************
/// SPL_Tame
///******************************************************************************************

const int SPL_Cost_Tame					=	125;
//var C_Npc NPC_TamedMonster;

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
		//if (!Npc_IsDead(NPC_TamedMonster))
		//{
		//	NPC_TamedMonster.aivar[AIV_PartyMember] = false;
		//	NPC_TamedMonster.aivar[AIV_SummonTime] = 0;
		//	B_SetAttitude (NPC_TamedMonster, ATT_HOSTILE);
		//	AI_ContinueRoutine (NPC_TamedMonster);
		//};
		
		if (C_NpcIsAnimal(other))
		{
			//NPC_TamedMonster = Hlp_GetNpc(other);
			//NpcFn_SetMonsterAsSummoned(NPC_TamedMonster, true);
			NpcFn_SetMonsterAsSummoned(other, true);
			Wld_PlayEffect ("spellFX_Tame_GROUND", other, other, 0, 0, 0, false);
		};
	};
};
