///******************************************************************************************
prototype ItemPR_Potion (C_Item)
{
	mainflag					=	ITEM_KAT_POTIONS;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	
	TEXT[5]						=	NAME_Value;
	INV_ROTX					=	10;
	INV_ZBIAS					=	150;
};

prototype ItemPR_PotionTrf (C_Item)
{
	mainflag					=	ITEM_KAT_RUNE;	/// quickslots don't work with ITEM_KAT_POTIONS
	flags						=	ITEM_MULTI;
	
	material					=	MAT_GLAS;
	visual						=	"ItPo_Transform.3ds";
	spell						=	SPL_Transform;
	
	TEXT[5]						=	NAME_Value;
	INV_ROTX					=	10;
	INV_ZBIAS					=	150;
};

///******************************************************************************************
func void Npc_SetPotionRegen (var C_Npc slf, var int barOrder, var int pointsPerSec, var int time)
{
	if (!Npc_IsPlayer(slf))
	{
		return;
	};
	
	if (barOrder == BarOrderHP)
	{
		Wld_StopEffect ("SPELLFX_HEALTHPOTION_NPC");
		Wld_PlayEffect ("SPELLFX_HEALTHPOTION_NPC", hero, hero, 0, 0, 0, false);
	}
	else if (barOrder == BarOrderMP)
	{
		Wld_StopEffect ("SPELLFX_MANAPOTION_NPC");
		Wld_PlayEffect ("SPELLFX_MANAPOTION_NPC", hero, hero, 0, 0, 0, false);
	}
	else if (barOrder == BarOrderSP)
	{
		Wld_StopEffect ("SPELLFX_YELLOWPOTION_NPC");
		Wld_PlayEffect ("SPELLFX_YELLOWPOTION_NPC", hero, hero, 0, 0, 0, false);
	};
	
	MEM_WriteStatArr(regenPotionPointsPerSec, barOrder, pointsPerSec);
	MEM_WriteStatArr(regenPotionTime, barOrder, time);
};
/*
///******************************************************************************************
func void Buff_PotionRegen (var C_Npc slf, var int attribute, var int pointsPerSec, var int time)
{
	if (!Npc_IsPlayer(slf))
	{
		Npc_ChangeAttribute (slf, attribute, pointsPerSec*time);
		return;
	};
	
	if (attribute == ATR_HITPOINTS)
	{
		Buff_RemoveAll(slf, Buff_PotionRegenHP);
		
		regenPotionPointsPerSec[BarOrderHP] = pointsPerSec;
		regenPotionTime[BarOrderHP] = time;
		MOD_SetPoison(0);
		
		Buff_Apply(slf, Buff_PotionRegenHP);
	};
};
*/
///******************************************************************************************
/// Health (instant)
///******************************************************************************************
instance ItPo_Health_01 (ItemPR_Potion)
{
	name						=	"Esencja ¿ycia";
	value						=	50;
	
	visual						=	"ItPo_Health_01.3ds";
	on_state[0]					=	Use_ItPo_Health_01;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	25;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Health_01()
{
	if (Npc_IsPlayer(self)) { MOD_SetPoison(0); };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]*1/4);
};

instance ItPo_Health_02 (ItemPR_Potion)
{
	name						=	"Ekstrakt ¿ycia";
	value						=	75;
	
	visual						=	"ItPo_Health_02.3ds";
	on_state[0]					=	Use_ItPo_Health_02;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Health_02()
{
	if (Npc_IsPlayer(self)) { MOD_SetPoison(0); };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]*2/4);
};

instance ItPo_Health_03 (ItemPR_Potion)
{
	name						=	"Eliksir ¿ycia";
	value						=	100;
	
	visual						=	"ItPo_Health_03.3ds";
	on_state[0]					=	Use_ItPo_Health_03;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	75;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Health_03()
{
	if (Npc_IsPlayer(self)) { MOD_SetPoison(0); };
	Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]*3/4);
};

