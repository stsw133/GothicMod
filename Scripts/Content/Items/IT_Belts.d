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
	
	TEXT[5]					=	NAME_Value;
	INV_ZBIAS				=	INVCAM_ENTF_AMULETTE_STANDARD;
	INV_ROTX				=	INVCAM_ENTF_MISC2_STANDARD;
};
///******************************************************************************************

var int Belt_ProtPoints;
var int Belt_AtrPoints;
var int Belt_AtrExcluded;

func void Equip_ItBe_Prot (var int guild, var int points)
{
	if (Npc_IsPlayer(self) && C_PlayerWearsGuildArmor(self, guild))
	{
		Belt_ProtPoints = points;
		self.protection[PROT_BLUNT] += Belt_ProtPoints;
		self.protection[PROT_EDGE] += Belt_ProtPoints;
		self.protection[PROT_POINT] += Belt_ProtPoints;
		self.protection[PROT_FIRE] += Belt_ProtPoints;
		self.protection[PROT_MAGIC] += Belt_ProtPoints;
		self.protection[PROT_BARRIER] += Belt_ProtPoints;
	};
};
func void UnEquip_ItBe_Prot()
{
	if (Npc_IsPlayer(self))
	{
		self.protection[PROT_BLUNT] -= Belt_ProtPoints;
		self.protection[PROT_EDGE] -= Belt_ProtPoints;
		self.protection[PROT_POINT] -= Belt_ProtPoints;
		self.protection[PROT_FIRE] -= Belt_ProtPoints;
		self.protection[PROT_MAGIC] -= Belt_ProtPoints;
		self.protection[PROT_BARRIER] -= Belt_ProtPoints;
		Belt_ProtPoints = 0;
	};
};

