///******************************************************************************************
prototype ItemPR_Helm (C_Item)
{
	name					=	"He�m";
	mainflag				=	ITEM_KAT_ARMOR;
	wear					=	WEAR_Head;
	material				=	MAT_METAL;
};
///******************************************************************************************
///	Citizen accessories
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
///	Leather helms
///******************************************************************************************
instance ItHe_Leather (ItemPR_Helm)
{
	visual			=	"ItHe_Leather.3ds";
	material		=	MAT_LEATHER;
	description		=	"Sk�rzany he�m";
};
///******************************************************************************************
///	Standard helms
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
instance ItHe_Great (ItemPR_Helm)
{
	visual			=	"ItHe_Great.3ds";
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
///	TPL & PAL helms
///******************************************************************************************
instance ItHe_PAL_H (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_00.3ds";
	description		=	"He�m paladyna";
};
///******************************************************************************************
instance ItHe_PAL_D (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_01.3ds";
	description		=	"He�m mrocznego paladyna";
};
instance ItHe_PAL_T (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_02.3ds";
	description		=	"He�m stra�nika czasu";
};
instance ItHe_PAL_U (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_04.3ds";
	description		=	"He�m rycerzy podziemia";
};
instance ItHe_PAL_O (ItemPR_Helm)
{
	visual			=	"ItHe_Pal_06.3ds";
	description		=	"He�m najemnika ork�w";
};
///******************************************************************************************
instance ItHe_Innos (ItemPR_Helm)
{
	visual			=	"ItHe_Innos.3ds";
	description		=	"He�m Innosa";
};
///******************************************************************************************
///	SLD & DJG helms
///******************************************************************************************
instance ItHe_DJG_M (ItemPR_Helm)
{
	visual			=	"ItHe_DJG_M.3ds";
	description		=	"He�m �owcy smok�w";
};
instance ItHe_DJG_H (ItemPR_Helm)
{
	visual			=	"ItHe_DJG_H.3ds";
	description		=	"He�m �owcy smok�w";
};
///******************************************************************************************
///	Prisoner shackles
///******************************************************************************************
instance ItHe_Slave (ItemPR_Helm)
{
	visual			=	"ItHe_Slave.3ds";
	description		=	"Kajdany";
};
///******************************************************************************************
///	Dementor helms
///******************************************************************************************
instance ItHe_Sleeper (ItemPR_Helm)
{
	visual			= 	"ItHe_Sleeper.3ds";
	description		=	"He�m �ni�cego";
};
///******************************************************************************************
///	Special helms
///******************************************************************************************
instance ItHe_ChristmasCap (ItemPR_Helm)
{
	visual 			=	"ItHe_ChristmasCap.3DS";
	material 		=	MAT_LEATHER;
	description 	=	"�wi�teczna czapka";
};
///******************************************************************************************
instance ItHe_OrcHead (ItemPR_Helm)
{
	visual 			=	"Orc_Head_Warrior.mms";
	material 		=	MAT_LEATHER;
	description 	=	"Orkowa g�owa";
	on_state[0]		=	Func_ItHe_OrcHead;
	scemename		=	"FASTUSE";
};
func void Func_ItHe_OrcHead()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
    Mdl_SetVisualBody (self, npc.body_visualName, (npc.bitfield[0]&oCNpc_bitfield0_body_TexVarNr)>>14, npc.bitfield[1]&oCNpc_bitfield1_body_TexColorNr, "Orc_Head_Warrior", 0, 0, -1);
};