///******************************************************************************************
/// Health (timed)
///******************************************************************************************
/*
func void Buff_PotionRegenHP_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_PlayEffect ("SPELLFX_HEALTHPOTION_NPC", hero, hero, 0, 0, 0, false);
};
func void Buff_PotionRegenHP_OnTick (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Npc_ChangeAttribute (hero, ATR_HITPOINTS, regenPotionPointsPerSec[BarOrderHP]);
	regenPotionTime[BarOrderHP] -= 1;
};
func void Buff_PotionRegenHP_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	Wld_StopEffect ("SPELLFX_HEALTHPOTION_NPC");
};
instance Buff_PotionRegenHP (lCBuff)
{
	name						=	"Mikstura lecznicza";
	bufftype					=	BUFF_GOOD;
	durationMS					=	60000;
	tickMS						=	1000;
	onApply						=	SAVE_GetFuncID(Buff_PotionRegenHP_OnApply);
	onTick						=	SAVE_GetFuncID(Buff_PotionRegenHP_OnTick);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionRegenHP_OnRemoved);
};
*/
///******************************************************************************************
instance ItPo_Health_Addon_04 (ItemPR_Potion)
{
	name						=	"S³aba mikstura lecznicza";
	value						=	100;
	
	visual						=	"ItPo_Health_Addon_01.3ds";
	on_state[0]					=	Use_ItPo_Health_Addon_04;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Health_Addon_04()
{
	//Buff_PotionRegen(hero, ATR_HITPOINTS, 3, 60);
	if (Npc_IsPlayer(self)) { MOD_SetPoison(0); };
	Npc_SetPotionRegen (self, BarOrderHP, 3, 60);
};

instance ItPo_Health_Addon_05 (ItemPR_Potion)
{
	name						=	"Œrednia mikstura lecznicza";
	value						=	125;
	
	visual						=	"ItPo_Health_Addon_02.3ds";
	on_state[0]					=	Use_ItPo_Health_Addon_05;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	4;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Health_Addon_05()
{
	//Buff_PotionRegen(hero, ATR_HITPOINTS, 4, 60);
	if (Npc_IsPlayer(self)) { MOD_SetPoison(0); };
	Npc_SetPotionRegen (self, BarOrderHP, 4, 60);
};

instance ItPo_Health_Addon_06 (ItemPR_Potion)
{
	name						=	"Silna mikstura lecznicza";
	value						=	150;
	
	visual						=	"ItPo_Health_Addon_03.3ds";
	on_state[0]					=	Use_ItPo_Health_Addon_06;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Health_Addon_06()
{
	//Buff_PotionRegen(hero, ATR_HITPOINTS, 5, 60);
	if (Npc_IsPlayer(self)) { MOD_SetPoison(0); };
	Npc_SetPotionRegen (self, BarOrderHP, 5, 60);
};

///******************************************************************************************
/// Mana (instant)
///******************************************************************************************
instance ItPo_Mana_01 (ItemPR_Potion)
{
	name						=	"Esencja many";
	value						=	50;
	
	visual						=	"ItPo_Mana_01.3ds";
	on_state[0]					=	Use_ItPo_Mana_01;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Mp;
	COUNT[1]					=	25;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Mana_01()
{
	Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]*1/4);
};

instance ItPo_Mana_02 (ItemPR_Potion)
{
	name						=	"Ekstrakt many";
	value						=	75;
	
	visual						=	"ItPo_Mana_02.3ds";
	on_state[0]					=	Use_ItPo_Mana_02;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Mp;
	COUNT[1]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Mana_02()
{
	Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]*2/4);
};

instance ItPo_Mana_03 (ItemPR_Potion)
{
	name						=	"Eliksir many";
	value						=	100;
	
	visual						=	"ItPo_Mana_03.3ds";
	on_state[0]					=	Use_ItPo_Mana_03;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Mp;
	COUNT[1]					=	75;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Mana_03()
{
	Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]*3/4);
};

///******************************************************************************************
/// Mana (timed)
///******************************************************************************************
instance ItPo_Mana_Addon_04 (ItemPR_Potion)
{
	name						=	"S³aba mikstura many";
	value						=	100;
	
	visual						=	"ItPo_Mana_Addon_01.3ds";
	on_state[0]					=	Use_ItPo_Mana_Addon_04;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_MpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Mana_Addon_04()
{
	Npc_SetPotionRegen (self, BarOrderMP, 3, 60);
};

instance ItPo_Mana_Addon_05 (ItemPR_Potion)
{
	name						=	"Œrednia mikstura many";
	value						=	125;
	
	visual						=	"ItPo_Mana_Addon_02.3ds";
	on_state[0]					=	Use_ItPo_Mana_Addon_05;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_MpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	4;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Mana_Addon_05()
{
	Npc_SetPotionRegen (self, BarOrderMP, 4, 60);
};

instance ItPo_Mana_Addon_06 (ItemPR_Potion)
{
	name						=	"Silna mikstura many";
	value						=	150;
	
	visual						=	"ItPo_Mana_Addon_03.3ds";
	on_state[0]					=	Use_ItPo_Mana_Addon_06;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_MpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Mana_Addon_06()
{
	Npc_SetPotionRegen (self, BarOrderMP, 5, 60);
};

///******************************************************************************************
/// Stamina (instant)
///******************************************************************************************
/*
instance ItPo_Stamina_01 (ItemPR_Potion)
{
	name						=	"Esencja energii";
	value						=	50;
	
	visual						=	"ItPo_Stamina_01.3ds";
	on_state[0]					=	Use_ItPo_Stamina_01;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	25;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Stamina_01()
{
	self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*1/4; Npc_StaminaRefresh(self);
};

instance ItPo_Stamina_02 (ItemPR_Potion)
{
	name						=	"Ekstrakt energii";
	value						=	75;
	
	visual						=	"ItPo_Stamina_02.3ds";
	on_state[0]					=	Use_ItPo_Stamina_02;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Stamina_02()
{
	self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*2/4; Npc_StaminaRefresh(self);
};

instance ItPo_Stamina_03 (ItemPR_Potion)
{
	name						=	"Eliksir energii";
	value						=	100;
	
	visual						=	"ItPo_Stamina_03.3ds";
	on_state[0]					=	Use_ItPo_Stamina_03;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sp;
	COUNT[1]					=	75;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Stamina_03()
{
	self.aivar[AIV_STAMINA] += self.aivar[AIV_STAMINA_MAX]*3/4; Npc_StaminaRefresh(self);
};
*/
///******************************************************************************************
/// Stamina (timed)
///******************************************************************************************
instance ItPo_Stamina_Addon_04 (ItemPR_Potion)
{
	name						=	"S³aba mikstura energii";
	value						=	100;
	
	visual						=	"ItPo_Stamina_Addon_01.3ds";
	on_state[0]					=	Use_ItPo_Stamina_Addon_04;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	6;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Stamina_Addon_04()
{
	if (Npc_IsPlayer(self))
	{
		Npc_SetPotionRegen (self, BarOrderSP, 6, 60);
	}
	else
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_FASTRUN.MDS", 60*1000);
	};
};

instance ItPo_Stamina_Addon_05 (ItemPR_Potion)
{
	name						=	"Œrednia mikstura energii";
	value						=	125;
	
	visual						=	"ItPo_Stamina_Addon_02.3ds";
	on_state[0]					=	Use_ItPo_Stamina_Addon_05;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	8;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Stamina_Addon_05()
{
	if (Npc_IsPlayer(self))
	{
		Npc_SetPotionRegen (self, BarOrderSP, 8, 60);
	}
	else
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_FASTRUN.MDS", 80*1000);
	};
};

instance ItPo_Stamina_Addon_06 (ItemPR_Potion)
{
	name						=	"Silna mikstura energii";
	value						=	150;
	
	visual						=	"ItPo_Stamina_Addon_03.3ds";
	on_state[0]					=	Use_ItPo_Stamina_Addon_06;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Stamina_Addon_06()
{
	if (Npc_IsPlayer(self))
	{
		Npc_SetPotionRegen (self, BarOrderSP, 10, 60);
	}
	else
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_FASTRUN.MDS", 100*1000);
	};
};

///******************************************************************************************
/// Blueplant (instant)
///******************************************************************************************
instance ItPo_Blueplant_01 (ItemPR_Potion)
{
	name						=	"Esencja ¿ycia i many";
	value						=	50;
	
	visual						=	"ItPo_Blueplant_01.3ds";
	on_state[0]					=	Use_ItPo_Blueplant_01;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Percent_Mp;
	COUNT[2]					=	20;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Blueplant_01()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]*1/5);
	Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]*1/5);
};

