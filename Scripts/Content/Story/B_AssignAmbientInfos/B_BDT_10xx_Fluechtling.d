///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BDT_1031_Fluechtling_EXIT (C_Info)
{
	npc									=	BDT_1031_Fluechtling;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Tip1
///******************************************************************************************
instance DIA_BDT_1031_Fluechtling_Tip1 (C_Info)
{
	npc									=	BDT_1031_Fluechtling;
	nr									=	2;
	condition							=	aTrueWhenTalk;
	information							=	DIA_BDT_1031_Fluechtling_Tip1_Info;
	important							=	true;
};
func void DIA_BDT_1031_Fluechtling_Tip1_Info()
{
	AI_Output (self, other, "DIA_BDT_1031_Fluechtling_Tip1_07_00"); //Trzymaj si� ode mnie z daleka, chyba �e chcesz wyl�dowa� w wi�zieniu.
	B_GivePlayerExp(150);
	
	if (!SCFoundMorgahard)
	{
		Info_ClearChoices(DIA_BDT_1031_Fluechtling_Tip1);
		Info_AddChoice (DIA_BDT_1031_Fluechtling_Tip1, "Nie b�j si�, nie chc� ci� wyda�.", DIA_BDT_1031_Fluechtling_Tip1_frei);
		Info_AddChoice (DIA_BDT_1031_Fluechtling_Tip1, "Przybywam, by ci� aresztowa�.", DIA_BDT_1031_Fluechtling_Tip1_Knast);
		Info_AddChoice (DIA_BDT_1031_Fluechtling_Tip1, "Gdzie jest Morgahard, tw�j dow�dca?", DIA_BDT_1031_Fluechtling_Tip1_Morgahard);
	};
};
///******************************************************************************************
func void DIA_BDT_1031_Fluechtling_Tip1_Morgahard()
{
	AI_Output (other, self, "DIA_BDT_1031_Fluechtling_Tip1_Morgahard_15_00"); //Gdzie jest Morgahard, tw�j dow�dca?
	AI_Output (self, other, "DIA_BDT_1031_Fluechtling_Tip1_Morgahard_07_01"); //Rozdzielili�my si�, �eby trudniej nas by�o z�apa�. Nie mam poj�cia, gdzie s� pozostali.
	Info_AddChoice (DIA_BDT_1031_Fluechtling_Tip1, "Szkoda, w takim razie b�d� chyba musia� powiadomi� s�dziego.", DIA_BDT_1031_Fluechtling_Tip1_Morgahard_drohen);
};
func void DIA_BDT_1031_Fluechtling_Tip1_Morgahard_drohen()
{
	AI_Output (other, self, "DIA_BDT_1031_Fluechtling_Tip1_Morgahard_drohen_15_00"); //Szkoda, w takim razie b�d� chyba musia� powiadomi� s�dziego.
	AI_Output (self, other, "DIA_BDT_1031_Fluechtling_Tip1_Morgahard_drohen_07_01"); //Dobra ju�, dobra. Wydaje mi si�, �e niekt�rzy schronili si� w tawernie. Ale pami�taj, nie wiesz tego ode mnie!
	AI_StopProcessInfos(self);
};
func void DIA_BDT_1031_Fluechtling_Tip1_Knast()
{
	AI_Output (other, self, "DIA_BDT_1031_Fluechtling_Tip1_Knast_15_00"); //Przyszed�em tu, by ci� aresztowa�.
	AI_Output (self, other, "DIA_BDT_1031_Fluechtling_Tip1_Knast_07_01"); //Po moim trupie.
	AI_StopProcessInfos(self);
	B_Attack (self, other, AR_SuddenEnemyInferno, 1);
};
func void DIA_BDT_1031_Fluechtling_Tip1_frei()
{
	AI_Output (other, self, "DIA_BDT_1031_Fluechtling_Tip1_frei_15_00"); //Nie b�j si�, nie chc� ci� wyda�.
	AI_Output (self, other, "DIA_BDT_1031_Fluechtling_Tip1_frei_07_01"); //Je�li przysy�a ci� s�dzia, to powiedz mu, �e mo�e si� poca�owa�.
	Info_AddChoice (DIA_BDT_1031_Fluechtling_Tip1, "Co takiego zrobi�e�?", DIA_BDT_1031_Fluechtling_Tip1_frei_verbrechen);
};
func void DIA_BDT_1031_Fluechtling_Tip1_frei_verbrechen()
{
	AI_Output (other, self, "DIA_BDT_1031_Fluechtling_Tip1_frei_verbrechen_15_00"); //Co takiego zrobi�e�?
	AI_Output (self, other, "DIA_BDT_1031_Fluechtling_Tip1_frei_verbrechen_07_01"); //Nie twoja sprawa.
};

///******************************************************************************************
/// PERM
///******************************************************************************************
instance DIA_BDT_1031_Fluechtling_PERM (C_Info)
{
	npc									=	BDT_1031_Fluechtling;
	nr									=	3;
	condition							=	aTrueWhenTalk;
	information							=	DIA_BDT_1031_Fluechtling_PERM_Info;
	important							=	true;
	permanent							=	true;
};
func void DIA_BDT_1031_Fluechtling_PERM_Info()
{
	AI_Output (self, other, "DIA_B_DIA_BDT_10XX_Fluechtling_07_00"); //Nie ma mowy! Nie wr�c� do wi�zienia!
	AI_StopProcessInfos(self);
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BDT_1032_Fluechtling_EXIT (C_Info)
{
	npc									=	BDT_1032_Fluechtling;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// PERM
///******************************************************************************************
instance DIA_BDT_1032_Fluechtling_PERM (C_Info)
{
	npc									= 	BDT_1032_Fluechtling;
	nr									= 	2;
	condition							= 	aTrueWhenTalk;
	information							= 	DIA_BDT_1032_Fluechtling_PERM_Info;
	important							= 	true;
	permanent							= 	true;
};
func void DIA_BDT_1032_Fluechtling_PERM_Info()
{
	AI_Output (self, other, "DIA_B_DIA_BDT_10XX_Fluechtling_06_00"); //Nie przyszed�e� chyba po to, �eby zabra� nas z powrotem do wi�zienia, co?
	AI_StopProcessInfos(self);
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BDT_1033_Fluechtling_EXIT (C_Info)
{
	npc									=	BDT_1033_Fluechtling;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// Tip2
///******************************************************************************************
instance DIA_BDT_1033_Fluechtling_Tip2 (C_Info)
{
	npc									=	BDT_1033_Fluechtling;
	nr									=	2;
	condition							=	aTrueWhenTalk;
	information							=	DIA_BDT_1033_Fluechtling_Tip2_Info;
	important							=	true;
};
func void DIA_BDT_1033_Fluechtling_Tip2_Info()
{
	AI_Output (self, other, "DIA_BDT_1033_Fluechtling_Tip2_07_00"); //Czego ode mnie chcesz?
	B_GivePlayerExp(150);
	
	if (!SCFoundMorgahard)
	{
		Info_ClearChoices(DIA_BDT_1033_Fluechtling_Tip2);
		Info_AddChoice (DIA_BDT_1033_Fluechtling_Tip2, "Uspok�j si�. Chc� tylko porozmawia�.", DIA_BDT_1033_Fluechtling_Tip2_frei);
		Info_AddChoice (DIA_BDT_1033_Fluechtling_Tip2, "Przys�a� mnie s�dzia. Mam ci� do niego zaprowadzi�.", DIA_BDT_1033_Fluechtling_Tip2_Knast);
		Info_AddChoice (DIA_BDT_1033_Fluechtling_Tip2, "Gdzie jest Morgahard, tw�j dow�dca?", DIA_BDT_1033_Fluechtling_Tip2_Morgahard);
	};
};
///******************************************************************************************
func void DIA_BDT_1033_Fluechtling_Tip2_Morgahard()
{
	AI_Output (other, self, "DIA_BDT_1033_Fluechtling_Tip2_Morgahard_15_00"); //Gdzie jest Morgahard, tw�j dow�dca?
	AI_Output (self, other, "DIA_BDT_1033_Fluechtling_Tip2_Morgahard_07_01"); //Nie chc� �adnych k�opot�w. Id� do zarz�dcy. Wiem, �e chcia� si� ukry� w�r�d najemnik�w. A teraz zostaw mnie w spokoju.
	AI_StopProcessInfos(self);
};
func void DIA_BDT_1033_Fluechtling_Tip2_Knast()
{
	AI_Output (other, self, "DIA_BDT_1033_Fluechtling_Tip2_Knast_15_00"); //Przys�a� mnie s�dzia. Mam ci� do niego zaprowadzi�.
	AI_Output (self, other, "DIA_BDT_1033_Fluechtling_Tip2_Knast_07_01"); //NIE.
	AI_StopProcessInfos(self);
	B_Attack (self, other, AR_SuddenEnemyInferno, 1);
};
func void DIA_BDT_1033_Fluechtling_Tip2_frei()
{
	AI_Output (other, self, "DIA_BDT_1033_Fluechtling_Tip2_frei_15_00"); //Uspok�j si�. Chc� tylko porozmawia�.
	AI_Output (self, other, "DIA_BDT_1033_Fluechtling_Tip2_frei_07_01"); //Ale ja nie chc� rozmawia� z tob�. Odwal si�.
	Info_AddChoice (DIA_BDT_1033_Fluechtling_Tip2, "Narobi�e� w portki ze strachu?", DIA_BDT_1033_Fluechtling_Tip2_frei_verbrechen);
};
func void DIA_BDT_1033_Fluechtling_Tip2_frei_verbrechen()
{
	AI_Output (other, self, "DIA_BDT_1033_Fluechtling_Tip2_frei_verbrechen_15_00"); //Narobi�e� w portki ze strachu?
	AI_Output (self, other, "DIA_BDT_1033_Fluechtling_Tip2_frei_verbrechen_07_01"); //Gadaj zdr�w, to nie na ciebie czeka szubienica.
};

///******************************************************************************************
/// PERM
///******************************************************************************************
instance DIA_BDT_1033_Fluechtling_PERM (C_Info)
{
	npc									=	BDT_1033_Fluechtling;
	nr									=	3;
	condition							=	aTrueWhenTalk;
	information							=	DIA_BDT_1033_Fluechtling_PERM_Info;
	important							=	true;
	permanent							=	true;
};
func void DIA_BDT_1033_Fluechtling_PERM_Info()
{
	AI_Output (self, other, "DIA_B_DIA_BDT_10XX_Fluechtling_07_00"); //Nie ma mowy! Nie wr�c� do wi�zienia!
	AI_StopProcessInfos(self);
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BDT_1034_Fluechtling_EXIT (C_Info)
{
	npc									=	BDT_1034_Fluechtling;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// PERM
///******************************************************************************************
instance DIA_BDT_1034_Fluechtling_PERM (C_Info)
{
	npc									=	BDT_1034_Fluechtling;
	nr									=	2;
	condition							=	aTrueWhenTalk;
	information							=	DIA_BDT_1034_Fluechtling_PERM_Info;
	important							=	true;
	permanent							=	true;
};
func void DIA_BDT_1034_Fluechtling_PERM_Info()
{
	AI_Output (self, other, "DIA_B_DIA_BDT_10XX_Fluechtling_06_00"); //Nie przyszed�e� chyba po to, �eby zabra� nas z powrotem do wi�zienia, co?
	AI_StopProcessInfos(self);
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_BDT_1035_Fluechtling_EXIT (C_Info)
{
	npc									=	BDT_1035_Fluechtling;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// PERM
///******************************************************************************************
instance DIA_BDT_1035_Fluechtling_PERM (C_Info)
{
	npc									=	BDT_1035_Fluechtling;
	nr									=	2;
	condition							=	aTrueWhenTalk;
	information							=	DIA_BDT_1035_Fluechtling_PERM_Info;
	important							=	true;
	permanent							=	true;
};
func void DIA_BDT_1035_Fluechtling_PERM_Info()
{
	AI_Output (self, other, "DIA_B_DIA_BDT_10XX_Fluechtling_07_00"); //Nie ma mowy! Nie wr�c� do wi�zienia!
	AI_StopProcessInfos(self);
};
