///******************************************************************************************
///	MOD_BodyStates
///******************************************************************************************

//var int bsDrunk;
var int bsArmor;
var int bsObsession;
var int bsPoison;
var int bsSprint;
var int bsStealth;

/// ------ HeavyArmor ------
func void Equip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (bsArmor == 0)
	{
		bsArmor = 1;
		Bar_Delete(BarLoop_spBar);
	};
};
func void UnEquip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (bsArmor == 1)
	{
		bsArmor = 0;
		Bar_Delete(BarLoop_spBar);
	};
};
func void Disable_HeavyArmor()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsArmor != -1)
	{
		bsArmor = -1;
		Bar_Delete(BarLoop_spBar);
	};
};

/// ------ Obsession ------
func void MOD_ObsessionON()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsObsession == 0)
	{
		bsObsession = 1;
		Bar_Delete(BarLoop_mpBar);
	};
};
func void MOD_ObsessionOFF()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsObsession == 1)
	{
		bsObsession = 0;
		Bar_Delete(BarLoop_mpBar);
	};
};

/// ------ Poison ------
func void MOD_SetPoison(var int value)
{
	if /*(!Npc_IsPlayer(self))
	||*/ (bsPoison == -1)
	{
		return;
	};
	
	if (bsPoison == 0 && value > 0)
	|| (bsPoison > 0 && value <= 0)
	{
		Bar_Delete(BarLoop_hpBar);
	};
	bsPoison = value;
};

/// ------ Stealth ------
func void MOD_SetStealth(var C_Npc slf, var int value)
{
	if (value > 0)
	{
		if (Npc_IsPlayer(slf) && !slf.aivar[AIV_Invisible])
		{
			//B_SetNpcVisibilityPercent (slf, 10);
			slf.flags = slf.flags | NPC_FLAG_GHOST;
			
			if (selectedHero >= 0) { NpcFn_SetHeroVisual (slf, -selectedHero-1); };
			slf.aivar[AIV_Invisible] = true;
		};
		if (Npc_IsPlayer(slf))
		{
			bsStealth = value;
		};
	}
	else
	{
		//B_SetNpcVisibilityPercent (slf, 100);
		slf.flags = slf.flags & ~NPC_FLAG_GHOST;
		
		if (!Npc_IsInState(slf, ZS_TALK))
		{
			slf.aivar[AIV_Invisible] = false;
		};
		if (Npc_IsPlayer(slf))
		{
			if (selectedHero < 0) { NpcFn_SetHeroVisual (slf, -selectedHero-1); };
			bsStealth = 0;
		};
	};
};

/*
HookEngineF(oCGame__HandleEvent, oCGame__HandleEvent_Len, MOD_HandleKeys);
func void MOD_HandleKeys()
{
	var int key; key = MEM_ReadInt(ESP + 4);
	if (QS_CheckKey(key, KEY_1))	{	QS_UseItem(1);	MEM_WriteInt(ESP + 4, -1);	};
};
*/
