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
		Bar_Delete(Bar_spBar);
	};
};
func void UnEquip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (bsArmor == 1)
	{
		bsArmor = 0;
		Bar_Delete(Bar_spBar);
	};
};
func void Disable_HeavyArmor()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsArmor != -1)
	{
		bsArmor = -1;
		Bar_Delete(Bar_spBar);
	};
};

/// ------ Obsession ------
func void MOD_ObsessionON()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsObsession == 0)
	{
		bsObsession = 1;
		Bar_Delete(Bar_mpBar);
	};
};
func void MOD_ObsessionOFF()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsObsession == 1)
	{
		bsObsession = 0;
		Bar_Delete(Bar_mpBar);
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
		Bar_Delete(Bar_hpBar);
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
