///******************************************************************************************
/// B_SpellSummon
///******************************************************************************************

const int SPELL_PLAYER_SUMMON_SLOTS			=	5;

var int Spell_PlayerSummonedNpcPtr[SPELL_PLAYER_SUMMON_SLOTS];

///******************************************************************************************
func int Spell_IsValidIndex(var int index)
{
	return (index >= 0) && (index < SPELL_PLAYER_SUMMON_SLOTS);
};

func int Spell_GetPlayerManagedCreaturePtr(var int index)
{
	if (!Spell_IsValidIndex(index)) { return 0; };
	return MEM_ReadStatArr(Spell_PlayerSummonedNpcPtr, index);
};

func void Spell_ClearPlayerManagedCreature(var int index)
{
	if (!Spell_IsValidIndex(index)) { return; };
	MEM_WriteStatArr(Spell_PlayerSummonedNpcPtr, index, 0);
};

func void Spell_SetPlayerManagedCreature(var int index, var C_Npc creature)
{
	if (!Spell_IsValidIndex(index)) { return; };
	if (!Hlp_IsValidNpc(creature))
	{
		MEM_WriteStatArr(Spell_PlayerSummonedNpcPtr, index, 0);
		return;
	};
	MEM_WriteStatArr(Spell_PlayerSummonedNpcPtr, index, MEM_InstToPtr(creature));
};

func void Spell_RevertTamedMonster(var C_Npc tamed)
{
	var int trueGuild; trueGuild = Npc_GetTrueGuild(tamed);
	tamed.guild = trueGuild;
	Npc_SetTrueGuild (tamed, trueGuild);
	B_SetAttitude (tamed, ATT_HOSTILE);
	tamed.aivar[AIV_PartyMember] = false;
	tamed.aivar[AIV_SummonTime] = 0;
	tamed.start_aistate = ZS_MM_AllScheduler;
	
	Npc_ClearAIQueue	(tamed);
	B_ClearPerceptions	(tamed);
	AI_ContinueRoutine	(tamed);
};

func void Spell_ResetPlayerManagedCreatures()
{
	var int i; i = 0;
	repeat(i, SPELL_PLAYER_SUMMON_SLOTS);
		var int p; p = Spell_GetPlayerManagedCreaturePtr(i);
		if (p != 0)
		{
			var C_Npc managed; managed = MEM_PtrToInst(p);
			if (Hlp_IsValidNpc(managed) && !Npc_IsDead(managed))
			{
				if (managed.guild == GIL_SUMMONED)
				{
					managed.attribute[ATR_HITPOINTS] = 0;
				}
				else
				{
					Spell_RevertTamedMonster(managed);
				};
			};
		};
		Spell_ClearPlayerManagedCreature(i);
	end;
};
