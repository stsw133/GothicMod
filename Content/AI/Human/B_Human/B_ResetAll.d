///******************************************************************************************
///	B_ResetAll
///******************************************************************************************
func void B_ResetAll (var C_NPC slf)
{
	/// ------ NSC h�rt ggf. auf zu glotzen ------
	B_StopLookAt(slf);

	/// ------ NSC steckt ggf. Waffe weg ------
	if (movieMode == false)
	{
		AI_RemoveWeapon(slf);
	};
};
