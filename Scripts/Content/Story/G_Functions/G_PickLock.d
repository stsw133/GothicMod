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
			Print("Zamek otwarty.");
		}
		else
		{
			Snd_Play3D (self, "PICKLOCK_SUCCESS");
			Print("Brzmi nieźle.");
		};
	}
	else
	{
		if (bBrokenOpen)
		{
			Snd_Play3D (self, "PICKLOCK_BROKEN");
			Print("Wytrych się złamał.");
			
			if (Hlp_Random(4) == 0)
			{
				Npc_SendPassivePerc (hero, PERC_ASSESSQUIETSOUND, hero, hero);
			};
		}
		else
		{
			Snd_Play3D (self, "PICKLOCK_FAILURE");
			Print("Cholera... Spróbuj ponownie.");
		};
	};
};
