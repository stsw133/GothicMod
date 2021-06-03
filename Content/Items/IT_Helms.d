///******************************************************************************************
///	Helm
///******************************************************************************************
prototype ItemPR_Helm (C_Item)
{
	name					=	"He³m";
	mainflag				=	ITEM_KAT_ARMOR;
	wear					=	WEAR_Head;
	material				=	MAT_METAL;
};
///******************************************************************************************
instance ItHe_Leather (ItemPR_Helm)
{
	visual			=	"ItHe_Leather.3ds";
	material		=	MAT_LEATHER;
	description		=	"Skórzany he³m";
};
///******************************************************************************************
instance ItHe_Fighter (ItemPR_Helm)
{
	visual			=	"ItHe_Helm1.3ds";
	description		=	name;
};
instance ItHe_South (ItemPR_Helm)
{
	visual			=	"ItHe_Helm2.3ds";
	description		=	name;
};
instance ItHe_Knight (ItemPR_Helm)
{
	visual			=	"ItHe_Helm3.3ds";
	description		=	name;
};
instance ItHe_North (ItemPR_Helm)
{
	visual			=	"ItHe_Helm4.3ds";
	description		=	name;
};
instance ItHe_Guardian (ItemPR_Helm)
{
	visual			=	"ItHe_Helm5.3ds";
	description		=	name;
};
instance ItHe_Soldier (ItemPR_Helm)
{
	visual			=	"ItHe_Helm6.3ds";
	description		=	name;
};
///******************************************************************************************
instance ItHe_PAL_H (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_00.3ds";
	description		=	"He³m paladyna";
};
instance ItHe_PAL_D (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_01.3ds";
	description		=	"He³m mrocznego paladyna";
};
instance ItHe_PAL_T (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_02.3ds";
	description		=	"He³m stra¿nika czasu";
};
instance ItHe_PAL_U (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_04.3ds";
	description		=	"He³m podziemnego rycerza";
};
instance ItHe_PAL_O (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_06.3ds";
	description		=	"He³m orka";
};
///******************************************************************************************
instance ItHe_Slave (ItemPR_Helm)
{
	visual			=	"ItHe_Slave.3ds";
	description		=	"Kajdany";
};
instance ItHe_Spectacles (ItemPR_Helm)
{
	visual 			=	"ItHe_Spectacles.3DS";
	material 		=	MAT_GLAS;
	description 	=	"Okulary";
};
///******************************************************************************************
instance ItHe_Sleeper (ItemPR_Helm)
{
	visual			= 	"ItHe_Sleeper.3ds";
	description		=	"He³m Œni¹cego";
};
instance ItHe_Innos (ItemPR_Helm)
{
	visual			=	"ItHe_Innos.3ds";
	description		=	"He³m Innosa";
};
///******************************************************************************************
instance ItHe_Hat (ItemPR_Helm)
{
	visual			=	"ItHe_Hat.3ds";
	material		=	MAT_LEATHER;
	description		=	"Kapelusz";
};
instance ItHe_Cap (ItemPR_Helm)
{
	visual 			=	"ItHe_Cap.3DS";
	material 		=	MAT_LEATHER;
	description 	=	"Czapka";
};
instance ItHe_ChristmasCap (ItemPR_Helm)
{
	visual 			=	"ItHe_ChristmasCap.3DS";
	material 		=	MAT_LEATHER;
	description 	=	"Œwi¹teczna czapka";
};
///******************************************************************************************
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