instance ItPo_Blueplant_02 (ItemPR_Potion)
{
	name						=	"Ekstrakt ¿ycia i many";
	value						=	75;
	
	visual						=	"ItPo_Blueplant_02.3ds";
	on_state[0]					=	Use_ItPo_Blueplant_02;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	40;
	TEXT[2]						=	NAME_Percent_Mp;
	COUNT[2]					=	40;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Blueplant_02()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]*2/5);
	Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]*2/5);
};

instance ItPo_Blueplant_03 (ItemPR_Potion)
{
	name						=	"Eliksir ¿ycia i many";
	value						=	100;
	
	visual						=	"ItPo_Blueplant_03.3ds";
	on_state[0]					=	Use_ItPo_Blueplant_03;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Hp;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_Percent_Mp;
	COUNT[2]					=	60;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Blueplant_03()
{
	Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]*3/5);
	Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]*3/5);
};

///******************************************************************************************
/// Blueplant (timed)
///******************************************************************************************
instance ItPo_Blueplant_Addon_04 (ItemPR_Potion)
{
	name						=	"S³aba mikstura ¿ycia i many";
	value						=	100;
	
	visual						=	"ItPo_Blueplant_Addon_01.3ds";
	on_state[0]					=	Use_ItPo_Blueplant_Addon_04;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	60;
	TEXT[3]						=	NAME_EffectPerSec;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Blueplant_Addon_04()
{
	Npc_SetPotionRegen (self, BarOrderHP, 2, 60);
	Npc_SetPotionRegen (self, BarOrderMP, 2, 60);
};

instance ItPo_Blueplant_Addon_05 (ItemPR_Potion)
{
	name						=	"Œrednia mikstura ¿ycia i many";
	value						=	125;
	
	visual						=	"ItPo_Blueplant_Addon_02.3ds";
	on_state[0]					=	Use_ItPo_Blueplant_Addon_05;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	60;
	TEXT[3]						=	NAME_EffectPerSec;
	COUNT[3]					=	3;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Blueplant_Addon_05()
{
	Npc_SetPotionRegen (self, BarOrderHP, 3, 60);
	Npc_SetPotionRegen (self, BarOrderMP, 3, 60);
};

instance ItPo_Blueplant_Addon_06 (ItemPR_Potion)
{
	name						=	"Silna mikstura ¿ycia i many";
	value						=	150;
	
	visual						=	"ItPo_Blueplant_Addon_03.3ds";
	on_state[0]					=	Use_ItPo_Blueplant_Addon_06;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpTime;
	COUNT[1]					=	60;
	TEXT[2]						=	NAME_Bonus_MpTime;
	COUNT[2]					=	60;
	TEXT[3]						=	NAME_EffectPerSec;
	COUNT[3]					=	4;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Blueplant_Addon_06()
{
	Npc_SetPotionRegen (self, BarOrderHP, 4, 60);
	Npc_SetPotionRegen (self, BarOrderMP, 4, 60);
};

///******************************************************************************************
/// Shield (instant)
///******************************************************************************************
instance ItPo_Shield_01 (ItemPR_Potion)
{
	name						=	"Esencja os³ony";
	value						=	100;
	
	visual						=	"ItPo_Shield_01.3ds";
	on_state[0]					=	Use_ItPo_Shield_01;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sh;
	COUNT[1]					=	30;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Shield_01()
{
	Npc_SetShieldPoints (self, self.attribute[ATR_HITPOINTS_MAX]*3/10);
};

instance ItPo_Shield_02 (ItemPR_Potion)
{
	name						=	"Ekstrakt os³ony";
	value						=	150;
	
	visual						=	"ItPo_Shield_02.3ds";
	on_state[0]					=	Use_ItPo_Shield_02;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sh;
	COUNT[1]					=	60;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Shield_02()
{
	Npc_SetShieldPoints (self, self.attribute[ATR_HITPOINTS_MAX]*3/5);
};

instance ItPo_Shield_03 (ItemPR_Potion)
{
	name						=	"Eliksir os³ony";
	value						=	200;
	
	visual						=	"ItPo_Shield_03.3ds";
	on_state[0]					=	Use_ItPo_Shield_03;
	
	description					=	name;
	TEXT[1]						=	NAME_Percent_Sh;
	COUNT[1]					=	90;
	COUNT[5]					=	value;
	INV_ZBIAS					=	120;
};
func void Use_ItPo_Shield_03()
{
	Npc_SetShieldPoints (self, self.attribute[ATR_HITPOINTS_MAX]*9/10);
};

///******************************************************************************************
/// Temp
///******************************************************************************************
func void Buff_PotionTempHP_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_HITPOINTS_MAX] += 20*HP_PER_LP;
};
func void Buff_PotionTempHP_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_HITPOINTS_MAX] -= 20*HP_PER_LP;
};
instance Buff_PotionTempHP (lCBuff)
{
	name						=	"Czasowy eliksir ¿ycia";
	bufftype					=	BUFF_GOOD;
	durationMS					=	300000;
	onApply						=	SAVE_GetFuncID(Buff_PotionTempHP_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionTempHP_OnRemoved);
	buffTex						=	"BUFF_HEALTH.tga";
};

instance ItPo_Temp_Health (ItemPR_Potion)
{
	name						=	"Czasowy eliksir ¿ycia";
	value						=	250;
	
	visual						=	"ItPo_Temp_Health.3ds";
	on_state[0]					=	Use_ItPo_Temp_Health;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpMax;
	COUNT[1]					=	20*HP_PER_LP;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Temp_Health()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionTempHP);
};

