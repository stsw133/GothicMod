///******************************************************************************************
/// TRADE
///******************************************************************************************
instance DIA_Trade_JOIN (C_Info)
{
	nr									=	801;
	condition							=	DIA_Trade_JOIN_Condition;
	information							=	DIA_Trade_JOIN_Info;
	permanent							=	true;
	description							=	DIALOG_TRADE;
};
func int DIA_Trade_JOIN_Condition()
{
	if (self.aivar[AIV_CanOffer] & OFFER_Trading)
	{
		return true;
	};
};
func void DIA_Trade_JOIN_Info()
{
	var int rand; rand = Hlp_Random(3);
	
	if		(rand == 0)	{	B_Say (other, self, "$TRADE_1");	}
	else if (rand == 1)	{	B_Say (other, self, "$TRADE_2");	}
	else				{	B_Say (other, self, "$TRADE_3");	};
	
	B_GiveTradeInv(self);
};
