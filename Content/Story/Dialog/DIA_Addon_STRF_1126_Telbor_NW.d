//---------------------------------------------------------------------
//	Info EXIT 
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Telbor_NW_EXIT   (C_INFO)
{
	npc         = STRF_1126_Addon_Telbor_NW;
	nr          = 999;
	condition   = DIA_Addon_Telbor_NW_EXIT_Condition;
	information = DIA_Addon_Telbor_NW_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};
FUNC INT DIA_Addon_Telbor_NW_EXIT_Condition()
{
	return true;
};
FUNC VOID DIA_Addon_Telbor_NW_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

//---------------------------------------------------------------------
//	Info Hi
//---------------------------------------------------------------------
INSTANCE DIA_Addon_Telbor_NW_Hi   (C_INFO)
{
	npc         = STRF_1126_Addon_Telbor_NW;
	nr          = 2;
	condition   = DIA_Addon_Telbor_NW_Hi_Condition;
	information = DIA_Addon_Telbor_NW_Hi_Info;
	permanent   = false;
	description = "Wracasz do pracy na polu?";
};
FUNC INT DIA_Addon_Telbor_NW_Hi_Condition()
{		
	return true;
};
FUNC VOID DIA_Addon_Telbor_NW_Hi_Info()
{
	AI_Output (other, self, "DIA_Addon_Telbor_NW_Hi_15_00");//Z powrotem na pole, co?
	AI_Output (self, other, "DIA_Addon_Telbor_NW_Hi_12_01");//M�j wybawca, niech mnie kule bij�! Tak, wracam zmaga� si� z codziennym trudem.
	
	if !Npc_IsDead (Egill)
	&& !Npc_IsDead (Ehnim)
	{
		AI_Output (self, other, "DIA_Addon_Telbor_NW_Hi_12_02");//I z tymi dwoma kopni�tymi bra�mi. Nawet bandyci nie byli tak denerwuj�cy.
	};
};