///******************************************************************************************
func void Buff_PotionTempMP_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_MANA_MAX] += 20*MP_PER_LP;
};
func void Buff_PotionTempMP_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_MANA_MAX] -= 20*MP_PER_LP;
};
instance Buff_PotionTempMP (lCBuff)
{
	name						=	"Czasowy eliksir many";
	bufftype					=	BUFF_GOOD;
	durationMS					=	300000;
	onApply						=	SAVE_GetFuncID(Buff_PotionTempMP_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionTempMP_OnRemoved);
	buffTex						=	"BUFF_MANA.tga";
};

instance ItPo_Temp_Mana (ItemPR_Potion)
{
	name						=	"Czasowy eliksir many";
	value						=	250;
	
	visual						=	"ItPo_Temp_Mana.3ds";
	on_state[0]					=	Use_ItPo_Temp_Mana;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_MpMax;
	COUNT[1]					=	20*MP_PER_LP;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Temp_Mana()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionTempMP);
};

///******************************************************************************************
func void Buff_PotionTempSP_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.aivar[AIV_STAMINA_MAX] += 20*SP_PER_LP;
};
func void Buff_PotionTempSP_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.aivar[AIV_STAMINA_MAX] -= 20*SP_PER_LP;
};
instance Buff_PotionTempSP (lCBuff)
{
	name						=	"Czasowy eliksir energii";
	bufftype					=	BUFF_GOOD;
	durationMS					=	300000;
	onApply						=	SAVE_GetFuncID(Buff_PotionTempSP_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionTempSP_OnRemoved);
	buffTex						=	"BUFF_STAMINA.tga";
};

instance ItPo_Temp_Stamina (ItemPR_Potion)
{
	name						=	"Czasowy eliksir energii";
	value						=	250;
	
	visual						=	"ItPo_Temp_Stamina.3ds";
	on_state[0]					=	Use_ItPo_Temp_Stamina;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpMax;
	COUNT[1]					=	20*SP_PER_LP;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Temp_Stamina()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionTempSP);
};

///******************************************************************************************
func void Buff_PotionTempStr_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_STRENGTH] += 20;
};
func void Buff_PotionTempStr_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_STRENGTH] -= 20;
};
instance Buff_PotionTempStr (lCBuff)
{
	name						=	"Czasowy eliksir si³y";
	bufftype					=	BUFF_GOOD;
	durationMS					=	300000;
	onApply						=	SAVE_GetFuncID(Buff_PotionTempStr_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionTempStr_OnRemoved);
	buffTex						=	"BUFF_STRENGTH.tga";
};

