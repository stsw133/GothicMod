///******************************************************************************************
instance HC (Npc_Default)
{
	/// ------ General ------
	name								=	"Kreator Postaci";
	guild								=	GIL_NONE;
	id									=	50;
	voice								=	15;
	flags								=	0;
	npctype								=	NPCTYPE_MAIN;
	
	/// ------ Aivars ------
	aivar[AIV_CanOffer]					=	OFFER_Teaching;
	aivar[AIV_IgnoreCrime]				=	IGNORE_Murder | IGNORE_Theft | IGNORE_Sheepkiller | IGNORE_Fear;
	aivar[AIV_IgnoreDisguise]			=	IGNORE_Armor | IGNORE_FakeGuild;
	aivar[AIV_ToughGuy]					=	true;
	aivar[AIV_NewsOverride]				=	NEWS_ToughGuy;
	aivar[AIV_FollowDist]				=	300;
	
	/// ------ Attributes ------
	NpcFn_SetAttributesToLevel (self, 100);
	NpcFn_AddFightSkills (self, FightTalent_Weak);
	
	/// ------ FT ------
	fight_tactic						=	FAI_HUMAN_STRONG;
	
	/// ------ Visuals ------
	NpcFn_SetVisual		(self, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Player, Teeth_Normal, -1);
	Mdl_SetModelFatness	(self, 0);
	
	/// ------ Rtn ------
	daily_routine						=	Rtn_Start_50;
};

func void Rtn_Start_50()
{
	TA_Guide_Player (08,00, 20,00, "XXX");
	TA_Guide_Player (20,00, 08,00, "XXX");
};
func void Rtn_Follow_50()
{
	TA_Follow_Player (08,00, 20,00, "XXX");
	TA_Follow_Player (20,00, 08,00, "XXX");
};
func void Rtn_Smalltalk_50()
{
	TA_Smalltalk (08,00, 20,00, "XXX");
	TA_Smalltalk (20,00, 08,00, "XXX");
};
func void Rtn_Sleep_50()
{
	TA_Sleep (08,00, 20,00, "XXX");
	TA_Sleep (20,00, 08,00, "XXX");
};
func void Rtn_Dance_50()
{
	TA_Dance (08,00, 20,00, "XXX");
	TA_Dance (20,00, 08,00, "XXX");
};
func void Rtn_Stand_Eating_50()
{
	TA_Stand_Eating (08,00, 20,00, "XXX");
	TA_Stand_Eating (20,00, 08,00, "XXX");
};
func void Rtn_Stand_Drinking_50()
{
	TA_Stand_Drinking (08,00, 20,00, "XXX");
	TA_Stand_Drinking (20,00, 08,00, "XXX");
};
func void Rtn_Pick_Ore_50()
{
	TA_Pick_Ore (08,00, 20,00, "XXX");
	TA_Pick_Ore (20,00, 08,00, "XXX");
};
func void Rtn_Potion_Alchemy_50()
{
	TA_Potion_Alchemy (08,00, 20,00, "XXX");
	TA_Potion_Alchemy (20,00, 08,00, "XXX");
};
func void Rtn_Read_Bookstand_50()
{
	TA_Read_Bookstand (08,00, 20,00, "XXX");
	TA_Read_Bookstand (20,00, 08,00, "XXX");
};
func void Rtn_Sit_Chair_50()
{
	TA_Sit_Chair (08,00, 20,00, "XXX");
	TA_Sit_Chair (20,00, 08,00, "XXX");
};
func void Rtn_Smoke_Joint_50()
{
	TA_Smoke_Joint (08,00, 20,00, "XXX");
	TA_Smoke_Joint (20,00, 08,00, "XXX");
};
func void Rtn_Stand_Halberd_50()
{
	TA_Stand_Halberd (08,00, 20,00, "XXX");
	TA_Stand_Halberd (20,00, 08,00, "XXX");
};

