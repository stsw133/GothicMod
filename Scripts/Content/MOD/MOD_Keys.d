///******************************************************************************************
/// MOD_Keys
///******************************************************************************************
func void MOD_PressKey()
{
	var int key; key = ESI;
	var int pressed; pressed = MEM_ReadByte(MEMINT_KeyToggle_Offset + ESI);
	
	/// ------ shortcuts key ------
	/*
	if ((key == MEM_GetKey("keyShortcuts") || key == MEM_GetSecondaryKey("keyShortcuts")) && pressed)
	{
		AI_PlayAni (hero, "T_QUICKTURN");
	};
	*/
	
	/// ------ RMB ------
	if ((key == MEM_GetKey("keyNoAnimTake") || key == MEM_GetSecondaryKey("keyNoAnimTake")) && pressed)
	{
		o_hero = Hlp_GetNpc(hero);
		
		/// item
		if (Hlp_Is_oCItem(o_hero.focus_vob))
		{
			o_item = MEM_PtrToInst(o_hero.focus_vob);
			
			/// no anim take
			if (STR_ToInt(MEM_GetGothOpt("MOD", "noAnimTake")))
			&& (!C_BodyStateContains(hero, BS_INVENTORY) && !C_BodyStateContains(hero, BS_TAKEITEM))
			{
				if (Npc_GetDistToItem(hero, o_item) < (NPC_ATTACK_FINISH_DISTANCE * 2))
				{
					MOD_MoveItemIntoInventory (hero, o_item);
				}
				else
				{
					Print("Przedmiot jest za daleko!");
				};
			};
		}
		/// mob
		else if (Hlp_Is_oCMobContainer(o_hero.focus_vob))
		{
			Print("CHEST TEST");
		}
		/// npc
		else if (Hlp_Is_oCNpc(o_hero.focus_vob))
		{
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			
			/// take loot
			if (Npc_IsInState(o_other, ZS_Dead) || Npc_IsInState(o_other, ZS_Unconscious))
			{
				if (Npc_GetDistToNpc(hero, o_other) < (NPC_ATTACK_FINISH_DISTANCE * 2))
				{
					B_GiveNpcInventory (o_other, hero);
				}
				else
				{
					Print("Postaæ jest za daleko!");
				};
			}
			/// assassination
			/*else if (Npc_IsInFightMode(hero, FMODE_MELEE)) //Npc_HasReadiedMeleeWeapon(hero)
			{
				o_item = Npc_GetReadiedWeapon(hero);
				//MOD_Assassination (hero, o_other, o_item);
			}*/
			/// pickpocket
			else if (Npc_GetTalentSkill(hero, NPC_TALENT_PICKPOCKET))
			{
				if (!Npc_IsDead(o_other))
				&& (!Npc_CanSeeNpc(o_other, hero) || Npc_IsInState(o_other, ZS_Sleep))
				&& (Npc_GetDistToNpc(hero, o_other) < NPC_ATTACK_FINISH_DISTANCE)
				{
					MOD_Pickpocket (hero, o_other);
				};
			};
		};
	};
};

///******************************************************************************************
func void MOD_Keys()
{
	HookEngineF(7328820, 6, MOD_PressKey);
};
