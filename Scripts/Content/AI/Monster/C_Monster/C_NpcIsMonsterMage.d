///******************************************************************************************
/// C_NpcIsMonsterMage
///******************************************************************************************
func int C_NpcIsMonsterMage (var C_Npc slf)
{
	if (slf.guild == GIL_SKELETON_MAGE)
	|| (slf.guild == GIL_GOLEM)
	|| (slf.guild == GIL_DRAGON)
//	|| (slf.guild == GIL_ORC)
	{
		return true;
	}
	else
	{
		return false;
	};
};
