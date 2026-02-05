///******************************************************************************************
prototype ItemPR_Shield (C_Item)
{
	mainflag					=	ITEM_KAT_NF;
	flags						=	ITEM_SHIELD;
	material					=	MAT_METAL;
	
	on_equip					=	Equip_Shield;
	on_unequip					=	UnEquip_Shield;
	
	TEXT[1]						=	NAME_Prot_Melee;
	TEXT[2]						=	NAME_Prot_Point;
	TEXT[3]						=	NAME_Prot_Fire;
	TEXT[4]						=	NAME_Prot_Magic;
	TEXT[5]						=	NAME_Value;
};
func void Equip_Shield()
{
	self.aivar[AIV_WearsWeapon] = self.aivar[AIV_WearsWeapon] | WEARS_Shield;
	Shield_UpdateOverlay(self);
};
func void UnEquip_Shield()
{
	self.aivar[AIV_WearsWeapon] = self.aivar[AIV_WearsWeapon] & ~WEARS_Shield;
	Mdl_RemoveOverlayMds (self, "HUMANS_1HST2SH.MDS");
	Mdl_RemoveOverlayMds (self, "HUMANS_1HST1SH.MDS");
};

///******************************************************************************************
func void SetItShAttributes (var C_Item itm, var int sr, var int pr, var int fr, var int mr)
{
	itm.value = 5 + (sr+pr+fr+mr-1) / 5 * 50;
	
	itm.protection[PROT_BLUNT]		= 	sr;
	itm.protection[PROT_EDGE]		=	sr;
	itm.protection[PROT_POINT]		= 	pr;
	itm.protection[PROT_FIRE] 		= 	fr;
	itm.protection[PROT_MAGIC]		= 	mr;
	itm.protection[PROT_BARRIER]	= 	mr;
	
	itm.description				=	itm.name;
	itm.COUNT[1]				= 	sr;
	itm.COUNT[2]				=	pr;
	itm.COUNT[3]				=	fr;
	itm.COUNT[4]				= 	mr;
	itm.COUNT[5]				=	itm.value;
};

///******************************************************************************************
/// Common
///******************************************************************************************
instance ItSh_Broken (ItemPR_Shield)
{
	name						=	"Pêkniêta tarcza";
	visual						=	"ItSh_Broken.3ds";
	SetItShAttributes (self, 15,15,5,0);
};

instance ItSh_Round (ItemPR_Shield)
{
	name						=	"Tarcza okr¹g³a";
	visual						=	"ItSh_Round.3ds";
	SetItShAttributes (self, 20,35,10,0);
};

instance ItSh_Crest (ItemPR_Shield)
{
	name						=	"Tarcza herbowa";
	visual						=	"ItSh_Crest.3ds";
	SetItShAttributes (self, 35,55,20,5);
};

///******************************************************************************************
/// DJG
///******************************************************************************************
instance ItSh_Djg (ItemPR_Shield)
{
	name						=	"Tarcza ³owcy smoków";
	visual						=	"ItSh_Djg.3ds";
	SetItShAttributes (self, 50,70,45,15);
};

///******************************************************************************************
/// PAL
///******************************************************************************************
instance ItSh_Pal_01 (ItemPR_Shield)
{
	name						=	"Tarcza rycerska";
	visual						=	"ItSh_Pal_01.3ds";
	SetItShAttributes (self, 20,35,10,0);
};

instance ItSh_Pal_02 (ItemPR_Shield)
{
	name						=	"Wzmacniana tarcza rycerska";
	visual						=	"ItSh_Pal_02.3ds";
	SetItShAttributes (self, 35,55,20,5);
};

instance ItSh_Pal_03 (ItemPR_Shield)
{
	name						=	"Tarcza paladyna";
	visual						=	"ItSh_Pal_03.3ds";
	SetItShAttributes (self, 45,65,30,15);
};

instance ItSh_King (ItemPR_Shield)
{
	name						=	"Tarcza królewska";
	visual						=	"ItSh_King.3ds";
	SetItShAttributes (self, 60,75,35,20);
};

///******************************************************************************************
/// SKE
///******************************************************************************************
instance ItSh_Dark_01 (ItemPR_Shield)
{
	name						=	"Stara tarcza rycerska";
	visual						=	"ItSh_Dark_01.3ds";
	SetItShAttributes (self, 15,25,5,0);
};

instance ItSh_Dark_02 (ItemPR_Shield)
{
	name						=	"Stara wzmacniana tarcza rycerska";
	visual						=	"ItSh_Dark_02.3ds";
	SetItShAttributes (self, 35,55,20,5);
};
