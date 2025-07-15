///******************************************************************************************
func void DIA_Teach_JOIN_Info()
{
	Info_ClearChoices(DIA_Teach_JOIN);
	Info_AddChoice (DIA_Teach_JOIN, DIALOG_BACK, DIA_Teach_JOIN_BACK);
	
	//B_PreBuildLearnString();
	
	/// HUNTING
	if (!Npc_GetTalentSkill(other, NPC_TALENT_HUNTING))
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == BDT_1072_Addon_Logan)
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
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnHunting, B_GetLearnCostTalent(other, NPC_TALENT_HUNTING, HUNTING_Blood), GOLD_PER_LP*2), DIA_Teach_JOIN_Hunting);
		};
	};
	
	/// ALCHEMY
	if (!Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY))
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == VLK_498_Ignaz)
		|| (Hlp_GetInstanceID(self) == VLK_417_Constantino)
		|| (Hlp_GetInstanceID(self) == KDW_14040_Addon_Riordian_ADW)
		|| (Hlp_GetInstanceID(self) == BAU_980_Sagitta)
		|| (Hlp_GetInstanceID(self) == KDF_506_Neoras)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnAlchemy_1, B_GetLearnCostTalent(other, NPC_TALENT_ALCHEMY, Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Alchemy);
		};
	};
	
	/// ENCHANTING
	if (!Npc_GetTalentSkill(other, NPC_TALENT_ENCHANTING))
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnEnchanting_1, B_GetLearnCostTalent(other, NPC_TALENT_ENCHANTING, Npc_GetTalentSkill(other, NPC_TALENT_ENCHANTING) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Enchanting);
		};
	};
	
	/// SMITH
	if (!Npc_GetTalentSkill(other, NPC_TALENT_SMITH))
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == DJG_714_Jan)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet && !Bennet_TeachSmith)
		|| (Hlp_GetInstanceID(self) == VLK_4106_Dobar)
		|| (Hlp_GetInstanceID(self) == VLK_412_Harad)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet && Bennet_TeachSmith)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnSmith_1, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, Npc_GetTalentSkill(other, NPC_TALENT_SMITH) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Smith);
		};
	};
	
	/// FLETCHERY
	if (!Npc_GetTalentSkill(other, NPC_TALENT_FLETCHERY))
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFletchery_1, B_GetLearnCostTalent(other, NPC_TALENT_FLETCHERY, Npc_GetTalentSkill(other, NPC_TALENT_FLETCHERY) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Fletchery);
		};
	};
	
	/// PERSUASION
	if (!Npc_GetTalentSkill(other, NPC_TALENT_PERSUASION))
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == PC_Thief_DI)
		|| (Hlp_GetInstanceID(self) == PC_Thief_NW)
		|| (Hlp_GetInstanceID(self) == PC_ThiefOW)
		|| (Hlp_GetInstanceID(self) == VLK_447_Cassia)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnPersuasion, B_GetLearnCostTalent(other, NPC_TALENT_PERSUASION, Npc_GetTalentSkill(other, NPC_TALENT_PERSUASION) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Persuasion);
		};
	};
	
	/// PICKPOCKET
	if (!Npc_GetTalentSkill(other, NPC_TALENT_PICKPOCKET))
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == VLK_447_Cassia)
		|| (Hlp_GetInstanceID(self) == PIR_1356_Addon_Bill)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnPickpocket, B_GetLearnCostTalent(other, NPC_TALENT_PICKPOCKET, Npc_GetTalentSkill(other, NPC_TALENT_PICKPOCKET) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Pickpocket);
		};
	};
	
	/// PICKLOCK
	if (!Npc_GetTalentSkill(other, NPC_TALENT_PICKLOCK))
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == PC_Thief_DI)
		|| (Hlp_GetInstanceID(self) == PC_Thief_NW)
		|| (Hlp_GetInstanceID(self) == PC_ThiefOW)
		|| (Hlp_GetInstanceID(self) == VLK_445_Ramirez)
		|| (Hlp_GetInstanceID(self) == VLK_462_Thorben)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnPicklock, B_GetLearnCostTalent(other, NPC_TALENT_PICKLOCK, Npc_GetTalentSkill(other, NPC_TALENT_PICKLOCK) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Picklock);
		};
	};
	
	/// ACROBATIC
	if (!Npc_GetTalentSkill(other, NPC_TALENT_ACROBATIC))
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == BDT_1091_Addon_Lucia)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnAcrobatic, B_GetLearnCostTalent(other, NPC_TALENT_ACROBATIC, Npc_GetTalentSkill(other, NPC_TALENT_ACROBATIC) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Acrobatic);
		};
	};
	
	/// SNEAK
	if (!Npc_GetTalentSkill(other, NPC_TALENT_SNEAK))
	{
		if (Hlp_GetInstanceID(self) == HC)
		//|| (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		//|| (Hlp_GetInstanceID(self) == DJG_711_Godar)
		//|| (Hlp_GetInstanceID(self) == VLK_440_Bartok)
		//|| (Hlp_GetInstanceID(self) == VLK_446_Jesper)
		//|| (Hlp_GetInstanceID(self) == VLK_449_Lares_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnSneak, B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, Npc_GetTalentSkill(other, NPC_TALENT_SNEAK) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Sneak);
		};
	};
	
	/// LANGUAGE
	if (!Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE))
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnLanguage, B_GetLearnCostTalent(other, NPC_TALENT_LANGUAGE, Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Language);
		};
	};
	
	/// MAGIC
	if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 1 && Kapitel >= 7)
	&& (other.guild == GIL_KDF)
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_1, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 1), GOLD_PER_LP), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 2 && Kapitel >= 8)
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == PC_Mage_OW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_2, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 2), GOLD_PER_LP), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 3 && Kapitel >= 9)
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_3, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 3), GOLD_PER_LP), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 4 && Kapitel >= 10)
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == KDF_503_Karras)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_4, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 4), GOLD_PER_LP), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 5 && Kapitel >= 11)
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == KDF_503_Karras)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_5, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 5), GOLD_PER_LP), DIA_Teach_JOIN_Magic);
		};
	}
	else if (Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) < 6 && Kapitel >= 11)
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == KDF_500_Pyrokar && MIS_SCKnowsWayToIrdorath)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic_6, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, 6), GOLD_PER_LP), DIA_Teach_JOIN_Magic);
		};
	};
	
	/// SHIELD
	if (!Npc_GetTalentSkill(other, NPC_TALENT_SHIELD))
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnShield, B_GetLearnCostTalent(other, NPC_TALENT_SHIELD, Npc_GetTalentSkill(other, NPC_TALENT_SHIELD) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Shield);
		};
	};
	
	/// DUAL
	if (!Npc_GetTalentSkill(other, NPC_TALENT_DUAL))
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnDual, B_GetLearnCostTalent(other, NPC_TALENT_DUAL, Npc_GetTalentSkill(other, NPC_TALENT_DUAL) + 1), GOLD_PER_LP), DIA_Teach_JOIN_Dual);
		};
	};
	
	/// CROSSBOW
	if (self.hitchance[NPC_TALENT_CROSSBOW] > other.hitchance[NPC_TALENT_CROSSBOW])
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == Mil_317_Ruga)
		|| (Hlp_GetInstanceID(self) == PAL_268_Udar)
		|| (Hlp_GetInstanceID(self) == BAU_983_Dragomir)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion_DI)
		|| (Hlp_GetInstanceID(self) == PIR_1354_Addon_Henry)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf_DI)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnCBow, IntToString(10)), B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_Cbow_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnCBow, IntToString(5)), B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_Cbow_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnCBow, IntToString(1)), B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_Cbow_1);
		};
	};
	
	/// BOW
	if (self.hitchance[NPC_TALENT_BOW] > other.hitchance[NPC_TALENT_BOW])
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == VLK_440_Bartok)
		|| (Hlp_GetInstanceID(self) == BAU_984_Niclas)
		|| (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf_DI)
		|| (Hlp_GetInstanceID(self) == PIR_1352_Addon_AlligatorJack)
		|| (Hlp_GetInstanceID(self) == PC_Thief_DI)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnBow, IntToString(10)), B_GetLearnCostTalent(other, NPC_TALENT_BOW, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_Bow_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnBow, IntToString(5)), B_GetLearnCostTalent(other, NPC_TALENT_BOW, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_Bow_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnBow, IntToString(1)), B_GetLearnCostTalent(other, NPC_TALENT_BOW, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_Bow_1);
		};
	};
	
	/// 2H
	if (self.hitchance[NPC_TALENT_2H] > other.hitchance[NPC_TALENT_2H])
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == NOV_612_Babo)
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
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn2h, IntToString(10)), B_GetLearnCostTalent(other, NPC_TALENT_2H, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_2h_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn2h, IntToString(5)), B_GetLearnCostTalent(other, NPC_TALENT_2H, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_2h_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn2h, IntToString(1)), B_GetLearnCostTalent(other, NPC_TALENT_2H, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_2h_1);
		};
	};
	
	/// 1H
	if (self.hitchance[NPC_TALENT_1H] > other.hitchance[NPC_TALENT_1H])
	{
		if (Hlp_GetInstanceID(self) == HC)
		|| (Hlp_GetInstanceID(self) == SLD_802_Buster)
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
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn1h, IntToString(10)), B_GetLearnCostTalent(other, NPC_TALENT_1H, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_1h_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn1h, IntToString(5)), B_GetLearnCostTalent(other, NPC_TALENT_1H, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_1h_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_Learn1h, IntToString(1)), B_GetLearnCostTalent(other, NPC_TALENT_1H, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_1h_1);
		};
	};
	
	/// EXTRACTION
	if (Npc_GetTalentValue(self, NPC_TALENT_EXTRACTION) > Npc_GetTalentValue(other, NPC_TALENT_EXTRACTION))
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnExtraction, IntToString(10)), B_GetLearnCostTalent(other, NPC_TALENT_EXTRACTION, 10), GOLD_PER_LP/4), DIA_Teach_JOIN_Extraction_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnExtraction, IntToString(5)), B_GetLearnCostTalent(other, NPC_TALENT_EXTRACTION, 5), GOLD_PER_LP/4), DIA_Teach_JOIN_Extraction_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnExtraction, IntToString(1)), B_GetLearnCostTalent(other, NPC_TALENT_EXTRACTION, 1), GOLD_PER_LP/4), DIA_Teach_JOIN_Extraction_1);
		};
	};
	
	/// HP
	if (self.attribute[ATR_HITPOINTS_MAX] > other.attribute[ATR_HITPOINTS_MAX])
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnHP, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_HP_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnHP, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_HP_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnHP, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_HITPOINTS_MAX, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_HP_1);
		};
	};
	
	/// MP
	if (self.attribute[ATR_MANA_MAX] > other.attribute[ATR_MANA_MAX])
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnMP, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_MANA_MAX, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_MP_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnMP, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_MANA_MAX, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_MP_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnMP, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_MANA_MAX, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_MP_1);
		};
	};
	
	/// POW
	if (self.attribute[ATR_POWER] > other.attribute[ATR_POWER])
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnPow, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_POWER, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_Pow_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnPow, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_POWER, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_Pow_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnPow, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_POWER, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_Pow_1);
		};
	};
	
	/// DEX
	if (self.attribute[ATR_DEXTERITY] > other.attribute[ATR_DEXTERITY])
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnDex, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_DEXTERITY, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_Dex_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnDex, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_DEXTERITY, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_Dex_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnDex, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_DEXTERITY, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_Dex_1);
		};
	};
	
	/// STR
	if (self.attribute[ATR_STRENGTH] > other.attribute[ATR_STRENGTH])
	{
		if (Hlp_GetInstanceID(self) == HC)
		{
			//Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnStr, IntToString(10)), B_GetLearnCostAttribute(hero, ATR_STRENGTH, 10), GOLD_PER_LP/2), DIA_Teach_JOIN_Str_10);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnStr, IntToString(5)), B_GetLearnCostAttribute(hero, ATR_STRENGTH, 5), GOLD_PER_LP/2), DIA_Teach_JOIN_Str_5);
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(ConcatStrings(PRINT_LearnStr, IntToString(1)), B_GetLearnCostAttribute(hero, ATR_STRENGTH, 1), GOLD_PER_LP/2), DIA_Teach_JOIN_Str_1);
		};
	};
};

