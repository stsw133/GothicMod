///******************************************************************************************
/// MOD_Keys
///******************************************************************************************
func int MOD_IsKeyHold(var string option)
{
	var int keyPrimary; keyPrimary = MEM_GetKey(option);
	if (keyPrimary && MEM_KeyState(keyPrimary) == KEY_HOLD)
	{
		return true;
	};
	
	var int keySecondary; keySecondary = MEM_GetSecondaryKey(option);
	if (keySecondary && MEM_KeyState(keySecondary) == KEY_HOLD)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func void MOD_HandleInteractionHotkey()
{
	/// ------ default: RMB ------
	if (MEM_KeyState(MEM_GetKey("keyNoAnimTake")) == KEY_PRESSED)
	|| (MEM_KeyState(MEM_GetSecondaryKey("keyNoAnimTake")) == KEY_PRESSED)
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
		/// npc
		else if (Hlp_Is_oCNpc(o_hero.focus_vob))
		{
			o_other = MEM_PtrToInst(o_hero.focus_vob);
			
			/// take inv
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
		}
		/// container
		else if (Hlp_Is_oCMobContainer(o_hero.focus_vob))
		{
			var oCMobContainer container; container = _^(o_hero.focus_vob);
			
			/// take inv
			if (Hlp_Is_oCMobLockable(o_hero.focus_vob))
			{
				var oCMobLockable lockable; lockable = _^(o_hero.focus_vob);
				if (lockable.bitfield & oCMobLockable_bitfield_locked)
				{
					Print("Skrzynia jest zamkniêta!");
					return;
				};
			};
			var int moved; moved = B_GiveContainerInventory(container, hero);
			//if (!moved)
			//{
			//	Print("Skrzynia jest pusta!");
			//};
		};
	};
};

///******************************************************************************************
func void MOD_HandleSprintHotkey()
{
	/// ------ default: Shift ------
	if (MOD_IsKeyHold("keySprint"))
	&& ((hero.aivar[AIV_Stamina] > 0 && ATS[ATS_HeavyArmor] < 1 && !alcoholTime && !ATS[ATS_InFightTime]) || movieMode)
	{
		if (ATS[ATS_SprintState] == 0)
		{
			ATS[ATS_SprintState] = 1;
		};
		if (ATS[ATS_SprintState] == 1)
		{
			if (!C_BodyStateContains(hero, BS_FALL) && !C_BodyStateContains(hero, BS_JUMP))
			{
				ATS[ATS_SprintState] = 2;
				Mdl_ApplyOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
			};
		};
	}
	else
	{
		if (ATS[ATS_SprintState] == 2)
		{
			ATS[ATS_SprintState] = 3;
		};
		if (ATS[ATS_SprintState] == 3)
		{
			ATS[ATS_SprintState] = 0;
			Mdl_RemoveOverlayMDS (hero, "HUMANS_FASTRUN.MDS");
		};
	};
};

///******************************************************************************************
func void MOD_HandleGuiAndCameraKeys()
{
	/// ------ hide GUI & camera keys ------
	if (MEM_KeyState(KEY_F1) == KEY_PRESSED)
	{
		MEM_Game.game_drawall = !MEM_Game.game_drawall;
	}
	else if (MEM_KeyState(KEY_F9) == KEY_PRESSED)
	{
		AI_Wait (hero, 0.1);
	}
	else if (MEM_KeyState(KEY_F10) == KEY_PRESSED)
	{
		MOD_MovieMode_GetCamera();
	}
	/// ------ ani shortcut keys etc. ------
	else if (movieMode)
	{
		if		(MOD_IsKeyHold("keyMovieModeExecuteAni"))	{	MOD_MovieMode_DoAni();		}
		else if	(MOD_IsKeyHold("keyMovieModeSelectSet"))	{	MOD_MovieMode_SelectSet();	}
		else if	(MOD_IsKeyHold("keyMovieModeExecuteSet"))	{	MOD_MovieMode_ExecuteSet();	};
	};
};
