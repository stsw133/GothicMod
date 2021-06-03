//******************************************************************************************
//	B_RemoveQuarhodron
//******************************************************************************************

var int B_RemoveQuarhodron_OneTime;
var int B_RemoveRhademes_OneTime;

//******************************************************************************************
func int B_RemoveGhost()
{
	if (Ghost_SCKnowsHow2GetInAdanosTempel)
	{
		if (SC_SummonedAncientGhost)
		&& (!B_RemoveQuarhodron_OneTime)
		{
			AI_Teleport (NONE_ADDON_111_Quarhodron, "TOT");
			B_RemoveNpc(NONE_ADDON_111_Quarhodron);
			Snd_Play("MFX_GhostVoice");
			Snd_Play("MFX_Firestorm_Cast");
			B_RemoveQuarhodron_OneTime = true;
			GhostAttackWarn = 0;
		};
	};

	if (ADW_ADANOSTEMPEL_STONEGRD_TRIGG_FUNC_01_OneTime)
	{
		if (SC_TookRhademesTrap)
		&& (!B_RemoveRhademes_OneTime)
		{
			AI_Teleport (NONE_ADDON_112_Rhademes, "TOT");
			B_RemoveNpc(NONE_ADDON_112_Rhademes);
			if (SC_TalkedToRhademAfter)
			{
				Snd_Play("MFX_GhostVoice");
				Snd_Play("MFX_Firestorm_Cast");
			};
			B_RemoveRhademes_OneTime = true;
			GhostAttackWarn = 0;
		};
	};
};
