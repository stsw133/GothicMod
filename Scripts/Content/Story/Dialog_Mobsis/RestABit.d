///******************************************************************************************
/// MOBSI_RestABit
///******************************************************************************************
func void RestABit_S1()
{
	if (Npc_IsPlayer(self))
	{
		if (RestDay == (Wld_GetDay() + 1))
		{
			Print("Ju¿ dzisiaj odpoczywa³eœ.");
			return;
		};
		
		self.aivar[AIV_Invisible] = true;
		PLAYER_MOBSI_PRODUCTION = MOBSI_RestABit;
		AI_ProcessInfos(self);
	};
};

func int PC_RestABit_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_RestABit)
	{
		return true;
	};
};

///******************************************************************************************
var int RestDay;

func void PC_Rest (var int i)
{
	AI_StopProcessInfos(self);
	
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
	self.aivar[AIV_Invisible] = false;
	
	Wld_SetTime(Wld_GetTime() + 1 + i, 00);
	RestDay = Wld_GetDay() + 1;
	
	hero.aivar[AIV_Stamina] = hero.aivar[AIV_Stamina_MAX];
	
	PrintGlobals(PD_ITEM_MOBSI);
	Npc_SendPassivePerc (hero, PERC_ASSESSENTERROOM, null, hero);
	GregyTeleportIfTooFar(); /// MOD
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance PC_NoRest (C_Info)
{
	npc									=	PC_Hero;
	nr									=	999;
	condition							=	PC_RestABit_Condition;
	information							=	B_EndProductionDialog;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// 1 hour
///******************************************************************************************
instance PC_RestTime_1 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_RestABit_Condition;
	information							=	PC_RestTime_1_Info;
	permanent							=	true;
	description							=	"Poczekaj 1 godzinê";
};
func void PC_RestTime_1_Info()
{
	PC_Rest(1);
};

///******************************************************************************************
/// 2 hours
///******************************************************************************************
instance PC_RestTime_2 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_RestABit_Condition;
	information							=	PC_RestTime_2_Info;
	permanent							=	true;
	description							=	"Poczekaj 2 godziny";
};
func void PC_RestTime_2_Info()
{
	PC_Rest(2);
};

///******************************************************************************************
/// 3 hours
///******************************************************************************************
instance PC_RestTime_3 (C_Info)
{
	npc									=	PC_Hero;
	condition							=	PC_RestABit_Condition;
	information							=	PC_RestTime_3_Info;
	permanent							=	true;
	description							=	"Poczekaj 3 godziny";
};
func void PC_RestTime_3_Info()
{
	PC_Rest(3);
};