///******************************************************************************************
/// ROY
///******************************************************************************************
func void Equip_ItBe_ROY(var int points)
{
	Equip_ItBe_Prot(GIL_MIL, (points+1)/2);
};
func void UnEquip_ItBe_ROY()
{
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_ROY (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_03.3ds";
	
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_unequip			=	UnEquip_ItBe_ROY;
	
	itm.TEXT[1]				=	NAME_Prot_Total;
	itm.COUNT[1]			=	kap;
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"stra¿y miejskiej lub gwardii królewskiej):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_ROY_01 (ItemPR_Belt)
{
	SetItBeAttributes_ROY (self, 3);
	on_equip				=	Equip_ItBe_ROY_01;
	description				=	"Pas ochrony gwardzisty";
};
func void Equip_ItBe_ROY_01() { Equip_ItBe_ROY(3); };

instance ItBe_ROY_02 (ItemPR_Belt)
{
	SetItBeAttributes_ROY (self, 5);
	on_equip				=	Equip_ItBe_ROY_02;
	description				=	"Pas ochrony gwardzisty";
};
func void Equip_ItBe_ROY_02() { Equip_ItBe_ROY(5); };

instance ItBe_ROY_03 (ItemPR_Belt)
{
	SetItBeAttributes_ROY (self, 10);
	on_equip				=	Equip_ItBe_ROY_03;
	description				=	"Ulepsz. pas ochrony gwardzisty";
};
func void Equip_ItBe_ROY_03() { Equip_ItBe_ROY(10); };

///******************************************************************************************
/// PAL
///******************************************************************************************
func void Equip_ItBe_PAL(var int points)
{
	Equip_ItBe_Prot(GIL_PAL, (points+1)/2);
};
func void UnEquip_ItBe_PAL()
{
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_PAL (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_01.3ds";
	
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_unequip			=	UnEquip_ItBe_PAL;
	
	itm.TEXT[1]				=	NAME_Prot_Total;
	itm.COUNT[1]			=	kap;
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"stra¿y œwi¹tynnej lub paladyna):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_PAL_01 (ItemPR_Belt)
{
	SetItBeAttributes_PAL (self, 3);
	on_equip				=	Equip_ItBe_PAL_01;
	description				=	"Pas ochrony paladyna";
};
func void Equip_ItBe_PAL_01() { Equip_ItBe_PAL(3); };

instance ItBe_PAL_02 (ItemPR_Belt)
{
	SetItBeAttributes_PAL (self, 5);
	on_equip				=	Equip_ItBe_PAL_02;
	description				=	"Pas ochrony paladyna";
};
func void Equip_ItBe_PAL_02() { Equip_ItBe_PAL(5); };

instance ItBe_PAL_03 (ItemPR_Belt)
{
	SetItBeAttributes_PAL (self, 10);
	on_equip				=	Equip_ItBe_PAL_03;
	description				=	"Ulepsz. pas ochrony paladyna";
};
func void Equip_ItBe_PAL_03() { Equip_ItBe_PAL(10); };

///******************************************************************************************
/// DJG
///******************************************************************************************
func void Equip_ItBe_DJG(var int points)
{
	Equip_ItBe_Prot(GIL_DJG, (points+1)/2);
};
func void UnEquip_ItBe_DJG()
{
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_DJG (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_10.3ds";
	
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_unequip			=	UnEquip_ItBe_DJG;
	
	itm.TEXT[1]				=	NAME_Prot_Total;
	itm.COUNT[1]			=	kap;
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"najemnika lub ³owcy smoków):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_DJG_01 (ItemPR_Belt)
{
	SetItBeAttributes_DJG (self, 3);
	on_equip				=	Equip_ItBe_DJG_01;
	description				=	"Pas ochrony ³owcy smoków";
};
func void Equip_ItBe_DJG_01() { Equip_ItBe_DJG(3); };

instance ItBe_DJG_02 (ItemPR_Belt)
{
	SetItBeAttributes_DJG (self, 5);
	on_equip				=	Equip_ItBe_DJG_02;
	description				=	"Pas ochrony ³owcy smoków";
};
func void Equip_ItBe_DJG_02() { Equip_ItBe_DJG(5); };

instance ItBe_DJG_03 (ItemPR_Belt)
{
	SetItBeAttributes_DJG (self, 10);
	on_equip				=	Equip_ItBe_DJG_03;
	description				=	"Ulepsz. pas ochrony ³owcy smoków";
};
func void Equip_ItBe_DJG_03() { Equip_ItBe_DJG(10); };

///******************************************************************************************
/// ASA
///******************************************************************************************
func void Equip_ItBe_ASA(var int points)
{
	Equip_ItBe_Prot(GIL_SLD, (points+1)/2);
};
func void UnEquip_ItBe_ASA()
{
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_ASA (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_05.3ds";
	
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_unequip			=	UnEquip_ItBe_ASA;
	
	itm.TEXT[1]				=	NAME_Prot_Total;
	itm.COUNT[1]			=	kap;
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"asasyna lub elitarnego asasyna):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_ASA_01 (ItemPR_Belt)
{
	SetItBeAttributes_ASA (self, 3);
	on_equip				=	Equip_ItBe_ASA_01;
	description				=	"Pas ochrony asasyna";
};
func void Equip_ItBe_ASA_01() { Equip_ItBe_ASA(3); };

instance ItBe_ASA_02 (ItemPR_Belt)
{
	SetItBeAttributes_ASA (self, 5);
	on_equip				=	Equip_ItBe_ASA_02;
	description				=	"Pas ochrony asasyna";
};
func void Equip_ItBe_ASA_02() { Equip_ItBe_ASA(5); };

instance ItBe_ASA_03 (ItemPR_Belt)
{
	SetItBeAttributes_ASA (self, 10);
	on_equip				=	Equip_ItBe_ASA_03;
	description				=	"Ulepsz. pas ochrony asasyna";
};
func void Equip_ItBe_ASA_03() { Equip_ItBe_ASA(10); };

///******************************************************************************************
/// MAG
///******************************************************************************************
func void Equip_ItBe_MAG(var int points)
{
	Equip_ItBe_Prot(GIL_KDF, (points+1)/2);
};
func void UnEquip_ItBe_MAG()
{
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_MAG (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_02.3ds";
	
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_unequip			=	UnEquip_ItBe_MAG;
	
	itm.TEXT[1]				=	NAME_Prot_Total;
	itm.COUNT[1]			=	kap;
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"maga lub arcymaga):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_MAG_01 (ItemPR_Belt)
{
	SetItBeAttributes_MAG (self, 3);
	on_equip				=	Equip_ItBe_MAG_01;
	description				=	"Szarfa ochrony maga";
};
func void Equip_ItBe_MAG_01() { Equip_ItBe_MAG(3); };

instance ItBe_MAG_02 (ItemPR_Belt)
{
	SetItBeAttributes_MAG (self, 5);
	on_equip				=	Equip_ItBe_MAG_02;
	description				=	"Szarfa ochrony maga";
};
func void Equip_ItBe_MAG_02() { Equip_ItBe_MAG(5); };

instance ItBe_MAG_03 (ItemPR_Belt)
{
	SetItBeAttributes_MAG (self, 10);
	on_equip				=	Equip_ItBe_MAG_03;
	description				=	"Ulepsz. szarfa ochrony maga";
};
func void Equip_ItBe_MAG_03() { Equip_ItBe_MAG(10); };

///******************************************************************************************
/// Leather
///******************************************************************************************
func void Equip_ItBe_Leather(var int points)
{
	Equip_ItBe_Prot(GIL_OUT, (points+1)/2);
};
func void UnEquip_ItBe_Leather()
{
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_Leather (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_06.3ds";
	
	itm.protection[PROT_EDGE]		=	kap;
	itm.protection[PROT_BLUNT]		=	kap;
	itm.protection[PROT_POINT]		=	kap;
	itm.protection[PROT_FIRE]		=	kap;
	itm.protection[PROT_MAGIC]		=	kap;
	itm.protection[PROT_BARRIER]	=	kap;
	
	itm.on_unequip			=	UnEquip_ItBe_Leather;
	
	itm.TEXT[1]				=	NAME_Prot_Total;
	itm.COUNT[1]			=	kap;
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"skórzanym lub z p³ytek):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_Leather_01 (ItemPR_Belt)
{
	SetItBeAttributes_Leather (self, 3);
	on_equip				=	Equip_ItBe_Leather_01;
	description				=	"Pas ochrony myœliwego";
};
func void Equip_ItBe_Leather_01() { Equip_ItBe_Leather(3); };

instance ItBe_Leather_02 (ItemPR_Belt)
{
	SetItBeAttributes_Leather (self, 5);
	on_equip				=	Equip_ItBe_Leather_02;
	description				=	"Pas ochrony myœliwego";
};
func void Equip_ItBe_Leather_02() { Equip_ItBe_Leather(5); };

instance ItBe_Leather_03 (ItemPR_Belt)
{
	SetItBeAttributes_Leather (self, 10);
	on_equip				=	Equip_ItBe_Leather_03;
	description				=	"Ulepsz. pas ochrony myœliwego";
};
func void Equip_ItBe_Leather_03() { Equip_ItBe_Leather(10); };

///******************************************************************************************
/// HP
///******************************************************************************************
func void Equip_ItBe_HP(var int points)
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_HP*HP_PER_LP * points / 100;
		B_RaiseAttribute(self, ATR_HITPOINTS_MAX, Belt_AtrPoints);
	};
	Equip_ItBe_Prot(GIL_MIL, (points+1)/2);
};
func void UnEquip_ItBe_HP()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
		Npc_AttributesRefresh();
	};
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_HP (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_03.3ds";
	
	itm.on_unequip			=	UnEquip_ItBe_HP;
	
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"stra¿y miejskiej lub gwardii królewskiej):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_HP_01 (ItemPR_Belt)
{
	SetItBeAttributes_HP (self, 3);
	on_equip				=	Equip_ItBe_HP_01;
	description				=	"Pas ¿ycia gwardzisty";
	TEXT[1]					=	"Zwiêksza max. ¿ycie o 3% nauczonej iloœci";
};
func void Equip_ItBe_HP_01() { Equip_ItBe_HP(3); };

instance ItBe_HP_02 (ItemPR_Belt)
{
	SetItBeAttributes_HP (self, 5);
	on_equip				=	Equip_ItBe_HP_02;
	description				=	"Pas ¿ycia gwardzisty";
	TEXT[1]					=	"Zwiêksza max. ¿ycie o 5% nauczonej iloœci";
};
func void Equip_ItBe_HP_02() { Equip_ItBe_HP(5); };

instance ItBe_HP_03 (ItemPR_Belt)
{
	SetItBeAttributes_HP (self, 10);
	on_equip				=	Equip_ItBe_HP_03;
	description				=	"Ulepsz. pas ¿ycia gwardzisty";
	TEXT[1]					=	"Zwiêksza max. ¿ycie o 10% nauczonej iloœci";
};
func void Equip_ItBe_HP_03() { Equip_ItBe_HP(10); };

///******************************************************************************************
/// MP
///******************************************************************************************
func void Equip_ItBe_MP(var int points)
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_MP*MP_PER_LP * points / 100;
		B_RaiseAttribute(self, ATR_MANA_MAX, Belt_AtrPoints);
	};
	Equip_ItBe_Prot(GIL_PAL, (points+1)/2);
};
func void UnEquip_ItBe_MP()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_MANA, -Belt_AtrPoints);
		Npc_ChangeAttribute(self, ATR_MANA_MAX, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
		Npc_AttributesRefresh();
	};
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_MP (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_01.3ds";
	
	itm.on_unequip			=	UnEquip_ItBe_MP;
	
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"stra¿y œwi¹tynnej lub paladyna):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_MP_01 (ItemPR_Belt)
{
	SetItBeAttributes_MP (self, 3);
	on_equip				=	Equip_ItBe_MP_01;
	description				=	"Pas many paladyna";
	TEXT[1]					=	"Zwiêksza max. manê o 3% nauczonej iloœci";
};
func void Equip_ItBe_MP_01() { Equip_ItBe_MP(3); };

instance ItBe_MP_02 (ItemPR_Belt)
{
	SetItBeAttributes_MP (self, 5);
	on_equip				=	Equip_ItBe_MP_02;
	description				=	"Pas many paladyna";
	TEXT[1]					=	"Zwiêksza max. manê o 5% nauczonej iloœci";
};
func void Equip_ItBe_MP_02() { Equip_ItBe_MP(5); };

instance ItBe_MP_03 (ItemPR_Belt)
{
	SetItBeAttributes_MP (self, 10);
	on_equip				=	Equip_ItBe_MP_03;
	description				=	"Ulepsz. pas many paladyna";
	TEXT[1]					=	"Zwiêksza max. manê o 10% nauczonej iloœci";
};
func void Equip_ItBe_MP_03() { Equip_ItBe_MP(10); };

///******************************************************************************************
/// STR
///******************************************************************************************
func void Equip_ItBe_STR(var int points)
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_STR * points / 100;
		B_RaiseAttribute(self, ATR_STRENGTH, Belt_AtrPoints);
	};
	Equip_ItBe_Prot(GIL_DJG, (points+1)/2);
};
func void UnEquip_ItBe_STR()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_STRENGTH, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_STR (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_10.3ds";
	
	itm.on_unequip			=	UnEquip_ItBe_STR;
	
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"najemnika lub ³owcy smoków):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_STR_01 (ItemPR_Belt)
{
	SetItBeAttributes_STR (self, 3);
	on_equip				=	Equip_ItBe_STR_01;
	description				=	"Pas si³y ³owcy smoków";
	TEXT[1]					=	"Zwiêksza si³ê o 3% nauczonej iloœci";
};
func void Equip_ItBe_STR_01() { Equip_ItBe_STR(3); };

instance ItBe_STR_02 (ItemPR_Belt)
{
	SetItBeAttributes_STR (self, 5);
	on_equip				=	Equip_ItBe_STR_02;
	description				=	"Pas si³y ³owcy smoków";
	TEXT[1]					=	"Zwiêksza si³ê o 5% nauczonej iloœci";
};
func void Equip_ItBe_STR_02() { Equip_ItBe_STR(5); };

instance ItBe_STR_03 (ItemPR_Belt)
{
	SetItBeAttributes_STR (self, 10);
	on_equip				=	Equip_ItBe_STR_03;
	description				=	"Ulepsz. pas si³y ³owcy smoków";
	TEXT[1]					=	"Zwiêksza si³ê o 10% nauczonej iloœci";
};
func void Equip_ItBe_STR_03() { Equip_ItBe_STR(10); };

///******************************************************************************************
/// DEX
///******************************************************************************************
func void Equip_ItBe_DEX(var int points)
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_DEX * points / 100;
		B_RaiseAttribute(self, ATR_DEXTERITY, Belt_AtrPoints);
	};
	Equip_ItBe_Prot(GIL_SLD, (points+1)/2);
};
func void UnEquip_ItBe_DEX()
{
	if (Npc_IsPlayer(self))
	{
		Npc_ChangeAttribute(self, ATR_DEXTERITY, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_DEX (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_05.3ds";
	
	itm.on_unequip			=	UnEquip_ItBe_DEX;
	
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"asasyna lub elitarnego asasyna):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_DEX_01 (ItemPR_Belt)
{
	SetItBeAttributes_DEX (self, 3);
	on_equip				=	Equip_ItBe_DEX_01;
	description				=	"Pas zrêcznoœci asasyna";
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 3% nauczonej iloœci";
};
func void Equip_ItBe_DEX_01() { Equip_ItBe_DEX(3); };

instance ItBe_DEX_02 (ItemPR_Belt)
{
	SetItBeAttributes_DEX (self, 5);
	on_equip				=	Equip_ItBe_DEX_02;
	description				=	"Pas zrêcznoœci asasyna";
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 5% nauczonej iloœci";
};
func void Equip_ItBe_DEX_02() { Equip_ItBe_DEX(5); };

instance ItBe_DEX_03 (ItemPR_Belt)
{
	SetItBeAttributes_DEX (self, 10);
	on_equip				=	Equip_ItBe_DEX_03;
	description				=	"Ulepsz. pas zrêcznoœci asasyna";
	TEXT[1]					=	"Zwiêksza zrêcznoœæ o 10% nauczonej iloœci";
};
func void Equip_ItBe_DEX_03() { Equip_ItBe_DEX(10); };

///******************************************************************************************
/// Power
///******************************************************************************************
func void Equip_ItBe_POW(var int points)
{
	if (Npc_IsPlayer(self))
	{
		Belt_AtrPoints = LearnedAttribute_POW * points / 100;
		B_RaiseAttribute(self, ATR_POWER, Belt_AtrPoints);
	};
	Equip_ItBe_Prot(GIL_KDF, (points+1)/2);
};
func void UnEquip_ItBe_POW()
{
	if (Npc_IsPlayer(self))
	{
		Npc_AddPowerPoints(self, -Belt_AtrPoints);
		Belt_AtrPoints = 0;
	};
	UnEquip_ItBe_Prot();
};
func void SetItBeAttributes_Power (var C_Item itm, var int kap)
{
	itm.value				=	kap*100;
	itm.visual 				=	"ItMi_Belt_02.3ds";
	
	itm.on_unequip			=	UnEquip_ItBe_POW;
	
	itm.TEXT[2]				=	"(dodatkowa ochrona z pancerzem";
	itm.TEXT[3]				=	"maga lub arcymaga):";
	itm.COUNT[3]			=	(kap+1)/2;
	itm.COUNT[5]			=	itm.value;
};
///******************************************************************************************
instance ItBe_POW_01 (ItemPR_Belt)
{
	SetItBeAttributes_Power (self, 3);
	on_equip				=	Equip_ItBe_POW_01;
	description				=	"Szarfa mocy maga";
	TEXT[1]					=	"Zwiêksza moc o 3% nauczonej iloœci";
};
func void Equip_ItBe_POW_01() { Equip_ItBe_POW(3); };

instance ItBe_POW_02 (ItemPR_Belt)
{
	SetItBeAttributes_Power (self, 5);
	on_equip				=	Equip_ItBe_POW_02;
	description				=	"Szarfa mocy maga";
	TEXT[1]					=	"Zwiêksza moc o 5% nauczonej iloœci";
};
func void Equip_ItBe_POW_02() { Equip_ItBe_POW(5); };

instance ItBe_POW_03 (ItemPR_Belt)
{
	SetItBeAttributes_Power (self, 10);
	on_equip				=	Equip_ItBe_POW_03;
	description				=	"Ulepsz. szarfa mocy maga";
	TEXT[1]					=	"Zwiêksza moc o 10% nauczonej iloœci";
};
func void Equip_ItBe_POW_03() { Equip_ItBe_POW(10); };
