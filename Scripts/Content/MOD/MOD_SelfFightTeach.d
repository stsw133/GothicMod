///******************************************************************************************
///	MOD_SelfFightTeach
///******************************************************************************************

const int SelfFightTeach_Diff		=	50;	/// number of hits needed to +1%

var int SelfFightTeach_Progress[5];
var int SelfFightTeach_Level[5];

///******************************************************************************************
func void SelfFightTeach_ADD (var C_Npc slf, var int talent)
{
	if (MEM_ReadStatArr(slf.hitchance, talent) < 100)
	{
		if		(talent == NPC_TALENT_1H)		&& (SelfFightTeach_Level[NPC_TALENT_1H] < 10)		{	SelfFightTeach_Progress[NPC_TALENT_1H] += 1;		}
		else if	(talent == NPC_TALENT_2H)		&& (SelfFightTeach_Level[NPC_TALENT_2H] < 10)		{	SelfFightTeach_Progress[NPC_TALENT_2H] += 1;		}
		else if	(talent == NPC_TALENT_BOW)		&& (SelfFightTeach_Level[NPC_TALENT_BOW] < 10)		{	SelfFightTeach_Progress[NPC_TALENT_BOW] += 1;		}
		else if	(talent == NPC_TALENT_CROSSBOW)	&& (SelfFightTeach_Level[NPC_TALENT_CROSSBOW] < 10)	{	SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] += 1;	};
	};
	
	if (SelfFightTeach_Progress[NPC_TALENT_1H] >= SelfFightTeach_Diff)
	{
		SelfFightTeach_Level[NPC_TALENT_1H] += 1;
		B_AddFightSkill (slf, talent, 1);
		SelfFightTeach_Progress[NPC_TALENT_1H] = 0;
	}
	else if (SelfFightTeach_Progress[NPC_TALENT_2H] >= SelfFightTeach_Diff)
	{
		SelfFightTeach_Level[NPC_TALENT_2H] += 1;
		B_AddFightSkill (slf, talent, 1);
		SelfFightTeach_Progress[NPC_TALENT_2H] = 0;
	}
	else if (SelfFightTeach_Progress[NPC_TALENT_BOW] >= SelfFightTeach_Diff)
	{
		SelfFightTeach_Level[NPC_TALENT_BOW] += 1;
		B_AddFightSkill (slf, talent, 1);
		SelfFightTeach_Progress[NPC_TALENT_BOW] = 0;
	}
	else if (SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] >= SelfFightTeach_Diff)
	{
		SelfFightTeach_Level[NPC_TALENT_CROSSBOW] += 1;
		B_AddFightSkill (slf, talent, 1);
		SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] = 0;
	};
};
