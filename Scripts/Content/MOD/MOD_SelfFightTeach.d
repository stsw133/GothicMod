///******************************************************************************************
/// MOD_SelfFightTeach
///******************************************************************************************

const int SelfFightTeach_Diff		=	100;	/// number of hits needed to +1%
const int SelfFightTeach_MaxLevel	=	10;		/// max. number of self teached points of fight skill

var int SelfFightTeach_Progress[5];
var int SelfFightTeach_Level[5];

///******************************************************************************************
func void SelfFightTeach_ADD(var C_Npc slf, var int talent)
{
	if (talent < 0 || talent >= MAX_HITCHANCE)
	{
		return;
	};
	
	if (MEM_ReadStatArr(slf.hitchance, talent) < 100) && (MEM_ReadStatArr(SelfFightTeach_Level, talent) < SelfFightTeach_MaxLevel)
	{
		MEM_WriteStatArr(SelfFightTeach_Progress, talent, MEM_ReadStatArr(SelfFightTeach_Progress, talent) + 1);
	};
	
	if (MEM_ReadStatArr(SelfFightTeach_Progress, talent) >= SelfFightTeach_Diff)
	{
		MEM_WriteStatArr(SelfFightTeach_Level, talent, MEM_ReadStatArr(SelfFightTeach_Level, talent) + 1);
		B_AddFightSkill (slf, talent, 1);
		MEM_WriteStatArr(SelfFightTeach_Progress, talent, MEM_ReadStatArr(SelfFightTeach_Progress, talent) - SelfFightTeach_Diff);
		
		if (MEM_ReadStatArr(SelfFightTeach_Level, talent) == SelfFightTeach_MaxLevel)
		{
			PrintScreen	("Osi¹gniêto max. poziom samonauki w tej dziedzinie broni.", -1, 55, FONT_SCREEN, TIME_Print);
		};
	};
};
