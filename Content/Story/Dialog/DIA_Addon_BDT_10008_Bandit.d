//---------------------------------------------------------------------
//	Info EXIT 
//---------------------------------------------------------------------
INSTANCE Addon_10008_Bandit_EXIT   (C_INFO)
{
	npc         = BDT_10008_Addon_Bandit;
	nr          = 999;
	condition   = Addon_10008_Bandit_EXIT_Condition;
	information = Addon_10008_Bandit_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT Addon_10008_Bandit_EXIT_Condition()
{	
		return true;
};
FUNC VOID Addon_10008_Bandit_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//---------------------------------------------------------------------
//	Info Hi
//---------------------------------------------------------------------
INSTANCE DIA_Addon_10008_Bandit_Hi   (C_INFO)
{
	npc         = BDT_10008_Addon_Bandit;
	nr          = 2;
	condition   = DIA_Addon_10008_Bandit_Hi_Condition;
	information = DIA_Addon_10008_Bandit_Hi_Info;
	permanent   = false;
	important 	= true;
};
FUNC INT DIA_Addon_10008_Bandit_Hi_Condition()
{	
	if (Npc_GetDistToNpc(other, Skinner) <= 600)
	&& (!Npc_IsDead(Skinner))
	&& (Skinner.aivar[AIV_TalkedToPlayer] == false)
	{
		return true;
	};
};
FUNC VOID DIA_Addon_10008_Bandit_Hi_Info()
{
	AI_Output (self, other, "DIA_Addon_10008_Bandit_Hi_01_00");//NIE budŸ go!
	AI_Output (other, self, "DIA_Addon_10008_Bandit_Hi_15_01");//Co?!
	AI_Output (self, other, "DIA_Addon_10008_Bandit_Hi_01_02");//Dla swojego dobra trzymaj siê z daleka od Skinnera.
	AI_Output (self, other, "DIA_Addon_10008_Bandit_Hi_01_03");//Ten koleœ jest nieprzewidywalny. Niedawno zabi³ goœcia, który go obudzi³.
	AI_Output (self, other, "DIA_Addon_10008_Bandit_Hi_01_04");//Niech œpi. Tak bêdzie najlepiej dla nas wszystkich.
};
//--------------------------------------------------------------------
//	Info soup
//---------------------------------------------------------------------
INSTANCE DIA_Addon_10008_Bandit_soup   (C_INFO)
{
	npc         = BDT_10008_Addon_Bandit;
	nr          = 2;
	condition   = DIA_Addon_10008_Bandit_soup_Condition;
	information = DIA_Addon_10008_Bandit_soup_Info;
	permanent   = false;
	description = "Jesteœ kopaczem?";
};
FUNC INT DIA_Addon_10008_Bandit_soup_Condition()
{	
		return true;
};
FUNC VOID DIA_Addon_10008_Bandit_soup_Info()
{
	AI_Output (other, self, "DIA_Addon_10008_Bandit_soup_15_00");//Jesteœ kopaczem?
	AI_Output (self, other, "DIA_Addon_10008_Bandit_soup_01_01");//To przez te spodnie? Nie, noszê je, bo s¹ wygodne.
	AI_Output (self, other, "DIA_Addon_10008_Bandit_soup_01_02");//Gotujê gulasz. Masz, spróbuj, nabierzesz si³.
	B_GiveInvItems (self, other, ItFo_Stew, 1);
	AI_Output (self, other, "DIA_Addon_10008_Bandit_soup_01_03");//Trzeba zawsze æwiczyæ, ¿eby nabraæ si³ - na zewn¹trz czyha wiele niebezpieczeñstw.
};
