///******************************************************************************************
///	G_CanNotCast
///******************************************************************************************
func void G_CanNotCast (var int bIsPlayer, var int nCircleNeeded, var int nCirclePossessed)
{
	var string strMessage;
	
	var int		nDifference;	nDifference 	= nCircleNeeded - nCirclePossessed;
	var string  strDifference;  strDifference 	= IntToString(nDifference);
	
	strMessage = ConcatStrings(strDifference, PRINT_MAGCIRCLES_MISSING);
	
	if (bIsPlayer)
	{
		Print(strMessage);
	};
};
