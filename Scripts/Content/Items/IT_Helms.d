///******************************************************************************************
prototype ItemPR_Helm (C_Item)
{
	mainflag				=	ITEM_KAT_ARMOR;
	wear					=	WEAR_HEAD;
	material				=	MAT_METAL;
	
	TEXT[1]					=	NAME_Prot_Melee;
	TEXT[2]					=	NAME_Prot_Point;
	TEXT[3]					=	NAME_Prot_Fire;
	TEXT[4]					=	NAME_Prot_Magic;
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
func void SetItHeAttributes (var C_Item itm, var int sr, var int pr, var int fr, var int mr)
{
	itm.value = 5 + (sr+pr+fr+mr-1) / 5 * 5;
	
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
/// Citizen helms: VLK
///******************************************************************************************
instance ItHe_Cap (ItemPR_Helm)
{
	name			=	"Czapka";
	visual			=	"ItHe_Cap.3DS";
	material		=	MAT_LEATHER;
	SetItHeAttributes (self, 0,0,0,5);	/// 5 level
};
instance ItHe_Hat (ItemPR_Helm)
{
	name			=	"Kapelusz";
	visual			=	"ItHe_Hat.3ds";
	material		=	MAT_LEATHER;
	SetItHeAttributes (self, 0,0,5,0);	/// 5 level
};
instance ItHe_Spectacles (ItemPR_Helm)
{
	name			=	"Okulary";
	visual			=	"ItHe_Spectacles.3DS";
	material		=	MAT_GLAS;
	SetItHeAttributes (self, 0,0,5,0);	/// 5 level
};

///******************************************************************************************
/// Leather helms
///******************************************************************************************
instance ItHe_Leather (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Leather.3ds";
	material		=	MAT_LEATHER;
	SetItHeAttributes (self, 10,10,0,0);	/// 20 level
	description		=	"Skórzany he³m";
	
	itm.on_equip	=	Equip_ArmorSet_Leather;
	itm.on_unequip	=	UnEquip_ArmorSet_Leather;
};

///******************************************************************************************
/// Standard helms
///******************************************************************************************
instance ItHe_Bascinet (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Bascinet.3ds";
	SetItHeAttributes (self, 15,15,0,0);	/// 30 level
};
instance ItHe_FlatTopped (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_FlatTopped.3ds";
	SetItHeAttributes (self, 15,15,0,0);	/// 30 level
};
instance ItHe_Footman (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Footman.3ds";
	SetItHeAttributes (self, 15,15,0,0);	/// 30 level
};
instance ItHe_Nordic (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Nordic.3ds";
	SetItHeAttributes (self, 15,15,0,0);	/// 30 level
};
instance ItHe_Spiked (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Spiked.3ds";
	SetItHeAttributes (self, 15,15,0,0);	/// 30 level
};
instance ItHe_WingedGreat (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_WingedGreat.3ds";
	SetItHeAttributes (self, 15,15,0,0);	/// 30 level
};

///******************************************************************************************
/// Guard helms: MIL & ROY
///******************************************************************************************
instance ItHe_ROY_M (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_ROY_M.3ds";
	SetItHeAttributes (self, 25,25,0,0);	/// 50 level
	description		=	"He³m gwardii królewskiej";
	
	itm.on_equip	=	Equip_ArmorSet_ROY;
	itm.on_unequip	=	UnEquip_ArmorSet_ROY;
};
instance ItHe_ROY_H (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_ROY_H.3ds";
	SetItHeAttributes (self, 30,30,0,0);	/// 60 level
	description		=	"He³m gwardii królewskiej";
	
	itm.on_equip	=	Equip_ArmorSet_ROY;
	itm.on_unequip	=	UnEquip_ArmorSet_ROY;
};

///******************************************************************************************
/// Dragon hunter helms: SLD & DJG
///******************************************************************************************
instance ItHe_DJG_M (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_DJG_M.3ds";
	SetItHeAttributes (self, 25,20,5,0);	/// 50 level
	description		=	"He³m ³owcy smoków";
	
	itm.on_equip	=	Equip_ArmorSet_DJG;
	itm.on_unequip	=	UnEquip_ArmorSet_DJG;
};
instance ItHe_DJG_H (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_DJG_H.3ds";
	SetItHeAttributes (self, 30,25,5,0);	/// 60 level
	description		=	"He³m ³owcy smoków";
	
	itm.on_equip	=	Equip_ArmorSet_DJG;
	itm.on_unequip	=	UnEquip_ArmorSet_DJG;
};

///******************************************************************************************
/// Orc mercenary helms
///******************************************************************************************
instance ItHe_ORW_H (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_ORW_H.3ds";
	SetItHeAttributes (self, 30,30,0,0);	/// 60 level
	description		=	"He³m wojownika orków";
	
	itm.on_equip	=	Equip_ArmorSet_ORW;
	itm.on_unequip	=	UnEquip_ArmorSet_ORW;
};

///******************************************************************************************
/// Paladin helms: PAL
///******************************************************************************************
instance ItHe_PAL_H (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Pal_H.3ds";
	SetItHeAttributes (self, 30,25,0,5);	/// 60 level
	description		=	"He³m paladyna";
	
	itm.on_equip	=	Equip_ArmorSet_PAL;
	itm.on_unequip	=	UnEquip_ArmorSet_PAL;
};
instance ItHe_PAL_D (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Pal_D.3ds";
	SetItHeAttributes (self, 30,25,0,5);	/// 60 level
	description		=	"He³m mrocznego paladyna";
	
	itm.on_equip	=	Equip_ArmorSet_PAL;
	itm.on_unequip	=	UnEquip_ArmorSet_PAL;
};
instance ItHe_PAL_T (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Pal_T.3ds";
	SetItHeAttributes (self, 30,25,0,5);	/// 60 level
	description		=	"He³m stra¿nika czasu";
	
	itm.on_equip	=	Equip_ArmorSet_PAL;
	itm.on_unequip	=	UnEquip_ArmorSet_PAL;
};
instance ItHe_PAL_U (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Pal_U.3ds";
	SetItHeAttributes (self, 30,25,0,5);	/// 60 level
	description		=	"He³m rycerzy podziemia";
	
	itm.on_equip	=	Equip_ArmorSet_PAL;
	itm.on_unequip	=	UnEquip_ArmorSet_PAL;
};

///******************************************************************************************
/// Prisoner helms: STRF
///******************************************************************************************
instance ItHe_Slave (ItemPR_Helm)
{
	name			=	"Kajdany";
	visual			=	"ItHe_Slave.3ds";
	SetItHeAttributes (self, 1,1,1,1);	/// 4 level
};

///******************************************************************************************
/// Dementor helms: DMT
///******************************************************************************************
instance ItHe_Sleeper (ItemPR_Helm)
{
	name			=	"He³m";
	visual			=	"ItHe_Sleeper.3ds";
	SetItHeAttributes (self, 15,10,0,5);	/// 30 level
	description		=	"He³m Œni¹cego";
};

///******************************************************************************************
/// Special helms
///******************************************************************************************
instance ItHe_Innos (ItemPR_Helm)
{
	visual			=	"ItHe_Innos.3ds";
	SetItHeAttributes (self, 35,35,15,15);	/// 100 level
	description		=	"He³m Innosa";
};
instance ItHe_Skeleton (ItemPR_Helm)
{
	visual			=	"ItHe_Skeleton.3ds";
	//SetItHeAttributes (self, 25,30,0,5,   0);	/// 60 level
	SetItHeAttributes (self, 0,0,0,0);
	description		=	"He³m umar³ych";
};
instance ItHe_SteamKnight (ItemPR_Helm)
{
	visual			=	"ItHe_SteamKnight.3ds";
	//SetItHeAttributes (self, 25,30,5,0,   0);	/// 60 level
	SetItHeAttributes (self, 0,0,0,0);
	description		=	"He³m parowy";
};

///******************************************************************************************
/// WzA helms
///******************************************************************************************
instance ItHe_ChristmasCap (ItemPR_Helm)
{
	name			=	"Czapka";
	visual			=	"ItHe_ChristmasCap.3DS";
	material		=	MAT_LEATHER;
	SetItHeAttributes (self, 0,0,0,5);	/// 5 level
	description		=	"Œwi¹teczna czapka";
};
instance ItHe_OrcHead (ItemPR_Helm)
{
	name			=	"Orkowa g³owa";
	visual			=	"Orc_Head_Warrior.mms";
	material		=	MAT_LEATHER;
	
	scemename		=	"FASTUSE";
	on_state[0]		=	Func_ItHe_OrcHead;
};
func void Func_ItHe_OrcHead()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	Mdl_SetVisualBody (self, npc.body_visualName, (npc.bitfield[0] & oCNpc_bitfield0_body_TexVarNr)>>14, npc.bitfield[1] & oCNpc_bitfield1_body_TexColorNr, "Orc_Head_Warrior", 0, default, -1);
};
