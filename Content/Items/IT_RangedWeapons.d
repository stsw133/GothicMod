//******************************************************************************************
//	Bows
//******************************************************************************************
prototype ItemPR_Bow (C_Item)
{
	name 					=	"£uk";
	
	mainflag 				=	ITEM_KAT_FF;
	flags 					=	ITEM_BOW;
	material 				=	MAT_WOOD;
	
	damagetype				=	DAM_POINT;
	munition				=	ITRW_ARROW;
	
	cond_atr[1]   			= 	ATR_DEXTERITY;
	cond_atr[2]   			= 	ATR_STRENGTH;
	
	on_equip				=	Equip_Bow_CHECK;
	on_unequip				=	UnEquip_Bow_CHECK;
	
	TEXT[1]					=	NAME_Damage;
	TEXT[2] 				=	NAME_Dex_needed;
	TEXT[3] 				=	NAME_Str_needed;
	TEXT[5]					=	NAME_Value;
};
//******************************************************************************************
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
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_ARROW;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};
//******************************************************************************************
func void SetItRwAttributes_Bow (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*100;
	itm.damageTotal		=	kap*20;
	itm.cond_value[1]  	= 	kap*20;
	itm.cond_value[2]  	= 	kap*5;
	
	itm.COUNT[1]		=	itm.damageTotal;
	itm.COUNT[2]		=	itm.cond_value[1];
	itm.COUNT[3]		=	itm.cond_value[2];
	itm.COUNT[5]		=	itm.value;
};
//******************************************************************************************
instance ItRw_Bow_L_01 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_L_01.mms";
	description		=	"Krótki ³uk";
	SetItRwAttributes_Bow (self, 1);
};
instance ItRw_Bow_L_02 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_L_02.mms";
	description		=	"£uk wierzbowy";
	SetItRwAttributes_Bow (self, 2);
};
instance ItRw_Bow_L_03 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_L_03.mms";
	description		=	"£uk myœliwski";
	SetItRwAttributes_Bow (self, 3);
};
instance ItRw_Bow_L_04 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_L_04.mms";
	description		=	"£uk z wi¹zu";
	SetItRwAttributes_Bow (self, 4);
};
//******************************************************************************************
instance ItRw_Bow_M_01 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_M_01.mms";
	description		=	"£uk kompozytowy";
	SetItRwAttributes_Bow (self, 5);
};
instance ItRw_Bow_M_02 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_M_02.mms";
	description		=	"£uk jesionowy";
	SetItRwAttributes_Bow (self, 6);
};
instance ItRw_Bow_M_03 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_M_03.mms";
	description		=	"D³ugi ³uk";
	SetItRwAttributes_Bow (self, 7);
};
instance ItRw_Bow_M_04 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_M_04.mms";
	description		=	"£uk bukowy";
	SetItRwAttributes_Bow (self, 8);
};
//******************************************************************************************
instance ItRw_Bow_H_01 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_H_01.mms";
	description		=	"Koœciany ³uk";
	SetItRwAttributes_Bow (self, 9);
};
instance ItRw_Bow_H_02 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_H_02.mms";
	description		=	"£uk dêbowy";
	SetItRwAttributes_Bow (self, 10);
};
instance ItRw_Bow_H_03 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_H_03.mms";
	description		=	"£uk wojenny";
	SetItRwAttributes_Bow (self, 11);
};
instance ItRw_Bow_H_04 (ItemPR_Bow)
{
	visual 			=	"ItRw_Bow_H_04.mms";
	description		=	"Smoczy ³uk";
	SetItRwAttributes_Bow (self, 12);
};
//******************************************************************************************
//	Crossbows
//******************************************************************************************
prototype ItemPR_Crossbow (C_Item)
{
	name					=	"Kusza";
	
	mainflag 				=	ITEM_KAT_FF;
	flags 					=	ITEM_CROSSBOW;
	material 				=	MAT_WOOD;
	
	damagetype				=	DAM_POINT;
	munition				=	ITRW_BOLT;
	
	cond_atr[1]   			= 	ATR_STRENGTH;
	cond_atr[2]   			= 	ATR_DEXTERITY;
	
	on_equip				=	Equip_Crossbow_CHECK;
	on_unequip				=	UnEquip_Crossbow_CHECK;
	
	TEXT[1]					=	NAME_Damage;
	TEXT[2] 				=	NAME_Str_needed;
	TEXT[3] 				=	NAME_Dex_needed;
	TEXT[5]					=	NAME_Value;
};
//******************************************************************************************
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
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_BOLT;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};
//******************************************************************************************
func void SetItRwAttributes_Crossbow (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*250;
	itm.damageTotal		=	kap*45;
	itm.cond_value[1]  	= 	kap*40;
	itm.cond_value[2]  	= 	kap*15;
	
	itm.COUNT[1]		=	itm.damageTotal;
	itm.COUNT[2]		=	itm.cond_value[1];
	itm.COUNT[3]		=	itm.cond_value[2];
	itm.COUNT[5]		=	itm.value;
};
//******************************************************************************************
instance ItRw_Crossbow_L_01 (ItemPR_Crossbow)
{
	visual 			=	"ItRw_Crossbow_L_01.mms";
	description		=	"Kusza myœliwska";
	SetItRwAttributes_Crossbow (self, 1);
};
instance ItRw_Crossbow_L_02 (ItemPR_Crossbow)
{
	visual 			=	"ItRw_Crossbow_L_02.mms";
	description		=	"Ma³a kusza";
	SetItRwAttributes_Crossbow (self, 2);
};
//******************************************************************************************
instance ItRw_Crossbow_M_01 (ItemPR_Crossbow)
{
	visual 			=	"ItRw_Crossbow_M_01.mms";
	description		=	"Wiêksza kusza";
	SetItRwAttributes_Crossbow (self, 3);
};
instance ItRw_Crossbow_M_02 (ItemPR_Crossbow)
{
	visual 			=	"ItRw_Crossbow_M_02.mms";
	description		=	"Kusza bojowa";
	SetItRwAttributes_Crossbow (self, 4);
};
//******************************************************************************************
instance ItRw_Crossbow_H_01 (ItemPR_Crossbow)
{
	visual 			=	"ItRw_Crossbow_H_01.mms";
	description		=	"Ciê¿ka kusza";
	SetItRwAttributes_Crossbow (self, 5);
};
instance ItRw_Crossbow_H_02 (ItemPR_Crossbow)
{
	visual 			=	"ItRw_Crossbow_H_02.mms";
	description		=	"Kusza ³owcy smoków";
	SetItRwAttributes_Crossbow (self, 6);
};
//******************************************************************************************
//	Guns
//******************************************************************************************
prototype ItemPR_Gun (C_Item)
{
	mainflag 				=	ITEM_KAT_FF;
	flags 					=	ITEM_CROSSBOW;
	material 				=	MAT_METAL;
	
	damagetype				=	DAM_POINT;
	munition				=	ITRW_AMMO;
	
	cond_atr[1]   			= 	ATR_DEXTERITY;
	cond_atr[2]   			= 	ATR_STRENGTH;
	
	on_equip				=	Equip_Gun_CHECK;
	on_unequip				=	UnEquip_Gun_CHECK;
	
	TEXT[1]					=	NAME_Damage;
	TEXT[2] 				=	NAME_Dex_needed;
	TEXT[3] 				=	NAME_Str_needed;
	TEXT[5]					=	NAME_Value;
};
//******************************************************************************************
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
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_AMMO;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};
//******************************************************************************************
func void SetItRwAttributes_Gun (var C_ITEM itm, var int kap, var int fast)
{
	itm.value			=	kap*300;
	if (fast == false)	{	itm.damageTotal = kap*60;								}
	else				{	itm.damageTotal = kap*15; itm.TEXT[4] = NAME_FastGun;	};
	itm.cond_value[1]  	= 	kap*30;
	itm.cond_value[2]  	= 	kap*10;
	
	itm.COUNT[1]		=	itm.damageTotal;
	itm.COUNT[2]		=	itm.cond_value[1];
	itm.COUNT[3]		=	itm.cond_value[2];
	itm.COUNT[5]		=	itm.value;
};
//******************************************************************************************
instance ItRw_Gun1 (ItemPR_Gun)
{
	name 			=	"Karabin M16";
	visual 			=	"W_RIFLE1.3DS";
	description		=	"Stary amerykañski karabin";
	SetItRwAttributes_Gun (self, 2, true);
};
instance ItRw_Gun2 (ItemPR_Gun)
{
	name 			=	"Strzelba";
	visual 			=	"W_RIFLE.3DS";
	description		=	"Stara strzelba";
	SetItRwAttributes_Gun (self, 3, false);
};
instance ItRw_Gun3 (ItemPR_Gun)
{
	name 			=	"MP40";
	visual 			=	"W_RIFLE3.3DS";
	description		=	"MP40 - niemiecka broñ";
	SetItRwAttributes_Gun (self, 3, true);
};
instance ItRw_Gun4 (ItemPR_Gun)
{
	name 			=	"Karabin M65";
	visual 			=	"W_RIFLE2.3DS";
	description		=	name;
	SetItRwAttributes_Gun (self, 4, true);
};
instance ItRw_Gun5 (ItemPR_Gun)
{
	name 			=	"AK 47";
	visual 			=	"W_RIFLE5.3DS";
	description		=	name;
	SetItRwAttributes_Gun (self, 5, true);
};
instance ItRw_Gun6 (ItemPR_Gun)
{
	name 			=	"Karabin szturmowy MSG90";
	visual 			=	"W_RIFLE4.3DS";
	description		=	name;
	SetItRwAttributes_Gun (self, 6, false);
};
instance ItRw_Gun7 (ItemPR_Gun)
{
	name 			=	"AK 47";
	visual 			=	"W_RIFLE6.3DS";
	description		=	name;
	SetItRwAttributes_Gun (self, 6, true);
};
instance ItRw_Gun8 (ItemPR_Gun)
{
	name 			=	"M16";
	visual 			=	"W_RIFLE7.3DS";
	description		=	name;
	SetItRwAttributes_Gun (self, 7, true);
};
instance ItRw_Gun9 (ItemPR_Gun)
{
	name 			=	"Dzia³ko obrotowe";
	visual 			=	"W_RIFLE8.3DS";
	description		=	name;
	SetItRwAttributes_Gun (self, 8, true);
};
//******************************************************************************************
//	Heavy Guns
//******************************************************************************************
prototype ItemPR_HeavyGun (C_Item)
{
	mainflag 				=	ITEM_KAT_FF;
	flags 					=	ITEM_BOW;
	material 				=	MAT_METAL;
	
	damagetype				=	DAM_POINT;
	munition				=	ITRW_HAMMO;
	
	cond_atr[1]   			= 	ATR_STRENGTH;
	cond_atr[2]   			= 	ATR_DEXTERITY;
	
	on_equip				=	Equip_HeavyGun_CHECK;
	on_unequip				=	UnEquip_HeavyGun_CHECK;
	
	TEXT[1]					=	NAME_Damage;
	TEXT[2] 				=	NAME_Str_needed;
	TEXT[3] 				=	NAME_Dex_needed;
	TEXT[5]					=	NAME_Value;
};
//******************************************************************************************
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
		var c_item itm;	itm = Npc_GetEquippedRangedWeapon(self);
		itm.munition = ITRW_HAMMO;
		self.damage[DAM_INDEX_POINT] = 0;
	};
};
//******************************************************************************************
func void SetItRwAttributes_HeavyGun (var C_ITEM itm, var int kap)
{
	itm.value			=	kap*1200;
	itm.damageTotal		=	kap*200;
	itm.cond_value[1]  	= 	kap*90;
	itm.cond_value[2]  	= 	kap*30;
	
	itm.COUNT[1]		=	itm.damageTotal;
	itm.COUNT[2]		=	itm.cond_value[1];
	itm.COUNT[3]		=	itm.cond_value[2];
	itm.COUNT[5]		=	itm.value;
};
//******************************************************************************************
instance ItRw_HGun1 (ItemPR_HeavyGun)
{
	name 			=	"Wyrzutnia rakiet";
	visual 			=	"W_HGUN.3DS";
	description		=	name;
	SetItRwAttributes_HeavyGun (self, 2);
};
instance ItRw_HGun2 (ItemPR_HeavyGun)
{
	name 			=	"Wyrzutnia rakiet";
	visual 			=	"W_HGUN1.3DS";
	description		=	name;
	SetItRwAttributes_HeavyGun (self, 3);
};
instance ItRw_HGun3 (ItemPR_HeavyGun)
{
	name 			=	"Wyrzutnia rakiet";
	visual 			=	"W_HGUN2.3DS";
	description		=	name;
	SetItRwAttributes_HeavyGun (self, 4);
};
instance ItRw_HGun4 (ItemPR_HeavyGun)
{
	name 			=	"Wyrzutnia rakiet";
	visual 			=	"W_HGUN3.3DS";
	description		=	name;
	SetItRwAttributes_HeavyGun (self, 5);
};
//******************************************************************************************
//	NPC's ranged weapons
//******************************************************************************************
instance ItRw_Sld_Bow (ItemPR_Bow)
{
	value 			=	25;
	
	damageTotal		=	100;
	cond_value[1]  	= 	50;
	cond_value[2]  	= 	15;
	visual 			=	"ItRw_Sld_Bow.mms";
	
	description		=	name;
	COUNT[1]		=	damageTotal;
	COUNT[2]		=	cond_value[1];
	COUNT[3]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItRw_Mil_Crossbow (ItemPR_Crossbow)
{
	value 			=	35;
	
	damageTotal		= 	135;
	cond_value[1]  	= 	60;
	cond_value[2]  	= 	25;
	visual 			=	"ItRw_Mil_Crossbow.mms";
	
	description		=	name;
	COUNT[1]		=	damageTotal;
	COUNT[2]		=	cond_value[1];
	COUNT[3]		=	cond_value[2];
	COUNT[5]		=	value;
};
instance ItRw_Orc_Crossbow (ItemPR_Crossbow)
{
	value 			=	26;
	
	damageTotal		= 	120;
	cond_value[1]  	= 	200;
	cond_value[2]  	= 	0;
	visual 			=	"ItRw_Crossbow_M_01.mms";
	
	description		=	"Orkowa kusza";
	COUNT[1]		=	damageTotal;
	COUNT[2]		=	cond_value[1];
	COUNT[3]		=	cond_value[2];
	COUNT[5]		=	value;
};
