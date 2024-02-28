///******************************************************************************************
///	SPL_Telekinesis
///******************************************************************************************

const int SPL_Cost_Telekinesis			=	10;

///******************************************************************************************
instance Spell_Telekinesis (C_Spell_Proto)
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
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_Telekinesis/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_Telekinesis)
	{
		return SPL_SENDCAST;
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_Telekinesis()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Telekinesis/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_Telekinesis;
	};
	
	o_item = MEM_PtrToInst(o_hero.focus_vob);
	
	if (Hlp_IsValidItem(o_item))
	{
		Snd_Play("MFX_Telekinesis_StartInvest");
		Wld_PlayEffect ("spellFX_Telekinesis_KEY_CAST", o_item, o_item, 0, 0, 0, false);
		MOD_MoveItemIntoInventory (self, o_item);
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