///******************************************************************************************
func void Change_HC_Visual()
{
	if (self.aivar[AIV_BodyTex] < 0)
	{
		self.aivar[AIV_BodyTex] = 0;
	}
	else if (self.aivar[AIV_BodyTex] >= BodyTex_MAX)
	{
		self.aivar[AIV_BodyTex] = BodyTex_MAX-1;
	};
	
	if (self.aivar[AIV_SkinTex] < 0)
	{
		self.aivar[AIV_SkinTex] = 0;
	}
	else if (self.aivar[AIV_SkinTex] >= BodySkin_MAX)
	{
		self.aivar[AIV_SkinTex] = BodySkin_MAX-1;
	};
	
	if (self.aivar[AIV_FaceTex] < 0)
	{
		self.aivar[AIV_FaceTex] = 0;
	}
	else if (self.aivar[AIV_FaceTex] >= FaceTex_MAX)
	{
		self.aivar[AIV_FaceTex] = FaceTex_MAX-1;
	};
	
	/// gender and races differencies
	self.aivar[AIV_TeethTex] = self.aivar[AIV_Gender]*Teeth_Pretty;
	//if (self.aivar[AIV_Race] == RACE_Zombie)
	//{
	//	self.aivar[AIV_TeethTex] = Teeth_Bad;
	//};
	
	var oCNpc npc; npc = Hlp_GetNpc(self);
	NpcFn_UpdateVisual(self);
	
	//PrintScreen	("Rasa:", -1, 10, "FONT_OLD_10_WHITE.TGA", 4);
	//PrintScreen	(IntToString(self.aivar[AIV_FaceTex]), -1, 12, "FONT_OLD_10_WHITE.TGA", 4);
	
	PrintScreen	("Twarz:", -1, 16, "FONT_OLD_10_WHITE.TGA", 4);
	PrintScreen	(IntToString(self.aivar[AIV_FaceTex]), -1, 18, "FONT_OLD_10_WHITE.TGA", 4);
	
	PrintScreen	("G³owa:", -1, 22, "FONT_OLD_10_WHITE.TGA", 4);
	PrintScreen	(npc.name_4, -1, 24, "FONT_OLD_10_WHITE.TGA", 4);
	
	PrintScreen	("Cia³o:", -1, 28, "FONT_OLD_10_WHITE.TGA", 4);
	PrintScreen	(IntToString(self.aivar[AIV_BodyTex]), -1, 30, "FONT_OLD_10_WHITE.TGA", 4);
	
	PrintScreen	("Skóra:", -1, 34, "FONT_OLD_10_WHITE.TGA", 4);
	PrintScreen	(IntToString(self.aivar[AIV_SkinTex]), -1, 36, "FONT_OLD_10_WHITE.TGA", 4);
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_HC_EXIT (C_Info)
{
	npc									=	HC;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description 						=	DIALOG_END;
};

///******************************************************************************************
/// RACE
///******************************************************************************************
/*
instance DIA_HC_Race (C_Info)
{
	npc									=	HC;
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_HC_Race_Info;
	permanent							=	true;
	description							=	"Rasa"; 
};
func void DIA_HC_Race_Info()
{
	Info_ClearChoices(DIA_HC_Race);
	
	Info_AddChoice (DIA_HC_Race, DIALOG_BACK, DIA_HC_Race_BACK);
	Info_AddChoice (DIA_HC_Race, "Bestia", DIA_HC_Race_Beast);
	Info_AddChoice (DIA_HC_Race, "Zombie", DIA_HC_Race_Zombie);
	Info_AddChoice (DIA_HC_Race, "Demon", DIA_HC_Race_Demon);
	Info_AddChoice (DIA_HC_Race, "Jaszczurocz³ek", DIA_HC_Race_Draconian);
	Info_AddChoice (DIA_HC_Race, "Ork", DIA_HC_Race_Orc);
	Info_AddChoice (DIA_HC_Race, "Krasnolud", DIA_HC_Race_Dwarf);
	Info_AddChoice (DIA_HC_Race, "Elf", DIA_HC_Race_Elf);
	Info_AddChoice (DIA_HC_Race, "Cz³owiek", DIA_HC_Race_Human);
};
///******************************************************************************************
func void DIA_HC_Race_BACK()
{
	Info_ClearChoices(DIA_HC_Race);
};
func void DIA_HC_Race_Human()
{
	self.aivar[AIV_Race] = RACE_Human;
	Change_HC_Visual();
};
func void DIA_HC_Race_Elf()
{
	self.aivar[AIV_Race] = RACE_Elf;
	Change_HC_Visual();
};
func void DIA_HC_Race_Dwarf()
{
	self.aivar[AIV_Race] = RACE_Dwarf;
	Change_HC_Visual();
};
func void DIA_HC_Race_Orc()
{
	self.aivar[AIV_Race] = RACE_Orc;
	Change_HC_Visual();
};
func void DIA_HC_Race_Draconian()
{
	self.aivar[AIV_Race] = RACE_Draconian;
	Change_HC_Visual();
};
func void DIA_HC_Race_Demon()
{
	self.aivar[AIV_Race] = RACE_Demon;
	Change_HC_Visual();
};
func void DIA_HC_Race_Zombie()
{
	self.aivar[AIV_Race] = RACE_Zombie;
	Change_HC_Visual();
};
func void DIA_HC_Race_Beast()
{
	self.aivar[AIV_Race] = RACE_Beast;
	Change_HC_Visual();
};*/

///******************************************************************************************
/// GENDER
///******************************************************************************************
instance DIA_HC_Gender (C_Info)
{
	npc									=	HC;
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_HC_Gender_Info;
	permanent							=	true;
	description							=	"P³eæ";
};
func void DIA_HC_Gender_Info()
{
	if (self.aivar[AIV_Gender] == MALE)
	{
		self.aivar[AIV_Gender] = FEMALE;
	}
	else if (self.aivar[AIV_Gender] == FEMALE)
	{
		self.aivar[AIV_Gender] = MALE;
	};
	Change_HC_Visual();
};

///******************************************************************************************
/// FACE
///******************************************************************************************
instance DIA_HC_Face (C_Info)
{
	npc									=	HC;
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_HC_Face_Info;
	permanent							=	true;
	description							=	"Wybór twarzy";
};
func void DIA_HC_Face_Info()
{
	Info_ClearChoices(DIA_HC_Face);
	
	Info_AddChoice (DIA_HC_Face, DIALOG_BACK, DIA_HC_Face_BACK);
	Info_AddChoice (DIA_HC_Face, "Domyœlna twarz", DIA_HC_ResetFace);
	Info_AddChoice (DIA_HC_Face, "Poprzednie 50 twarzy", DIA_HC_PreviousFace50);
	Info_AddChoice (DIA_HC_Face, "Nastêpne 50 twarzy", DIA_HC_NextFace50);
	Info_AddChoice (DIA_HC_Face, "Poprzednie 10 twarzy", DIA_HC_PreviousFace10);
	Info_AddChoice (DIA_HC_Face, "Nastêpne 10 twarzy", DIA_HC_NextFace10);
	Info_AddChoice (DIA_HC_Face, "Poprzednia twarz", DIA_HC_PreviousFace);
	Info_AddChoice (DIA_HC_Face, "Nastêpna twarz", DIA_HC_NextFace);
};
///******************************************************************************************
func void DIA_HC_Face_BACK()
{
	Info_ClearChoices(DIA_HC_Face);
};
func void DIA_HC_NextFace()
{
	self.aivar[AIV_FaceTex] += 1;
	Change_HC_Visual();
	DIA_HC_Face_Info();
};
func void DIA_HC_PreviousFace()
{
	self.aivar[AIV_FaceTex] -= 1;
	Change_HC_Visual();
	DIA_HC_Face_Info();
};
func void DIA_HC_NextFace10()
{
	self.aivar[AIV_FaceTex] += 10;
	Change_HC_Visual();
	DIA_HC_Face_Info();
};
func void DIA_HC_PreviousFace10()
{
	self.aivar[AIV_FaceTex] -= 10;
	Change_HC_Visual();
	DIA_HC_Face_Info();
};
func void DIA_HC_NextFace50()
{
	self.aivar[AIV_FaceTex] += 50;
	Change_HC_Visual();
	DIA_HC_Face_Info();
};
func void DIA_HC_PreviousFace50()
{
	self.aivar[AIV_FaceTex] -= 50;
	Change_HC_Visual();
	DIA_HC_Face_Info();
};
func void DIA_HC_ResetFace()
{
	self.aivar[AIV_FaceTex] = 0;
	Change_HC_Visual();
	DIA_HC_Face_Info();
};

///******************************************************************************************
/// HEAD
///******************************************************************************************
instance DIA_HC_Choose_HeadMesh (C_Info)
{
	npc									=	HC;
	nr									=	4;
	condition							=	aTrue;
	information							=	DIA_HC_Choose_HeadMesh_Info;
	permanent							=	true;
	description							=	"Wybór kszta³tu g³owy";
};
func void DIA_HC_Choose_HeadMesh_Info()
{
	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, DIALOG_BACK, DIA_HC_Choose_HeadMesh_Back);
	
	if (self.aivar[AIV_Gender] == FEMALE)
	{
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_BabeHair", DIA_HC_Choose_HeadMesh_W_10);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe8", DIA_HC_Choose_HeadMesh_W_9);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe7", DIA_HC_Choose_HeadMesh_W_8);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe6", DIA_HC_Choose_HeadMesh_W_7);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe5", DIA_HC_Choose_HeadMesh_W_6);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe4", DIA_HC_Choose_HeadMesh_W_5);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe3", DIA_HC_Choose_HeadMesh_W_4);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe2", DIA_HC_Choose_HeadMesh_W_3);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe1", DIA_HC_Choose_HeadMesh_W_2);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Babe", DIA_HC_Choose_HeadMesh_W_1);
	};
