///******************************************************************************************
/// B_AddFightSkill
///******************************************************************************************

const int FightTalent_None			=	0;
const int FightTalent_Weak			=	20;
const int FightTalent_Initiate		=	40;
const int FightTalent_Medium		=	60;
const int FightTalent_Strong		=	80;
const int FightTalent_Master		=	100;

///******************************************************************************************
func void B_AddFightSkill (var C_Npc slf, var int talent, var int percent)
{
	MEM_WriteStatArr(slf.hitchance, talent, MEM_ReadStatArr(slf.hitchance, talent) + percent);
	
	if (slf.guild < GIL_SEPERATOR_HUM && slf.aivar[AIV_Gender] < ORCMALE)
	{
		if		(MEM_ReadStatArr(slf.hitchance, talent) > 60)	{	Npc_SetTalentSkill (slf, talent, 2);	}
		else if	(MEM_ReadStatArr(slf.hitchance, talent) > 30)	{	Npc_SetTalentSkill (slf, talent, 1);	}
		else													{	Npc_SetTalentSkill (slf, talent, 0);	};
	};
	
	/// PrintScreen
	if (Npc_IsPlayer(slf))
	{
		var string concatText;
		
		if		(talent == NPC_TALENT_THROW)	{	concatText = ConcatStrings(PRINT_LearnThrow, IntToString(percent));	}
		else if	(talent == NPC_TALENT_1H)		{	concatText = ConcatStrings(PRINT_Learn1h, IntToString(percent));	}
		else if	(talent == NPC_TALENT_2H)		{	concatText = ConcatStrings(PRINT_Learn2h, IntToString(percent));	}
		else if	(talent == NPC_TALENT_BOW)		{	concatText = ConcatStrings(PRINT_LearnBow, IntToString(percent));	}
		else if	(talent == NPC_TALENT_CROSSBOW)	{	concatText = ConcatStrings(PRINT_LearnCBow, IntToString(percent));	};
		
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
};
