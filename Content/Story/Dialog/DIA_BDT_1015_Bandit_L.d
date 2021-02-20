///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_1015_BANDIT_EXIT   (C_INFO)
{
	npc         = BDT_1015_Bandit_L;
	nr          = 999;
	condition   = DIA_1015_BANDIT_EXIT_Condition;
	information = DIA_1015_BANDIT_EXIT_Info;
	permanent   = true;
	description = DIALOG_ENDE;
};

FUNC INT DIA_1015_BANDIT_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_1015_BANDIT_EXIT_Info()
{
	AI_StopProcessInfos (self);
};
///////////////////////////////////////////////////////////////////////
//	Info AMBUSH
///////////////////////////////////////////////////////////////////////
instance DIA_1015_BANDIT_AMBUSH		(C_INFO)
{
	npc			 = 	BDT_1015_Bandit_L;
	nr			 = 	2;
	condition	 = 	DIA_1015_BANDIT_AMBUSH_Condition;
	information	 = 	DIA_1015_BANDIT_AMBUSH_Info;
	permanent    =  false;
	IMPORTANT 	 =  true; 
};
func int DIA_1015_BANDIT_AMBUSH_Condition ()
{	
	if (Npc_IsDead (Ambusher_1014))
	|| (Npc_IsInState (self, ZS_Talk))
	{
		return true;
	};
};
func void DIA_1015_BANDIT_AMBUSH_Info ()
{
	AI_Output			(self, other, "DIA_1015_BANDIT_AMBUSH_06_00"); //Hej, chyba widzia�em ju� t� g�b�...
	
	AI_StopProcessInfos (self);
	
	B_Attack (self, other, AR_SuddenEnemyInferno, 1);
};
