///******************************************************************************************
///	B_RefreshAtInsert
///******************************************************************************************
func void B_RefreshAtInsert()
{
	if (self.attribute[ATR_HITPOINTS] <= 0)
	{
		return;
	};
	
	var C_NPC her; her = Hlp_GetNpc(PC_Hero); 
	
	if (self.guild < GIL_SEPERATOR_HUM)
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(her))
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
		
		if (!Npc_HasEquippedWeapon(self))
		{
			if (self.guild == GIL_MIL)
			|| (self.guild == GIL_PAL)
			|| (self.guild == GIL_SLD)
			|| (self.guild == GIL_DJG)
			|| (self.guild == GIL_NOV)
			|| (self.guild == GIL_BAU)
			|| (self.guild == GIL_PIR)
			|| (self.guild == GIL_BDT)
			{
				CreateInvItem (self, ItMw_1h_Bau_Mace);
			};
		};
	};
};
