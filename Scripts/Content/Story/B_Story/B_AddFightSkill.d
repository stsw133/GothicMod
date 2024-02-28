///******************************************************************************************
///	B_AddFightSkill
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
	var string concatText;
	
	/// 1h
	if (talent == NPC_TALENT_1H)
	{
		slf.hitchance[NPC_TALENT_1H] += percent;
		concatText = ConcatStrings(PRINT_Learn1h, IntToString(percent));
		
		if (slf.aivar[AIV_Gender] < ORCMALE)
		{
			if		(slf.hitchance[NPC_TALENT_1H] >= FightTalent_Strong)			{	Npc_SetTalentSkill (slf, NPC_TALENT_1H, 2);			}
			else if	(slf.hitchance[NPC_TALENT_1H] >= FightTalent_Initiate)			{	Npc_SetTalentSkill (slf, NPC_TALENT_1H, 1);			}
			else																	{	Npc_SetTalentSkill (slf, NPC_TALENT_1H, 0);			};
		};
	};
	
	/// 2h
	if (talent == NPC_TALENT_2H)
	{
		slf.hitchance[NPC_TALENT_2H] += percent;
		concatText = ConcatStrings(PRINT_Learn2h, IntToString(percent));
		
		if (slf.aivar[AIV_Gender] < ORCMALE)
		{
			if		(slf.hitchance[NPC_TALENT_2H] >= FightTalent_Strong)			{	Npc_SetTalentSkill (slf, NPC_TALENT_2H, 2);			}
			else if	(slf.hitchance[NPC_TALENT_2H] >= FightTalent_Initiate)			{	Npc_SetTalentSkill (slf, NPC_TALENT_2H, 1);			}
			else																	{	Npc_SetTalentSkill (slf, NPC_TALENT_2H, 0);			};
		};
	};
	
	/// bow
	if (talent == NPC_TALENT_BOW)
	{
		slf.hitchance[NPC_TALENT_BOW] += percent;
		concatText = ConcatStrings(PRINT_LearnBow, IntToString(percent));
		
		if (slf.aivar[AIV_Gender] < ORCMALE)
		{
			if		(slf.hitchance[NPC_TALENT_BOW] >= FightTalent_Strong)			{	Npc_SetTalentSkill (slf, NPC_TALENT_BOW, 2);		}
			else if	(slf.hitchance[NPC_TALENT_BOW] >= FightTalent_Initiate)			{	Npc_SetTalentSkill (slf, NPC_TALENT_BOW, 1);		}
			else																	{	Npc_SetTalentSkill (slf, NPC_TALENT_BOW, 0);		};
		};
	};
	
	/// cbow
	if (talent == NPC_TALENT_CROSSBOW)
	{
		slf.hitchance[NPC_TALENT_CROSSBOW] += percent;
		concatText = ConcatStrings(PRINT_LearnCBow, IntToString(percent));
		
		if (slf.aivar[AIV_Gender] < ORCMALE)
		{
			if		(slf.hitchance[NPC_TALENT_CROSSBOW] >= FightTalent_Strong)		{	Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW, 2);	}
			else if	(slf.hitchance[NPC_TALENT_CROSSBOW] >= FightTalent_Initiate)	{	Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW, 1);	}
			else																	{	Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW, 0);	};
		};
	};
	
	/// PrintScreen
	if (Npc_IsPlayer(slf))
	{
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
};
