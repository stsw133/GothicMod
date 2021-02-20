// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Addon_Raven_EXIT (C_INFO)
{
	npc			= BDT_1090_Addon_Raven;
	nr			= 999;
	condition	= DIA_Addon_Raven_EXIT_Condition;
	information	= DIA_Addon_Raven_EXIT_Info;
	permanent	= true;
	description	= DIALOG_ENDE;
};        
FUNC INT DIA_Addon_Raven_EXIT_Condition()
{	
	return true;
};

FUNC VOID DIA_Addon_Raven_EXIT_Info()
{
	AI_StopProcessInfos	(self);
};
// ************************************************************
// 				  	
// ************************************************************
// ************************************************************
// 			  				   EXIT 
// ************************************************************
INSTANCE DIA_Addon_Raven_Hi (C_INFO)
{
	npc			= BDT_1090_Addon_Raven;
	nr			= 1;
	condition	= DIA_Addon_Raven_Hi_Condition;
	information	= DIA_Addon_Raven_Hi_Info;
	permanent	= false;
	important	= true;
};        
FUNC INT DIA_Addon_Raven_Hi_Condition()
{	
	return true;
};
FUNC VOID DIA_Addon_Raven_Hi_Info()
{
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_00");//Patrzcie, kto przyszed�.
	if (C_BodyStateContains(self, BS_SIT))
	{
		NPC_StopAni (self,"T_PRAY_RANDOM");
		AI_PlayAniBS (self, "T_PRAY_2_STAND",BS_STAND);
		AI_TurnToNpc (self,	other);
	};
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_01");//M�j mistrz ostrzega�, �e Innos przy�le swoje s�ugi.
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_02");//Jednak nie spodziewa�em si� ciebie tak szybko.
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_03");//No, skoro by�e� taki szybki, zadbam o to, by� r�wnie szybko umar�.
	
	Info_ClearChoices (DIA_Addon_Raven_Hi);
	Info_AddChoice (DIA_Addon_Raven_Hi,"To TY zginiesz.",DIA_Addon_Raven_Hi_DU);
	Info_AddChoice (DIA_Addon_Raven_Hi,"Zaprzeda�e� dusz� Beliarowi!",DIA_Addon_Raven_Hi_Soul);
};
FUNC VOID DIA_Addon_Raven_Hi_DU()
{
	AI_Output (other, self, "DIA_Addon_Raven_Add_15_00");//To TY zginiesz.
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_04");//Nie jeste� dla mnie �adnym wyzwaniem. Mam miecz Beliara.
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_05");//Poprowadz� smoki na kontynent. Razem sprowadzimy na �wiat ludzi ciemno��.
};
FUNC VOID DIA_Addon_Raven_Hi_Soul()
{
	AI_Output (other, self, "DIA_Addon_Raven_Add_15_01");//Zaprzeda�e� dusz� Beliarowi!
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_06");//To by� dobry uk�ad. B�d� dowodzi� jego armiami.
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_07");//A co z tob�? Jaka jest cena za TWOJ� dusz�?
	
	Info_ClearChoices (DIA_Addon_Raven_Hi);
	Info_AddChoice (DIA_Addon_Raven_Hi,"Dobra, do�� ju� si� nas�ucha�em. Poka�, co umiesz...",DIA_Addon_Raven_Hi_Attack);
	Info_AddChoice (DIA_Addon_Raven_Hi,"Robi� tylko to, co trzeba zrobi�.",DIA_Addon_Raven_Hi_only);

};
FUNC VOID DIA_Addon_Raven_Hi_only()
{
	AI_Output (other, self, "DIA_Addon_Raven_Add_15_02");//Robi� tylko to, co trzeba zrobi�.
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_08");//Pos�uchajcie go. Innos przys�a� nam pokornego s�ug�!
	
	Info_ClearChoices (DIA_Addon_Raven_Hi);
	Info_AddChoice (DIA_Addon_Raven_Hi,"Dobra, do�� ju� si� nas�ucha�em. Poka�, co umiesz...",DIA_Addon_Raven_Hi_Attack);
	Info_AddChoice (DIA_Addon_Raven_Hi,"Jeste� pewien, �e s�u�� Innosowi?",DIA_Addon_Raven_Hi_Sure);	
};
FUNC VOID DIA_Addon_Raven_Hi_Sure()
{
	AI_Output (other, self, "DIA_Addon_Raven_Add_15_03");//Jeste� pewien, �e s�u�� Innosowi?
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_09");//Co? O czym ty m�wisz?
	AI_Output (other, self, "DIA_Addon_Raven_Add_15_04");//A je�li s�u�� Adanosowi?
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_10");//Nonsens!
	AI_Output (other, self, "DIA_Addon_Raven_Add_15_05");//A mo�e *ja* te� s�u�� Beliarowi - albo samemu sobie.
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_11");//Nie b�dziesz wi�c dla mnie godnym przeciwnikiem!
	
	Info_ClearChoices (DIA_Addon_Raven_Hi);
	Info_AddChoice (DIA_Addon_Raven_Hi,"Dobra, do�� ju� si� nas�ucha�em. Poka�, co umiesz...",DIA_Addon_Raven_Hi_Attack);
};
FUNC VOID DIA_Addon_Raven_Hi_Attack()
{
	AI_Output (other, self, "DIA_Addon_Raven_Add_15_06");//Dobra, do�� ju� si� nas�ucha�em. Poka�, co umiesz...
	AI_Output (self, other, "DIA_Addon_Raven_Add_10_12");//Tak ci spieszno do ziemi? Dobra, sam tego chcia�e�...
	
	AI_StopProcessInfos	(self); 
	B_Attack (self, other, AR_SuddenEnemyInferno,1);
};
