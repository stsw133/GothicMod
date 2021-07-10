///******************************************************************************************
///	ACTIONS
///******************************************************************************************
instance DIA_Actions_JOIN (C_Info)
{
	nr									=	799;
	condition							=	DIA_Actions_JOIN_Condition;
	information							=	DIA_Actions_JOIN_Info;
	permanent							=	true;
	description							=	"Zmieñ rutynê.";
};

func int DIA_Actions_JOIN_Condition()
{
	if (self.id >= 17000) && (self.id < 18000)
	|| (Hlp_GetInstanceID(self) == HC)
	{
		return true;
	};
};

func void DIA_Actions_JOIN_Info()
{
	Info_ClearChoices(DIA_Actions_JOIN);

	Info_AddChoice (DIA_Actions_JOIN, "Pal ziele", DIA_Actions_JOIN_Smoke_Joint);
	Info_AddChoice (DIA_Actions_JOIN, "Usi¹dŸ na krzeœle", DIA_Actions_JOIN_Sit_Chair);
	Info_AddChoice (DIA_Actions_JOIN, "Czytaj ksiêgê", DIA_Actions_JOIN_Read_Bookstand);
	Info_AddChoice (DIA_Actions_JOIN, "Warz miksturê", DIA_Actions_JOIN_Potion_Alchemy);
	Info_AddChoice (DIA_Actions_JOIN, "Kop rudê", DIA_Actions_JOIN_Pick_Ore);
	Info_AddChoice (DIA_Actions_JOIN, "Pij", DIA_Actions_JOIN_Stand_Drinking);
	Info_AddChoice (DIA_Actions_JOIN, "Jedz", DIA_Actions_JOIN_Stand_Eating);
	Info_AddChoice (DIA_Actions_JOIN, "Tañcz", DIA_Actions_JOIN_Dance);
	Info_AddChoice (DIA_Actions_JOIN, "Œpij", DIA_Actions_JOIN_Sleep);
	Info_AddChoice (DIA_Actions_JOIN, "Rozmawiaj", DIA_Actions_JOIN_SmallTalk);
	Info_AddChoice (DIA_Actions_JOIN, "ChodŸ za mn¹", DIA_Actions_JOIN_Follow);
	Info_AddChoice (DIA_Actions_JOIN, "(resetuj)", DIA_Actions_JOIN_Start);
};

//******************************************************************************************
func void DIA_Actions_JOIN_Start()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Start");
	self.aivar[AIV_PARTYMEMBER] = false;
};
func void DIA_Actions_JOIN_Follow()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Follow");
	self.aivar[AIV_PARTYMEMBER] = true;
};
func void DIA_Actions_JOIN_SmallTalk()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Smalltalk");
};
func void DIA_Actions_JOIN_Sleep()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Sleep");
};
func void DIA_Actions_JOIN_Dance()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Dance");
};
func void DIA_Actions_JOIN_Stand_Eating()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Stand_Eating");
};
func void DIA_Actions_JOIN_Stand_Drinking()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Stand_Drinking");
};
func void DIA_Actions_JOIN_Pick_Ore()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Pick_Ore");
};
func void DIA_Actions_JOIN_Potion_Alchemy()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Potion_Alchemy");
};
func void DIA_Actions_JOIN_Read_Bookstand()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Read_Bookstand");
};
func void DIA_Actions_JOIN_Sit_Chair()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Sit_Chair");
};
func void DIA_Actions_JOIN_Smoke_Joint()
{
	AI_StopProcessInfos(self);
	Npc_ExchangeRoutine (self, "Smoke_Joint");
};
