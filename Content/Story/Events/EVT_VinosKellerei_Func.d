//******************************************************************************************
//	EVT_VINOSKELLEREI_FUNC
//******************************************************************************************

var int FoundVinosKellerei;

//******************************************************************************************
func void EVT_VINOSKELLEREI_FUNC_S1()
{
	if (FoundVinosKellerei == false)
	{
		FoundVinosKellerei = true;
		B_GivePlayerXP(XP_BONUS_4);
	};
};
