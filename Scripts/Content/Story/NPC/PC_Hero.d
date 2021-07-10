///******************************************************************************************
instance PC_Hero (Npc_Default)
{
	/// ------ General ------
	name								=	"Ja";
	guild								=	GIL_NONE;
	id									=	0;
	voice								=	15;
	npctype								=	NPCTYPE_MAIN;
	bodyStateInterruptableOverride		=	true;
	
	MOD_HeroReset(self);
	
	/// ------ Visuals ------
	B_SetHeroVisual (self, selectedHero);
	if (!MovieMode)
	{
		Mdl_ApplyOverlayMds (self, "Humans_Player.mds");
	};
};
