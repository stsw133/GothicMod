///******************************************************************************************
///	MOD_Assassination
///******************************************************************************************
func void MOD_Assassination (var C_Npc slf, var C_Npc oth, var oCItem weapon)
{
	if (!Npc_IsInFightMode(slf, FMODE_MELEE))
	{
		AI_ReadyMeleeWeapon(slf);
	};
	
	if (!Npc_CanSeeNpc(oth, slf) || Npc_IsInState(oth, ZS_Sleep))
	&& (Npc_GetDistToNpc(slf, oth) < NPC_ATTACK_FINISH_DISTANCE)
	&& (!Npc_IsInState(oth, ZS_Unconscious) && !Npc_IsInState(oth, ZS_Dead))
	{
		if (slf.level >= oth.level*2)
		{
			/// morderstwo
			if (weapon.damagetype == DAM_EDGE)
			{
				if (Npc_IsInState(oth, ZS_Sleep))
				{
					AI_TurnToNpc		(slf, oth);
					AI_PlayAni			(slf, "T_2HATTACKL");
					Npc_ClearAIQueue 	(oth);
					B_ClearPerceptions	(oth);
					AI_PlayAni			(oth, "T_DEAD");
					B_MagicHurtNpc		(slf, oth, oth.attribute[ATR_HITPOINTS]);
					AI_StartState 		(oth, ZS_Dead, false, "");
				}
				else
				{
					AI_TurnToNpc		(slf, oth);
					AI_PlayAni			(slf, "T_2HATTACKL");
					Npc_ClearAIQueue 	(oth);
					B_ClearPerceptions	(oth);
					AI_PlayAni			(oth, "T_DEAD");
					B_MagicHurtNpc		(slf, oth, oth.attribute[ATR_HITPOINTS]);
					AI_StartState 		(oth, ZS_Dead, false, "");
				};
			}
			/// powalenie
			else if (weapon.damagetype == DAM_BLUNT)
			{
				AI_TurnToNpc		(slf, oth);
				AI_PlayAni			(slf, "T_2HATTACKL");
				Npc_ClearAIQueue 	(oth);
				B_ClearPerceptions	(oth);
				AI_PlayAni			(oth, "T_STAND_2_WOUNDED");
				B_MagicHurtNpc		(slf, oth, oth.attribute[ATR_HITPOINTS]-1);
				AI_StartState 		(oth, ZS_Unconscious, false, "");
			};
		}
		else
		{
			Print(ConcatStrings(IntToString(oth.level*2-slf.level), " poziomów za mało by dokonać morderstwa!"));
		};
	};
};
