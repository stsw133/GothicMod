///******************************************************************************************
///	MOD_Checks
///******************************************************************************************
func void Npc_AttributesRefresh()
{
	if (self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
	if (self.attribute[ATR_MANA] > self.attribute[ATR_MANA_MAX])
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
	};
	//Npc_AddStaminaMaxPoints(self, 0);
	//Npc_AddPowerPoints(self, 0);
};

/// ------ Power ------
func void Npc_AddPowerPoints (var C_Npc slf, var int points)
{
	slf.attribute[ATR_POWER] += points;
	if (Npc_IsPlayer(slf))
	{
		Npc_SetTalentValue (slf, NPC_TALENT_MAGIC, slf.attribute[ATR_POWER]);
	};
};

/// ------ Stamina ------
func void Npc_StaminaRefresh (var C_Npc slf)
{
	if (slf.aivar[AIV_Stamina] < 0)
	{
		slf.aivar[AIV_Stamina] = 0;
	}
	else if (slf.aivar[AIV_Stamina] > slf.aivar[AIV_Stamina_MAX])
	{
		slf.aivar[AIV_Stamina] = slf.aivar[AIV_Stamina_MAX];
	};
};