/*
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Unicorn", DIA_HC_Choose_HeadMesh_M_14);
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Thomas", DIA_HC_Choose_HeadMesh_M_13);
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Pymonte", DIA_HC_Choose_HeadMesh_M_12);
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Pfeiffer", DIA_HC_Choose_HeadMesh_M_11);
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Lutter", DIA_HC_Choose_HeadMesh_M_10);
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Flex", DIA_HC_Choose_HeadMesh_M_9);
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Flail", DIA_HC_Choose_HeadMesh_M_8);
	Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Beard", DIA_HC_Choose_HeadMesh_M_7);
*/
	if (self.aivar[AIV_Gender] == MALE)
	{
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Psionic", DIA_HC_Choose_HeadMesh_M_6);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Thief", DIA_HC_Choose_HeadMesh_M_5);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Pony", DIA_HC_Choose_HeadMesh_M_4);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Fighter", DIA_HC_Choose_HeadMesh_M_3);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_FatBald", DIA_HC_Choose_HeadMesh_M_2);
		Info_AddChoice	(DIA_HC_Choose_HeadMesh, "Hum_Head_Bald", DIA_HC_Choose_HeadMesh_M_1);
	};
};
///******************************************************************************************
func void DIA_HC_Choose_HeadMesh_W_1()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_2()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe1";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_3()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe2";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_4()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe3";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_5()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe4";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_6()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe5";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_7()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe6";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_8()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe7";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_9()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Babe8";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_W_10()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_BabeHair";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
///******************************************************************************************
func void DIA_HC_Choose_HeadMesh_M_1()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Bald";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_2()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_FatBald";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_3()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Fighter";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_4()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Pony";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_5()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Thief";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_6()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Psionic";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_7()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Beard";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_8()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Flail";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_9()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Flex";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_10()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Lutter";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_11()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Pfeiffer";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_12()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Pymonte";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_13()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Thomas";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_M_14()
{
	var oCNpc npc; npc = Hlp_GetNpc(self);
	npc.name_4 = "Hum_Head_Unicorn";
	Change_HC_Visual();
	
//	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
	DIA_HC_Choose_HeadMesh_Info();
};
func void DIA_HC_Choose_HeadMesh_Back()
{
	Info_ClearChoices(DIA_HC_Choose_HeadMesh);
};

