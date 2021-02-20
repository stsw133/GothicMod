//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Lucyna_EXIT (C_INFO)
{
	npc									=	GF_18000_Lucyna;
	nr									=	999;
	condition							=	DIA_Lucyna_EXIT_Condition;
	information							=	DIA_Lucyna_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC INT DIA_Lucyna_EXIT_Condition()
{
	return true;
};

FUNC VOID DIA_Lucyna_EXIT_Info()
{
	//MOD_StopTalkingWithGirl(self);
};

//******************************************************************************************
//	Hello
//******************************************************************************************
INSTANCE DIA_Lucyna_Hello (C_INFO)
{
	npc									=	GF_18000_Lucyna;
	nr									=	1;
	condition							=	DIA_Lucyna_Hello_Condition;
	information							=	DIA_Lucyna_Hello_Info;
	permanent							=	true;
	important							=	true;
};

FUNC INT DIA_Lucyna_Hello_Condition()
{
	if (Npc_IsInState(self,ZS_Talk))
	&& (talkingWithGirl == false)
	{
		return true;
	};
};

FUNC VOID DIA_Lucyna_Hello_Info()
{
	gLevelA = self.aivar[AIV_Love];
	talkingWithGirl = true;
	Bar_Delete(Bar_expBar);
};
