///******************************************************************************************
prototype ItemPR_Helm (C_Item)
{
	name					=	"He³m";
	mainflag				=	ITEM_KAT_ARMOR;
	wear					=	WEAR_Head;
	material				=	MAT_METAL;
};
///******************************************************************************************
/// Citizen helms: VLK
///******************************************************************************************
instance ItHe_Cap (ItemPR_Helm)
{
	visual 			=	"ItHe_Cap.3DS";
	material 		=	MAT_LEATHER;
	description 	=	"Czapka";
};
instance ItHe_Hat (ItemPR_Helm)
{
	visual			=	"ItHe_Hat.3ds";
	material		=	MAT_LEATHER;
	description		=	"Kapelusz";
};
instance ItHe_Spectacles (ItemPR_Helm)
{
	visual 			=	"ItHe_Spectacles.3DS";
	material 		=	MAT_GLAS;
	description 	=	"Okulary";
};
///******************************************************************************************
/// Leather helms
///******************************************************************************************
instance ItHe_Leather (ItemPR_Helm)
{
	visual			=	"ItHe_Leather.3ds";
	material		=	MAT_LEATHER;
	description		=	"Skórzany he³m";
};
///******************************************************************************************
/// Standard helms
///******************************************************************************************
instance ItHe_Bascinet (ItemPR_Helm)
{
	visual			=	"ItHe_Bascinet.3ds";
	description		=	name;
};
instance ItHe_FlatTopped (ItemPR_Helm)
{
	visual			=	"ItHe_FlatTopped.3ds";
	description		=	name;
};
instance ItHe_Footman (ItemPR_Helm)
{
	visual			=	"ItHe_Footman.3ds";
	description		=	name;
};
instance ItHe_Nordic (ItemPR_Helm)
{
	visual			=	"ItHe_Nordic.3ds";
	description		=	name;
};
instance ItHe_Spiked (ItemPR_Helm)
{
	visual			=	"ItHe_Spiked.3ds";
	description		=	name;
};
instance ItHe_WingedGreat (ItemPR_Helm)
{
	visual			=	"ItHe_WingedGreat.3ds";
	description		=	name;
};
///******************************************************************************************
/// Guard helms: MIL & ROY
///******************************************************************************************
instance ItHe_ROY_M (ItemPR_Helm)
{
	visual			=	"ItHe_ROY_M.3ds";
	description		=	"He³m gwardii królewskiej";
};
instance ItHe_ROY_H (ItemPR_Helm)
{
	visual			=	"ItHe_ROY_H.3ds";
	description		=	"He³m gwardii królewskiej";
};
///******************************************************************************************
/// Dragon hunter helms: SLD & DJG
///******************************************************************************************
instance ItHe_DJG_M (ItemPR_Helm)
{
	visual			=	"ItHe_DJG_M.3ds";
	description		=	"He³m ³owcy smoków";
};
instance ItHe_DJG_H (ItemPR_Helm)
{
	visual			=	"ItHe_DJG_H.3ds";
	description		=	"He³m ³owcy smoków";
};
///******************************************************************************************
/// Orc mercenary helms
///******************************************************************************************
instance ItHe_ORW_H (ItemPR_Helm)
{
	visual			=	"ItHe_ORW_H.3ds";
	description		=	"He³m wojownika orków";
};
///******************************************************************************************
/// Paladin helms: PAL
///******************************************************************************************
instance ItHe_PAL_H (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_H.3ds";
	description		=	"He³m paladyna";
};
instance ItHe_PAL_D (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_D.3ds";
	description		=	"He³m mrocznego paladyna";
};
instance ItHe_PAL_T (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_T.3ds";
	description		=	"He³m stra¿nika czasu";
};
instance ItHe_PAL_U (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_U.3ds";
	description		=	"He³m rycerzy podziemia";
};
///******************************************************************************************
/// Prisoner helms: STRF
///******************************************************************************************
instance ItHe_Slave (ItemPR_Helm)
{
	visual			=	"ItHe_Slave.3ds";
	description		=	"Kajdany";
};
///******************************************************************************************
/// Dementor helms: DMT
///******************************************************************************************
instance ItHe_Sleeper (ItemPR_Helm)
{
	visual			= 	"ItHe_Sleeper.3ds";
	description		=	"He³m Œni¹cego";
};
///******************************************************************************************
/// Special helms
///******************************************************************************************
instance ItHe_Innos (ItemPR_Helm)
{
	visual			=	"ItHe_Innos.3ds";
	description		=	"He³m Innosa";
};
instance ItHe_SteamKnight (ItemPR_Helm)
{
	visual			=	"ItHe_SteamKnight.3ds";
	description		=	"He³m parowy";
};
///******************************************************************************************
/// WzA helms
///******************************************************************************************
instance ItHe_ChristmasCap (ItemPR_Helm)
{
	visual 			=	"ItHe_ChristmasCap.3DS";
	material 		=	MAT_LEATHER;
	description 	=	"Œwi¹teczna czapka";
};
instance ItHe_OrcHead (ItemPR_Helm)
{
	visual 			=	"Orc_Head_Warrior.mms";
	material 		=	MAT_LEATHER;
	description 	=	"Orkowa g³owa";
	on_state[0]		=	Func_ItHe_OrcHead;
	scemename		=	"FASTUSE";
};
func void Func_ItHe_OrcHead()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
    Mdl_SetVisualBody (self, npc.body_visualName, (npc.bitfield[0]&oCNpc_bitfield0_body_TexVarNr)>>14, npc.bitfield[1]&oCNpc_bitfield1_body_TexColorNr, "Orc_Head_Warrior", 0, 0, -1);
};
