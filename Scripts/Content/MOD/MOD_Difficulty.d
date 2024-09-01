///******************************************************************************************
///	MOD_Difficulty
///******************************************************************************************

const int DIFF_E	=	0;	/// easy
const int DIFF_M	=	1;	/// medium
const int DIFF_H	=	2;	/// hard
const int DIFF_V	=	3;	/// very hard

var int var_DIFF_Percent;
const int DIFF_Percent[4] =
{
	-25,		/// DIFF_E
	0,		/// DIFF_M
	25,		/// DIFF_H
	50		/// DIFF_V
};

///******************************************************************************************
func int DIFF_Multiplier (var int points, var int type)
{
	if		(type == decrease)	{	return (points * 100) / (var_DIFF_Percent + 100);		}
	else if (type == increase)	{	return points + ((points * var_DIFF_Percent) / 100);	}
	else						{	return points;											};
};

///******************************************************************************************
func void DIFF_Select (var int diff)
{
	dLevel = diff;
	
	if		(dLevel == DIFF_E)		{	var_DIFF_Percent = DIFF_Percent[DIFF_E];	}
	else if	(dLevel == DIFF_M)		{	var_DIFF_Percent = DIFF_Percent[DIFF_M];	}
	else if	(dLevel == DIFF_H)		{	var_DIFF_Percent = DIFF_Percent[DIFF_H];	}
	else if	(dLevel == DIFF_V)		{	var_DIFF_Percent = DIFF_Percent[DIFF_V];	}
	else							{	var_DIFF_Percent = DIFF_Percent[DIFF_M];	};
};
