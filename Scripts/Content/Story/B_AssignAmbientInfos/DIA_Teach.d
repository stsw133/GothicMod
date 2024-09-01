///******************************************************************************************
/// TEACH
///******************************************************************************************
instance DIA_Teach_JOIN (C_Info)
{
	nr									=	802;
	condition							=	DIA_Teach_JOIN_Condition;
	information							=	DIA_Teach_JOIN2_Info;
	permanent							=	true;
	description							=	DIALOG_TEACH;
};
func int DIA_Teach_JOIN_Condition()
{
	if ((self.aivar[AIV_CanOffer] & OFFER_Teaching))
	{
		return true;
	};
};
///******************************************************************************************
func void DIA_Teach_JOIN_Info()
{
	Info_ClearChoices(DIA_Teach_JOIN);
	Info_AddChoice (DIA_Teach_JOIN, DIALOG_BACK, DIA_Teach_JOIN_BACK);
	
	//B_PreBuildLearnString();
	
	/// THROW
	if (Npc_GetTalentValue(other, NPC_TALENT_THROW) < Npc_GetTalentValue(self, NPC_TALENT_THROW))
	{
		
	};
	/// 1H
	if (Npc_GetTalentValue(other, NPC_TALENT_1H) < Npc_GetTalentValue(self, NPC_TALENT_1H))
	{
		if (Hlp_GetInstanceID(self) == SLD_802_Buster)
		|| (Hlp_GetInstanceID(self) == VLK_438_Alrik)
		|| (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		|| (Hlp_GetInstanceID(self) == PAL_258_Keroloth && !Keroloths_BeutelLeer)
		|| (Hlp_GetInstanceID(self) == DJG_712_Hokurn && HokurnLastDrink >= Wld_GetDay())
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion_DI)
		|| (Hlp_GetInstanceID(self) == PAL_216_Cedric)
		|| (Hlp_GetInstanceID(self) == SLD_800_Lee_DI)
		|| (Hlp_GetInstanceID(self) == SLD_805_Cord && (Npc_GetTalentSkill(other, NPC_TALENT_1H) > 0 || Cord_RangerHelp_Fight))
		|| (Hlp_GetInstanceID(self) == VLK_449_Lares_DI)
		|| (Hlp_GetInstanceID(self) == PIR_1353_Addon_Morgan)
		|| (Hlp_GetInstanceID(self) == MIL_312_Wulfgar && (other.guild != GIL_SLD && other.guild != GIL_DJG))
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn1h, IntToString(10)), B_GetLearnCostAttribute(other, NPC_TALENT_1H)*10, true), DIA_Teach_JOIN_1h_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn1h, IntToString(5)), B_GetLearnCostAttribute(other, NPC_TALENT_1H)*5, true), DIA_Teach_JOIN_1h_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn1h, IntToString(1)), B_GetLearnCostAttribute(other, NPC_TALENT_1H)*1, true), DIA_Teach_JOIN_1h_1);
		};
	};
	/// 2H
	if (Npc_GetTalentValue(other, NPC_TALENT_2H) < Npc_GetTalentValue(self, NPC_TALENT_2H))
	{
		if (Hlp_GetInstanceID(self) == NOV_612_Babo)
		|| (Hlp_GetInstanceID(self) == PAL_258_Keroloth && !Keroloths_BeutelLeer)
		|| (Hlp_GetInstanceID(self) == Sld_804_Rod)
		|| (Hlp_GetInstanceID(self) == DJG_712_Hokurn && HokurnLastDrink >= Wld_GetDay())
		|| (Hlp_GetInstanceID(self) == PAL_200_Hagen)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion_DI)
		|| (Hlp_GetInstanceID(self) == PC_Fighter_DI)
		|| (Hlp_GetInstanceID(self) == SLD_800_Lee)
		|| (Hlp_GetInstanceID(self) == SLD_800_Lee_DI)
		|| (Hlp_GetInstanceID(self) == SLD_805_Cord && (Npc_GetTalentSkill(other, NPC_TALENT_2H) > 0 || Cord_RangerHelp_Fight))
		|| (Hlp_GetInstanceID(self) == PIR_1354_Addon_Henry)
		|| (Hlp_GetInstanceID(self) == Mil_312_Wulfgar && (other.guild != GIL_SLD && other.guild != GIL_DJG))
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn2h, IntToString(10)), B_GetLearnCostAttribute(other, NPC_TALENT_2H)*10, true), DIA_Teach_JOIN_2h_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn2h, IntToString(5)), B_GetLearnCostAttribute(other, NPC_TALENT_2H)*5, true), DIA_Teach_JOIN_2h_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn2h, IntToString(1)), B_GetLearnCostAttribute(other, NPC_TALENT_2H)*1, true), DIA_Teach_JOIN_2h_1);
		};
	};
	/// BOW
	if (Npc_GetTalentValue(other, NPC_TALENT_BOW) < Npc_GetTalentValue(self, NPC_TALENT_BOW))
	{
		if (Hlp_GetInstanceID(self) == VLK_440_Bartok)
		|| (Hlp_GetInstanceID(self) == BAU_984_Niclas)
		|| (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf_DI)
		|| (Hlp_GetInstanceID(self) == PIR_1352_Addon_AlligatorJack)
		|| (Hlp_GetInstanceID(self) == PC_Thief_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnBow, IntToString(10)), B_GetLearnCostAttribute(other, NPC_TALENT_BOW)*10, true), DIA_Teach_JOIN_Bow_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnBow, IntToString(5)), B_GetLearnCostAttribute(other, NPC_TALENT_BOW)*5, true), DIA_Teach_JOIN_Bow_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnBow, IntToString(1)), B_GetLearnCostAttribute(other, NPC_TALENT_BOW)*1, true), DIA_Teach_JOIN_Bow_1);
		};
	};
	/// CROSSBOW
	if (Npc_GetTalentValue(other, NPC_TALENT_CROSSBOW) < Npc_GetTalentValue(self, NPC_TALENT_CROSSBOW))
	{
		if (Hlp_GetInstanceID(self) == Mil_317_Ruga)
		|| (Hlp_GetInstanceID(self) == PAL_268_Udar)
		|| (Hlp_GetInstanceID(self) == BAU_983_Dragomir)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion_DI)
		|| (Hlp_GetInstanceID(self) == PIR_1354_Addon_Henry)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnCBow, IntToString(10)), B_GetLearnCostAttribute(other, NPC_TALENT_CROSSBOW)*10, true), DIA_Teach_JOIN_Cbow_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnCBow, IntToString(5)), B_GetLearnCostAttribute(other, NPC_TALENT_CROSSBOW)*5, true), DIA_Teach_JOIN_Cbow_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnCBow, IntToString(1)), B_GetLearnCostAttribute(other, NPC_TALENT_CROSSBOW)*1, true), DIA_Teach_JOIN_Cbow_1);
		};
	};
	/// MAGIC
	if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 1 && Kapitel >= 7)
	&& (other.guild == GIL_KDF)
	{
		if (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_1, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 1), true), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 2 && Kapitel >= 8)
	{
		if (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == PC_Mage_OW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_2, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 2), true), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 3 && Kapitel >= 9)
	{
		if (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_3, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 3), true), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 4 && Kapitel >= 10)
	{
		if (Hlp_GetInstanceID(self) == KDF_503_Karras)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_4, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 4), true), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 5 && Kapitel >= 11)
	{
		if (Hlp_GetInstanceID(self) == KDF_503_Karras)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_5, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 5), true), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 6 && Kapitel >= 11)
	{
		if (Hlp_GetInstanceID(self) == KDF_500_Pyrokar && MIS_SCKnowsWayToIrdorath)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_6, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 6), true), DIA_Teach_JOIN_Magic);
		};
	};
	/*
	/// SNEAK
	if (Npc_GetTalentSkill(other, NPC_TALENT_SNEAK) == 0)
	{
		if (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		|| (Hlp_GetInstanceID(self) == DJG_711_Godar)
		|| (Hlp_GetInstanceID(self) == VLK_440_Bartok)
		|| (Hlp_GetInstanceID(self) == VLK_446_Jesper)
		|| (Hlp_GetInstanceID(self) == VLK_449_Lares_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnSneak, B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1), true), DIA_Teach_JOIN_Sneak);
		};
	};
	/// ACROBATIC
	if (Npc_GetTalentSkill(other, NPC_TALENT_ACROBATIC) == 0)
	{
		if (Hlp_GetInstanceID(self) == BDT_1091_Addon_Lucia)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnAcrobatic, B_GetLearnCostTalent(other, NPC_TALENT_ACROBATIC, 1), true), DIA_Teach_JOIN_Acrobatic);
		};
	};
	*/
	/// PICKLOCK
	if (!Npc_GetTalentSkill(other, NPC_TALENT_PICKLOCK))
	{
		if (Hlp_GetInstanceID(self) == PC_Thief_DI)
		|| (Hlp_GetInstanceID(self) == PC_Thief_NW)
		|| (Hlp_GetInstanceID(self) == PC_ThiefOW)
		|| (Hlp_GetInstanceID(self) == VLK_445_Ramirez)
		|| (Hlp_GetInstanceID(self) == VLK_462_Thorben)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnPicklock, B_GetLearnCostTalent(other, NPC_TALENT_PICKLOCK, 1), true), DIA_Teach_JOIN_Picklock);
		};
	};
	/// PICKPOCKET
	if (!Npc_GetTalentSkill(other, NPC_TALENT_PICKPOCKET))
	{
		if (Hlp_GetInstanceID(self) == VLK_447_Cassia)
		|| (Hlp_GetInstanceID(self) == PIR_1356_Addon_Bill)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnPickpocket_1, B_GetLearnCostTalent(other, NPC_TALENT_PICKPOCKET, 1), true), DIA_Teach_JOIN_Pickpocket);
		};
	};
	/// PERSUASION
	if (!Npc_GetTalentSkill(other, NPC_TALENT_PERSUASION))
	{
		if (Hlp_GetInstanceID(self) == PC_Thief_DI)
		|| (Hlp_GetInstanceID(self) == PC_Thief_NW)
		|| (Hlp_GetInstanceID(self) == PC_ThiefOW)
		|| (Hlp_GetInstanceID(self) == VLK_447_Cassia)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnPersuasion, B_GetLearnCostTalent(other, NPC_TALENT_PERSUASION, 1), true), DIA_Teach_JOIN_Persuasion);
		};
	};
	/// SMITH
	if (!Npc_GetTalentSkill(other, NPC_TALENT_SMITH))
	{
		if (Hlp_GetInstanceID(self) == DJG_714_Jan)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet && !Bennet_TeachSmith)
		|| (Hlp_GetInstanceID(self) == VLK_4106_Dobar)
		|| (Hlp_GetInstanceID(self) == VLK_412_Harad)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet && Bennet_TeachSmith)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnSmith_1, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, 1), true), DIA_Teach_JOIN_Smith);
		};
	};
	/// ALCHEMY
	if (!Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY))
	{
		if (Hlp_GetInstanceID(self) == VLK_498_Ignaz)
		|| (Hlp_GetInstanceID(self) == VLK_417_Constantino)
		|| (Hlp_GetInstanceID(self) == KDW_14040_Addon_Riordian_ADW)
		|| (Hlp_GetInstanceID(self) == BAU_980_Sagitta)
		|| (Hlp_GetInstanceID(self) == KDF_506_Neoras)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnAlchemy_1, B_GetLearnCostTalent(other, NPC_TALENT_ALCHEMY, 1), true), DIA_Teach_JOIN_Alchemy);
		};
	};
	/// HUNTING
	if (!Npc_GetTalentSkill(other, NPC_TALENT_HUNTING))
	{
		if (Hlp_GetInstanceID(self) == BDT_1072_Addon_Logan)
		|| (Hlp_GetInstanceID(self) == PIR_1352_Addon_AlligatorJack)
		|| (Hlp_GetInstanceID(self) == SLD_822_Raoul)
		|| (Hlp_GetInstanceID(self) == VLK_413_Bosper)
		|| (Hlp_GetInstanceID(self) == VLK_4130_Talbin)
		|| (Hlp_GetInstanceID(self) == BDT_1074_Addon_Edgor)
		|| (Hlp_GetInstanceID(self) == BAU_961_Gaan)
		|| (Hlp_GetInstanceID(self) == BAU_981_Grom)
		|| (Hlp_GetInstanceID(self) == BAU_982_Grimbald)
		|| (Hlp_GetInstanceID(self) == DJG_711_Godar)
		|| (Hlp_GetInstanceID(self) == SLD_802_Buster)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf)
		|| (Hlp_GetInstanceID(self) == VLK_4110_Jergan)
		|| (Hlp_GetInstanceID(self) == VLK_4148_Gestath)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnHunting, B_GetLearnCostTalent(other, NPC_TALENT_HUNTING, 1), true), DIA_Teach_JOIN_Hunting);
		};
	};
};

