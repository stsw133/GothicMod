///******************************************************************************************
/// SPL_Transform
///******************************************************************************************

const int SPL_Cost_Transform			=	0;

///******************************************************************************************
instance Spell_Transform (C_Spell_Proto)
{
	spelltype 							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
	targetCollectRange					=	0;
	targetCollectAzi					=	0;
	targetCollectElev					=	0;
};

func int Spell_Logic_Transform (var int manaInvested)
{
	var oCNpc o_self; o_self = Hlp_GetNpc(self);
	var int magBook; magBook = o_self.mag_Book;
	
	if (magBook > 0)
	{
		var int itHlp; itHlp = QS_GetSpellItem(magBook);
		var C_Item it; it = MEM_PtrToInst(itHlp);
		
		if		(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_DragonSnapper))	{	Npc_SetActiveSpellInfo(self, DragonSnapper);	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_FireWaran))		{	Npc_SetActiveSpellInfo(self, FireWaran);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_GiantBug))			{	Npc_SetActiveSpellInfo(self, Giant_Bug);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_GiantRat))			{	Npc_SetActiveSpellInfo(self, Giant_Rat);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Lurker))			{	Npc_SetActiveSpellInfo(self, Lurker);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Scavenger))		{	Npc_SetActiveSpellInfo(self, Scavenger);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Shadowbeast))		{	Npc_SetActiveSpellInfo(self, Shadowbeast);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Sheep))			{	Npc_SetActiveSpellInfo(self, Sheep);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Snapper))			{	Npc_SetActiveSpellInfo(self, Snapper);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Waran))			{	Npc_SetActiveSpellInfo(self, Waran);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Warg))				{	Npc_SetActiveSpellInfo(self, Warg);				}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItTr_Wolf))				{	Npc_SetActiveSpellInfo(self, Wolf);				}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfAlligator))		{	Npc_SetActiveSpellInfo(self, Alligator);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfBiter))			{	Npc_SetActiveSpellInfo(self, OrcBiter);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfBloodfly))		{	Npc_SetActiveSpellInfo(self, Bloodfly);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfBloodhound))	{	Npc_SetActiveSpellInfo(self, Bloodhound);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfDemon))			{	Npc_SetActiveSpellInfo(self, Demon);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfDragonSnapper))	{	Npc_SetActiveSpellInfo(self, DragonSnapper);	}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfFireWaran))		{	Npc_SetActiveSpellInfo(self, FireWaran);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfGiantBug))		{	Npc_SetActiveSpellInfo(self, Giant_Bug);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfGiantRat))		{	Npc_SetActiveSpellInfo(self, Giant_Rat);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfGiantSpider))	{	Npc_SetActiveSpellInfo(self, Giant_Spider);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfGoat))			{	Npc_SetActiveSpellInfo(self, Goat);				}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfGoblin))		{	Npc_SetActiveSpellInfo(self, Gobbo);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfGorilla))		{	Npc_SetActiveSpellInfo(self, Gorilla);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfHare))			{	Npc_SetActiveSpellInfo(self, Hare);				}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfHarpy))			{	Npc_SetActiveSpellInfo(self, Harpie);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfKeiler))		{	Npc_SetActiveSpellInfo(self, Keiler);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfLurker))		{	Npc_SetActiveSpellInfo(self, Lurker);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfMinecrawler))	{	Npc_SetActiveSpellInfo(self, Minecrawler);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfMolerat))		{	Npc_SetActiveSpellInfo(self, Molerat);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfScavenger))		{	Npc_SetActiveSpellInfo(self, Scavenger);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfShadowbeast))	{	Npc_SetActiveSpellInfo(self, Shadowbeast);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfSheep))			{	Npc_SetActiveSpellInfo(self, Sheep);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfSnapper))		{	Npc_SetActiveSpellInfo(self, Snapper);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfSpint))			{	Npc_SetActiveSpellInfo(self, Spint);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfSwampshark))	{	Npc_SetActiveSpellInfo(self, Swampshark);		}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfTiger))			{	Npc_SetActiveSpellInfo(self, Tiger);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfTroll))			{	Npc_SetActiveSpellInfo(self, Troll);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfWaran))			{	Npc_SetActiveSpellInfo(self, Waran);			}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfWarg))			{	Npc_SetActiveSpellInfo(self, Warg);				}
		else if	(Hlp_GetInstanceID(it) == Hlp_GetInstanceID(ItSc_TrfWolf))			{	Npc_SetActiveSpellInfo(self, Wolf);				}
		else																		{	Npc_SetActiveSpellInfo(self, Meatbug);			};
		
		PotionTimed_ADD (ATR_HITPOINTS_MAX, default, default);
		PotionTimed_ADD (ATR_MANA_MAX, default, default);
		PotionTimed_ADD (ATR_STRENGTH, default, default);
		PotionTimed_ADD (ATR_DEXTERITY, default, default);
		PotionTimed_ADD (ATR_POWER, default, default);
		PotionTimed_ADD (PROT_INDEX_MAX, default, default);
		
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Transform()
{
	B_SpellCast (self, default, SPL_Cost_Transform);
};
