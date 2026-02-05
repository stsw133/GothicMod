///******************************************************************************************
/// MOD_Difficulty
///******************************************************************************************

const int DIFF_E	=	0;	/// easy
const int DIFF_M	=	1;	/// medium
const int DIFF_H	=	2;	/// hard
const int DIFF_V	=	3;	/// very hard
const int DIFF_C	=	4;	/// custom

var int var_DIFF_Percent;
const int DIFF_Percent[5] =
{
	-25,		/// DIFF_E
	0,		/// DIFF_M
	25,		/// DIFF_H
	50,		/// DIFF_V
	0		/// DIFF_C
};

///******************************************************************************************
func int DIFF_Multiplier(var int points, var int type)
{
	if		(type == decrease)	{	return (points * 100) / (var_DIFF_Percent + 100);		}
	else if (type == increase)	{	return points + ((points * var_DIFF_Percent) / 100);		}
	else						{	return points;											};
};

///******************************************************************************************
func void DIFF_Select(var int diff)
{
	if (diff < DIFF_E || diff > DIFF_C)
	{
		MEM_Warn(ConcatStrings("DIFF_Select: invalid difficulty value: ", IntToString(diff)));
		dLevel = DIFF_M;
	}
	else
	{
		dLevel = diff;
	};
	
	var_DIFF_Percent = MEM_ReadStatArr(DIFF_Percent, dLevel);
};

///******************************************************************************************
/// MOD_Difficulty
///     Customs
///******************************************************************************************
func int MOD_GetLpPerLevel()
{
	if (dLevel != DIFF_C)
	{
		return LP_PER_LEVEL;
	};
	
	if (customLpPerLevel < 0)
	{
		return LP_PER_LEVEL;
	};
	
	return customLpPerLevel*2;
};

///******************************************************************************************
func int MOD_GetHpPerLevel()
{
	if (dLevel != DIFF_C)
	{
		return HP_PER_LEVEL;
	};
	
	if (customHpPerLevel < 0)
	{
		return HP_PER_LEVEL;
	};
	
	return customHpPerLevel*2;
};

///******************************************************************************************
func int MOD_GetMpPerLevel()
{
	if (dLevel != DIFF_C)
	{
		return 0;
	};
	
	if (customMpPerLevel < 0)
	{
		return 0;
	};
	
	return customMpPerLevel*1;
};

///******************************************************************************************
func int MOD_GetSpPerLevel()
{
	if (dLevel != DIFF_C)
	{
		return 1;
	};
	
	if (customSpPerLevel < 0)
	{
		return 1;
	};
	
	return customSpPerLevel*1;
};

///******************************************************************************************
func int MOD_GetExpVictoryPercent()
{
	if (dLevel != DIFF_C)
	{
		return XP_PER_VICTORY;
	};
	
	if (customExpVictoryPercent < 0)
	{
		return XP_PER_VICTORY;
	};
	
	return customExpVictoryPercent+1;
};
