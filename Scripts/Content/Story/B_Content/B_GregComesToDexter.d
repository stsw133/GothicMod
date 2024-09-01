///******************************************************************************************
/// B_GregComesToDexter
///******************************************************************************************

var int B_GregComesToDexter_OneTime;

///******************************************************************************************
func void B_GregComesToDexter()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Dexter))
	{
		if (!B_GregComesToDexter_OneTime)
		{
			dexter.aivar[AIV_EnemyOverride] = false;
			GregLocation = Greg_Dexter;
			B_StartOtherRoutine (Greg_NW, "Dexter");
			B_GregComesToDexter_OneTime = true;
		};
	};
};
