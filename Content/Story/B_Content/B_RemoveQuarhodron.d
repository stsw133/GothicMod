//******************************************************************************************
//	B_RemoveQuarhodron
//******************************************************************************************

var int B_RemoveQuarhodron_OneTime;
var int B_RemoveRhademes_OneTime;

//******************************************************************************************
func int B_RemoveGhost()
{
	if (Ghost_SCKnowsHow2GetInAdanosTempel == true)
	{
		if (SC_SummonedAncientGhost == true)
		&& (B_RemoveQuarhodron_OneTime == false)
		{
			AI_Teleport (NONE_ADDON_111_Quarhodron, "TOT");
			B_RemoveNpc(NONE_ADDON_111_Quarhodron);
			Snd_Play("MFX_GhostVoice");
			Snd_Play("MFX_Firestorm_Cast");
			B_RemoveQuarhodron_OneTime = true;
			GhostAttackWarn = 0;
		};
	};

	if (ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_01_OneTime == true)
	{
		if (SC_TookRhademesTrap == true)
		&& (B_RemoveRhademes_OneTime == false)
		{
			AI_Teleport (NONE_ADDON_112_Rhademes, "TOT");
			B_RemoveNpc(NONE_ADDON_112_Rhademes);
			if (SC_TalkedToRhademAfter == true)
			{
				Snd_Play("MFX_GhostVoice");
				Snd_Play("MFX_Firestorm_Cast");
			};
			B_RemoveRhademes_OneTime = true;
			GhostAttackWarn = 0;
		};
	};
};
