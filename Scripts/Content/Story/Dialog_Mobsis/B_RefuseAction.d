///******************************************************************************************
/// B_RefuseAction
///******************************************************************************************
func void PLAYER_MOB_MISSING_KEY_OR_LOCKPICK()
{
	Print(PRINT_Picklock_or_KeyMissing);
	AI_PlayAni (self, "T_DONTKNOW");
	B_Say_Overlay (self, self, "$PICKLOCKORKEYMISSING");
};

func void PLAYER_MOB_MISSING_KEY()
{
	Print(PRINT_KeyMissing);
	AI_PlayAni (self, "T_DONTKNOW");
	B_Say_Overlay (self, self, "$KEYMISSING");
};

func void PLAYER_MOB_MISSING_LOCKPICK()
{
	if (!Npc_GetTalentSkill(hero, NPC_TALENT_PICKLOCK))
	{
		Print(PRINT_NoPicklockTalent);
		AI_PlayAni (self,"T_DONTKNOW");
		B_Say_Overlay (self, self, "$NOPICKLOCKTALENT");
	}
	else
	{
		Print(PRINT_PicklockMissing);
		AI_PlayAni (self,"T_DONTKNOW");
		B_Say_Overlay (self, self, "$PICKLOCKMISSING");
	};
};

func void PLAYER_MOB_NEVER_OPEN()
{
	Print(PRINT_NeverOpen);
	AI_PlayAni (self, "T_DONTKNOW");
};

func void PLAYER_MOB_MISSING_ITEM()
{
	Print(PRINT_MissingItem);
	AI_PlayAni (self, "T_DONTKNOW");
	B_Say_Overlay (self, self, "$MISSINGITEM");
};

func void PLAYER_MOB_ANOTHER_IS_USING()
{
	Print(PRINT_AnotherUser);
	AI_PlayAni (self, "T_DONTKNOW");
};

func void PLAYER_MOB_TOO_FAR_AWAY()
{
	Print(PRINT_TooFarAway);
	AI_PlayAni (self, "T_DONTKNOW");
};

func void PLAYER_MOB_WRONG_SIDE()
{
	Print(PRINT_WrongSide);
	AI_PlayAni (self, "T_DONTKNOW");
};

///******************************************************************************************
func void PLAYER_TRADE_NOT_ENOUGH_GOLD()
{
	Print(PRINT_Trade_Not_Enough_Gold);
};
