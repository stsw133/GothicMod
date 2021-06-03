///******************************************************************************************
///	MOD_Difficulty
///******************************************************************************************
const int DIFF_E	=	0;	/// easy
const int DIFF_M	=	1;	/// medium
const int DIFF_H	=	2;	/// hard
const int DIFF_VH	=	3;	/// very hard
const int DIFF_I	=	4;	/// impossible / hardcore

const int DIFF_Percent[5] =
{
	-20,	/// DIFF_E
	0,		/// DIFF_M
	20,		/// DIFF_H
	40,		/// DIFF_VH
	60		/// DIFF_I
};

var int var_DIFF_Percent;

func int DIFF_Multiplier (var int points, var int type)
{
	if (type == DECREASE)	{	return points - ((points * var_DIFF_Percent) / 100);	}
	else					{	return points + ((points * var_DIFF_Percent) / 100);	};
};

///******************************************************************************************
func void DIFF_Select (var int diff)
{
	dLevel = diff;
	Npc_SetTalentSkill (hero, NPC_TALENT_DIFFICULTY, dLevel);

	if		(dLevel == DIFF_E)		{	var_DIFF_Percent = DIFF_Percent[DIFF_E];	}
	else if	(dLevel == DIFF_H)		{	var_DIFF_Percent = DIFF_Percent[DIFF_H];	}
	else if	(dLevel == DIFF_VH)		{	var_DIFF_Percent = DIFF_Percent[DIFF_VH];	}
	else if	(dLevel == DIFF_I)		{	var_DIFF_Percent = DIFF_Percent[DIFF_I];	}
	else							{	var_DIFF_Percent = DIFF_Percent[DIFF_M];	};
};
