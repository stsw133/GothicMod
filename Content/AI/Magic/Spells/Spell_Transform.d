///******************************************************************************************
///	SPL_Transform
///******************************************************************************************

const int SPL_Cost_Transform			=	50;

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
	if ((Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Transform/SPL_Cost_Scroll))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Transform))
	&& (self.aivar[AIV_TrfStone] > 0)
	{
		//Npc_SetActiveSpellInfo (self, other);

		if		(self.aivar[AIV_TrfStone] == ItTr_GiantBug)		{	Npc_SetActiveSpellInfo(self, Giant_Bug);		}
		else if (self.aivar[AIV_TrfStone] == ItTr_GiantRat)		{	Npc_SetActiveSpellInfo(self, Giant_Rat);		}
		else if (self.aivar[AIV_TrfStone] == ItTr_Lurker)		{	Npc_SetActiveSpellInfo(self, Lurker);			}
		else if (self.aivar[AIV_TrfStone] == ItTr_Shadowbeast)	{	Npc_SetActiveSpellInfo(self, Shadowbeast);		}
		else if (self.aivar[AIV_TrfStone] == ItTr_Sheep)		{	Npc_SetActiveSpellInfo(self, Sheep);			}
		else if (self.aivar[AIV_TrfStone] == ItTr_Snapper)		{	Npc_SetActiveSpellInfo(self, Snapper);			}
		else if (self.aivar[AIV_TrfStone] == ItTr_Waran)		{	Npc_SetActiveSpellInfo(self, Waran);			}
		else if (self.aivar[AIV_TrfStone] == ItTr_Wolf)			{	Npc_SetActiveSpellInfo(self, Wolf);				};
		
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Transform()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Transform/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Transform;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
