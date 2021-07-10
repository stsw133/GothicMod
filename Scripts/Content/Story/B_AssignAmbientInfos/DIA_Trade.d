///******************************************************************************************
///	TRADE
///******************************************************************************************
instance DIA_Trade_JOIN (C_INFO)
{
	nr									=	801;
	condition							=	DIA_Trade_JOIN_Condition;
	information							=	DIA_Trade_JOIN_Info;
	permanent							=	true;
	description							=	"Pohandlujmy.";
};

func int DIA_Trade_JOIN_Condition()
{
	if (self.aivar[AIV_CanTrade])
	{
		return true;
	};
};

func void DIA_Trade_JOIN_Info()
{
	B_GiveTradeInv(self);
	AI_Output	(other, self, "SVM_15_Addon_TRADE_1"); //Pohandlujmy.
};
