///******************************************************************************************
///	SPL_Teleport
///******************************************************************************************

const int SPL_Cost_Teleport2				=	10;

///******************************************************************************************
func void B_PrintTeleportTooFarAway2 (var int Level)
{
	if (Level != CurrentLevel)
	{
		PrintScreen	("Za daleko" ,-1, YPOS_LevelUp, FONT_ScreenSmall, TIME_ShortPrint);
	};
};

///******************************************************************************************
instance Spell_Teleport2 (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_CASTER;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_PalTeleportSecret (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_PalTeleportSecret()
{
	B_PrintTeleportTooFarAway2(NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "NW_PAL_SECRETCHAMBER");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportSeaport (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportSeaport()
{
	B_PrintTeleportTooFarAway2(NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "HAFEN");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportMonastery (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportMonastery()
{
	B_PrintTeleportTooFarAway2(NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "KLOSTER");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportFarm (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportFarm()
{
	B_PrintTeleportTooFarAway2(NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "BIGFARM");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportXardas (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportXardas()
{
	B_PrintTeleportTooFarAway2(NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "XARDAS");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportPassNW (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportPassNW()
{
	B_PrintTeleportTooFarAway2(NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "LEVELCHANGE");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportPassOW (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportPassOW()
{
	B_PrintTeleportTooFarAway2(OLDWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "SPAWN_MOLERAT02_SPAWN01");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportOC (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportOC()
{
	B_PrintTeleportTooFarAway2(OLDWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "OC_MAGE_CENTER");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportOWDemonTower (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportOWDemonTower()
{
	B_PrintTeleportTooFarAway2(OLDWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "DT_E3_03");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func int Spell_Logic_TeleportTaverne (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Teleport2)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_NEXTLEVEL;
	};
};

func void Spell_Cast_TeleportTaverne()
{
	B_PrintTeleportTooFarAway2(NEWWORLD_ZEN);
	
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Teleport2;
	};
	
	AI_Teleport	(self, "NW_TAVERNE_04");
	AI_PlayAni	(self, "T_HEASHOOT_2_STAND");
};

func void Spell_Cast_Teleport2()
{
	if (Npc_GetActiveSpell(self) == SPL_PalTeleportSecret	)	{	Spell_Cast_PalTeleportSecret	(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportSeaport		)	{	Spell_Cast_TeleportSeaport		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportMonastery	)	{	Spell_Cast_TeleportMonastery	(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportFarm		)	{	Spell_Cast_TeleportFarm			(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportXardas		)	{	Spell_Cast_TeleportXardas		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportPassNW		)	{	Spell_Cast_TeleportPassNW		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportPassOW		)	{	Spell_Cast_TeleportPassOW		(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportOC			)	{	Spell_Cast_TeleportOC			(); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportOWDemonTower)	{	Spell_Cast_TeleportOWDemonTower (); };
	if (Npc_GetActiveSpell(self) == SPL_TeleportTaverne		)	{	Spell_Cast_TeleportTaverne		(); };
//	if (Npc_GetActiveSpell(self) == SPL_Teleport_3			)	{	Spell_Cast_XXX					(); };
};
