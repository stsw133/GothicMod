///******************************************************************************************
///	C_NpcIsMonsterMage
///******************************************************************************************
func int C_NpcIsMonsterMage (var C_NPC slf)
{
	if (slf.guild == GIL_SKELETON_MAGE)
	|| (slf.guild == GIL_FIREGOLEM)
	|| (slf.guild == GIL_ICEGOLEM)
	|| (slf.guild == GIL_DRAGON)
	|| (slf.guild == GIL_ORC)
	{
		return true;
	}
	else
	{
		return false;
	};
};
