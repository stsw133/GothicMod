///******************************************************************************************
/// B_CommentFakeGuild
///******************************************************************************************
func void ZS_CommentFakeGuild()
{
	Perception_Set_Minimal();
	AI_StandUp(self);
	
	if (!C_BodystateContains(self, BS_SIT))
	{
		B_TurnToNpc (self,	other);
	};
	
	if (!C_BodystateContains(other, BS_SIT))
	{
		B_TurnToNpc (other, self);
		
		if (Npc_GetDistToNpc(other, self) < 80) 
		{
			AI_Dodge(other);
		};
	};
	
	if (Npc_HasEquippedArmor(other))
	{
		if (self.guild == GIL_MIL || self.guild == GIL_PAL)
		{
			B_Say (self, other, "$ADDON_WRONGARMOR_MIL");
		}
		else if (self.guild == GIL_NOV || self.guild == GIL_KDF)
		{
			B_Say (self, other, "$ADDON_WRONGARMOR_KDF");
		}
		else if (self.guild == GIL_SLD || self.guild == GIL_DJG)
		{
			B_Say (self, other, "$ADDON_WRONGARMOR_SLD");
		}
		else
		{
			B_Say (self, other, "$ADDON_WRONGARMOR");
		};	
	}
	else
	{
		if (self.guild == GIL_BDT)
		{
			B_Say (self, other, "$ADDON_NOARMOR_BDT");
		};
	};
};
