///******************************************************************************************
///	IT_Belts
///******************************************************************************************
prototype ItemPR_Belt (C_Item)
{
	name 					=	"Pas";

	mainflag 				=	ITEM_KAT_MAGIC;
	flags 					=	ITEM_BELT;
	material 				=	MAT_METAL;

	on_equip				=	Attributes_CHECK;
	on_unequip				=	Attributes_CHECK;
	
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_AMULETTE_STANDARD;
	inv_rotx				=	INVCAM_ENTF_MISC2_STANDARD;
};
///******************************************************************************************

var int Belt_AtrPoints;

///******************************************************************************************
instance ItBe_Grd_01 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_03.3ds";
	
	value			=	350;
	on_equip		=	Equip_ItBe_Grd_01;
	on_unequip		=	UnEquip_ItBe_Grd_01;

	description		=	"Pas stra¿nika";
	TEXT[0]			=	"Dzia³a tylko z pancerzem stra¿nika.";
	TEXT[1]			=	"Zwiêksza max. punkty ¿ycia o 5% nauczonych.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Grd_01()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_HP / 20;
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Grd_01()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Grd_02 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_03.3ds";
	
	value			=	900;
	on_equip		=	Equip_ItBe_Grd_02;
	on_unequip		=	UnEquip_ItBe_Grd_02;

	description		=	"Pas gwardzisty";
	TEXT[0]			=	"Dzia³a tylko z pancerzem gwardzisty.";
	TEXT[1]			=	"Zwiêksza max. punkty ¿ycia o 10% nauczonych.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Grd_02()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_HP / 10;
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Grd_02()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_DrH_01 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_05.3ds";
	
	value			=	350;
	on_equip		=	Equip_ItBe_DrH_01;
	on_unequip		=	UnEquip_ItBe_DrH_01;

	description		=	"Pas najemnika";
	TEXT[0]			=	"Dzia³a tylko z pancerzem najemnika.";
	TEXT[1]			=	"Zwiêksza si³ê o 5% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_DrH_01()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_STR / 20;
		B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_DrH_01()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_STRENGTH, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_DrH_02 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_05.3ds";
	
	value			=	900;
	on_equip		=	Equip_ItBe_DrH_02;
	on_unequip		=	UnEquip_ItBe_DrH_02;

	description		=	"Pas ³owcy smoków";
	TEXT[0]			=	"Dzia³a tylko z pancerzem ³owcy smoków.";
	TEXT[1]			=	"Zwiêksza si³ê o 10% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_DrH_02()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_STR / 10;
		B_RaiseAttribute (self, ATR_STRENGTH, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_DrH_02()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_STRENGTH, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Mag_01 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_02.3ds";
	
	value			=	350;
	on_equip		=	Equip_ItBe_Mag_01;
	on_unequip		=	UnEquip_ItBe_Mag_01;

	description		=	"Szarfa maga";
	TEXT[0]			=	"Dzia³a tylko z szat¹ maga.";
	TEXT[1]			=	"Zwiêksza moc o 5% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Mag_01()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_Power / 20;
		B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Mag_01()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Power] -= Belt_AtrPoints;
		POWER_CHECK(self);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Mag_02 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_02.3ds";
	
	value			=	900;
	on_equip		=	Equip_ItBe_Mag_02;
	on_unequip		=	UnEquip_ItBe_Mag_02;

	description		=	"Szarfa arcymaga";
	TEXT[0]			=	"Dzia³a tylko z szat¹ arcymaga.";
	TEXT[1]			=	"Zwiêksza moc o 10% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Mag_02()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_Power / 10;
		B_RaiseAttribute (self, ATR_POWER, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Mag_02()
{
	if (Npc_IsPlayer(self))
	{
		self.aivar[AIV_Power] -= Belt_AtrPoints;
		POWER_CHECK(self);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Pal_01 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_07.3ds";
	
	value			=	350;
	on_equip		=	Equip_ItBe_Pal_01;
	on_unequip		=	UnEquip_ItBe_Pal_01;

	description		=	"Pas s³u¿by œwi¹tynnej";
	TEXT[0]			=	"Dzia³a tylko z pancerzem stra¿nika œwi¹tynnego.";
	TEXT[1]			=	"Zwiêksza max. manê o 5% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Pal_01()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_Mana / 20;
		B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Pal_01()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_MANA_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Pal_02 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_07.3ds";
	
	value			=	900;
	on_equip		=	Equip_ItBe_Pal_02;
	on_unequip		=	UnEquip_ItBe_Pal_02;

	description		=	"Pas paladyna";
	TEXT[0]			=	"Dzia³a tylko z pancerzem paladyna.";
	TEXT[1]			=	"Zwiêksza max. manê o 10% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Pal_02()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_Mana / 10;
		B_RaiseAttribute (self, ATR_MANA_MAX, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Pal_02()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_MANA_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Asa_01 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_06.3ds";
	
	value			=	350;
	on_equip		=	Equip_ItBe_Asa_01;
	on_unequip		=	UnEquip_ItBe_Asa_01;

	description		=	"Pas asasyna";
	TEXT[0]			=	"Dzia³a tylko z pancerzem asasyna.";
	TEXT[1]			=	"Zwiêksza zrêcznoœæ o 5% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Asa_01()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_DEX / 20;
		B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Asa_01()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_DEXTERITY, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};
///******************************************************************************************
instance ItBe_Asa_02 (ItemPR_Belt)
{
	visual 			=	"ItMi_Belt_06.3ds";
	
	value			=	900;
	on_equip		=	Equip_ItBe_Asa_02;
	on_unequip		=	UnEquip_ItBe_Asa_02;

	description		=	"Pas elit. asasyna";
	TEXT[0]			=	"Dzia³a tylko z pancerzem elit. asasyna.";
	TEXT[1]			=	"Zwiêksza zrêcznoœæ o 10% nauczonej.";
	COUNT[5]		=	value;
};
func void Equip_ItBe_Asa_02()
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_DEX / 10;
		B_RaiseAttribute (self, ATR_DEXTERITY, Belt_AtrPoints);
	};
};
func void UnEquip_ItBe_Asa_02()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_DEXTERITY, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
};

///******************************************************************************************
///	IT_Amulets_Special
///******************************************************************************************
