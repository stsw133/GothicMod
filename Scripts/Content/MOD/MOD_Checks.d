///******************************************************************************************
/// MOD_Checks
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
};

/// ------ Shield ------
func void Npc_SetShieldPoints(var C_Npc slf, var int points)
{
	if (Npc_IsPlayer(slf))
	{
		if (points > slf.attribute[ATR_HITPOINTS_MAX])
		{
			points = slf.attribute[ATR_HITPOINTS_MAX];
		};
		
		if (points == 0 || points > mShieldPoints)
		{
			mShieldPoints = points;
		};
	};
};

/// ------ Stamina ------
func void Npc_StaminaRefresh(var C_Npc slf)
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
