///******************************************************************************************
prototype ItemPR_Belt (C_Item)
{
	name 					=	"Pas";
	
	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_BELT;
	material 				=	MAT_METAL;
	
	on_equip				=	Npc_AttributesRefresh;
	on_unequip				=	Npc_AttributesRefresh;
	
	wear					= 	WEAR_EFFECT;
	effect					=	"SPELLFX_ITEMGLIMMER";
	
	cond_atr[2]   			=	COND_LEVEL;
	
	TEXT[0] 				=	NAME_Lev_needed;
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx				=	INVCAM_ENTF_MISC2_STANDARD;
};
///******************************************************************************************

var int Belt_AtrPoints;

///******************************************************************************************
func int CheckItBeArmor_Roy (var C_Npc slf)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(self);
	if (Hlp_IsItem(itm, ITAR_ROY_H))
	|| (Hlp_IsItem(itm, ITAR_ROY_M))
	|| (Hlp_IsItem(itm, ITAR_ROY_L))
	|| (Hlp_IsItem(itm, ITAR_MIL_H))
	|| (Hlp_IsItem(itm, ITAR_MIL_M))
	|| (Hlp_IsItem(itm, ITAR_MIL_L))
	|| (Hlp_IsItem(itm, ITAR_MIL_N))
	{
		return true;
	};
	
	return false;
};
func void UnEquip_ItBe_Roy()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Roy_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Roy_01;
	on_unequip				=	UnEquip_ItBe_Roy;
	
	cond_value[2]			=	15;
	
	description				=	"Pas gwardzisty I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty ¿ycia o 2% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 3% z pancerzem";
	TEXT[3]					=	"stra¿y miejskiej lub gwardii królewskiej).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Roy_01()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Roy(self))
		{
			Belt_AtrPoints = LearnedAttribute_HP * 3 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_HP * 2 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		};
	};
};
///******************************************************************************************
instance ItBe_Roy_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Roy_02;
	on_unequip				=	UnEquip_ItBe_Roy;
	
	cond_value[2]			=	35;
	
	description				=	"Pas gwardzisty II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty ¿ycia o 4% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 6% z pancerzem";
	TEXT[3]					=	"stra¿y miejskiej lub gwardii królewskiej).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Roy_02()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Roy(self))
		{
			Belt_AtrPoints = LearnedAttribute_HP * 6 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_HP * 4 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		};
	};
};
///******************************************************************************************
instance ItBe_Roy_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Roy_03;
	on_unequip				=	UnEquip_ItBe_Roy;
	
	cond_value[2]			=	55;
	
	description				=	"Pas gwardzisty III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty ¿ycia o 6% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 9% z pancerzem";
	TEXT[3]					=	"stra¿y miejskiej lub gwardii królewskiej).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Roy_03()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Roy(self))
		{
			Belt_AtrPoints = LearnedAttribute_HP * 9 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_HP * 6 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		};
	};
};
///******************************************************************************************
instance ItBe_Roy_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Roy_04;
	on_unequip				=	UnEquip_ItBe_Roy;
	
	cond_value[2]			=	75;
	
	description				=	"Pas gwardzisty IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty ¿ycia o 8% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 12% z pancerzem";
	TEXT[3]					=	"stra¿y miejskiej lub gwardii królewskiej).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Roy_04()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Roy(self))
		{
			Belt_AtrPoints = LearnedAttribute_HP * 12 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_HP * 8 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		};
	};
};
///******************************************************************************************
instance ItBe_Roy_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Roy_05;
	on_unequip				=	UnEquip_ItBe_Roy;
	
	cond_value[2]			=	95;
	
	description				=	"Pas gwardzisty V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty ¿ycia o 10% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 15% z pancerzem";
	TEXT[3]					=	"stra¿y miejskiej lub gwardii królewskiej).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Roy_05()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Roy(self))
		{
			Belt_AtrPoints = LearnedAttribute_HP * 15 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_HP * 10 / 100;
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
		};
	};
};
///******************************************************************************************
func int CheckItBeArmor_Djg (var C_Npc slf)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(self);
	if (Hlp_IsItem(itm, ITAR_DJG_H))
	|| (Hlp_IsItem(itm, ITAR_DJG_M))
	|| (Hlp_IsItem(itm, ITAR_DJG_L))
	|| (Hlp_IsItem(itm, ITAR_SLD_H))
	|| (Hlp_IsItem(itm, ITAR_SLD_M))
	|| (Hlp_IsItem(itm, ITAR_SLD_L))
	|| (Hlp_IsItem(itm, ITAR_SLD_N))
	{
		return true;
	};
	
	return false;
};
func void UnEquip_ItBe_Djg()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_STRENGTH, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Djg_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Djg_01;
	on_unequip				=	UnEquip_ItBe_Djg;
	
	cond_value[2]			=	15;
	
	description				=	"Pas ³owcy smoków I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza si³ê o 2% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 3% z pancerzem";
	TEXT[3]					=	"najemnika lub ³owcy smoków).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Djg_01()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Djg(self))
		{
			Belt_AtrPoints = LearnedAttribute_STR * 3 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_STR * 2 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Djg_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Djg_02;
	on_unequip				=	UnEquip_ItBe_Djg;
	
	cond_value[2]			=	35;
	
	description				=	"Pas ³owcy smoków II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza si³ê o 4% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 6% z pancerzem";
	TEXT[3]					=	"najemnika lub ³owcy smoków).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Djg_02()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Djg(self))
		{
			Belt_AtrPoints = LearnedAttribute_STR * 6 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_STR * 4 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Djg_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Djg_03;
	on_unequip				=	UnEquip_ItBe_Djg;
	
	cond_value[2]			=	55;
	
	description				=	"Pas ³owcy smoków III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza si³ê o 6% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 9% z pancerzem";
	TEXT[3]					=	"najemnika lub ³owcy smoków).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Djg_03()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Djg(self))
		{
			Belt_AtrPoints = LearnedAttribute_STR * 9 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_STR * 6 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Djg_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Djg_04;
	on_unequip				=	UnEquip_ItBe_Djg;
	
	cond_value[2]			=	75;
	
	description				=	"Pas ³owcy smoków IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza si³ê o 8% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 12% z pancerzem";
	TEXT[3]					=	"najemnika lub ³owcy smoków).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Djg_04()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Djg(self))
		{
			Belt_AtrPoints = LearnedAttribute_STR * 12 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_STR * 8 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Djg_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Djg_05;
	on_unequip				=	UnEquip_ItBe_Djg;
	
	cond_value[2]			=	95;
	
	description				=	"Pas ³owcy smoków V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza si³ê o 10% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 15% z pancerzem";
	TEXT[3]					=	"najemnika lub ³owcy smoków).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Djg_05()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Djg(self))
		{
			Belt_AtrPoints = LearnedAttribute_STR * 15 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_STR * 10 / 100;
			B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
func int CheckItBeArmor_Mag (var C_Npc slf)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(self);
	if (Hlp_IsItem(itm, ITAR_AMG_H))
	|| (Hlp_IsItem(itm, ITAR_AMG_M))
	|| (Hlp_IsItem(itm, ITAR_AMG_L))
	|| (Hlp_IsItem(itm, ITAR_MAG_H))
	|| (Hlp_IsItem(itm, ITAR_MAG_M))
	|| (Hlp_IsItem(itm, ITAR_MAG_L))
	{
		return true;
	};
	
	return false;
};
func void UnEquip_ItBe_Mag()
{
	if (Npc_IsPlayer(self))
	{
		Npc_AddPowerPoints(self, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Mag_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Mag_01;
	on_unequip				=	UnEquip_ItBe_Mag;
	
	cond_value[2]			=	15;
	
	description				=	"Szarfa maga I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza moc o 2% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 3% z szat¹";
	TEXT[3]					=	"maga lub arcymaga).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mag_01()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Mag(self))
		{
			Belt_AtrPoints = LearnedAttribute_Power * 3 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Power * 2 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Mag_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Mag_02;
	on_unequip				=	UnEquip_ItBe_Mag;
	
	cond_value[2]			=	35;
	
	description				=	"Szarfa maga II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza moc o 4% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 6% z szat¹";
	TEXT[3]					=	"maga lub arcymaga).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mag_02()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Mag(self))
		{
			Belt_AtrPoints = LearnedAttribute_Power * 6 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Power * 4 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Mag_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Mag_03;
	on_unequip				=	UnEquip_ItBe_Mag;
	
	cond_value[2]			=	55;
	
	description				=	"Szarfa maga III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza moc o 6% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 9% z szat¹";
	TEXT[3]					=	"maga lub arcymaga).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mag_03()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Mag(self))
		{
			Belt_AtrPoints = LearnedAttribute_Power * 9 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Power * 6 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Mag_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Mag_04;
	on_unequip				=	UnEquip_ItBe_Mag;
	
	cond_value[2]			=	75;
	
	description				=	"Szarfa maga IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza moc o 8% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 12% z szat¹";
	TEXT[3]					=	"maga lub arcymaga).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mag_04()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Mag(self))
		{
			Belt_AtrPoints = LearnedAttribute_Power * 12 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Power * 8 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Mag_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Mag_05;
	on_unequip				=	UnEquip_ItBe_Mag;
	
	cond_value[2]			=	95;
	
	description				=	"Szarfa maga V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza moc o 10% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 15% z szat¹";
	TEXT[3]					=	"maga lub arcymaga).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mag_05()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Mag(self))
		{
			Belt_AtrPoints = LearnedAttribute_Power * 15 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Power * 10 / 100;
			B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
func int CheckItBeArmor_Pal(var C_Npc slf)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(self);
	if (Hlp_IsItem(itm, ITAR_PAL_H))
	|| (Hlp_IsItem(itm, ITAR_PAL_M))
	|| (Hlp_IsItem(itm, ITAR_PAL_L))
	{
		return true;
	};
	
	return false;
};
func void UnEquip_ItBe_Pal()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_MANA_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Pal_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Pal_01;
	on_unequip				=	UnEquip_ItBe_Pal;
	
	cond_value[2]			=	15;
	
	description				=	"Pas paladyna I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty many o 2% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 3% z pancerzem";
	TEXT[3]					=	"stra¿y œwi¹tynnej lub paladyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Pal_01()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Pal(self))
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 3 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 2 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Pal_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Pal_02;
	on_unequip				=	UnEquip_ItBe_Pal;
	
	cond_value[2]			=	35;
	
	description				=	"Pas paladyna II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty many o 4% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 6% z pancerzem";
	TEXT[3]					=	"stra¿y œwi¹tynnej lub paladyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Pal_02()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Pal(self))
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 6 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 4 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Pal_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Pal_03;
	on_unequip				=	UnEquip_ItBe_Pal;
	
	cond_value[2]			=	55;
	
	description				=	"Pas paladyna III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty many o 6% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 9% z pancerzem";
	TEXT[3]					=	"stra¿y œwi¹tynnej lub paladyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Pal_03()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Pal(self))
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 9 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 6 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Pal_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Pal_04;
	on_unequip				=	UnEquip_ItBe_Pal;
	
	cond_value[2]			=	75;
	
	description				=	"Pas paladyna IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty many o 8% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 12% z pancerzem";
	TEXT[3]					=	"stra¿y œwi¹tynnej lub paladyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Pal_04()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Pal(self))
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 12 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 8 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Pal_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Pal_05;
	on_unequip				=	UnEquip_ItBe_Pal;
	
	cond_value[2]			=	95;
	
	description				=	"Pas paladyna V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza max. punkty many o 10% nauczonych";
	TEXT[2]					=	"(zwiêkszone do 15% z pancerzem";
	TEXT[3]					=	"stra¿y œwi¹tynnej lub paladyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Pal_05()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Pal(self))
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 15 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_Mana * 10 / 100;
			B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
func int CheckItBeArmor_Ako(var C_Npc slf)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(self);
	if (Hlp_IsItem(itm, ITAR_PRI_H))
	|| (Hlp_IsItem(itm, ITAR_PRI_M))
	|| (Hlp_IsItem(itm, ITAR_PRI_L))
	|| (Hlp_IsItem(itm, ITAR_AKO_H))
	|| (Hlp_IsItem(itm, ITAR_AKO_M))
	|| (Hlp_IsItem(itm, ITAR_AKO_L))
	{
		return true;
	};
	
	return false;
};
func void UnEquip_ItBe_Ako()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_DEXTERITY, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Ako_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Ako_01;
	on_unequip				=	UnEquip_ItBe_Ako;
	
	cond_value[2]			=	15;
	
	description				=	"Pas asasyna I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 2% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 3% z pancerzem";
	TEXT[3]					=	"asasyna lub elitarnego asasyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Ako_01()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Ako(self))
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 3 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 2 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Ako_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Ako_02;
	on_unequip				=	UnEquip_ItBe_Ako;
	
	cond_value[2]			=	35;
	
	description				=	"Pas asasyna II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 4% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 6% z pancerzem";
	TEXT[3]					=	"asasyna lub elitarnego asasyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Ako_02()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Ako(self))
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 6 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 4 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Ako_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Ako_03;
	on_unequip				=	UnEquip_ItBe_Ako;
	
	cond_value[2]			=	55;
	
	description				=	"Pas asasyna III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 6% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 9% z pancerzem";
	TEXT[3]					=	"asasyna lub elitarnego asasyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Ako_03()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Ako(self))
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 9 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 6 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Ako_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Ako_04;
	on_unequip				=	UnEquip_ItBe_Ako;
	
	cond_value[2]			=	75;
	
	description				=	"Pas asasyna IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 8% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 12% z pancerzem";
	TEXT[3]					=	"asasyna lub elitarnego asasyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Ako_04()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Ako(self))
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 12 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 8 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
instance ItBe_Ako_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Ako_05;
	on_unequip				=	UnEquip_ItBe_Ako;
	
	cond_value[2]			=	95;
	
	description				=	"Pas asasyna V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 10% nauczonej";
	TEXT[2]					=	"(zwiêkszone do 15% z pancerzem";
	TEXT[3]					=	"asasyna lub elitarnego asasyna).";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Ako_05()
{
	if (Npc_IsPlayer(self))
	{
		if (CheckItBeArmor_Ako(self))
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 15 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		}
		else
		{
			Belt_AtrPoints = LearnedAttribute_DEX * 10 / 100;
			B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
		};
	};
};
///******************************************************************************************
var int Belt_AtrType;

func int GetSecondBestAttribute(var C_Npc slf)
{
	if (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_MANA_MAX])
	&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_STRENGTH])
	&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_DEXTERITY])
	&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_POWER])
	{
		if (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_DEXTERITY])
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_MANA_MAX;
		}
		else if (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_DEXTERITY])
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_STRENGTH;
		}
		else if (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_DEXTERITY;
		}
		else if (slf.attribute[ATR_POWER] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_DEXTERITY])
		{
			Belt_AtrType = ATR_POWER;
		};
	}
	else if (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
	&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_STRENGTH])
	&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_DEXTERITY])
	&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_POWER])
	{
		if (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_DEXTERITY])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_HITPOINTS_MAX;
		}
		else if (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_DEXTERITY])
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_STRENGTH;
		}
		else if (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_DEXTERITY;
		}
		else if (slf.attribute[ATR_POWER] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_DEXTERITY])
		{
			Belt_AtrType = ATR_POWER;
		};
	}
	else if (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
	&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_MANA_MAX])
	&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_DEXTERITY])
	&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_POWER])
	{
		if (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_DEXTERITY])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_HITPOINTS_MAX;
		}
		else if (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_DEXTERITY])
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_MANA_MAX;
		}
		else if (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_DEXTERITY;
		}
		else if (slf.attribute[ATR_POWER] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_DEXTERITY])
		{
			Belt_AtrType = ATR_POWER;
		};
	}
	else if (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
	&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_MANA_MAX])
	&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_STRENGTH])
	&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_POWER])
	{
		if (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_HITPOINTS_MAX;
		}
		else if (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_MANA_MAX;
		}
		else if (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_POWER])
		{
			Belt_AtrType = ATR_STRENGTH;
		}
		else if (slf.attribute[ATR_POWER] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_STRENGTH])
		{
			Belt_AtrType = ATR_POWER;
		};
	}
	else if (slf.attribute[ATR_POWER] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
	&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_MANA_MAX])
	&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_STRENGTH])
	&& (slf.attribute[ATR_POWER] >= slf.attribute[ATR_DEXTERITY])
	{
		if (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP >= slf.attribute[ATR_DEXTERITY])
		{
			Belt_AtrType = ATR_HITPOINTS_MAX;
		}
		else if (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_STRENGTH])
		&& (slf.attribute[ATR_MANA_MAX] >= slf.attribute[ATR_DEXTERITY])
		{
			Belt_AtrType = ATR_MANA_MAX;
		}
		else if (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_STRENGTH] >= slf.attribute[ATR_DEXTERITY])
		{
			Belt_AtrType = ATR_STRENGTH;
		}
		else if (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_HITPOINTS_MAX]/HP_PER_LP)
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_MANA_MAX])
		&& (slf.attribute[ATR_DEXTERITY] >= slf.attribute[ATR_STRENGTH])
		{
			Belt_AtrType = ATR_DEXTERITY;
		};
	};
};
///******************************************************************************************
func void UnEquip_ItBe_Hp()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -Belt_AtrPoints * HP_PER_LP);
		Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -Belt_AtrPoints * HP_PER_LP);
		
		if (Belt_AtrType == ATR_MANA_MAX)
		{
			self.attribute[ATR_MANA_MAX] += Belt_AtrPoints;
			self.attribute[ATR_MANA] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			self.attribute[ATR_STRENGTH] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			self.attribute[ATR_DEXTERITY] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Npc_AddPowerPoints (self, Belt_AtrPoints);
		};
		
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Hp_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Hp_01;
	on_unequip				=	UnEquip_ItBe_Hp;
	
	cond_value[2]			=	15;
	
	description				=	"Pas ¿ycia I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 4% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty ¿ycia";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Hp_01()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 4 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 4 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 4 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 4 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
	};
};
///******************************************************************************************
instance ItBe_Hp_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Hp_02;
	on_unequip				=	UnEquip_ItBe_Hp;
	
	cond_value[2]			=	35;
	
	description				=	"Pas ¿ycia II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 8% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty ¿ycia";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Hp_02()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 8 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 8 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 8 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 8 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
	};
};
///******************************************************************************************
instance ItBe_Hp_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Hp_03;
	on_unequip				=	UnEquip_ItBe_Hp;
	
	cond_value[2]			=	55;
	
	description				=	"Pas ¿ycia III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 12% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty ¿ycia";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Hp_03()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 12 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 12 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 12 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 12 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
	};
};
///******************************************************************************************
instance ItBe_Hp_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Hp_04;
	on_unequip				=	UnEquip_ItBe_Hp;
	
	cond_value[2]			=	75;
	
	description				=	"Pas ¿ycia IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 16% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty ¿ycia";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Hp_04()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 16 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 16 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 16 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 16 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
	};
};
///******************************************************************************************
instance ItBe_Hp_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_03.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Hp_05;
	on_unequip				=	UnEquip_ItBe_Hp;
	
	cond_value[2]			=	95;
	
	description				=	"Pas ¿ycia V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 20% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty ¿ycia";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Hp_05()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 20 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 20 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 20 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 20 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints * HP_PER_LP);
	};
};
///******************************************************************************************
func void UnEquip_ItBe_Mana()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_MANA_MAX, -Belt_AtrPoints);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			self.attribute[ATR_HITPOINTS_MAX] += Belt_AtrPoints * HP_PER_LP;
			self.attribute[ATR_HITPOINTS] += Belt_AtrPoints * HP_PER_LP;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			self.attribute[ATR_STRENGTH] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			self.attribute[ATR_DEXTERITY] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Npc_AddPowerPoints (self, Belt_AtrPoints);
		};
		
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Mana_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Mana_01;
	on_unequip				=	UnEquip_ItBe_Mana;
	
	cond_value[2]			=	15;
	
	description				=	"Pas many I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 4% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty many";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mana_01()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 4 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 4 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 4 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 4 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Mana_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Mana_02;
	on_unequip				=	UnEquip_ItBe_Mana;
	
	cond_value[2]			=	35;
	
	description				=	"Pas many II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 8% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty many";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mana_02()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 8 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 8 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 8 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 8 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Mana_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Mana_03;
	on_unequip				=	UnEquip_ItBe_Mana;
	
	cond_value[2]			=	55;
	
	description				=	"Pas many III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 12% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty many";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mana_03()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 12 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 12 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 12 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 12 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Mana_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Mana_04;
	on_unequip				=	UnEquip_ItBe_Mana;
	
	cond_value[2]			=	75;
	
	description				=	"Pas many IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 16% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty many";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mana_04()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 16 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 16 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 16 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 16 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Mana_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_07.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Mana_05;
	on_unequip				=	UnEquip_ItBe_Mana;
	
	cond_value[2]			=	95;
	
	description				=	"Pas many V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 20% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w max. punkty many";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Mana_05()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 20 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 20 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 20 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 20 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
	};
};
///******************************************************************************************
func void UnEquip_ItBe_Str()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_STRENGTH, -Belt_AtrPoints);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			self.attribute[ATR_HITPOINTS_MAX] += Belt_AtrPoints * HP_PER_LP;
			self.attribute[ATR_HITPOINTS] += Belt_AtrPoints * HP_PER_LP;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			self.attribute[ATR_MANA_MAX] += Belt_AtrPoints;
			self.attribute[ATR_MANA] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			self.attribute[ATR_DEXTERITY] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Npc_AddPowerPoints (self, Belt_AtrPoints);
		};
		
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Str_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Str_01;
	on_unequip				=	UnEquip_ItBe_Str;
	
	cond_value[2]			=	15;
	
	description				=	"Pas si³y I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 4% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w si³ê";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Str_01()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 4 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 4 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 4 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 4 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Str_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Str_02;
	on_unequip				=	UnEquip_ItBe_Str;
	
	cond_value[2]			=	35;
	
	description				=	"Pas si³y II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 8% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w si³ê";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Str_02()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 8 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 8 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 8 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 8 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Str_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Str_03;
	on_unequip				=	UnEquip_ItBe_Str;
	
	cond_value[2]			=	55;
	
	description				=	"Pas si³y III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 12% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w si³ê";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Str_03()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 12 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 12 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 12 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 12 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Str_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Str_04;
	on_unequip				=	UnEquip_ItBe_Str;
	
	cond_value[2]			=	75;
	
	description				=	"Pas si³y IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 16% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w si³ê";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Str_04()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 16 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 16 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 16 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 16 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Str_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_05.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Str_05;
	on_unequip				=	UnEquip_ItBe_Str;
	
	cond_value[2]			=	95;
	
	description				=	"Pas si³y V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 20% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w si³ê";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Str_05()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 20 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 20 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 20 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 20 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
	};
};
///******************************************************************************************
func void UnEquip_ItBe_Dex()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_DEXTERITY, -Belt_AtrPoints);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			self.attribute[ATR_HITPOINTS_MAX] += Belt_AtrPoints * HP_PER_LP;
			self.attribute[ATR_HITPOINTS] += Belt_AtrPoints * HP_PER_LP;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			self.attribute[ATR_MANA_MAX] += Belt_AtrPoints;
			self.attribute[ATR_MANA] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			self.attribute[ATR_STRENGTH] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Npc_AddPowerPoints (self, Belt_AtrPoints);
		};
		
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Dex_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Dex_01;
	on_unequip				=	UnEquip_ItBe_Dex;
	
	cond_value[2]			=	15;
	
	description				=	"Pas zrêcznoœci I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 4% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w zrêcznoœæ";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Dex_01()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 4 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 4 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 4 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 4 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Dex_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Dex_02;
	on_unequip				=	UnEquip_ItBe_Dex;
	
	cond_value[2]			=	35;
	
	description				=	"Pas zrêcznoœci II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 8% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w zrêcznoœæ";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Dex_02()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 8 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 8 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 8 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 8 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Dex_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Dex_03;
	on_unequip				=	UnEquip_ItBe_Dex;
	
	cond_value[2]			=	55;
	
	description				=	"Pas zrêcznoœci III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 12% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w zrêcznoœæ";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Dex_03()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 12 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 12 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 12 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 12 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Dex_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Dex_04;
	on_unequip				=	UnEquip_ItBe_Dex;
	
	cond_value[2]			=	75;
	
	description				=	"Pas zrêcznoœci IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 16% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w zrêcznoœæ";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Dex_04()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 16 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 16 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 16 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 16 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Dex_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_06.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Dex_05;
	on_unequip				=	UnEquip_ItBe_Dex;
	
	cond_value[2]			=	95;
	
	description				=	"Pas zrêcznoœci V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 20% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w zrêcznoœæ";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Dex_05()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 20 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 20 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 20 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_POWER)
		{
			Belt_AtrPoints = self.attribute[ATR_POWER] * 20 / 100;
			Npc_AddPowerPoints (self, -Belt_AtrPoints);
		};
		
		B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
	};
};
///******************************************************************************************
func void UnEquip_ItBe_Power()
{
	if (Npc_IsPlayer(self))
	{
		Npc_AddPowerPoints(self, -Belt_AtrPoints);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			self.attribute[ATR_HITPOINTS_MAX] += Belt_AtrPoints * HP_PER_LP;
			self.attribute[ATR_HITPOINTS] += Belt_AtrPoints * HP_PER_LP;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			self.attribute[ATR_MANA_MAX] += Belt_AtrPoints;
			self.attribute[ATR_MANA] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			self.attribute[ATR_STRENGTH] += Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			self.attribute[ATR_DEXTERITY] += Belt_AtrPoints;
		};
		
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Power_01 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	300;
	on_equip				=	Equip_ItBe_Power_01;
	on_unequip				=	UnEquip_ItBe_Power;
	
	cond_value[2]			=	15;
	
	description				=	"Pas mocy I";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 4% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w moc";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Power_01()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 4 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 4 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 4 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 4 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		};
		
		B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Power_02 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	600;
	on_equip				=	Equip_ItBe_Power_02;
	on_unequip				=	UnEquip_ItBe_Power;
	
	cond_value[2]			=	35;
	
	description				=	"Pas mocy II";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 8% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w moc";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Power_02()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 8 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 8 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 8 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 8 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		};
		
		B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Power_03 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	900;
	on_equip				=	Equip_ItBe_Power_03;
	on_unequip				=	UnEquip_ItBe_Power;
	
	cond_value[2]			=	55;
	
	description				=	"Pas mocy III";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 12% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w moc";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Power_03()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 12 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 12 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 12 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 12 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		};
		
		B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Power_04 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	1200;
	on_equip				=	Equip_ItBe_Power_04;
	on_unequip				=	UnEquip_ItBe_Power;
	
	cond_value[2]			=	75;
	
	description				=	"Pas mocy IV";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 16% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w moc";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Power_04()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 16 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 16 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 16 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 16 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		};
		
		B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
	};
};
///******************************************************************************************
instance ItBe_Power_05 (ItemPR_Belt)
{
	visual 					=	"ItMi_Belt_02.3ds";
	
	value					=	1500;
	on_equip				=	Equip_ItBe_Power_05;
	on_unequip				=	UnEquip_ItBe_Power;
	
	cond_value[2]			=	95;
	
	description				=	"Pas mocy V";
	COUNT[0]				=	cond_value[2];
	TEXT[1]					=	"Konwertuje 20% drugiego najliczebniejszego";
	TEXT[2]					=	"atrybutu w moc";
	COUNT[5]				=	value;
};
func void Equip_ItBe_Power_05()
{
	if (Npc_IsPlayer(self))
	{
		GetSecondBestAttribute(self);
		
		if (Belt_AtrType == ATR_HITPOINTS_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_HITPOINTS_MAX] / HP_PER_LP * 20 / 100;
			self.attribute[ATR_HITPOINTS] -= Belt_AtrPoints;
			self.attribute[ATR_HITPOINTS_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_MANA_MAX)
		{
			Belt_AtrPoints = self.attribute[ATR_MANA_MAX] * 20 / 100;
			self.attribute[ATR_MANA] -= Belt_AtrPoints;
			self.attribute[ATR_MANA_MAX] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_STRENGTH)
		{
			Belt_AtrPoints = self.attribute[ATR_STRENGTH] * 20 / 100;
			self.attribute[ATR_STRENGTH] -= Belt_AtrPoints;
		}
		else if (Belt_AtrType == ATR_DEXTERITY)
		{
			Belt_AtrPoints = self.attribute[ATR_DEXTERITY] * 20 / 100;
			self.attribute[ATR_DEXTERITY] -= Belt_AtrPoints;
		};
		
		B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
	};
};
