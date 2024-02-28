///******************************************************************************************
///	NpcFn_SetFightSkills
///******************************************************************************************
func void NpcFn_SetFightSkills (var C_Npc slf, var int percent)
{
	slf.hitchance[NPC_TALENT_1H]		=	0;
	slf.hitchance[NPC_TALENT_2H]		=	0;
	slf.hitchance[NPC_TALENT_BOW]		=	0;
	slf.hitchance[NPC_TALENT_CROSSBOW]	=	0;
	
	B_AddFightSkill	(slf, NPC_TALENT_1H, percent);
	B_AddFightSkill	(slf, NPC_TALENT_2H, percent);
	B_AddFightSkill	(slf, NPC_TALENT_BOW, percent);
	B_AddFightSkill	(slf, NPC_TALENT_CROSSBOW, percent);
};
