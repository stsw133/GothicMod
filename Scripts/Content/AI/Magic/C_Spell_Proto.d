///******************************************************************************************
///	C_Spell_Proto
///******************************************************************************************
prototype C_Spell_Proto (C_Spell)
{
	time_per_mana					=	0;
	damage_per_level				=	0;
	damageType						=	DAM_MAGIC;
	spellType						=	SPELL_BAD;
	canTurnDuringInvest				=	true;
	canChangeTargetDuringInvest		=	true;
	isMultiEffect					=	false;
	targetCollectAlgo				=	TARGET_COLLECT_FOCUS_FALLBACK_NONE;
	targetCollectType				=	TARGET_TYPE_NPCS;
	targetCollectRange				=	10000;
	targetCollectAzi				=	60;
	targetCollectElev				=	60;
};
