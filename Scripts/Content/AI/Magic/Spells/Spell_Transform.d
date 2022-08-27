///******************************************************************************************
///	SPL_Transform
///******************************************************************************************

const int SPL_Cost_Transform			=	0;	//50

///******************************************************************************************
instance Spell_Transform (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	canTurnDuringInvest					=	false;
};

func int Spell_Logic_Transform (var int manaInvested)
{
	if (TrfStoneID > 0)
	{
		if		(TrfStoneID == ID_ALLIGATOR)		{	Npc_SetActiveSpellInfo(self, Alligator);		}
		else if	(TrfStoneID == ID_BITER)			{	Npc_SetActiveSpellInfo(self, OrcBiter);			}
		else if	(TrfStoneID == ID_BLOODFLY)			{	Npc_SetActiveSpellInfo(self, Bloodfly);			}
		else if	(TrfStoneID == ID_BLOODHOUND)		{	Npc_SetActiveSpellInfo(self, Bloodhound);		}
		else if	(TrfStoneID == ID_DEMON)			{	Npc_SetActiveSpellInfo(self, Demon);			}
		else if	(TrfStoneID == ID_DRAGONSNAPPER)	{	Npc_SetActiveSpellInfo(self, DragonSnapper);	}
		else if	(TrfStoneID == ID_FIREWARAN)		{	Npc_SetActiveSpellInfo(self, FireWaran);		}
		else if	(TrfStoneID == ID_GIANT_BUG)		{	Npc_SetActiveSpellInfo(self, Giant_Bug);		}
		else if	(TrfStoneID == ID_GIANT_RAT)		{	Npc_SetActiveSpellInfo(self, Giant_Rat);		}
		else if	(TrfStoneID == ID_GIANT_SPIDER)		{	Npc_SetActiveSpellInfo(self, Giant_Spider);		}
		else if	(TrfStoneID == ID_GOAT)				{	Npc_SetActiveSpellInfo(self, Goat);				}
		else if	(TrfStoneID == ID_GOBBO)			{	Npc_SetActiveSpellInfo(self, Gobbo);			}
		else if	(TrfStoneID == ID_GORILLA)			{	Npc_SetActiveSpellInfo(self, Gorilla);			}
		else if	(TrfStoneID == ID_HARE)				{	Npc_SetActiveSpellInfo(self, Hare);				}
		else if	(TrfStoneID == ID_HARPY)			{	Npc_SetActiveSpellInfo(self, Harpie);			}
		else if	(TrfStoneID == ID_KEILER)			{	Npc_SetActiveSpellInfo(self, Keiler);			}
		else if	(TrfStoneID == ID_LURKER)			{	Npc_SetActiveSpellInfo(self, Lurker);			}
		else if	(TrfStoneID == ID_MINECRAWLER)		{	Npc_SetActiveSpellInfo(self, Minecrawler);		}
		else if	(TrfStoneID == ID_MOLERAT)			{	Npc_SetActiveSpellInfo(self, Molerat);			}
		else if	(TrfStoneID == ID_SCAVENGER)		{	Npc_SetActiveSpellInfo(self, Scavenger);		}
		else if	(TrfStoneID == ID_SHADOWBEAST)		{	Npc_SetActiveSpellInfo(self, Shadowbeast);		}
		else if	(TrfStoneID == ID_SHEEP)			{	Npc_SetActiveSpellInfo(self, Sheep);			}
		else if	(TrfStoneID == ID_SNAPPER)			{	Npc_SetActiveSpellInfo(self, Snapper);			}
		else if	(TrfStoneID == ID_SPINT)			{	Npc_SetActiveSpellInfo(self, Spint);			}
		else if	(TrfStoneID == ID_SWAMPSHARK)		{	Npc_SetActiveSpellInfo(self, Swampshark);		}
		else if	(TrfStoneID == ID_TIGER)			{	Npc_SetActiveSpellInfo(self, Tiger);			}
		else if	(TrfStoneID == ID_TROLL)			{	Npc_SetActiveSpellInfo(self, Troll);			}
		else if	(TrfStoneID == ID_WARAN)			{	Npc_SetActiveSpellInfo(self, Waran);			}
		else if	(TrfStoneID == ID_WARG)				{	Npc_SetActiveSpellInfo(self, Warg);				}
		else if	(TrfStoneID == ID_WOLF)				{	Npc_SetActiveSpellInfo(self, Wolf);				}
		else										{	Npc_SetActiveSpellInfo(self, Meatbug);			};
		TrfStoneID = 0;
		
		if (hpMaxPotionTime > 0)
		{
			hpMaxPotionTime = 1;
		};
		if (mpMaxPotionTime > 0)
		{
			mpMaxPotionTime = 1;
		};
		if (strPotionTime > 0)
		{
			strPotionTime = 1;
		};
		if (dexPotionTime > 0)
		{
			dexPotionTime = 1;
		};
		if (powerPotionTime > 0)
		{
			powerPotionTime = 1;
		};
		Potions_Process();
		
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Transform()
{
	self.aivar[AIV_SelectSpell] += 1;
};
