///******************************************************************************************
///	MOD_Poison
///******************************************************************************************
func void MOD_PoisonON()
{
	if (bState[BS_Poison] == false)
	{
		bState[BS_Poison] = true;
		Bar_Delete(Bar_healthBar);
	};
};
func void MOD_PoisonOFF()
{
	if (bState[BS_Poison] == true)
	{
		bState[BS_Poison] = false;
		Bar_Delete(Bar_healthBar);
	};
};

///******************************************************************************************
///	MOD_HeavyArmor
///******************************************************************************************
func void Equip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	{
		bState[BS_hArmor] = true;
		Bar_Delete(Bar_energyBar);
	};
};
func void UnEquip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	{
		bState[BS_hArmor] = false;
		Bar_Delete(Bar_energyBar);
	};
};
