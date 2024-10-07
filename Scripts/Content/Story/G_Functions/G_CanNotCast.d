///******************************************************************************************
/// G_CanNotCast
///******************************************************************************************
func void G_CanNotCast (var int bIsPlayer, var int nCircleNeeded, var int nCirclePossessed)
{
	if (bIsPlayer)
	{
		var int nDifference; nDifference = nCircleNeeded - nCirclePossessed;
		var string strDifference; strDifference = IntToString(nDifference);
		var string strMessage; strMessage = ConcatStrings(strDifference, PRINT_MAGCIRCLES_MISSING);
		
		Print(strMessage);
	};
};
