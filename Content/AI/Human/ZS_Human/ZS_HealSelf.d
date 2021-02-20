///******************************************************************************************
///	ZS_HealSelf
///******************************************************************************************
func void ZS_HealSelf()
{
	Perception_Set_Minimal();
};

///******************************************************************************************
func int ZS_HealSelf_Loop()
{
	///EXIT LOOP IF...
	/// ------ NSC ist schon voll geheilt ------
	if (self.attribute[ATR_HITPOINTS] == self.attribute[ATR_HITPOINTS_MAX])
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	};

	/// LOOP FUNC
	/// ------ Großen Heiltrank nehmen ------
	if (Npc_HasItems(self,ItPo_Health_03) > 0)	
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]/4)
	{
		AI_UseItem (self, ItPo_Health_03);
		return LOOP_CONTINUE;
	}
	else if (Npc_HasItems(self,ItPo_Health_02) > 0)	
	&& (self.attribute[ATR_HITPOINTS] < self.attribute[ATR_HITPOINTS_MAX]/2)
	{
		AI_UseItem (self, ItPo_Health_02);
		return LOOP_CONTINUE;
	}
	else if (Npc_HasItems(self,ItPo_Health_01) > 0)
	{
		AI_UseItem (self, ItPo_Health_01);
		return LOOP_CONTINUE;
	}
	/// ------ zwar verletzt, aber kein Trank am Start ------
	else
	{
		Npc_ClearAIQueue(self);
		return LOOP_END;
	};
};

///******************************************************************************************
func void ZS_HealSelf_End()
{
};
