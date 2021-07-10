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
	if (TrfMonster > 0)
	{
		if		(TrfMonster == ID_DRAGONSNAPPER)	{	Npc_SetActiveSpellInfo(self, DragonSnapper);	}
		else if	(TrfMonster == ID_FIREWARAN)		{	Npc_SetActiveSpellInfo(self, FireWaran);		}
		else if	(TrfMonster == ID_GIANT_BUG)		{	Npc_SetActiveSpellInfo(self, Giant_Bug);		}
		else if (TrfMonster == ID_GIANT_RAT)		{	Npc_SetActiveSpellInfo(self, Giant_Rat);		}
		else if (TrfMonster == ID_LURKER)			{	Npc_SetActiveSpellInfo(self, Lurker);			}
		else if (TrfMonster == ID_SCAVENGER)		{	Npc_SetActiveSpellInfo(self, Scavenger);		}
		else if (TrfMonster == ID_SHADOWBEAST)		{	Npc_SetActiveSpellInfo(self, Shadowbeast);		}
		else if (TrfMonster == ID_SHEEP)			{	Npc_SetActiveSpellInfo(self, Sheep);			}
		else if (TrfMonster == ID_SNAPPER)			{	Npc_SetActiveSpellInfo(self, Snapper);			}
		else if (TrfMonster == ID_WARAN)			{	Npc_SetActiveSpellInfo(self, Waran);			}
		else if (TrfMonster == ID_WARG)				{	Npc_SetActiveSpellInfo(self, Warg);				}
		else if (TrfMonster == ID_WOLF)				{	Npc_SetActiveSpellInfo(self, Wolf);				}
		else										{	Npc_SetActiveSpellInfo(self, Meatbug);			};
		TrfMonster = 0;
		
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Transform()
{
	self.aivar[AIV_SelectSpell] += 1;
};