instance ItPo_Temp_Str (ItemPR_Potion)
{
	name						=	"Czasowy eliksir si³y";
	value						=	250;
	
	visual						=	"ItPo_Temp_Str.3ds";
	on_state[0]					=	Use_ItPo_Temp_Str;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Str;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Temp_Str()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionTempStr);
};

///******************************************************************************************
func void Buff_PotionTempDex_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_STRENGTH] += 20;
};
func void Buff_PotionTempDex_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_STRENGTH] -= 20;
};
instance Buff_PotionTempDex (lCBuff)
{
	name						=	"Czasowy eliksir zrêcznoœci";
	bufftype					=	BUFF_GOOD;
	durationMS					=	300000;
	onApply						=	SAVE_GetFuncID(Buff_PotionTempDex_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionTempDex_OnRemoved);
	buffTex						=	"BUFF_DEXTERITY.tga";
};

instance ItPo_Temp_Dex (ItemPR_Potion)
{
	name						=	"Czasowy eliksir zrêcznoœci";
	value						=	250;
	
	visual						=	"ItPo_Temp_Dex.3ds";
	on_state[0]					=	Use_ItPo_Temp_Dex;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Dex;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Temp_Dex()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionTempDex);
};

///******************************************************************************************
func void Buff_PotionTempPow_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_POWER] += 20;
};
func void Buff_PotionTempPow_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.attribute[ATR_POWER] -= 20;
};
instance Buff_PotionTempPow (lCBuff)
{
	name						=	"Czasowy eliksir mocy";
	bufftype					=	BUFF_GOOD;
	durationMS					=	300000;
	onApply						=	SAVE_GetFuncID(Buff_PotionTempPow_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionTempPow_OnRemoved);
	buffTex						=	"BUFF_POWER.tga";
};

instance ItPo_Temp_Pow (ItemPR_Potion)
{
	name						=	"Czasowy eliksir mocy";
	value						=	250;
	
	visual						=	"ItPo_Temp_Pow.3ds";
	on_state[0]					=	Use_ItPo_Temp_Pow;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Pow;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Temp_Pow()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionTempPow);
};

///******************************************************************************************
func void Buff_PotionTempProt_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.protection[PROT_BLUNT] += 20;
	slf.protection[PROT_EDGE] += 20;
	slf.protection[PROT_POINT] += 20;
	slf.protection[PROT_FIRE] += 20;
	slf.protection[PROT_MAGIC] += 20;
	slf.protection[PROT_BARRIER] += 20;
};
func void Buff_PotionTempProt_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var C_Npc slf; slf = _^(ptr);
	slf.protection[PROT_BLUNT] -= 20;
	slf.protection[PROT_EDGE] -= 20;
	slf.protection[PROT_POINT] -= 20;
	slf.protection[PROT_FIRE] -= 20;
	slf.protection[PROT_MAGIC] -= 20;
	slf.protection[PROT_BARRIER] -= 20;
};
instance Buff_PotionTempProt (lCBuff)
{
	name						=	"Czasowy eliksir ochrony";
	bufftype					=	BUFF_GOOD;
	durationMS					=	300000;
	onApply						=	SAVE_GetFuncID(Buff_PotionTempProt_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionTempProt_OnRemoved);
	buffTex						=	"BUFF_PROTECTION.tga";
};

instance ItPo_Temp_Prot (ItemPR_Potion)
{
	name						=	"Czasowy eliksir ochrony";
	value						=	250;
	
	visual						=	"ItPo_Temp_Prot.3ds";
	on_state[0]					=	Use_ItPo_Temp_Prot;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Prot;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Temp_Prot()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionTempProt);
};

///******************************************************************************************
/// Perm
///******************************************************************************************
instance ItPo_Perm_Health (ItemPR_Potion)
{
	name						=	"Trwa³y eliksir ¿ycia";
	value						=	1000;
	
	visual						=	"ItPo_Perm_Health.3ds";
	on_state[0]					=	Use_ItPo_Perm_Health;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_HpMax;
	COUNT[1]					=	2*HP_PER_LP;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Perm_Health()
{
	B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 2*HP_PER_LP);
};

