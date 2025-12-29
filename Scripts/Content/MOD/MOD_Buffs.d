///******************************************************************************************
/// MOD_Buffs
///******************************************************************************************

/// ------ Fire ------
func void Buff_Fire_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_PlayEffect ("VOB_MAGICBURN", slf, slf, 0, 0, 0, false);
};
func void Buff_Fire_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	B_MagicHurtNpc (hero, slf, NPC_BURN_DAMAGE_POINTS_PER_INTERVALL);
};
instance Buff_Fire (lCBuff)
{
	name								=	"Podpalenie";
	bufftype							=	BUFF_BAD;
	durationMS							=	4000;
	tickMS								=	NPC_BURN_TICKS_PER_DAMAGE_POINT;
	onApply								=	SAVE_GetFuncID(Buff_Fire_OnApply);
	onTick								=	SAVE_GetFuncID(Buff_Fire_OnTick);
	buffTex								=	"BUFF_FIRE.tga";
};

/// ------ Poison ------
func void Buff_Poison_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_PlayEffect ("VOB_MAGICBURN", slf, slf, 0, 0, 0, false);
};
func void Buff_Poison_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	B_MagicHurtNpc (hero, slf, slf.aivar[AIV_Poison]);
};
instance Buff_Poison (lCBuff)
{
	name								=	"Zatrucie";
	bufftype							=	BUFF_BAD;
	durationMS							=	10000;
	tickMS								=	1000;
	onApply								=	SAVE_GetFuncID(Buff_Poison_OnApply);
	onTick								=	SAVE_GetFuncID(Buff_Poison_OnTick);
	buffTex								=	"BUFF_POISON.tga";
};
