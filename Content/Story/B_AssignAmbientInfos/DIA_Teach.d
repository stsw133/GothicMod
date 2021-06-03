///******************************************************************************************
///	TEACH
///******************************************************************************************
instance DIA_Teach_JOIN (C_INFO)
{
	nr									=	802;
	condition							=	DIA_Teach_JOIN_Condition;
	information							=	DIA_Teach_JOIN2_Info;
	permanent							=	true;
	description							=	DIALOG_TEACH;
};
func int DIA_Teach_JOIN_Condition()
{
	if (self.aivar[AIV_CanTeach] > false)
	{
		return true;
	};
};
///******************************************************************************************
func void DIA_Teach_JOIN_Info()
{
	Info_ClearChoices(DIA_Teach_JOIN);
	Info_AddChoice (DIA_Teach_JOIN, DIALOG_BACK, DIA_Teach_JOIN_BACK);
	
	MOD_PrintLearn();
	
	/// FIGHT
	if (Npc_GetTalentSkill(other, NPC_TALENT_1H) < 1)
	{
		if (Hlp_GetInstanceID(self) == SLD_802_Buster)
		|| (Hlp_GetInstanceID(self) == VLK_438_Alrik)
		|| (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		|| ((Hlp_GetInstanceID(self) == Mil_312_Wulfgar) && (other.guild != GIL_SLD) && (other.guild != GIL_DJG))
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_1h, B_GetLearnCostTalent(other, NPC_TALENT_1H, Npc_GetTalentSkill(other, NPC_TALENT_1H) + 1)), DIA_Teach_JOIN_1h);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_1H) < 2)
	{
		if (Hlp_GetInstanceID(self) == DJG_712_Hokurn)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion_DI)
		|| (Hlp_GetInstanceID(self) == PAL_216_Cedric)
		|| (Hlp_GetInstanceID(self) == SLD_800_Lee_DI)
		|| (Hlp_GetInstanceID(self) == SLD_805_Cord)
		|| (Hlp_GetInstanceID(self) == VLK_449_Lares_DI)
		|| (Hlp_GetInstanceID(self) == PAL_258_Keroloth)
		|| (Hlp_GetInstanceID(self) == PIR_1353_Addon_Morgan)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_1h, B_GetLearnCostTalent(other, NPC_TALENT_1H, Npc_GetTalentSkill(other, NPC_TALENT_1H) + 1)), DIA_Teach_JOIN_1h);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_2H) < 1)
	{
		if (Hlp_GetInstanceID(self) == NOV_612_Babo)
		|| (Hlp_GetInstanceID(self) == PAL_258_Keroloth)
		|| (Hlp_GetInstanceID(self) == Sld_804_Rod)
		|| ((Hlp_GetInstanceID(self) == Mil_312_Wulfgar) && (other.guild != GIL_SLD) && (other.guild != GIL_DJG))
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_2h, B_GetLearnCostTalent(other, NPC_TALENT_2H, Npc_GetTalentSkill(other, NPC_TALENT_2H) + 1)), DIA_Teach_JOIN_2h);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_2H) < 2)
	{
		if (Hlp_GetInstanceID(self) == DJG_712_Hokurn)
		|| (Hlp_GetInstanceID(self) == PAL_200_Hagen)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion_DI)
		|| (Hlp_GetInstanceID(self) == PC_Fighter_DI)
		|| (Hlp_GetInstanceID(self) == SLD_800_Lee)
		|| (Hlp_GetInstanceID(self) == SLD_800_Lee_DI)
		|| (Hlp_GetInstanceID(self) == SLD_805_Cord)
		|| (Hlp_GetInstanceID(self) == PIR_1354_Addon_Henry)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_2h, B_GetLearnCostTalent(other, NPC_TALENT_2H, Npc_GetTalentSkill(other, NPC_TALENT_2H) + 1)), DIA_Teach_JOIN_2h);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_BOW) < 1)
	{
		if (Hlp_GetInstanceID(self) == VLK_440_Bartok)
		|| (Hlp_GetInstanceID(self) == BAU_984_Niclas)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_Bow, B_GetLearnCostTalent(other, NPC_TALENT_BOW, Npc_GetTalentSkill(other, NPC_TALENT_BOW) + 1)), DIA_Teach_JOIN_Bow);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_BOW) < 2)
	{
		if (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf_DI)
		|| (Hlp_GetInstanceID(self) == PIR_1352_Addon_AlligatorJack)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_Bow, B_GetLearnCostTalent(other, NPC_TALENT_BOW, Npc_GetTalentSkill(other, NPC_TALENT_BOW) + 1)), DIA_Teach_JOIN_Bow);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_CROSSBOW) < 1)
	{
		if (Hlp_GetInstanceID(self) == BAU_983_Dragomir)
		|| (Hlp_GetInstanceID(self) == PAL_268_Udar)
		|| (Hlp_GetInstanceID(self) == PIR_1354_Addon_Henry)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_Crossbow, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, Npc_GetTalentSkill(other, NPC_TALENT_CROSSBOW) + 1)), DIA_Teach_JOIN_Crossbow);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_CROSSBOW) < 2)
	{
		if (Hlp_GetInstanceID(self) == Mil_317_Ruga)
		|| (Hlp_GetInstanceID(self) == PAL_207_Girion_DI)
		|| (Hlp_GetInstanceID(self) == SLD_811_Wolf_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnFight_Crossbow, B_GetLearnCostTalent(other, NPC_TALENT_CROSSBOW, Npc_GetTalentSkill(other, NPC_TALENT_CROSSBOW) + 1)), DIA_Teach_JOIN_Crossbow);
		};
	};
	
	/// MAGIC
	if (Kapitel >= 7 && Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) == 0)
	{
		if (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1)), DIA_Teach_JOIN_Magic);
		};
	};
	if (Kapitel >= 8 && Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) == 1)
	{
		if (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == PC_Mage_OW)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1)), DIA_Teach_JOIN_Magic);
		};
	};
	if (Kapitel >= 9 && Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) == 2)
	{
		if (Hlp_GetInstanceID(self) == KDF_504_Parlan)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == PC_Mage_OW)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1)), DIA_Teach_JOIN_Magic);
		};
	};
	if (Kapitel >= 10 && Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) == 3)
	{
		if (Hlp_GetInstanceID(self) == KDF_503_Karras)
		|| (Hlp_GetInstanceID(self) == KDW_14000_Addon_Saturas_ADW)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1)), DIA_Teach_JOIN_Magic);
		};
	};
	if (Kapitel >= 11 && Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) == 4)
	{
		if (Hlp_GetInstanceID(self) == KDF_500_Pyrokar)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnMagic, B_GetLearnCostTalent(other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1)), DIA_Teach_JOIN_Magic);
		};
	};
	
	/// THIEF
	if (Npc_GetTalentSkill(other,NPC_TALENT_SNEAK) == 0)
	{
		if (Hlp_GetInstanceID(self) == BAU_4300_Addon_Cavalorn)
		|| (Hlp_GetInstanceID(self) == DJG_711_Godar)
		|| (Hlp_GetInstanceID(self) == VLK_440_Bartok)
		|| (Hlp_GetInstanceID(self) == VLK_446_Jesper)
		|| (Hlp_GetInstanceID(self) == VLK_449_Lares_DI)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnTalent_Sneak, B_GetLearnCostTalent(other, NPC_TALENT_SNEAK, 1)), DIA_Teach_JOIN_Sneak);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_ACROBATIC) == 0)
	{
		if (Hlp_GetInstanceID(self) == BDT_1091_Addon_Lucia)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnTalent_Acrobatic, B_GetLearnCostTalent(other, NPC_TALENT_ACROBATIC, 1)), DIA_Teach_JOIN_Acrobatic);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_PICKLOCK) == 0)
	{
		if (Hlp_GetInstanceID(self) == PC_Thief_DI)
		|| (Hlp_GetInstanceID(self) == PC_Thief_NW)
		|| (Hlp_GetInstanceID(self) == PC_ThiefOW)
		|| (Hlp_GetInstanceID(self) == VLK_445_Ramirez)
		|| (Hlp_GetInstanceID(self) == VLK_462_Thorben)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnTalent_Picklock, B_GetLearnCostTalent(other, NPC_TALENT_PICKLOCK, 1)), DIA_Teach_JOIN_Picklock);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_PICKPOCKET) == 0)
	{
		if (Hlp_GetInstanceID(self) == VLK_447_Cassia)
		|| (Hlp_GetInstanceID(self) == PIR_1356_Addon_Bill)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnTalent_Pickpocket, B_GetLearnCostTalent(other, NPC_TALENT_PICKPOCKET, 1)), DIA_Teach_JOIN_Pickpocket);
		};
	};
	
	/// CRAFT
	if (Npc_GetTalentSkill(other, NPC_TALENT_SMITH) < 3)
	{
		if (Hlp_GetInstanceID(self) == DJG_714_Jan)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet)
		|| (Hlp_GetInstanceID(self) == SLD_809_Bennet_DI)
		|| (Hlp_GetInstanceID(self) == VLK_412_Harad)
		|| (Hlp_GetInstanceID(self) == VLK_4106_Dobar)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnTalent_Smith, B_GetLearnCostTalent(other, NPC_TALENT_SMITH, Npc_GetTalentSkill(other, NPC_TALENT_SMITH) + 1)), DIA_Teach_JOIN_Smith);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) < 3)
	{
		if (Hlp_GetInstanceID(self) == KDW_14040_Addon_Riordian_ADW)
		|| (Hlp_GetInstanceID(self) == BAU_980_Sagitta)
		|| (Hlp_GetInstanceID(self) == VLK_417_Constantino)
		|| (Hlp_GetInstanceID(self) == VLK_439_Vatras_DI)
		|| (Hlp_GetInstanceID(self) == VLK_498_Ignaz)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnTalent_Alchemy, B_GetLearnCostTalent(other, NPC_TALENT_ALCHEMY, Npc_GetTalentSkill(other, NPC_TALENT_ALCHEMY) + 1)), DIA_Teach_JOIN_Alchemy);
		};
	};
	if (Npc_GetTalentSkill(other, NPC_TALENT_HUNTING) < 3)
	{
		if (Hlp_GetInstanceID(self) == BDT_1072_Addon_Logan)
		|| (Hlp_GetInstanceID(self) == BDT_1074_Addon_Edgor)
		|| (Hlp_GetInstanceID(self) == PIR_1352_Addon_AlligatorJack)
		|| (Hlp_GetInstanceID(self) == BAU_961_Gaan)
		|| (Hlp_GetInstanceID(self) == BAU_981_Grom)
		|| (Hlp_GetInstanceID(self) == BAU_982_Grimbald)
		|| (Hlp_GetInstanceID(self) == DJG_711_Godar)
		|| (Hlp_GetInstanceID(self) == VLK_413_Bosper)
		|| (Hlp_GetInstanceID(self) == VLK_4130_Talbin)
		|| (Hlp_GetInstanceID(self) == VLK_4148_Gestath)
		{
			Info_AddChoice (DIA_Teach_JOIN, B_BuildLearnString(PRINT_LearnTalent_Hunting, B_GetLearnCostTalent(other, NPC_TALENT_HUNTING, Npc_GetTalentSkill(other, NPC_TALENT_HUNTING) + 1)), DIA_Teach_JOIN_Hunting);
		};
	};
};

