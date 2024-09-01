///******************************************************************************************

var int GregyIsYourFollower;

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Gregy_EXIT (C_Info)
{
	npc									=	PIR_1302_Gregy;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// HALLO
///******************************************************************************************
instance DIA_Gregy_HALLO (C_Info)
{
	npc									=	PIR_1302_Gregy;
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_Gregy_HALLO_Info;
	important							=	true;
};
func void DIA_Gregy_HALLO_Info()
{
	AI_PlayAni (self, "R_ROAM1");
	AI_Wait (other, 1);
	AI_Output (other, self,"DIA_Constantino_MushroomsRunning_Why_15_06"); //O rany!
	
	PIR_1302_Gregy_Rise(self);
	GregyIsYourFollower = true;
	
	AI_StopProcessInfos(self);
};
