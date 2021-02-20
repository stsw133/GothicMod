///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_PAL_262_EXIT   (C_INFO)
{
	npc         = PAL_262_Wache;
	nr          = 999;
	condition   = DIA_PAL_262_EXIT_Condition;
	information = DIA_PAL_262_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_PAL_262_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_PAL_262_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info GREET
///////////////////////////////////////////////////////////////////////
instance DIA_PAL_262_GREET		(C_INFO)
{
	npc			 = 	PAL_262_Wache;
	nr			 =	2;
	condition	 = 	DIA_PAL_262_GREET_Condition;
	information	 = 	DIA_PAL_262_GREET_Info;
	important	 =  true;
};
func int DIA_PAL_262_GREET_Condition ()
{	
	return true;
};
func void DIA_PAL_262_GREET_Info ()
{
	AI_Output (self, other, "DIA_PAL_262_GREET_10_00"); //Zatrzymaj siê - kim jesteœ?
	AI_Output (other, self, "DIA_PAL_262_GREET_15_01"); //Niewa¿ne kim jestem, wa¿ne sk¹d przychodzê. Niedawno przekroczy³em prze³êcz.
	AI_Output (other, self, "DIA_PAL_262_GREET_15_02"); //Bêdziesz sprawia³ problemy, czy po prostu pozwolisz mi wejœæ?
	AI_Output (self, other, "DIA_PAL_262_GREET_10_03"); //Sk¹d mia³em wiedzieæ? Oczywiœcie, ¿e ciê wpuszczê, wchodŸ.
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info PERM
///////////////////////////////////////////////////////////////////////
instance DIA_Wache_PERM		(C_INFO)
{
	npc			 = 	PAL_262_Wache;
	nr			 = 	3;
	condition	 = 	DIA_Wache_PERM_Condition;
	information	 = 	DIA_Wache_PERM_Info;
	permanent	 = 	true;
	description	 = 	"Kto tu dowodzi?";
};

func int DIA_Wache_PERM_Condition ()
{	
	if Npc_KnowsInfo (hero,DIA_PAL_262_GREET)
	{
		return true;
	};
};
func void DIA_Wache_PERM_Info ()
{
	AI_Output (other, self, "DIA_Addon_Wache_PERM_15_00"); //Wer hat hier das Sagen?
	AI_Output (self, other, "DIA_Addon_Wache_PERM_10_01"); //Unser Kommandant Garond und seine beiden Berater, die Paladine Oric und Parcival.
	AI_Output (self, other, "DIA_Addon_Wache_PERM_10_02"); //Geh einfach rein. Tagsüber halten sie sich im Thronsaal im Erdgeschoss auf.
};
