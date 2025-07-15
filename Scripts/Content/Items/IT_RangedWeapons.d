///******************************************************************************************
func void SetItRwAttributes (var C_Item itm, var int dmg, var int dmgType, var int cond, var int condAtr, var int valuePercent, var int variant)
{
	/// properties 1
	itm.value					=	(dmg*20 - cond*10)/50*50 * valuePercent/100;
	if (valuePercent > 0 && itm.value <= 0)
	{
		itm.value = 1;
	};
	
	/// variants
	if (variant == WEAPON_Wornout)
	{
		dmg /= 2;
		itm.value				=	itm.value / 10;
		itm.TEXT[0]				=	"Ta broñ jest zu¿yta.";
	}
	else if (variant == WEAPON_Forged)
	{
		dmg += 5;
		itm.TEXT[0]				=	"Ta broñ zosta³a stworzona przez ciebie.";
	};
	
	/// properties 2
	itm.damageTotal				=	dmg;
	itm.damageType				=	dmgType;
	
	if (condAtr == ATR_STRENGTH)
	{
		itm.cond_atr[0]			=	ATR_STRENGTH;
		itm.cond_atr[1]			=	ATR_DEXTERITY;
	}
	else if (condAtr == ATR_DEXTERITY)
	{
		itm.cond_atr[0]			=	ATR_DEXTERITY;
		itm.cond_atr[1]			=	ATR_STRENGTH;
	};
	itm.cond_value[0]			=	cond;
	itm.cond_value[1]			=	cond/5;
	
	/// descriptions
	itm.description				=	itm.name;
	itm.COUNT[2]				=	itm.damageTotal;
	itm.COUNT[3]				=	itm.cond_value[0];
	if (valuePercent > 0)
	{
		itm.TEXT[5]				=	NAME_Value;
		itm.COUNT[5]			=	itm.value;
	};
	
	if		(dmgType == DAM_POINT)		{	itm.TEXT[2] = NAME_Dam_Point;		}
	else								{	itm.TEXT[2] = NAME_Damage;			};
	
	if		(condAtr == ATR_STRENGTH)	{	itm.TEXT[3] = NAME_Str_needed;		}
	else if	(condAtr == ATR_DEXTERITY)	{	itm.TEXT[3] = NAME_Dex_needed;		};
};

///******************************************************************************************
/// Bows
///******************************************************************************************
prototype ItemPR_Bow (C_Item)
{
	mainflag					=	ITEM_KAT_FF;
	flags						=	ITEM_BOW;
	material					=	MAT_WOOD;
	
	munition					=	ITRW_ARROW;
	on_equip					=	Equip_Bow_CHECK;
	on_unequip					=	UnEquip_Bow_CHECK;
};

///******************************************************************************************
func void Equip_Bow_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_bow = ITRW_ARROW;
		ARROW_CHECK();
	};
};
func void UnEquip_Bow_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_bow = 0;
		ARROW_CHECK();
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_ARROW;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};

