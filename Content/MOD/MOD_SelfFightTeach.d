///******************************************************************************************
///	MOD_SelfFightTeach
///******************************************************************************************

const int SelfFightTeach_Diff	=	100; /// number of hits needed to +1%

var int SelfFightTeach_Progress[5];
var int SelfFightTeach_Level[5];

///******************************************************************************************
func void SelfFightTeach_CHECK (var C_NPC slf, var int talent)
{
	if (Npc_GetTalentValue(slf, talent) < 90)
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
		PrintScreen (NAME_Bonus_1H, -1, YPOS_LevelUp, FONT_Screen, TIME_Print);
		SelfFightTeach_Progress[NPC_TALENT_1H] = 0;
	};
	if (SelfFightTeach_Progress[NPC_TALENT_2H] >= SelfFightTeach_Diff)
	{
		SelfFightTeach_Level[NPC_TALENT_2H] += 1;
		B_AddFightSkill (slf, talent, 1);
		PrintScreen (NAME_Bonus_2H, -1, YPOS_LevelUp, FONT_Screen, TIME_Print);
		SelfFightTeach_Progress[NPC_TALENT_2H] = 0;
	};
	if (SelfFightTeach_Progress[NPC_TALENT_BOW] >= SelfFightTeach_Diff)
	{
		SelfFightTeach_Level[NPC_TALENT_BOW] += 1;
		B_AddFightSkill (slf, talent, 1);
		PrintScreen (NAME_Bonus_Bow, -1, YPOS_LevelUp, FONT_Screen, TIME_Print);
		SelfFightTeach_Progress[NPC_TALENT_BOW] = 0;
	};
	if (SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] >= SelfFightTeach_Diff)
	{
		SelfFightTeach_Level[NPC_TALENT_CROSSBOW] += 1;
		B_AddFightSkill (slf, talent, 1);
		PrintScreen (NAME_Bonus_Crossbow, -1, YPOS_LevelUp, FONT_Screen, TIME_Print);
		SelfFightTeach_Progress[NPC_TALENT_CROSSBOW] = 0;
	};
};