func void DIA_Teach_JOIN2_Info()
{
	var int rand; rand = Hlp_Random(3);
	
	if (rand == 0)
	{
		AI_Output (other, self, "DIA_Addon_Henry_Teach_15_00"); //Ucz mnie.
	}
	else if (rand == 1)
	{
		AI_Output (other, self, "DIA_Addon_AlligatorJack_Teach_15_00"); //Naucz mnie.
	}
	else
	{
		AI_Output (other, self, "DIA_Udar_Teach_15_00"); //Chcę się od ciebie uczyć.
	};
	
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
/*
func void DIA_Teach_JOIN_STR_1()
{
	B_TeachAttribute (self, other, ATR_STRENGTH, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_STR_5()
{
	B_TeachAttribute (self, other, ATR_STRENGTH, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_STR_10()
{
	B_TeachAttribute (self, other, ATR_STRENGTH, 10);
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_DEX_1()
{
	B_TeachAttribute (self, other, ATR_DEXTERITY, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_DEX_5()
{
	B_TeachAttribute (self, other, ATR_DEXTERITY, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_DEX_10()
{
	B_TeachAttribute (self, other, ATR_DEXTERITY, 10);
	DIA_Teach_JOIN_Info();
};
*/
///******************************************************************************************
func void DIA_Teach_JOIN_Throw_1()
{
	B_TeachHitchance (self, other, NPC_TALENT_THROW, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Throw_5()
{
	B_TeachHitchance (self, other, NPC_TALENT_THROW, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Throw_10()
{
	B_TeachHitchance (self, other, NPC_TALENT_THROW, 10);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_1h_1()
{
	B_TeachHitchance (self, other, NPC_TALENT_1H, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_1h_5()
{
	B_TeachHitchance (self, other, NPC_TALENT_1H, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_1h_10()
{
	B_TeachHitchance (self, other, NPC_TALENT_1H, 10);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_2h_1()
{
	B_TeachHitchance (self, other, NPC_TALENT_2H, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_2h_5()
{
	B_TeachHitchance (self, other, NPC_TALENT_2H, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_2h_10()
{
	B_TeachHitchance (self, other, NPC_TALENT_2H, 10);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Bow_1()
{
	B_TeachHitchance (self, other, NPC_TALENT_BOW, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Bow_5()
{
	B_TeachHitchance (self, other, NPC_TALENT_BOW, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Bow_10()
{
	B_TeachHitchance (self, other, NPC_TALENT_BOW, 10);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Cbow_1()
{
	B_TeachHitchance (self, other, NPC_TALENT_CROSSBOW, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Cbow_5()
{
	B_TeachHitchance (self, other, NPC_TALENT_CROSSBOW, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Cbow_10()
{
	B_TeachHitchance (self, other, NPC_TALENT_CROSSBOW, 10);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Magic()
{
	B_TeachTalent (self, other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Enchanting()
{
	B_TeachTalent(self, other, NPC_TALENT_ENCHANTING, Npc_GetTalentSkill(other, NPC_TALENT_ENCHANTING) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Language()
{
	B_TeachTalent(self, other, NPC_TALENT_LANGUAGE, Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) + 1);
	DIA_Teach_JOIN_Info();
};
/*
///******************************************************************************************
func void DIA_Teach_JOIN_Sneak()
{
	B_TeachTalent (self, other, NPC_TALENT_SNEAK, Npc_GetTalentSkill(other, NPC_TALENT_SNEAK) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Prorun()
{
	B_TeachTalent (self, other, NPC_TALENT_PRORUN, Npc_GetTalentSkill(other, NPC_TALENT_PRORUN) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Acrobatic()
{
	B_TeachTalent (self, other, NPC_TALENT_ACROBATIC, Npc_GetTalentSkill(other, NPC_TALENT_ACROBATIC) + 1);
	DIA_Teach_JOIN_Info();
};
*/
///******************************************************************************************
func void DIA_Teach_JOIN_Picklock()
{
	B_TeachTalent (self, other, NPC_TALENT_PICKLOCK, Npc_GetTalentSkill(other, NPC_TALENT_PICKLOCK) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Pickpocket()
{
	B_TeachTalent (self, other, NPC_TALENT_PICKPOCKET, Npc_GetTalentSkill(other, NPC_TALENT_PICKPOCKET) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Persuasion()
{
	B_TeachTalent (self, other, NPC_TALENT_PERSUASION, Npc_GetTalentSkill(other, NPC_TALENT_PERSUASION) + 1);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Smith()
{
	B_TeachTalent(self, other, NPC_TALENT_SMITH, Npc_GetTalentSkill(other, NPC_TALENT_SMITH) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Alchemy()
{
	B_TeachTalent(self, other, NPC_TALENT_ALCHEMY, Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Hunting()
{
	B_TeachTalent(self, other, NPC_TALENT_HUNTING, Npc_GetTalentSkill(other, NPC_TALENT_HUNTING) + 1);
	DIA_Teach_JOIN_Info();
};
/*
///******************************************************************************************
func void DIA_Teach_JOIN_Cooking()
{
	B_TeachTalent(self, other, NPC_TALENT_COOKING, Npc_GetTalentSkill(other, NPC_TALENT_COOKING) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_ProtPoison()
{
	B_TeachTalent(self, other, NPC_TALENT_PROTPOISON, Npc_GetTalentSkill(other, NPC_TALENT_PROTPOISON) + 1);
	DIA_Teach_JOIN_Info();
};
*/
///******************************************************************************************
func void DIA_Teach_JOIN_BACK()
{
	Info_ClearChoices(DIA_Teach_JOIN);
};
