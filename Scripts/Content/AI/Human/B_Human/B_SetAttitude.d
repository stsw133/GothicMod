///******************************************************************************************
///	B_SetAttitude
///******************************************************************************************
func void B_SetAttitude (var C_NPC slf, var int att)
{
	Npc_SetAttitude (slf, att);
	Npc_SetTempAttitude (slf, att);
};