///******************************************************************************************
instance ItRw_Bow_L_01 (ItemPR_Bow)					{	name = "Krótki ³uk";					visual = "ItRw_Bow_Small_01.mms";				SetItRwAttributes (self, 10,DAM_POINT, 10,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_L_01 (ItemPR_Bow)				{	name = "Krótki ³uk";					visual = "ItRw_Bow_Small_01.mms";				SetItRwAttributes (self, 10,DAM_POINT, 10,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_L_01 (ItemPR_Bow)				{	name = "Krótki ³uk";					visual = "ItRw_Bow_Small_01.mms";				SetItRwAttributes (self, 10,DAM_POINT, 10,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_L_02 (ItemPR_Bow)					{	name = "£uk wierzbowy";					visual = "ItRw_Bow_Small_02.mms";				SetItRwAttributes (self, 20,DAM_POINT, 20,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_L_02 (ItemPR_Bow)				{	name = "£uk wierzbowy";					visual = "ItRw_Bow_Small_02.mms";				SetItRwAttributes (self, 20,DAM_POINT, 20,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_L_02 (ItemPR_Bow)				{	name = "£uk wierzbowy";					visual = "ItRw_Bow_Small_02.mms";				SetItRwAttributes (self, 20,DAM_POINT, 20,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_L_03 (ItemPR_Bow)					{	name = "£uk myœliwski";					visual = "ItRw_Bow_Small_04.mms";				SetItRwAttributes (self, 30,DAM_POINT, 30,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_L_03 (ItemPR_Bow)				{	name = "£uk myœliwski";					visual = "ItRw_Bow_Small_04.mms";				SetItRwAttributes (self, 30,DAM_POINT, 30,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_L_03 (ItemPR_Bow)				{	name = "£uk myœliwski";					visual = "ItRw_Bow_Small_04.mms";				SetItRwAttributes (self, 30,DAM_POINT, 30,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_L_04 (ItemPR_Bow)					{	name = "£uk koœciany";					visual = "ItRw_Bow_Small_05.mms";				SetItRwAttributes (self, 40,DAM_POINT, 40,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_L_04 (ItemPR_Bow)				{	name = "£uk koœciany";					visual = "ItRw_Bow_Small_05.mms";				SetItRwAttributes (self, 40,DAM_POINT, 40,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_L_04 (ItemPR_Bow)				{	name = "£uk koœciany";					visual = "ItRw_Bow_Small_05.mms";				SetItRwAttributes (self, 40,DAM_POINT, 40,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_01 (ItemPR_Bow)					{	name = "£uk kompozytowy";				visual = "ItRw_Bow_Long_01.mms";				SetItRwAttributes (self, 50,DAM_POINT, 50,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_01 (ItemPR_Bow)				{	name = "£uk kompozytowy";				visual = "ItRw_Bow_Long_01.mms";				SetItRwAttributes (self, 50,DAM_POINT, 50,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_01 (ItemPR_Bow)				{	name = "£uk kompozytowy";				visual = "ItRw_Bow_Long_01.mms";				SetItRwAttributes (self, 50,DAM_POINT, 50,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_02 (ItemPR_Bow)					{	name = "£uk jesionowy";					visual = "ItRw_Bow_Long_02.mms";				SetItRwAttributes (self, 60,DAM_POINT, 60,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_02 (ItemPR_Bow)				{	name = "£uk jesionowy";					visual = "ItRw_Bow_Long_02.mms";				SetItRwAttributes (self, 60,DAM_POINT, 60,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_02 (ItemPR_Bow)				{	name = "£uk jesionowy";					visual = "ItRw_Bow_Long_02.mms";				SetItRwAttributes (self, 60,DAM_POINT, 60,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_03 (ItemPR_Bow)					{	name = "D³ugi ³uk";						visual = "ItRw_Bow_Long_03.mms";				SetItRwAttributes (self, 70,DAM_POINT, 70,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_03 (ItemPR_Bow)				{	name = "D³ugi ³uk";						visual = "ItRw_Bow_Long_03.mms";				SetItRwAttributes (self, 70,DAM_POINT, 70,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_03 (ItemPR_Bow)				{	name = "D³ugi ³uk";						visual = "ItRw_Bow_Long_03.mms";				SetItRwAttributes (self, 70,DAM_POINT, 70,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_04 (ItemPR_Bow)					{	name = "£uk dêbowy";					visual = "ItRw_Bow_Long_04.mms";				SetItRwAttributes (self, 80,DAM_POINT, 80,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_04 (ItemPR_Bow)				{	name = "£uk dêbowy";					visual = "ItRw_Bow_Long_04.mms";				SetItRwAttributes (self, 80,DAM_POINT, 80,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_04 (ItemPR_Bow)				{	name = "£uk dêbowy";					visual = "ItRw_Bow_Long_04.mms";				SetItRwAttributes (self, 80,DAM_POINT, 80,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_05 (ItemPR_Bow)					{	name = "£uk bukowy";					visual = "ItRw_Bow_Long_05.mms";				SetItRwAttributes (self, 90,DAM_POINT, 90,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_05 (ItemPR_Bow)				{	name = "£uk bukowy";					visual = "ItRw_Bow_Long_05.mms";				SetItRwAttributes (self, 90,DAM_POINT, 90,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_05 (ItemPR_Bow)				{	name = "£uk bukowy";					visual = "ItRw_Bow_Long_05.mms";				SetItRwAttributes (self, 90,DAM_POINT, 90,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_06 (ItemPR_Bow)					{	name = "£uk klonowy";					visual = "ItRw_Bow_Long_06.mms";				SetItRwAttributes (self, 100,DAM_POINT, 100,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_06 (ItemPR_Bow)				{	name = "£uk klonowy";					visual = "ItRw_Bow_Long_06.mms";				SetItRwAttributes (self, 100,DAM_POINT, 100,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_06 (ItemPR_Bow)				{	name = "£uk klonowy";					visual = "ItRw_Bow_Long_06.mms";				SetItRwAttributes (self, 100,DAM_POINT, 100,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_07 (ItemPR_Bow)					{	name = "£uk ¿o³nierski";				visual = "ItRw_Bow_Long_07.mms";				SetItRwAttributes (self, 110,DAM_POINT, 110,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_07 (ItemPR_Bow)				{	name = "£uk ¿o³nierski";				visual = "ItRw_Bow_Long_07.mms";				SetItRwAttributes (self, 110,DAM_POINT, 110,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_07 (ItemPR_Bow)				{	name = "£uk ¿o³nierski";				visual = "ItRw_Bow_Long_07.mms";				SetItRwAttributes (self, 110,DAM_POINT, 110,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_M_08 (ItemPR_Bow)					{	name = "£uk z poro¿a";					visual = "ItRw_Bow_Long_08.mms";				SetItRwAttributes (self, 120,DAM_POINT, 120,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_M_08 (ItemPR_Bow)				{	name = "£uk z poro¿a";					visual = "ItRw_Bow_Long_08.mms";				SetItRwAttributes (self, 120,DAM_POINT, 120,ATR_DEXTERITY, 100, WEAPON_Wornout);		};
instance ItRw3_Bow_M_08 (ItemPR_Bow)				{	name = "£uk z poro¿a";					visual = "ItRw_Bow_Long_08.mms";				SetItRwAttributes (self, 120,DAM_POINT, 120,ATR_DEXTERITY, 100, WEAPON_Forged);		};

instance ItRw_Bow_H_01 (ItemPR_Bow)					{	name = "£uk wojenny";					visual = "ItRw_Bow_War_01.mms";					SetItRwAttributes (self, 130,DAM_POINT, 130,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_H_01 (ItemPR_Bow)				{	name = "£uk wojenny";					visual = "ItRw_Bow_War_01.mms";					SetItRwAttributes (self, 130,DAM_POINT, 130,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw3_Bow_H_01 (ItemPR_Bow)				{	name = "£uk wojenny";					visual = "ItRw_Bow_War_01.mms";					SetItRwAttributes (self, 130,DAM_POINT, 130,ATR_DEXTERITY, 100, WEAPON_Default);		};

instance ItRw_Bow_H_02 (ItemPR_Bow)					{	name = "Pogromca orków";				visual = "ItRw_Bow_War_02.mms";					SetItRwAttributes (self, 140,DAM_POINT, 140,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_H_02 (ItemPR_Bow)				{	name = "Pogromca orków";				visual = "ItRw_Bow_War_02.mms";					SetItRwAttributes (self, 140,DAM_POINT, 140,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw3_Bow_H_02 (ItemPR_Bow)				{	name = "Pogromca orków";				visual = "ItRw_Bow_War_02.mms";					SetItRwAttributes (self, 140,DAM_POINT, 140,ATR_DEXTERITY, 100, WEAPON_Default);		};

instance ItRw_Bow_H_03 (ItemPR_Bow)					{	name = "Gromow³adny";					visual = "ItRw_Bow_War_03.mms";					SetItRwAttributes (self, 150,DAM_POINT, 150,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_H_03 (ItemPR_Bow)				{	name = "Gromow³adny";					visual = "ItRw_Bow_War_03.mms";					SetItRwAttributes (self, 150,DAM_POINT, 150,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw3_Bow_H_03 (ItemPR_Bow)				{	name = "Gromow³adny";					visual = "ItRw_Bow_War_03.mms";					SetItRwAttributes (self, 150,DAM_POINT, 150,ATR_DEXTERITY, 100, WEAPON_Default);		};

instance ItRw_Bow_H_04 (ItemPR_Bow)					{	name = "Smoczy ³uk";					visual = "ItRw_Bow_War_04.mms";					SetItRwAttributes (self, 160,DAM_POINT, 160,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw0_Bow_H_04 (ItemPR_Bow)				{	name = "Smoczy ³uk";					visual = "ItRw_Bow_War_04.mms";					SetItRwAttributes (self, 160,DAM_POINT, 160,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw3_Bow_H_04 (ItemPR_Bow)				{	name = "Smoczy ³uk";					visual = "ItRw_Bow_War_04.mms";					SetItRwAttributes (self, 160,DAM_POINT, 160,ATR_DEXTERITY, 100, WEAPON_Default);		};

///******************************************************************************************
/// Crossbows
///******************************************************************************************
prototype ItemPR_Crossbow (C_Item)
{
	mainflag					=	ITEM_KAT_FF;
	flags						=	ITEM_CROSSBOW;
	material					=	MAT_WOOD;
	
	munition					=	ITRW_BOLT;
	on_equip					=	Equip_Crossbow_CHECK;
	on_unequip					=	UnEquip_Crossbow_CHECK;
};

///******************************************************************************************
func void Equip_Crossbow_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_cbow = ITRW_BOLT;
		BOLT_CHECK();
	};
};
func void UnEquip_Crossbow_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_cbow = 0;
		BOLT_CHECK();
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_BOLT;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};

///******************************************************************************************
instance ItRw_Crossbow_L_01 (ItemPR_Crossbow)		{	name = "Kusza myœliwska";				visual = "ItRw_Crossbow_L_01.mms";				SetItRwAttributes (self, 30,DAM_POINT, 25,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw0_Crossbow_L_01 (ItemPR_Crossbow)		{	name = "Kusza myœliwska";				visual = "ItRw_Crossbow_L_01.mms";				SetItRwAttributes (self, 30,DAM_POINT, 25,ATR_STRENGTH, 140, WEAPON_Wornout);		};
instance ItRw3_Crossbow_L_01 (ItemPR_Crossbow)		{	name = "Kusza myœliwska";				visual = "ItRw_Crossbow_L_01.mms";				SetItRwAttributes (self, 30,DAM_POINT, 25,ATR_STRENGTH, 140, WEAPON_Forged);			};

instance ItRw_Crossbow_L_02 (ItemPR_Crossbow)		{	name = "Ma³a kusza";					visual = "ItRw_Crossbow_L_02.mms";				SetItRwAttributes (self, 60,DAM_POINT, 50,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw0_Crossbow_L_02 (ItemPR_Crossbow)		{	name = "Ma³a kusza";					visual = "ItRw_Crossbow_L_02.mms";				SetItRwAttributes (self, 60,DAM_POINT, 50,ATR_STRENGTH, 140, WEAPON_Wornout);		};
instance ItRw3_Crossbow_L_02 (ItemPR_Crossbow)		{	name = "Ma³a kusza";					visual = "ItRw_Crossbow_L_02.mms";				SetItRwAttributes (self, 60,DAM_POINT, 50,ATR_STRENGTH, 140, WEAPON_Forged);			};

instance ItRw_Crossbow_M_01 (ItemPR_Crossbow)		{	name = "Kusza";							visual = "ItRw_Crossbow_M_01.mms";				SetItRwAttributes (self, 90,DAM_POINT, 75,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw0_Crossbow_M_01 (ItemPR_Crossbow)		{	name = "Kusza";							visual = "ItRw_Crossbow_M_01.mms";				SetItRwAttributes (self, 90,DAM_POINT, 75,ATR_STRENGTH, 140, WEAPON_Wornout);		};
instance ItRw3_Crossbow_M_01 (ItemPR_Crossbow)		{	name = "Kusza";							visual = "ItRw_Crossbow_M_01.mms";				SetItRwAttributes (self, 90,DAM_POINT, 75,ATR_STRENGTH, 140, WEAPON_Forged);			};

instance ItRw_Crossbow_M_02 (ItemPR_Crossbow)		{	name = "Kusza bojowa";					visual = "ItRw_Crossbow_M_02.mms";				SetItRwAttributes (self, 120,DAM_POINT, 100,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw0_Crossbow_M_02 (ItemPR_Crossbow)		{	name = "Kusza bojowa";					visual = "ItRw_Crossbow_M_02.mms";				SetItRwAttributes (self, 120,DAM_POINT, 100,ATR_STRENGTH, 140, WEAPON_Wornout);		};
instance ItRw3_Crossbow_M_02 (ItemPR_Crossbow)		{	name = "Kusza bojowa";					visual = "ItRw_Crossbow_M_02.mms";				SetItRwAttributes (self, 120,DAM_POINT, 100,ATR_STRENGTH, 140, WEAPON_Forged);		};

instance ItRw_Crossbow_H_01 (ItemPR_Crossbow)		{	name = "Ciê¿ka kusza";					visual = "ItRw_Crossbow_H_01.mms";				SetItRwAttributes (self, 150,DAM_POINT, 125,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw0_Crossbow_H_01 (ItemPR_Crossbow)		{	name = "Ciê¿ka kusza";					visual = "ItRw_Crossbow_H_01.mms";				SetItRwAttributes (self, 150,DAM_POINT, 125,ATR_STRENGTH, 140, WEAPON_Wornout);		};
instance ItRw3_Crossbow_H_01 (ItemPR_Crossbow)		{	name = "Ciê¿ka kusza";					visual = "ItRw_Crossbow_H_01.mms";				SetItRwAttributes (self, 150,DAM_POINT, 125,ATR_STRENGTH, 140, WEAPON_Forged);		};

instance ItRw_Crossbow_H_02 (ItemPR_Crossbow)		{	name = "Smocza kusza";					visual = "ItRw_Crossbow_H_02.mms";				SetItRwAttributes (self, 180,DAM_POINT, 150,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw0_Crossbow_H_02 (ItemPR_Crossbow)		{	name = "Smocza kusza";					visual = "ItRw_Crossbow_H_02.mms";				SetItRwAttributes (self, 180,DAM_POINT, 150,ATR_STRENGTH, 140, WEAPON_Wornout);		};
instance ItRw3_Crossbow_H_02 (ItemPR_Crossbow)		{	name = "Smocza kusza";					visual = "ItRw_Crossbow_H_02.mms";				SetItRwAttributes (self, 180,DAM_POINT, 150,ATR_STRENGTH, 140, WEAPON_Forged);		};

///******************************************************************************************
/// Guns
///******************************************************************************************
prototype ItemPR_Gun (C_Item)
{
	mainflag					=	ITEM_KAT_FF;
	flags						=	ITEM_CROSSBOW;
	material					=	MAT_METAL;
	
	munition					=	ITRW_AMMO;
	on_equip					=	Equip_Gun_CHECK;
	on_unequip					=	UnEquip_Gun_CHECK;
};

///******************************************************************************************
func void Equip_Gun_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_gun = ITRW_AMMO;
		AMMO_CHECK();
	};
};
func void UnEquip_Gun_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_gun = 0;
		AMMO_CHECK();
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_AMMO;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};

///******************************************************************************************
instance ItRw_Gun1 (ItemPR_Gun)						{	name = "M16";							visual = "ItRw_Gun_01.3ds";						SetItRwAttributes (self, 60,DAM_POINT, 60,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun2 (ItemPR_Gun)						{	name = "Strzelba";						visual = "ItRw_Gun_02.3ds";						SetItRwAttributes (self, 150,DAM_POINT, 75,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun3 (ItemPR_Gun)						{	name = "MP40";							visual = "ItRw_Gun_03.3ds";						SetItRwAttributes (self, 75,DAM_POINT, 75,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun4 (ItemPR_Gun)						{	name = "M65";							visual = "ItRw_Gun_04.3ds";						SetItRwAttributes (self, 90,DAM_POINT, 90,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun5 (ItemPR_Gun)						{	name = "AK47";							visual = "ItRw_Gun_05.3ds";						SetItRwAttributes (self, 105,DAM_POINT, 105,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun6 (ItemPR_Gun)						{	name = "MSG90";							visual = "ItRw_Gun_06.3ds";						SetItRwAttributes (self, 240,DAM_POINT, 120,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun7 (ItemPR_Gun)						{	name = "AK47";							visual = "ItRw_Gun_07.3ds";						SetItRwAttributes (self, 120,DAM_POINT, 120,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun8 (ItemPR_Gun)						{	name = "M16";							visual = "ItRw_Gun_08.3ds";						SetItRwAttributes (self, 135,DAM_POINT, 135,ATR_DEXTERITY, 100, WEAPON_Default);		};
instance ItRw_Gun9 (ItemPR_Gun)						{	name = "Dzia³ko obrotowe";				visual = "ItRw_Gun_09.3ds";						SetItRwAttributes (self, 150,DAM_POINT, 150,ATR_DEXTERITY, 100, WEAPON_Default);		};

///******************************************************************************************
/// Heavy guns
///******************************************************************************************
prototype ItemPR_HeavyGun (C_Item)
{
	mainflag					=	ITEM_KAT_FF;
	flags						=	ITEM_BOW;
	material					=	MAT_METAL;
	
	munition					=	ITRW_HAMMO;
	on_equip					=	Equip_HeavyGun_CHECK;
	on_unequip					=	UnEquip_HeavyGun_CHECK;
};

///******************************************************************************************
func void Equip_HeavyGun_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_hgun = ITRW_HAMMO;
		HEAVYAMMO_CHECK();
	};
};
func void UnEquip_HeavyGun_CHECK()
{
	if (Npc_IsPlayer(self))
	{
		muntype_hgun = 0;
		HEAVYAMMO_CHECK();
		var C_Item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_HAMMO;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};

///******************************************************************************************
instance ItRw_HGun1 (ItemPR_HeavyGun)				{	name = "Wyrzutnia rakiet";				visual = "ItRw_HeavyGun_01.3ds";				SetItRwAttributes (self, 350,DAM_POINT, 140,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw_HGun2 (ItemPR_HeavyGun)				{	name = "Wyrzutnia rakiet";				visual = "ItRw_HeavyGun_02.3ds";				SetItRwAttributes (self, 400,DAM_POINT, 160,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw_HGun3 (ItemPR_HeavyGun)				{	name = "Wyrzutnia rakiet";				visual = "ItRw_HeavyGun_03.3ds";				SetItRwAttributes (self, 450,DAM_POINT, 180,ATR_STRENGTH, 140, WEAPON_Default);		};
instance ItRw_HGun4 (ItemPR_HeavyGun)				{	name = "Wyrzutnia rakiet";				visual = "ItRw_HeavyGun_04.3ds";				SetItRwAttributes (self, 500,DAM_POINT, 200,ATR_STRENGTH, 140, WEAPON_Default);		};