func void DIA_Teach_JOIN2_Info()
{	
	AI_Output (other, self, "DIA_Addon_Henry_Teach_15_00"); ///Ucz mnie.
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_STR_1()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_STR_5()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_STR_10()
{
	B_TeachAttributePoints (self, other, ATR_STRENGTH, 10);
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_DEX_1()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_DEX_5()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 5);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_DEX_10()
{
	B_TeachAttributePoints (self, other, ATR_DEXTERITY, 10);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_1h()
{
	B_TeachTalents (self, other, NPC_TALENT_1H, Npc_GetTalentSkill(other, NPC_TALENT_1H) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_2h()
{
	B_TeachTalents (self, other, NPC_TALENT_2H, Npc_GetTalentSkill(other, NPC_TALENT_2H) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Bow()
{
	B_TeachTalents (self, other, NPC_TALENT_BOW, Npc_GetTalentSkill(other, NPC_TALENT_BOW) + 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Crossbow()
{
	B_TeachTalents (self, other, NPC_TALENT_CROSSBOW, Npc_GetTalentSkill(other, NPC_TALENT_CROSSBOW) + 1);
	DIA_Teach_JOIN_Info();
};

func void DIA_Teach_JOIN_Magic()
{
	B_TeachTalents (self, other, NPC_TALENT_MAGIC, Npc_GetTalentSkill(other, NPC_TALENT_MAGIC) + 1);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Sneak()
{
	B_TeachTalents (self, other, NPC_TALENT_SNEAK, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Picklock()
{
	B_TeachTalents (self, other, NPC_TALENT_PICKLOCK, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Pickpocket()
{
	B_TeachTalents (self, other, NPC_TALENT_PICKPOCKET, 1);
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Acrobatic()
{
	B_TeachTalents (self, other, NPC_TALENT_ACROBATIC, 1);
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_Smith()
{
	if (B_TeachTalents(self, other, NPC_TALENT_SMITH, 1))
	{
		self.aivar[AIV_CanTeach] = DONE;
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Jewelery()
{
	if (B_TeachTalents(self, other, NPC_TALENT_JEWELERY, 1))
	{
		self.aivar[AIV_CanTeach] = DONE;
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Alchemy()
{
	if (B_TeachTalents(self, other, NPC_TALENT_ALCHEMY, 1))
	{
		self.aivar[AIV_CanTeach] = DONE;
	};
	DIA_Teach_JOIN_Info();
};
func void DIA_Teach_JOIN_Hunting()
{
	if (B_TeachTalents(self, other, NPC_TALENT_HUNTING, 1))
	{
		self.aivar[AIV_CanTeach] = DONE;
	};
	DIA_Teach_JOIN_Info();
};

///******************************************************************************************
func void DIA_Teach_JOIN_BACK()
{
	Info_ClearChoices(DIA_Teach_JOIN);
};
