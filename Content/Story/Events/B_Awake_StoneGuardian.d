//B_AWAKE_STONEGUARDIAN

func VOID B_AWAKE_STONEGUARDIAN (var C_NPC slf)
{	
	if (slf.aivar[AIV_EnemyOverride] == true)
	{	
		Wld_PlayEffect("spellFX_INCOVATION_WHITE",  slf, slf, 0, 0, 0, false );
		Wld_PlayEffect("spellFX_LIGHTSTAR_RingRitual",  slf, slf, 0, 0, 0, false );
		slf.aivar[AIV_EnemyOverride] = false;
	};
};   
