///******************************************************************************************
/// MOD_BodyStates
///******************************************************************************************

var int bsArmor;
var int bsObsession;
var int bsPoison;
var int bsRested;
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
func void MOD_SetObsession(var int value)
{
	if (bsObsession == -1)
	{
		return;
	};
	
	if (!bsObsession && value)
	|| (bsObsession && !value)
	{
		Bar_Delete(BarLoop_mpBar);
	};
	bsObsession = value;
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
func void MOD_SetStealth(var C_Npc slf, var int time)
{
	if (!Npc_IsPlayer(slf))
	{
		return;
	};
	
	if (time > 0)
	{
		if (!slf.aivar[AIV_Invisible])
		{
			//Npc_SetVisibilityPercent (slf, 10);
			slf.flags = slf.flags | NPC_FLAG_GHOST;
			
			if (selectedHeroSkin >= 0)
			{
				NpcFn_SetHeroVisual(slf, -selectedHeroSkin-1);
			};
			
			slf.aivar[AIV_Invisible] = true;
		};
		
		bsStealth = time;
	}
	else
	{
		//Npc_SetVisibilityPercent (slf, 100);
		slf.flags = slf.flags & ~NPC_FLAG_GHOST;
		
		if (!Npc_IsInState(slf, ZS_TALK))
		{
			slf.aivar[AIV_Invisible] = false;
		};
		
		if (selectedHeroSkin < 0)
		{
			NpcFn_SetHeroVisual(slf, -selectedHeroSkin-1);
		};
		
		bsStealth = 0;
	};
};
