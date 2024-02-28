///******************************************************************************************
/// ZS_Circle
///******************************************************************************************
func void ZS_Circle()
{
	Perception_Set_Normal();
	
	B_ResetAll		(self);
	Npc_SetPercTime	(self, 0.3);
	
	AI_StandUp		(self);
	AI_SetWalkmode	(self, NPC_WALK);
	AI_GotoWP		(self, self.wp);
	AI_AlignToWP	(self);
};

func int ZS_Circle_Loop()
{
	if (self.guild == GIL_DMT)
	{
		if (Npc_GetStateTime(self) > Hlp_Random(3000))
		{
			Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
			Npc_SetStateTime (self, 0);
			Wld_PlayEffect ("spellFX_INCOVATION_RED", self, self, 0, 0, 0, false);
			AI_PlayAni (self, "T_PRACTICEMAGIC5");
		};
	}
	else if (self.guild == GIL_KDW)
	{
		if (Npc_GetStateTime(self) > Hlp_Random(2500))
		{
			AI_AlignToWP(self);
			Npc_SetStateTime (self, 0);
			Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
			AI_PlayAni (self, "T_PRACTICEMAGIC5");
			//Wld_PlayEffect ("spellFX_INCOVATION_BLUE", self, self, 0, 0, 0, false);
			Wld_PlayEffect ("spellFX_RingRitual2", ItMi_AmbossEffekt_Addon, ItMi_AmbossEffekt_Addon, 0, 0, 0, false);
			
			if (Hlp_Random(2) == 0)
			{
				Wld_PlayEffect ("spellFX_RingRitual1", ItMi_AmbossEffekt_Addon, ItMi_AmbossEffekt_Addon, 0, 0, 0, false);
			}
			else
			{
				Wld_PlayEffect ("spellFX_LIGHTSTAR_RingRitual", ItMi_AmbossEffekt_Addon, ItMi_AmbossEffekt_Addon, 0, 0, 0, false);
			};
		};
	}
	else if (MIS_RitualInnosEyeRepair != LOG_SUCCESS)
	{
		if (Npc_GetStateTime(self) > Hlp_Random(1000))
		{
			Npc_SetStateTime (self, 0);
			Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
			AI_PlayAni (self, "T_PRACTICEMAGIC5");
			
			if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Xardas))
			{
				Wld_PlayEffect ("spellFX_INCOVATION_VIOLET", self, self, 0, 0, 0, false);
			}
			else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Pyrokar))
			{
				Wld_PlayEffect ("spellFX_INCOVATION_RED", self, self, 0, 0, 0, false);
			}
			else
			{
				Wld_PlayEffect ("spellFX_INCOVATION_BLUE", self, self, 0, 0, 0, false);
			};
		};
	};
	
	return LOOP_CONTINUE;
};

func void ZS_Circle_End()
{
};