///******************************************************************************************
/// TEACH
///******************************************************************************************
instance DIA_Teach_JOIN (C_Info)
{
	nr									=	802;
	condition							=	DIA_Teach_JOIN_Condition;
	information							=	DIA_Teach_JOIN_PreInfo;
	permanent							=	true;
	description							=	DIALOG_TEACH;
};

func int DIA_Teach_JOIN_Condition()
{
	if (self.aivar[AIV_CanOffer] & OFFER_Teaching)
	{
		return true;
	};
};

func void DIA_Teach_JOIN_PreInfo()
{
	var int rand; rand = Hlp_Random(9);
	
	if (rand == 0)
	{
		AI_Output (other, self, "DIA_Addon_Henry_Teach_15_00"); //Ucz mnie.
	}
	else if (rand == 1)
	{
		AI_Output (other, self, "DIA_Addon_AlligatorJack_Teach_15_00"); //Naucz mnie.
	}
	else if (rand == 2)
	{
		AI_Output (other, self, "DIA_Addon_Cavalorn_TEACH_15_00"); //Chcę się czegoś od ciebie nauczyć.
	}
	else if (rand == 3)
	{
		AI_Output (other, self, "DIA_Addon_Francis_TeachPlayer_15_00"); //Naucz mnie czegoś.
	}
	else if (rand == 4)
	{
		AI_Output (other, self, "DIA_Dragomir_Teach_15_00"); //Naucz mnie czegoś.
	}
	else if (rand == 5)
	{
		AI_Output (other, self, "DIA_Parlan_TEACH_15_00"); //Naucz mnie!
	}
	else if (rand == 6)
	{
		AI_Output (other, self, "DIA_Marduk_TEACH_15_00"); //Zostań moim nauczycielem.
	}
	else if (rand == 7)
	{
		AI_Output (other, self, "DIA_Lares_DI_Training_15_00"); //Naucz mnie tego, co potrafisz.
	}
	else
	{
		AI_Output (other, self, "DIA_Udar_Teach_15_00"); //Chcę się od ciebie uczyć.
	};
	
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Str_1()
{
	if (B_TeachAttribute(self, other, ATR_STRENGTH, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Bennet_TeachSTR_15_00"); //Chcę być silniejszy.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Str_5()
{
	if (B_TeachAttribute(self, other, ATR_STRENGTH, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Bennet_TeachSTR_15_00"); //Chcę być silniejszy.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Str_10()
{
	if (B_TeachAttribute(self, other, ATR_STRENGTH, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Bennet_TeachSTR_15_00"); //Chcę być silniejszy.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Dex_1()
{
	if (B_TeachAttribute(self, other, ATR_DEXTERITY, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Cassia_TEACH_15_00"); //Chcę być zręczniejszy.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Dex_5()
{
	if (B_TeachAttribute(self, other, ATR_DEXTERITY, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Cassia_TEACH_15_00"); //Chcę być zręczniejszy.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Dex_10()
{
	if (B_TeachAttribute(self, other, ATR_DEXTERITY, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Cassia_TEACH_15_00"); //Chcę być zręczniejszy.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Pow_1()
{
	if (B_TeachAttribute(self, other, ATR_POWER, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_MiltenNW_Mana_15_00"); //Chcę zwiększyć moją magiczną moc.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Pow_5()
{
	if (B_TeachAttribute(self, other, ATR_POWER, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_MiltenNW_Mana_15_00"); //Chcę zwiększyć moją magiczną moc.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Pow_10()
{
	if (B_TeachAttribute(self, other, ATR_POWER, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_MiltenNW_Mana_15_00"); //Chcę zwiększyć moją magiczną moc.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_MP_1()
{
	if (B_TeachAttribute(self, other, ATR_MANA_MAX, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Addon_Merdarion_ADW_TEACH_MANA_15_00"); //Chcę zwiększyć swoje zasoby magicznej energii.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_MP_5()
{
	if (B_TeachAttribute(self, other, ATR_MANA_MAX, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Addon_Merdarion_ADW_TEACH_MANA_15_00"); //Chcę zwiększyć swoje zasoby magicznej energii.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_MP_10()
{
	if (B_TeachAttribute(self, other, ATR_MANA_MAX, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Addon_Merdarion_ADW_TEACH_MANA_15_00"); //Chcę zwiększyć swoje zasoby magicznej energii.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_HP_1()
{
	if (B_TeachAttribute(self, other, ATR_HITPOINTS_MAX, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Vatras_HEAL_15_00"); //Możesz mnie uzdrowić?
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_HP_5()
{
	if (B_TeachAttribute(self, other, ATR_HITPOINTS_MAX, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Vatras_HEAL_15_00"); //Możesz mnie uzdrowić?
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_HP_10()
{
	if (B_TeachAttribute(self, other, ATR_HITPOINTS_MAX, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Vatras_HEAL_15_00"); //Możesz mnie uzdrowić?
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Extraction_1()
{
	if (B_TeachTalent(self, other, NPC_TALENT_EXTRACTION, 1, GOLD_PER_LP/4))
	{
		AI_Output (other, self, "SVM_15_ADDON_GOLD_DESCRIPTION"); //Co muszę wiedzieć o wydobyciu złota?
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Extraction_5()
{
	if (B_TeachTalent(self, other, NPC_TALENT_EXTRACTION, 5, GOLD_PER_LP/4))
	{
		AI_Output (other, self, "SVM_15_ADDON_GOLD_DESCRIPTION"); //Co muszę wiedzieć o wydobyciu złota?
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Extraction_10()
{
	if (B_TeachTalent(self, other, NPC_TALENT_EXTRACTION, 10, GOLD_PER_LP/4))
	{
		AI_Output (other, self, "SVM_15_ADDON_GOLD_DESCRIPTION"); //Co muszę wiedzieć o wydobyciu złota?
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_1h_1()
{
	if (B_TeachTalent(self, other, NPC_TALENT_1H, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Alrik_Teach_15_00"); //Wyszkol mnie we władaniu mieczem!
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_1h_5()
{
	if (B_TeachTalent(self, other, NPC_TALENT_1H, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Alrik_Teach_15_00"); //Wyszkol mnie we władaniu mieczem!
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_1h_10()
{
	if (B_TeachTalent(self, other, NPC_TALENT_1H, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Alrik_Teach_15_00"); //Wyszkol mnie we władaniu mieczem!
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_2h_1()
{
	if (B_TeachTalent(self, other, NPC_TALENT_2H, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Rod_WannaLearn_15_00"); //Czy mógłbyś mnie nauczyć, jak walczyć bronią dwuręczną?
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_2h_5()
{
	if (B_TeachTalent(self, other, NPC_TALENT_2H, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Rod_WannaLearn_15_00"); //Czy mógłbyś mnie nauczyć, jak walczyć bronią dwuręczną?
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_2h_10()
{
	if (B_TeachTalent(self, other, NPC_TALENT_2H, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Rod_WannaLearn_15_00"); //Czy mógłbyś mnie nauczyć, jak walczyć bronią dwuręczną?
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Bow_1()
{
	if (B_TeachTalent(self, other, NPC_TALENT_BOW, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Wolf_TEACH_15_00"); //Chcę się nauczyć czegoś o łucznictwie.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Bow_5()
{
	if (B_TeachTalent(self, other, NPC_TALENT_BOW, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Wolf_TEACH_15_00"); //Chcę się nauczyć czegoś o łucznictwie.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Bow_10()
{
	if (B_TeachTalent(self, other, NPC_TALENT_BOW, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Wolf_TEACH_15_00"); //Chcę się nauczyć czegoś o łucznictwie.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Cbow_1()
{
	if (B_TeachTalent(self, other, NPC_TALENT_CROSSBOW, 1, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Udar_Teacher_15_00"); //Naucz mnie, jak strzelać z kuszy.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Cbow_5()
{
	if (B_TeachTalent(self, other, NPC_TALENT_CROSSBOW, 5, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Udar_Teacher_15_00"); //Naucz mnie, jak strzelać z kuszy.
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Cbow_10()
{
	if (B_TeachTalent(self, other, NPC_TALENT_CROSSBOW, 10, GOLD_PER_LP/2))
	{
		AI_Output (other, self, "DIA_Udar_Teacher_15_00"); //Naucz mnie, jak strzelać z kuszy.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Dual()
{
	if (B_TeachTalent(self, other, NPC_TALENT_DUAL, Npc_GetTalentSkill(other, NPC_TALENT_DUAL) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Addon_Cord_YouAreRanger_kampf_15_00"); //Naucz mnie walki.
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Shield()
{
	if (B_TeachTalent(self, other, NPC_TALENT_SHIELD, Npc_GetTalentSkill(other, NPC_TALENT_SHIELD) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Addon_Cord_YouAreRanger_kampf_15_00"); //Naucz mnie walki.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Magic()
{
	if (B_TeachTalent(self, other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Addon_Saturas_ADW_CIRCLE_15_00"); //Chcę dowiedzieć się więcej o wyższych kręgach magii.
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Language()
{
	if (B_TeachTalent(self, other, NPC_TALENT_LANGUAGE, Npc_GetTalentSkill(other, NPC_TALENT_LANGUAGE) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Addon_Myxir_TeachRequest_15_00"); //Naucz mnie tego dziwnego języka.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Sneak()
{
	if (B_TeachTalent(self, other, NPC_TALENT_SNEAK, Npc_GetTalentSkill(other, NPC_TALENT_SNEAK) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Bartok_TeachSneak_15_00"); //Pokaż mi, jak się skradać.
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Acrobatic()
{
	if (B_TeachTalent(self, other, NPC_TALENT_ACROBATIC, Npc_GetTalentSkill(other, NPC_TALENT_ACROBATIC) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Lares_DI_Training_15_00"); //Naucz mnie tego, co potrafisz.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Picklock()
{
	if (B_TeachTalent(self, other, NPC_TALENT_PICKLOCK, Npc_GetTalentSkill(other, NPC_TALENT_PICKLOCK) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Thorben_Teach_15_00"); //Naucz mnie otwierać zamki!
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Pickpocket()
{
	if (B_TeachTalent(self, other, NPC_TALENT_PICKPOCKET, Npc_GetTalentSkill(other, NPC_TALENT_PICKPOCKET) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Addon_Bill_LearnTalent_15_00"); //Pokaż mi, jak okradać innych.
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Persuasion()
{
	if (B_TeachTalent(self, other, NPC_TALENT_PERSUASION, Npc_GetTalentSkill(other, NPC_TALENT_PERSUASION) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Addon_BL_BDT_13_Gold_15_00"); //Jak można się szybko wzbogacić?
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Fletchery()
{
	if (B_TeachTalent(self, other, NPC_TALENT_FLETCHERY, Npc_GetTalentSkill(other, NPC_TALENT_FLETCHERY) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Bennet_DI_Smith_15_00"); //Nauczysz mnie swojego rzemiosła?
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Smith()
{
	if (B_TeachTalent(self, other, NPC_TALENT_SMITH, Npc_GetTalentSkill(other, NPC_TALENT_SMITH) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Jan_TeachPlayer_15_00"); //Naucz mnie kowalstwa.
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Enchanting()
{
	if (B_TeachTalent(self, other, NPC_TALENT_ENCHANTING, Npc_GetTalentSkill(other, NPC_TALENT_ENCHANTING) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_MiltenNW_Teach_15_00"); //Chcę się nauczyć nowych zaklęć.
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Alchemy()
{
	if (B_TeachTalent(self, other, NPC_TALENT_ALCHEMY, Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) + 1, GOLD_PER_LP))
	{
		AI_Output (other, self, "DIA_Constantino_Alchemy_15_00"); //Naucz mnie sztuki alchemicznej!
	};
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Hunting()
{
	if (B_TeachTalent(self, other, NPC_TALENT_HUNTING, Npc_GetTalentSkill(other, NPC_TALENT_HUNTING) + 1, GOLD_PER_LP*2))
	{
		AI_Output (other, self, "DIA_Grom_TEACHHUNTING_15_00"); //Naucz mnie, jak powinno się polować.
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_BACK()
{
	Info_ClearChoices(DIA_Teach_JOIN);
};
