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
		if		(TrfStoneID == ID_DRAGONSNAPPER)	{	Npc_SetActiveSpellInfo(self, DragonSnapper);	}
		else if	(TrfStoneID == ID_FIREWARAN)		{	Npc_SetActiveSpellInfo(self, FireWaran);		}
		else if	(TrfStoneID == ID_GIANT_BUG)		{	Npc_SetActiveSpellInfo(self, Giant_Bug);		}
		else if (TrfStoneID == ID_GIANT_RAT)		{	Npc_SetActiveSpellInfo(self, Giant_Rat);		}
		else if (TrfStoneID == ID_LURKER)			{	Npc_SetActiveSpellInfo(self, Lurker);			}
		else if (TrfStoneID == ID_SCAVENGER)		{	Npc_SetActiveSpellInfo(self, Scavenger);		}
		else if (TrfStoneID == ID_SHADOWBEAST)		{	Npc_SetActiveSpellInfo(self, Shadowbeast);		}
		else if (TrfStoneID == ID_SHEEP)			{	Npc_SetActiveSpellInfo(self, Sheep);			}
		else if (TrfStoneID == ID_SNAPPER)			{	Npc_SetActiveSpellInfo(self, Snapper);			}
		else if (TrfStoneID == ID_WARAN)			{	Npc_SetActiveSpellInfo(self, Waran);			}
		else if (TrfStoneID == ID_WARG)				{	Npc_SetActiveSpellInfo(self, Warg);				}
		else if (TrfStoneID == ID_WOLF)				{	Npc_SetActiveSpellInfo(self, Wolf);				}
		else										{	Npc_SetActiveSpellInfo(self, Meatbug);			};
		TrfStoneID = 0;
		
		return SPL_SENDCAST;
	};
	return SPL_SENDSTOP;
};

func void Spell_Cast_Transform()
{
	self.aivar[AIV_SelectSpell] += 1;
};
