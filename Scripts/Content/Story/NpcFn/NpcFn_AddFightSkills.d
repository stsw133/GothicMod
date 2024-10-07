///******************************************************************************************
/// NpcFn_AddFightSkills
///******************************************************************************************
func void NpcFn_AddFightSkills (var C_Npc slf, var int percent)
{
	B_AddFightSkill (slf, NPC_TALENT_THROW, percent);
	B_AddFightSkill (slf, NPC_TALENT_1H, percent);
	B_AddFightSkill (slf, NPC_TALENT_2H, percent);
	B_AddFightSkill (slf, NPC_TALENT_BOW, percent);
	B_AddFightSkill (slf, NPC_TALENT_CROSSBOW, percent);
};
