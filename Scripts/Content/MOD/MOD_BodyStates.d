///******************************************************************************************
///	MOD_BodyStates
///******************************************************************************************

/// ------ Poison ------
func void MOD_PoisonON(var C_Npc slf)
{
	if (Npc_IsPlayer(slf))
	&& (!bState[BS_Poison])
	{
		bState[BS_Poison] = true;
		Bar_Delete(Bar_healthBar);
	};
};
func void MOD_PoisonOFF(var C_Npc slf)
{
	if (Npc_IsPlayer(slf))
	&& (bState[BS_Poison])
	{
		bState[BS_Poison] = false;
		Bar_Delete(Bar_healthBar);
	};
};

/// ------ Obsession ------
func void MOD_ObsessionON()
{
	if (Npc_IsPlayer(self))
	&& (!bState[BS_Obsession])
	{
		bState[BS_Obsession] = true;
		Bar_Delete(Bar_manaBar);
	};
};
func void MOD_ObsessionOFF()
{
	if (Npc_IsPlayer(self))
	&& (bState[BS_Obsession])
	{
		bState[BS_Obsession] = false;
		Bar_Delete(Bar_manaBar);
	};
};

/// ------ HeavyArmor ------
func void Equip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (!bState[BS_hArmor])
	{
		bState[BS_hArmor] = true;
		Bar_Delete(Bar_energyBar);
	};
};
func void UnEquip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (bState[BS_hArmor])
	{
		bState[BS_hArmor] = false;
		Bar_Delete(Bar_energyBar);
	};
};
