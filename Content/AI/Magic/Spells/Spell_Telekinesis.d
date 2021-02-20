///******************************************************************************************
///	SPL_Telekinesis
///******************************************************************************************

const int SPL_Cost_Telekinesis			=	10;

///******************************************************************************************
INSTANCE Spell_Telekinesis (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectType					=	TARGET_TYPE_ITEMS;
	canTurnDuringInvest					=	false;
	targetCollectRange					=	1500;
	targetCollectAzi					=	30;
	targetCollectElev					=	30;
};

func int Spell_Logic_Telekinesis (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Telekinesis/5))
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Telekinesis)
	{
		return SPL_SENDCAST;
	}
	else
	{
		return SPL_SENDSTOP;
	};
};

func void Spell_Cast_Telekinesis()
{
	if (Npc_GetActiveSpellIsScroll(self) && (self.attribute[ATR_MANA] >= SPL_Cost_Telekinesis/5))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Telekinesis/5;
	}
	else if (self.attribute[ATR_MANA] >= SPL_Cost_Telekinesis)
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Telekinesis;
	};
	self.aivar[AIV_SelectSpell] += 1;
	
	
	
	o_item = MEM_PtrToInst(o_hero.focus_vob);
	
	if (Hlp_IsValidItem(o_item))
	&& (o_item.flags != ITEM_NFOCUS)
	{
		Snd_Play("MFX_Telekinesis_StartInvest");
		Wld_PlayEffect ("spellFX_telekinesis_KEY_CAST", o_item, o_item, 0, 0, 0, false);
		o_item.flags = ITEM_NFOCUS;
		Wld_RemoveItem(o_item);
		CreateInvItems (hero, Hlp_GetInstanceID(o_item), o_item.amount);
		ITEMS_CHECK(o_item);
	};
};
