///******************************************************************************************
/// B_ExecAmbientInfos
///******************************************************************************************
func int B_ExecAmbientInfos()
{
	if (self.npctype != NPCTYPE_AMBIENT)
	&& (self.npctype != NPCTYPE_OCAMBIENT)
	&& (self.npctype != NPCTYPE_BL_AMBIENT)
	{
		return false;
	};
	
	return false;	/// temp!!!
	
	if (self.aivar[AIV_TalkedToPlayer] < Kapitel)
	{
		if (self.guild == GIL_PAL)
		&& (self.voice == 4)
		&& (self.npctype == NPCTYPE_OCAMBIENT)
		{
			if (Kapitel <= 9)	{	B_Say_Overlay (self, other, "DIA_OCPAL_4_STANDARD_04_01");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_OCPAL_4_STANDARD_04_02");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_OCPAL_4_STANDARD_04_06");	};
		}
		else if (self.guild == GIL_PAL)
		&& (self.voice == 9)
		&& (self.npctype == NPCTYPE_OCAMBIENT)
		{
			if (Kapitel <= 9)	{	B_Say_Overlay (self, other, "DIA_OCPAL_4_STANDARD_09_01");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_OCPAL_4_STANDARD_09_02");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_OCPAL_4_STANDARD_09_04");	};
		}
		else if (self.guild == GIL_MIL)
		&& (self.voice == 1)
		&& (self.npctype == NPCTYPE_OCAMBIENT)
		{
			if (Kapitel <= 9)	{	B_Say_Overlay (self, other, "DIA_OCVLK_1_STANDARD_01_01");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_OCVLK_1_STANDARD_01_02");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_OCVLK_1_STANDARD_01_04");	};
		}
		else if (self.guild == GIL_MIL)
		&& (self.voice == 6)
		&& (self.npctype == NPCTYPE_OCAMBIENT)
		{
			if (Kapitel <= 8)	{	B_Say_Overlay (self, other, "DIA_OCVLK_6_STANDARD_06_01");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_OCVLK_6_STANDARD_06_02");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_OCVLK_6_STANDARD_06_04");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_OCVLK_6_STANDARD_06_06");	};
		}
		else if (self.guild == GIL_MIL)
		&& (self.voice == 6)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_MIL_6_STANDARD_06_02");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_MIL_6_STANDARD_06_04");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_MIL_6_STANDARD_06_05");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_MIL_6_STANDARD_06_07");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_MIL_6_STANDARD_06_08");	};
		}
		else if (self.guild == GIL_MIL)
		&& (self.voice == 7)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_MIL_7_STANDARD_07_01");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_MIL_7_STANDARD_07_02");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_MIL_7_STANDARD_07_04");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_MIL_7_STANDARD_07_05");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_MIL_7_STANDARD_07_06");	};
		}
		else if (self.guild == GIL_VLK)
		&& (self.voice == 1)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_VLK_1_STANDARD_01_01");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_VLK_1_STANDARD_01_02");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_VLK_1_STANDARD_01_03");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_VLK_1_STANDARD_01_04");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_VLK_1_STANDARD_01_05");	};
		}
		else if (self.guild == GIL_VLK)
		&& (self.voice == 6)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_VLK_6_STANDARD_06_01");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_VLK_6_STANDARD_06_02");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_VLK_6_STANDARD_06_04");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_VLK_6_STANDARD_06_05");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_VLK_6_STANDARD_06_06");	};
		}
		else if (self.guild == GIL_VLK)
		&& (self.voice == 8)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_Addon_VLK_8_STANDARD_08_00");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_VLK_8_STANDARD_08_01");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_VLK_8_STANDARD_08_03");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_VLK_8_STANDARD_08_06");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_VLK_8_STANDARD_08_07");	};
		}
		else if (self.guild == GIL_VLK)
		&& (self.voice == 16)
		{
			if (Kapitel <= 8)	{	B_Say_Overlay (self, other, "DIA_VLK_16_STANDARD_16_01");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_VLK_16_STANDARD_16_04");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_VLK_16_STANDARD_16_06");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_VLK_16_STANDARD_16_07");	};
		}
		else if (self.guild == GIL_VLK)
		&& (self.voice == 17)
		{
			if (Kapitel <= 8)	{	B_Say_Overlay (self, other, "DIA_VLK_17_STANDARD_17_01");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_VLK_17_STANDARD_17_03");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_VLK_17_STANDARD_17_04");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_VLK_17_STANDARD_17_05");	};
		}
		else if (self.guild == GIL_SLD)
		&& (self.voice == 6)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_SLD_6_STANDARD_06_02");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_SLD_6_STANDARD_06_03");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_SLD_6_STANDARD_06_04");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_SLD_6_STANDARD_06_09");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_SLD_6_STANDARD_06_12");	};
		}
		else if (self.guild == GIL_SLD)
		&& (self.voice == 7)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_SLD_7_STANDARD_07_02");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_SLD_7_STANDARD_07_03");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_SLD_7_STANDARD_07_04");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_SLD_7_STANDARD_07_12");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_SLD_7_STANDARD_07_15");	};
		}
		else if (self.guild == GIL_BAU)
		&& (self.voice == 1)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_BAU_1_STANDARD_01_01");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_BAU_1_STANDARD_01_02");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_BAU_1_STANDARD_01_03");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_BAU_1_STANDARD_01_04");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_BAU_1_STANDARD_01_05");	};
		}
		else if (self.guild == GIL_BAU)
		&& (self.voice == 7)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_BAU_7_STANDARD_07_01");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_BAU_7_STANDARD_07_02");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_BAU_7_STANDARD_07_03");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_BAU_7_STANDARD_07_04");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_BAU_7_STANDARD_07_05");	};
		}
		else if (self.guild == GIL_BAU)
		&& (self.voice == 13)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_BAU_13_STANDARD_13_01");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_BAU_13_STANDARD_13_02");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_BAU_13_STANDARD_13_03");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_BAU_13_STANDARD_13_04");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_BAU_13_STANDARD_13_05");	};
		}
		else if (self.guild == GIL_BAU)
		&& (self.voice == 16)
		{
			if (Kapitel <= 7)	{	B_Say_Overlay (self, other, "DIA_BAU_16_STANDARD_16_01");	};
			if (Kapitel == 8)	{	B_Say_Overlay (self, other, "DIA_BAU_16_STANDARD_16_02");	};
			if (Kapitel == 9)	{	B_Say_Overlay (self, other, "DIA_BAU_16_STANDARD_16_03");	};
			if (Kapitel == 10)	{	B_Say_Overlay (self, other, "DIA_BAU_16_STANDARD_16_04");	};
			if (Kapitel >= 11)	{	B_Say_Overlay (self, other, "DIA_BAU_16_STANDARD_16_05");	};
		}
		else
		{
			B_Say_Overlay (self, other, "$NotNow");
		};
		
		//self.aivar[AIV_TalkedToPlayer] = Kapitel;
	}
	else
	{
		if (self.guild == GIL_PAL)
		&& (self.voice == 4)
		&& (self.npctype == NPCTYPE_OCAMBIENT)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OWPAL_4_STANDARD_04_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OWPAL_4_STANDARD_04_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_OWPAL_4_STANDARD_04_02");	};
		}
		else if (self.guild == GIL_BDT)
		&& (self.voice == 1)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_BDT_1_STANDARD_01_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_BDT_1_STANDARD_01_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_BDT_1_STANDARD_01_02");	};
		}
		else if (self.guild == GIL_BDT)
		&& (self.voice == 13)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_BDT_13_STANDARD_13_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_BDT_13_STANDARD_13_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_BDT_13_STANDARD_13_02");	};
		}
		else if (self.guild == GIL_STRF)
		&& (self.voice == 3)
		&& (self.npctype == NPCTYPE_BL_AMBIENT)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_Addon_Sklaven_3_STANDARD_03_02");	};
		}
		else if (self.guild == GIL_STRF)
		&& (self.voice == 1)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_STRF_1_STANDARD_01_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_STRF_1_STANDARD_01_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_STRF_1_STANDARD_01_02");	};
		}
		else if (self.guild == GIL_STRF)
		&& (self.voice == 13)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_STRF_13_STANDARD_13_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_STRF_13_STANDARD_13_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_STRF_13_STANDARD_13_02");	};
		}
		else if (self.guild == GIL_OUT)
		&& (self.voice == 1)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_01_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_01_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_01_02");	};
		}
		else if (self.guild == GIL_OUT)
		&& (self.voice == 7)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OUT_7_STANDARD_07_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OUT_7_STANDARD_07_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_OUT_7_STANDARD_07_02");	};
		}
		else if (self.guild == GIL_OUT)
		&& (self.voice == 13)
		{
			if (Hlp_Random(2) == 0)			{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_13_00");	}
			else if (Hlp_Random(2) == 0)	{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_13_01");	}
			else							{	B_Say_Overlay (self, other, "DIA_OUT_1_STANDARD_13_02");	};
		}
		else
		{
			B_Say_Overlay (self, other, "$NotNow");
		};
	};
	
	return true;
};
