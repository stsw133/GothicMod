///******************************************************************************************
///	G_PickLock
///******************************************************************************************
func void G_PickLock (var int bSuccess, var int bBrokenOpen)
{
	if (bSuccess)
	{
		if (bBrokenOpen)
		{
			Snd_Play3D (self, "PICKLOCK_UNLOCK");
			Print(PRINT_PICKLOCK_UNLOCK);
		}
		else
		{
			Snd_Play3D (self, "PICKLOCK_SUCCESS");
			Print(PRINT_PICKLOCK_SUCCESS);
		};
	}
	else
	{
		if (bBrokenOpen)
		{
			Snd_Play3D (self, "PICKLOCK_BROKEN");
			Print(PRINT_PICKLOCK_BROKEN);
			
			if (Hlp_Random(4) == 0)
			{
				Npc_SendPassivePerc (hero, PERC_ASSESSQUIETSOUND, hero, hero);
			};
		}
		else
		{
			Snd_Play3D (self, "PICKLOCK_FAILURE");
			Print(PRINT_PICKLOCK_FAILURE);
		};
	};
};
