///******************************************************************************************
/// MOD_MoveFn
///******************************************************************************************

var int heroStrafing, heroJumping, heroGoBackward;

///******************************************************************************************
func void MOD_StrafePerception()
{
	if (Npc_GetWalkMode(hero) == NPC_SNEAK)
	{
		return;
	};
	
	const int PERC_INVERVAL = 1000;
	var int percTimer; percTimer += MEM_Timer.frameTime;
	
	if (percTimer >= PERC_INVERVAL)
	{
		percTimer -= PERC_INVERVAL;
		heroStrafing = true;
		Npc_SendPassivePerc (hero, PERC_ASSESSQUIETSOUND, hero, hero);
		heroStrafing = false;
	};
};

///******************************************************************************************
func void MOD_JumpPerception()
{
	heroJumping = true;
	Npc_SendPassivePerc (hero, PERC_ASSESSQUIETSOUND, hero, hero);
	heroJumping = false;
};

///******************************************************************************************
func void MOD_GoBackwardPerception()
{
	if (Npc_GetWalkMode(hero) == NPC_SNEAK)
	{
		return;
	};
	
	var int npcPtr; npcPtr = MEM_ReadInt(ESI + 300);
	var C_Npc npc; npc = _^(npcPtr);
	if (Npc_IsPlayer(npc))
	{
		heroGoBackward = true;
		Npc_SendPassivePerc (hero, PERC_ASSESSQUIETSOUND, hero, hero);
		heroGoBackward = false;
	};
};

///******************************************************************************************
func void MOD_MoveFn()
{
	/// strafe
	HookEngineF(6834660, 7, MOD_StrafePerception);
	
	/// jump
	HookEngineF(7020032, 5, MOD_JumpPerception);
	
	/// go backward
	HookEngineF(7044586, 6, MOD_GoBackwardPerception); // ANI_WALKMODE_RUN
	HookEngineF(7044556, 6, MOD_GoBackwardPerception); // ANI_WALKMODE_WALK
	//HookEngineF(7044526, 6, MOD_GoBackwardPerception); // ANI_WALKMODE_SNEAK
	
	HookEngineF(6911940, 5, MOD_GoBackwardPerception); // Gothic 1 Steuerung (?)
	HookEngineF(6914029, 5, MOD_GoBackwardPerception); // (?)
	HookEngineF(6914536, 6, MOD_GoBackwardPerception); // Gothic 2 Steuerung (?)
};
