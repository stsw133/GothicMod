///******************************************************************************************
///	MOD_BodyStates
///******************************************************************************************

var int bsSprint;
var int bsArmor;
var int bsObsession;
var int bsPoison;
//var int bsDrunk;

/// ------ HeavyArmor ------
func void Equip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (bsArmor == 0)
	{
		bsArmor = 1;
		Bar_Delete(Bar_staminaBar);
	};
};
func void UnEquip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (bsArmor == 1)
	{
		bsArmor = 0;
		Bar_Delete(Bar_staminaBar);
	};
};
func void Disable_HeavyArmor()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsArmor != -1)
	{
		bsArmor = -1;
		Bar_Delete(Bar_staminaBar);
	};
};

/// ------ Obsession ------
func void MOD_ObsessionON()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsObsession == 0)
	{
		bsObsession = 1;
		Bar_Delete(Bar_manaBar);
	};
};
func void MOD_ObsessionOFF()
{
	if /*(Npc_IsPlayer(self))
	&&*/ (bsObsession == 1)
	{
		bsObsession = 0;
		Bar_Delete(Bar_manaBar);
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
		Bar_Delete(Bar_healthBar);
	};
	bsPoison = value;
};
