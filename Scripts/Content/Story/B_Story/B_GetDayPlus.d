///******************************************************************************************
///	B_GetDayPlus
///******************************************************************************************
func int B_GetDayPlus()
{
	if (Wld_IsTime(22,00,23,59))
	{
		return (Wld_GetDay() + 1);
	};
	
	return Wld_GetDay();
};