///******************************************************************************************
/// BODY
///******************************************************************************************
instance DIA_HC_Body (C_Info)
{
	npc									=	HC;
	nr									=	5;
	condition							=	aTrue;
	information							=	DIA_HC_Body_Info;
	permanent							=	true;
	description							=	"Wybór tekstury cia³a"; 
};
func void DIA_HC_Body_Info()
{
	Info_ClearChoices(DIA_HC_Body);
	
	Info_AddChoice (DIA_HC_Body, DIALOG_BACK, DIA_HC_Body_BACK);
	Info_AddChoice (DIA_HC_Body, "Domyœlna tekstura cia³a", DIA_HC_DefaultBody);
	Info_AddChoice (DIA_HC_Body, "Poprzednie 5 tekstur cia³a", DIA_HC_PreviousBody5);
	Info_AddChoice (DIA_HC_Body, "Nastêpne 5 tekstur cia³a", DIA_HC_NextBody5);
	Info_AddChoice (DIA_HC_Body, "Poprzednia tekstura cia³a", DIA_HC_PreviousBody);
	Info_AddChoice (DIA_HC_Body, "Nastêpna tekstura cia³a", DIA_HC_NextBody);
};
///******************************************************************************************
func void DIA_HC_Body_BACK()
{
	Info_ClearChoices(DIA_HC_Body);
};
func void DIA_HC_NextBody()
{
	self.aivar[AIV_BodyTex] += 1;
	Change_HC_Visual();
	DIA_HC_Body_Info();
};
func void DIA_HC_PreviousBody()
{
	self.aivar[AIV_BodyTex] -= 1;
	Change_HC_Visual();
	DIA_HC_Body_Info();
};
func void DIA_HC_NextBody5()
{
	self.aivar[AIV_BodyTex] += 5;
	Change_HC_Visual();
	DIA_HC_Body_Info();
};
func void DIA_HC_PreviousBody5()
{
	self.aivar[AIV_BodyTex] -= 5;
	Change_HC_Visual();
	DIA_HC_Body_Info();
};
func void DIA_HC_DefaultBody()
{
	self.aivar[AIV_BodyTex] = 0;
	Change_HC_Visual();
	DIA_HC_Body_Info();
};

