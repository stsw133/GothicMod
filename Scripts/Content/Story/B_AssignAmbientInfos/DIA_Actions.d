///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Actions_EXIT (C_Info)
{
	nr									=	999;
	condition							=	DIA_Actions_EXIT_Condition;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};
func int DIA_Actions_EXIT_Condition()
{
	if (self.id == 50)
	{
		return true;
	};
};

///******************************************************************************************
/// ACTIONS
///******************************************************************************************
instance DIA_Actions_JOIN (C_Info)
{
	nr									=	799;
	condition							=	DIA_Actions_JOIN_Condition;
	information							=	DIA_Actions_JOIN_Info;
	permanent							=	true;
	description							=	"(Zmieñ rutynê)";
};
func int DIA_Actions_JOIN_Condition()
{
	if (self.id == 50)
	{
		return true;
	};
};
func void DIA_Actions_JOIN_Info()
{
	self.aivar[AIV_PartyMember] = false;
	Info_ClearChoices(DIA_Actions_JOIN);
	Info_AddChoice (DIA_Actions_JOIN, "Warz miksturê", DIA_Actions_JOIN_PotionAlchemy);
	Info_AddChoice (DIA_Actions_JOIN, "Usi¹dŸ przy ognisku", DIA_Actions_JOIN_SitCampfire);
	Info_AddChoice (DIA_Actions_JOIN, "Usi¹dŸ na krzeœle", DIA_Actions_JOIN_SitChair);
	Info_AddChoice (DIA_Actions_JOIN, "Tañcz", DIA_Actions_JOIN_Dance);
	Info_AddChoice (DIA_Actions_JOIN, "Œpij", DIA_Actions_JOIN_Sleep);
	Info_AddChoice (DIA_Actions_JOIN, "Sprz¹taj", DIA_Actions_JOIN_Sweep);
	Info_AddChoice (DIA_Actions_JOIN, "Rozmawiaj", DIA_Actions_JOIN_SmallTalk);
	Info_AddChoice (DIA_Actions_JOIN, "Pracuj przy kowadle", DIA_Actions_JOIN_Forge);
	Info_AddChoice (DIA_Actions_JOIN, "Pilnuj", DIA_Actions_JOIN_StandHalberd);
	Info_AddChoice (DIA_Actions_JOIN, "Módl siê", DIA_Actions_JOIN_Pray);
	Info_AddChoice (DIA_Actions_JOIN, "Pij", DIA_Actions_JOIN_StandDrinking);
	Info_AddChoice (DIA_Actions_JOIN, "Pal ziele", DIA_Actions_JOIN_SmokeJoint);
	Info_AddChoice (DIA_Actions_JOIN, "Kop rudê", DIA_Actions_JOIN_PickOre);
	Info_AddChoice (DIA_Actions_JOIN, "Jedz", DIA_Actions_JOIN_StandEating);
	Info_AddChoice (DIA_Actions_JOIN, "Czytaj ksiêgê", DIA_Actions_JOIN_ReadBookstand);
	Info_AddChoice (DIA_Actions_JOIN, "ChodŸ za mn¹", DIA_Actions_JOIN_Follow);
	Info_AddChoice (DIA_Actions_JOIN, "(resetuj)", DIA_Actions_JOIN_Start);
};
///******************************************************************************************
func void DIA_Actions_JOIN_Start()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Start");
};
func void DIA_Actions_JOIN_Dance()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Dance");
};
func void DIA_Actions_JOIN_Follow()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Follow");
	self.aivar[AIV_PARTYMEMBER] = true;
};
func void DIA_Actions_JOIN_Forge()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Forge");
};
func void DIA_Actions_JOIN_PickOre()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Pick_Ore");
};
func void DIA_Actions_JOIN_PotionAlchemy()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Potion_Alchemy");
};
func void DIA_Actions_JOIN_Pray()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Pray");
};
func void DIA_Actions_JOIN_ReadBookstand()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Read_Bookstand");
};
func void DIA_Actions_JOIN_SitChair()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Sit_Chair");
};
func void DIA_Actions_JOIN_Sleep()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Sleep");
};
func void DIA_Actions_JOIN_SmallTalk()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Smalltalk");
};
func void DIA_Actions_JOIN_SmokeJoint()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Smoke_Joint");
};
func void DIA_Actions_JOIN_StandDrinking()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Stand_Drinking");
};
func void DIA_Actions_JOIN_StandEating()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Stand_Eating");
};
func void DIA_Actions_JOIN_StandHalberd()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Stand_Halberd");
};
func void DIA_Actions_JOIN_SitCampfire()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Sit_Campfire");
};
func void DIA_Actions_JOIN_Sweep()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "FEGEN");
};