instance ItPo_Perm_Mana (ItemPR_Potion)
{
	name						=	"Trwa³y eliksir many";
	value						=	1000;
	
	visual						=	"ItPo_Perm_Mana.3ds";
	on_state[0]					=	Use_ItPo_Perm_Mana;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_MpMax;
	COUNT[1]					=	2*MP_PER_LP;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Perm_Mana()
{
	B_RaiseAttribute (self, ATR_MANA_MAX, 2*MP_PER_LP);
};

instance ItPo_Perm_Stamina (ItemPR_Potion)
{
	name						=	"Trwa³y eliksir energii";
	value						=	1000;
	
	visual						=	"ItPo_Perm_Stamina.3ds";
	on_state[0]					=	Use_ItPo_Perm_Stamina;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_SpMax;
	COUNT[1]					=	2*SP_PER_LP;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Perm_Stamina()
{
	B_RaiseAttribute (self, AIV_STAMINA_MAX, 2*SP_PER_LP);
};

instance ItPo_Perm_Str (ItemPR_Potion)
{
	name						=	"Trwa³y eliksir si³y";
	value						=	1000;
	
	visual						=	"ItPo_Perm_Str.3ds";
	on_state[0]					=	Use_ItPo_Perm_Str;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Str;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Perm_Str()
{
	B_RaiseAttribute (self, ATR_STRENGTH, 2);
};

instance ItPo_Perm_Dex (ItemPR_Potion)
{
	name						=	"Trwa³y eliksir zrêcznoœci";
	value						=	1000;
	
	visual						=	"ItPo_Perm_Dex.3ds";
	on_state[0]					=	Use_ItPo_Perm_Dex;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Dex;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Perm_Dex()
{
	B_RaiseAttribute (self, ATR_DEXTERITY, 2);
};

instance ItPo_Perm_Pow (ItemPR_Potion)
{
	name						=	"Trwa³y eliksir mocy";
	value						=	1000;
	
	visual						=	"ItPo_Perm_Pow.3ds";
	on_state[0]					=	Use_ItPo_Perm_Pow;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Pow;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Perm_Pow()
{
	B_RaiseAttribute (self, ATR_POWER, 2);
};

instance ItPo_Perm_Prot (ItemPR_Potion)
{
	name						=	"Trwa³y eliksir ochrony";
	value						=	1000;
	
	visual						=	"ItPo_Perm_Prot.3ds";
	on_state[0]					=	Use_ItPo_Perm_Prot;
	
	description					=	name;
	TEXT[1]						=	NAME_Bonus_Prot;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Perm_Prot()
{
	B_RaiseAttribute (self, ATR_PROT, 2);
};

///******************************************************************************************
/// Utility
///******************************************************************************************
instance ItPo_Geist (ItemPR_Potion)
{
	name						=	"Mikstura jasnoœci umys³u";
	value						=	100;
	
	visual						=	"ItPo_Geist.3ds";
	on_state[0]					=	Use_ItPo_Geist;
	
	description					=	name;
	TEXT[1]						=	"Czas wydaje siê dwukrotnie";
	TEXT[2]						=	"spowolniony podczas dzia³ania.";
	TEXT[3]						=	NAME_Duration;
	COUNT[3]					=	30;
	TEXT[4]						=	NAME_Bonus_Xp;
	COUNT[4]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Geist()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, false);
		B_GivePlayerExp(50);
	};
};

///******************************************************************************************
instance ItPo_HealObsession (ItemPR_Potion)
{
	name						=	"Uleczenie z opêtania";
	value						=	100;
	
	visual						=	"ItPo_Exorcism.3ds";
	on_state[0]					=	Use_HealObsession;
	
	description					=	name;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_HealObsession()
{
	B_ClearScObsession(self);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_VIOLET", self, self, 0, 0, 0, false);
	Snd_Play("SFX_HealObsession");
};

///******************************************************************************************
instance ItPo_NightVision (ItemPR_Potion)
{
	name						=	"Mikstura widzenia w ciemnoœci";
	value						=	50;
	
	visual						=	"ItPo_Vision.3ds";
	on_state[0]					=	Use_ItPo_NightVision;
	
	description					=	name;
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	600;
	TEXT[2]						=	NAME_Bonus_Xp;
	COUNT[2]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_NightVision()
{
	Wld_PlayEffect ("SPELLFX_NIGHTVISION", self, self, 0, 0, 0, false);
	if (Npc_IsPlayer(self))
	{
		B_GivePlayerExp(50);
	};
};

///******************************************************************************************
instance ItPo_Perfume (ItemPR_Potion)
{
	name						=	"Perfumy";
	value						=	100;
	
	visual						=	"ItPo_Perfume.3ds";
	on_state[0]					=	Use_ItPo_Perfume;
	scemeName					=	"MAPSEALED";
	
	description					=	name;
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	600;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Perfume()
{
	if (Npc_IsPlayer(self))
	{
		ATS[ATS_PerfumeTime] = 600;
	};
};

///******************************************************************************************
instance ItPo_Poison (ItemPR_Potion)
{
	name						=	"Trucizna";
	value						=	100;
	
	visual						=	"ItPo_Poison.3ds";
	on_state[0]					=	Use_ItPo_Poison;
	
	description					=	name;
	TEXT[1]						=	"S³u¿y do zatruwania";
	TEXT[2]						=	"broni i strza³.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	130;
};
func void Use_ItPo_Poison()
{
	if (Npc_IsPlayer(self))
	{
		MOD_SetPoison(ATS[ATS_PoisonPoints] + HP_PER_LP);
	};
};

///******************************************************************************************
instance ItPo_Speed (ItemPR_Potion)
{
	name						=	"Mikstura szybkoœci";
	value						=	300;
	
	visual						=	"ItPo_Speed.3ds";
	on_state[0]					=	Use_ItPo_Speed;
	
	description					=	name;
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	300;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Speed()
{
	Mdl_ApplyOverlayMDSTimed (self, "HUMANS_SPRINT.MDS", 300 * 1000);
};

///******************************************************************************************
instance ItPo_Stealth (ItemPR_Potion)
{
	name						=	"Mikstura niewidzialnoœci";
	value						=	300;
	
	visual						=	"ItPo_Invisibility.3ds";
	on_state[0]					=	Use_ItPo_Stealth;
	
	description					=	name;
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	30;
	TEXT[2]						=	NAME_Bonus_Xp;
	COUNT[2]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	140;
};
func void Use_ItPo_Stealth()
{
	MOD_SetStealth (self, 30);
	if (Npc_IsPlayer(self))
	{
		B_GivePlayerExp(50);
	};
};

///******************************************************************************************
func void Buff_PotionUnderwater_OnApply (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var oCNpc slf; slf = _^(ptr);
	slf.divetime = addf(slf.divetime, mkf(600000));
	slf.divectr = addf(slf.divectr, mkf(600000));
};
func void Buff_PotionUnderwater_OnRemoved (var int bh)
{
	var int ptr; ptr = Buff_GetNpc(bh); if (!ptr) { return; }; var oCNpc slf; slf = _^(ptr);
	slf.divetime = subf(slf.divetime, mkf(600000));
	slf.divectr = slf.divetime;
};
instance Buff_PotionUnderwater (lCBuff)
{
	name						=	"Mikstura oddychania pod wod¹";
	bufftype					=	BUFF_GOOD;
	durationMS					=	600000;
	onApply						=	SAVE_GetFuncID(Buff_PotionUnderwater_OnApply);
	onRemoved					=	SAVE_GetFuncID(Buff_PotionUnderwater_OnRemoved);
	buffTex						=	"BUFF_UNDERWATER.tga";
};

instance ItPo_Underwater (ItemPR_Potion)
{
	name						=	"Mikstura oddychania pod wod¹";
	value						=	50;
	
	visual						=	"ItPo_Underwater.3ds";
	on_state[0]					=	Use_ItPo_Underwater;
	
	description					=	name;
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	600;
	TEXT[2]						=	NAME_Bonus_Xp;
	COUNT[2]					=	50;
	COUNT[5]					=	value;
	INV_ZBIAS					=	160;
};
func void Use_ItPo_Underwater()
{
	if (Npc_IsPlayer(self)) { B_GivePlayerExp(50); };
	Buff_ApplyOrRefresh (self, Buff_PotionUnderwater);
};

///******************************************************************************************
/// Transform
///******************************************************************************************
instance ItSc_TrfAlligator (ItemPR_PotionTrf)		{	name = "W aligatora";			description = name;	value = 200;	COUNT[5] = value;	};
instance ItSc_TrfBiter (ItemPR_PotionTrf)			{	name = "W k¹sacza";				description = name;	value = 150;	COUNT[5] = value;	};
instance ItSc_TrfBloodfly (ItemPR_PotionTrf)		{	name = "W krwiopijcê";			description = name;	value = 125;	COUNT[5] = value;	};
instance ItSc_TrfBloodhound (ItemPR_PotionTrf)		{	name = "W krwawego ogara";		description = name;	value = 225;	COUNT[5] = value;	};
instance ItSc_TrfDemon (ItemPR_PotionTrf)			{	name = "W demona";				description = name;	value = 350;	COUNT[5] = value;	};
instance ItSc_TrfDragonSnapper (ItemPR_PotionTrf)	{	name = "W smoczego zêbacza";	description = name;	value = 300;	COUNT[5] = value;	};
instance ItSc_TrfFireWaran (ItemPR_PotionTrf)		{	name = "W ognistego jaszczura";	description = name;	value = 200;	COUNT[5] = value;	};
instance ItSc_TrfGiantBug (ItemPR_PotionTrf)		{	name = "W poln¹ bestiê";		description = name;	value = 140;	COUNT[5] = value;	};
instance ItSc_TrfGiantRat (ItemPR_PotionTrf)		{	name = "W olbrzymiego szczura";	description = name;	value = 115;	COUNT[5] = value;	};
instance ItSc_TrfGiantSpider (ItemPR_PotionTrf)		{	name = "W olbrzymiego paj¹ka";	description = name;	value = 120;	COUNT[5] = value;	};
instance ItSc_TrfGoat (ItemPR_PotionTrf)			{	name = "W kozê";				description = name;	value = 105;	COUNT[5] = value;	};
instance ItSc_TrfGoblin (ItemPR_PotionTrf)			{	name = "W goblina";				description = name;	value = 120;	COUNT[5] = value;	};
instance ItSc_TrfGorilla (ItemPR_PotionTrf)			{	name = "W goryla";				description = name;	value = 200;	COUNT[5] = value;	};
instance ItSc_TrfHare (ItemPR_PotionTrf)			{	name = "W zaj¹ca";				description = name;	value = 105;	COUNT[5] = value;	};
instance ItSc_TrfHarpy (ItemPR_PotionTrf)			{	name = "W harpiê";				description = name;	value = 175;	COUNT[5] = value;	};
instance ItSc_TrfKeiler (ItemPR_PotionTrf)			{	name = "W dzika";				description = name;	value = 140;	COUNT[5] = value;	};
instance ItSc_TrfLurker (ItemPR_PotionTrf)			{	name = "W topielca";			description = name;	value = 160;	COUNT[5] = value;	};
instance ItSc_TrfMinecrawler (ItemPR_PotionTrf)		{	name = "W pe³zacza";			description = name;	value = 175;	COUNT[5] = value;	};
instance ItSc_TrfMolerat (ItemPR_PotionTrf)			{	name = "W kretoszczura";		description = name;	value = 125;	COUNT[5] = value;	};
instance ItSc_TrfScavenger (ItemPR_PotionTrf)		{	name = "W œcierwojada";			description = name;	value = 125;	COUNT[5] = value;	};
instance ItSc_TrfShadowbeast (ItemPR_PotionTrf)		{	name = "W cieniostwora";		description = name;	value = 275;	COUNT[5] = value;	};
instance ItSc_TrfSheep (ItemPR_PotionTrf)			{	name = "W owcê";				description = name;	value = 105;	COUNT[5] = value;	};
instance ItSc_TrfSnapper (ItemPR_PotionTrf)			{	name = "W zêbacza";				description = name;	value = 175;	COUNT[5] = value;	};
instance ItSc_TrfSpint (ItemPR_PotionTrf)			{	name = "W spinta";				description = name;	value = 120;	COUNT[5] = value;	};
instance ItSc_TrfSwampshark (ItemPR_PotionTrf)		{	name = "W b³otnego wê¿¹";		description = name;	value = 250;	COUNT[5] = value;	};
instance ItSc_TrfTiger (ItemPR_PotionTrf)			{	name = "W tygrysa";				description = name;	value = 200;	COUNT[5] = value;	};
instance ItSc_TrfTroll (ItemPR_PotionTrf)			{	name = "W trolla";				description = name;	value = 400;	COUNT[5] = value;	};
instance ItSc_TrfWaran (ItemPR_PotionTrf)			{	name = "W jaszczura";			description = name;	value =	160;	COUNT[5] = value;	};
instance ItSc_TrfWarg (ItemPR_PotionTrf)			{	name = "W warga";				description = name;	value =	190;	COUNT[5] = value;	};
instance ItSc_TrfWolf (ItemPR_PotionTrf)			{	name = "W wilka";				description = name;	value =	130;	COUNT[5] = value;	};

///******************************************************************************************
/// Special
///******************************************************************************************
instance ItPo_DragonEggDrink (ItemPR_Potion)
{
	name						=	"Mikstura ze smoczych jaj";
	value						=	500;
	
	visual						=	"ItPo_Dragon.3ds";
	on_state[0]					=	Use_ItPo_DragonEggDrink;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	description					=	name;
	TEXT[3]						=	"Skutki nieznane.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
var int Neoras_ScUsedDragonEggDrink;
func void Use_ItPo_DragonEggDrink()
{
	if (Npc_IsPlayer(self))
	{
		Snd_Play("DEM_Warn");
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, -50*HP_PER_LEVEL);
		regenPower[BarOrderHP] += 5;
		Neoras_ScUsedDragonEggDrink = true;
	};
};

///******************************************************************************************
instance ItPo_Ghost (ItemPR_Potion)
{
	name						=	"Mikstura przodków";
	value						=	1500;
	
	visual						=	"ItPo_Ghost.3ds";
	on_state[0]					=	Use_ItPo_Ghost;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	description					=	name;
	TEXT[3]						=	"Skutki nieznane.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_Ghost()
{
	if (Npc_IsPlayer(self))
	{
		B_GivePlayerExp(10000);
		ATS[ATS_NecroRestore] += 20;
	};
};

///******************************************************************************************
instance ItPo_InnosTears (ItemPR_Potion)
{
	name						=	"£zy Innosa";
	flags						=	ITEM_MULTI | ITEM_MISSION;
	
//	value						=	50;
	visual						=	"ItPo_Innos.3ds";
	on_state[0]					=	Use_ItPo_InnosTears;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	description					=	name;
	TEXT[3]						=	"Skutki nieznane.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_InnosTears()
{
	if (Npc_IsPlayer(self) && self.guild == GIL_KDF)
	{
		Wld_PlayEffect ("spellFX_LIGHTSTAR_BLUE", self, self, 0, 0, 0, false);
		Snd_Play ("SFX_HealObsession");
		regenPower[BarOrderMP] += 5;
	}
	else
	{
		Wld_PlayEffect ("VOB_MAGICBURN", self, self, 0, 0, 0, false);
		B_Say (self, self, "$Dead");
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
	};
};

///******************************************************************************************
instance ItPo_MegaDrink (ItemPR_Potion)
{
	name						=	"Embarla Firgasto";
	value						=	1500;
	
	visual						=	"ItPo_Dragon.3ds";
	on_state[0]					=	Use_ItPo_MegaDrink;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	description					=	name;
	TEXT[3]						=	"Skutki nieznane.";
	COUNT[5]					=	value;
	INV_ZBIAS					=	150;
};
func void Use_ItPo_MegaDrink()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("spellFX_LIGHTSTAR_RED", self, self, 0, 0, 0, false);
		Snd_Play("DEM_Warn");
		regenPower[BarOrderHP] += 10;
	};
};