///******************************************************************************************
/// SKIN
///******************************************************************************************
instance DIA_HC_Skin (C_Info)
{
	npc									=	HC;
	nr									=	6;
	condition							=	aTrue;
	information							=	DIA_HC_Skin_Info;
	permanent							=	true;
	description							=	"Wybór tekstury skóry"; 
};
func void DIA_HC_Skin_Info()
{
	Info_ClearChoices(DIA_HC_Skin);
	
	Info_AddChoice (DIA_HC_Skin, DIALOG_BACK, DIA_HC_Skin_BACK);
	Info_AddChoice (DIA_HC_Skin, "Domyœlna tekstura skóry", DIA_HC_DefaultSkin);
	Info_AddChoice (DIA_HC_Skin, "Poprzednia tekstura skóry", DIA_HC_PreviousSkin);
	Info_AddChoice (DIA_HC_Skin, "Nastêpna tekstura skóry", DIA_HC_NextSkin);
};
///******************************************************************************************
func void DIA_HC_Skin_BACK()
{
	Info_ClearChoices(DIA_HC_Skin);
};
func void DIA_HC_NextSkin()
{	
	self.aivar[AIV_SkinTex] += 1;
	Change_HC_Visual();
	DIA_HC_Skin_Info();
};
func void DIA_HC_PreviousSkin()
{	
	self.aivar[AIV_SkinTex] -= 1;
	Change_HC_Visual();
	DIA_HC_Skin_Info();
};
func void DIA_HC_DefaultSkin()
{
	self.aivar[AIV_SkinTex] = 0;
	Change_HC_Visual();
	DIA_HC_Skin_Info();
};
