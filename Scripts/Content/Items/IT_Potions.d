///******************************************************************************************
prototype ItemPR_Potion (C_Item)
{
	name						=	"Mikstura";
	mainflag					=	ITEM_KAT_POTIONS;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_GLAS;
	scemeName					=	"POTIONFAST";
	
	TEXT[5]						=	NAME_Value;
};

prototype ItemPR_PotionTrf (C_Item)
{
	name						=	"Mikstura";
	mainflag					=	ITEM_KAT_POTIONS;
	flags						=	ITEM_MULTI;
	
	value						=	100;
	visual						=	"ItPo_Transform.3ds";
	material					=	MAT_GLAS;
	
	spell						=	SPL_Transform;
	
	description					=	"Mikstura przemiany";
	TEXT[5]						=	NAME_Value;
	INV_ROTZ					=	INVCAM_Z_RING_STANDARD;
};

///******************************************************************************************
/// Health
///******************************************************************************************
instance ItPo_Health_01 (ItemPR_Potion)
{
	value						=	75;
	visual						=	"ItPo_Health_01.3ds";
	on_state[0]					=	Use_ItPo_Health_01;
	
	description					=	"S³aba mikstura lecznicza";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	3*60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItPo_Health_01()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 3, 3*60, default);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, 300);
	};
};

instance ItPo_Health_02 (ItemPR_Potion)
{
	value						=	100;
	visual						=	"ItPo_Health_02.3ds";
	on_state[0]					=	Use_ItPo_Health_02;
	
	description					=	"Œrednia mikstura lecznicza";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	4*60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItPo_Health_02()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 4, 4*60, default);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, 400);
	};
};

instance ItPo_Health_03 (ItemPR_Potion)
{
	value						=	125;
	visual						=	"ItPo_Health_03.3ds";
	on_state[0]					=	Use_ItPo_Health_03;
	
	description					=	"Silna mikstura lecznicza";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	5*60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItPo_Health_03()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 5, 5*60, default);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, 500);
	};
};

instance ItPo_Health_Addon_04 (ItemPR_Potion)
{
	value						=	150;
	visual						=	"ItPo_Health_04.3ds";
	on_state[0]					=	Use_ItPo_Health_04;
	
	description					=	"Potê¿na mikstura lecznicza";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	5*60;
	TEXT[2]						=	NAME_Percent_HP;
	COUNT[2]					=	100;
	TEXT[3]						=	NAME_EffectPerSec;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItPo_Health_04()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 5, 5*60, 100);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]);
	};
};

///******************************************************************************************
/// Mana
///******************************************************************************************
instance ItPo_Mana_01 (ItemPR_Potion)
{
	value						=	75;
	visual						=	"ItPo_Mana_01.3ds";
	on_state[0]					=	Use_ItPo_Mana_01;
	
	description					=	"S³aba mikstura many";
	TEXT[1]						=	NAME_Bonus_Mp;
	COUNT[1]					=	3*60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	3;
	COUNT[5]					=	value;
};
func void Use_ItPo_Mana_01()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 3, 3*60, default);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, 300);
	};
};

instance ItPo_Mana_02 (ItemPR_Potion)
{
	value						=	100;
	visual						=	"ItPo_Mana_02.3ds";
	on_state[0]					=	Use_ItPo_Mana_02;
	
	description					=	"Œrednia mikstura many";
	TEXT[1]						=	NAME_Bonus_Mp;
	COUNT[1]					=	4*60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	4;
	COUNT[5]					=	value;
};
func void Use_ItPo_Mana_02()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 4, 4*60, default);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, 400);
	};
};

instance ItPo_Mana_03 (ItemPR_Potion)
{
	value						=	125;
	visual						=	"ItPo_Mana_03.3ds";
	on_state[0]					=	Use_ItPo_Mana_03;
	
	description					=	"Silna mikstura many";
	TEXT[1]						=	NAME_Bonus_Mp;
	COUNT[1]					=	5*60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItPo_Mana_03()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 5, 5*60, default);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, 500);
	};
};

instance ItPo_Mana_Addon_04 (ItemPR_Potion)
{
	value						=	150;
	visual						=	"ItPo_Mana_04.3ds";
	on_state[0]					=	Use_ItPo_Mana_04;
	
	description					=	"Potê¿na mikstura many";
	TEXT[1]						=	NAME_Bonus_Mp;
	COUNT[1]					=	5*60;
	TEXT[2]						=	NAME_Percent_Mp;
	COUNT[2]					=	100;
	TEXT[3]						=	NAME_EffectPerSec;
	COUNT[3]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItPo_Mana_04()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 5, 5*60, 100);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]);
	};
};

///******************************************************************************************
/// Stamina
///******************************************************************************************
instance ItPo_Stamina (ItemPR_Potion)
{
	value						=	50;
	visual						=	"ItPo_Stamina.3ds";
	on_state[0]					=	Use_ItPo_Stamina;
	
	description					=	"Mikstura energii";
	TEXT[1]						=	NAME_Bonus_Sp;
	COUNT[1]					=	5*60;
	TEXT[2]						=	NAME_EffectPerSec;
	COUNT[2]					=	5;
	COUNT[5]					=	value;
};
func void Use_ItPo_Stamina()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (AIV_Stamina, 5, 5*60, default);
	}
	else
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_FASTRUN.MDS", 60*1000);
	};
};

///******************************************************************************************
/// Mixed
///******************************************************************************************
instance ItPo_Blueplant (ItemPR_Potion)
{
	value						=	75;
	visual						=	"ItPo_Blueplant.3ds";
	on_state[0]					=	Use_ItPo_Blueplant;
	
	description					=	"Mikstura ¿ycia i many";
	TEXT[1]						=	NAME_Bonus_Hp;
	COUNT[1]					=	2*60;
	TEXT[2]						=	NAME_Bonus_Mp;
	COUNT[2]					=	2*60;
	TEXT[3]						=	NAME_EffectPerSec;
	COUNT[3]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItPo_Blueplant()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 2, 2*60, default);
		PotionRG_ADD (ATR_MANA, 2, 2*60, default);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, 200);
		Npc_ChangeAttribute (self, ATR_MANA, 200);
	};
};

///******************************************************************************************
/// Time
///******************************************************************************************
instance ItPo_Time_Health (ItemPR_Potion)
{
	value						=	250;
	visual						=	"ItPo_Time_Health.3ds";
	on_state[0]					=	Use_ItPo_Time_Health;
	
	description					=	"Czasowy eliksir ¿ywotnoœci";
	TEXT[1]						=	NAME_Bonus_HpMax;
	COUNT[1]					=	20*HP_PER_LP;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItPo_Time_Health()
{
	if (Npc_IsPlayer(self))
	{
		PotionTimed_ADD (ATR_HITPOINTS_MAX, 20, 300);
		B_GivePlayerExp(50);
	};
};

instance ItPo_Time_Mana (ItemPR_Potion)
{
	value						=	250;
	visual						=	"ItPo_Time_Mana.3ds";
	on_state[0]					=	Use_ItPo_Time_Mana;
	
	description					=	"Czasowy eliksir ducha";
	TEXT[1]						=	NAME_Bonus_MpMax;
	COUNT[1]					=	20*MP_PER_LP;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItPo_Time_Mana()
{
	if (Npc_IsPlayer(self))
	{
		PotionTimed_ADD (ATR_MANA_MAX, 20, 300);
		B_GivePlayerExp(50);
	};
};

instance ItPo_Time_Str (ItemPR_Potion)
{
	value						=	250;
	visual						=	"ItPo_Time_Str.3ds";
	on_state[0]					=	Use_ItPo_Time_Str;
	
	description					=	"Czasowy eliksir si³y";
	TEXT[1]						=	NAME_Bonus_Str;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItPo_Time_Str()
{
	if (Npc_IsPlayer(self))
	{
		PotionTimed_ADD (ATR_STRENGTH, 20, 300);
		B_GivePlayerExp(50);
	};
};

instance ItPo_Time_Dex (ItemPR_Potion)
{
	value						=	250;
	visual						=	"ItPo_Time_Dex.3ds";
	on_state[0]					=	Use_ItPo_Time_Dex;
	
	description					=	"Czasowy eliksir zrêcznoœci";
	TEXT[1]						=	NAME_Bonus_Dex;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItPo_Time_Dex()
{
	if (Npc_IsPlayer(self))
	{
		PotionTimed_ADD (ATR_DEXTERITY, 20, 300);
		B_GivePlayerExp(50);
	};
};

instance ItPo_Time_Pow (ItemPR_Potion)
{
	value						=	250;
	visual						=	"ItPo_Time_Pow.3ds";
	on_state[0]					=	Use_ItPo_Time_Pow;
	
	description					=	"Czasowy eliksir mocy";
	TEXT[1]						=	NAME_Bonus_Pow;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItPo_Time_Pow()
{
	if (Npc_IsPlayer(self))
	{
		PotionTimed_ADD (ATR_POWER, 20, 300);
		B_GivePlayerExp(50);
	};
};

instance ItPo_Time_Prot (ItemPR_Potion)
{
	value						=	250;
	visual						=	"ItPo_Time_Prot.3ds";
	on_state[0]					=	Use_ItPo_Time_Prot;
	
	description					=	"Czasowy eliksir ochrony";
	TEXT[1]						=	NAME_Bonus_Prot;
	COUNT[1]					=	20;
	TEXT[2]						=	NAME_Duration;
	COUNT[2]					=	300;
	TEXT[3]						=	NAME_Bonus_Xp;
	COUNT[3]					=	50;
	COUNT[5]					=	value;
};
func void Use_ItPo_Time_Prot()
{
	if (Npc_IsPlayer(self))
	{
		PotionTimed_ADD (ATR_PROT, 20, 300);
		B_GivePlayerExp(50);
	};
};

///******************************************************************************************
/// Weak
///******************************************************************************************
instance ItPo_Weak_Health (ItemPR_Potion)
{
	value						=	200;
	visual						=	"ItPo_Perm_Health.3ds";
	on_state[0]					=	Use_ItPo_Weak_Health;
	
	description					=	"Negatywny eliksir ¿ywotnoœci";
	TEXT[1]						=	"Wymienia max. punktów ¿ycia:";
	COUNT[1]					=	10*HP_PER_LP;
	TEXT[2]						=	"na punkty nauki jeœli posiadasz";
	TEXT[3]						=	"max. punktów ¿ycia ponad:";
	COUNT[3]					=	10*HP_PER_LP;
	COUNT[5]					=	value;
};
func void Use_ItPo_Weak_Health()
{
	if (self.attribute[ATR_HITPOINTS_MAX] > (10+timedPotionPoints[ATR_HITPOINTS_MAX])*HP_PER_LP)
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -10*HP_PER_LP);
		B_RaiseAttribute (self, default, 10);
	};
};

instance ItPo_Weak_Mana (ItemPR_Potion)
{
	value						=	200;
	visual						=	"ItPo_Perm_Mana.3ds";
	on_state[0]					=	Use_ItPo_Weak_Mana;
	
	description					=	"Negatywny eliksir ducha";
	TEXT[1]						=	"Wymienia max. punktów many:";
	COUNT[1]					=	10*MP_PER_LP;
	TEXT[2]						=	"na punkty nauki jeœli posiadasz";
	TEXT[3]						=	"max. punktów many ponad:";
	COUNT[3]					=	10*MP_PER_LP;
	COUNT[5]					=	value;
};
func void Use_ItPo_Weak_Mana()
{
	if (self.attribute[ATR_MANA_MAX] > (10+timedPotionPoints[ATR_MANA_MAX])*MP_PER_LP)
	{
		Npc_ChangeAttribute(self, ATR_MANA_MAX, -10*MP_PER_LP);
		B_RaiseAttribute (self, default, 10);
	};
};

instance ItPo_Weak_Str (ItemPR_Potion)
{
	value						=	200;
	visual						=	"ItPo_Perm_Str.3ds";
	on_state[0]					=	Use_ItPo_Weak_Str;
	
	description					=	"Negatywny eliksir si³y";
	TEXT[1]						=	"Wymienia punktów si³y:";
	COUNT[1]					=	10;
	TEXT[2]						=	"na punkty nauki jeœli posiadasz";
	TEXT[3]						=	"punktów si³y ponad:";
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItPo_Weak_Str()
{
	if (self.attribute[ATR_STRENGTH] > (10+timedPotionPoints[ATR_STRENGTH]))
	{
		Npc_ChangeAttribute(self, ATR_STRENGTH, -10);
		B_RaiseAttribute (self, default, 10);
	};
};

instance ItPo_Weak_Dex (ItemPR_Potion)
{
	value						=	200;
	visual						=	"ItPo_Perm_Dex.3ds";
	on_state[0]					=	Use_ItPo_Weak_Dex;
	
	description					=	"Negatywny eliksir zrêcznoœci";
	TEXT[1]						=	"Wymienia punktów zrêcznoœci:";
	COUNT[1]					=	10;
	TEXT[2]						=	"na punkty nauki jeœli posiadasz";
	TEXT[3]						=	"punktów zrêcznoœci ponad:";
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItPo_Weak_Dex()
{
	if (self.attribute[ATR_DEXTERITY] > (10+timedPotionPoints[ATR_DEXTERITY]))
	{
		Npc_ChangeAttribute(self, ATR_DEXTERITY, -10);
		B_RaiseAttribute (self, default, 10);
	};
};

instance ItPo_Weak_Pow (ItemPR_Potion)
{
	value						=	200;
	visual						=	"ItPo_Perm_Pow.3ds";
	on_state[0]					=	Use_ItPo_Weak_Pow;
	
	description					=	"Negatywny eliksir mocy";
	TEXT[1]						=	"Wymienia punktów mocy:";
	COUNT[1]					=	10;
	TEXT[2]						=	"na punkty nauki jeœli posiadasz";
	TEXT[3]						=	"punktów mocy ponad:";
	COUNT[3]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItPo_Weak_Pow()
{
	if (self.attribute[ATR_POWER] > (10+timedPotionPoints[ATR_POWER]))
	{
		Npc_ChangeAttribute(self, ATR_POWER, -10);
		B_RaiseAttribute (self, default, 10);
	};
};

///******************************************************************************************
/// Perm
///******************************************************************************************
instance ItPo_Perm_Health (ItemPR_Potion)
{
	value						=	1000;
	visual						=	"ItPo_Perm_Health.3ds";
	on_state[0]					=	Use_ItPo_Perm_Health;
	
	description					=	"Trwa³y eliksir ¿ywotnoœci";
	TEXT[1]						=	NAME_Bonus_HpMax;
	COUNT[1]					=	2*HP_PER_LP;
	COUNT[5]					=	value;
};
func void Use_ItPo_Perm_Health()
{
	B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 2*HP_PER_LP);
};

instance ItPo_Perm_Mana (ItemPR_Potion)
{
	value						=	1000;
	visual						=	"ItPo_Perm_Mana.3ds";
	on_state[0]					=	Use_ItPo_Perm_Mana;
	
	description					=	"Trwa³y eliksir ducha";
	TEXT[1]						=	NAME_Bonus_MpMax;
	COUNT[1]					=	2*MP_PER_LP;
	COUNT[5]					=	value;
};
func void Use_ItPo_Perm_Mana()
{
	B_RaiseAttribute (self, ATR_MANA_MAX, 2*MP_PER_LP);
};

instance ItPo_Perm_Str (ItemPR_Potion)
{
	value						=	1000;
	visual						=	"ItPo_Perm_Str.3ds";
	on_state[0]					=	Use_ItPo_Perm_Str;
	
	description					=	"Trwa³y eliksir si³y";
	TEXT[1]						=	NAME_Bonus_Str;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItPo_Perm_Str()
{
	B_RaiseAttribute (self, ATR_STRENGTH, 2);
};

instance ItPo_Perm_Dex (ItemPR_Potion)
{
	value						=	1000;
	visual						=	"ItPo_Perm_Dex.3ds";
	on_state[0]					=	Use_ItPo_Perm_Dex;
	
	description					=	"Trwa³y eliksir zrêcznoœci";
	TEXT[1]						=	NAME_Bonus_Dex;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItPo_Perm_Dex()
{
	B_RaiseAttribute (self, ATR_DEXTERITY, 2);
};

instance ItPo_Perm_Pow (ItemPR_Potion)
{
	value						=	1000;
	visual						=	"ItPo_Perm_Pow.3ds";
	on_state[0]					=	Use_ItPo_Perm_Pow;
	
	description					=	"Trwa³y eliksir mocy";
	TEXT[1]						=	NAME_Bonus_Pow;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItPo_Perm_Pow()
{
	B_RaiseAttribute (self, ATR_POWER, 2);
};

instance ItPo_Perm_Prot (ItemPR_Potion)
{
	value						=	1000;
	visual						=	"ItPo_Perm_Prot.3ds";
	on_state[0]					=	Use_ItPo_Perm_Prot;
	
	description					=	"Trwa³y eliksir ochrony";
	TEXT[1]						=	NAME_Bonus_Prot;
	COUNT[1]					=	2;
	COUNT[5]					=	value;
};
func void Use_ItPo_Perm_Prot()
{
	B_RaiseAttribute (self, ATR_PROT, 2);
};

///******************************************************************************************
/// Speed
///******************************************************************************************
instance ItPo_Lightness (ItemPR_Potion)
{
	value						=	200;
	visual						=	"ItPo_Lightness.3ds";
	on_state[0]					=	Use_ItPo_Lightness;
	
	description					=	"Mikstura lekkoœci";
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	60;
	COUNT[5]					=	value;
};
func void Use_ItPo_Lightness()
{
	Mdl_ApplyOverlayMDSTimed (self, "HUMANS_SPRINT.MDS", 60 * 1000);
};

instance ItPo_Speed (ItemPR_Potion)
{
	value						=	500;
	visual						=	"ItPo_Speed.3ds";
	on_state[0]					=	Use_ItPo_Speed;
	
	description					=	"Mikstura szybkoœci";
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	300;
	COUNT[5]					=	value;
};
func void Use_ItPo_Speed()
{
	Mdl_ApplyOverlayMDSTimed (self, "HUMANS_SPRINT.MDS", 300 * 1000);
};

///******************************************************************************************
/// Other
///******************************************************************************************
instance ItPo_Geist (ItemPR_Potion)
{
	value						=	100;
	visual						=	"ItPo_Geist.3ds";
	on_state[0]					=	Use_ItPo_Geist;
	
	description					=	"Mikstura jasnoœci umys³u";
	TEXT[1]						=	"Czas wydaje siê dwukrotnie";
	TEXT[2]						=	"spowolniony podczas dzia³ania.";
	TEXT[3]						=	NAME_Duration;
	COUNT[3]					=	30;
	TEXT[4]						=	NAME_Bonus_Xp;
	COUNT[4]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItPo_Geist()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, false);
		B_GivePlayerExp(10);
	};
};

instance ItPo_HealObsession (ItemPR_Potion)
{
	value						=	100;
	visual						=	"ItPo_Geist.3ds";
	on_state[0]					=	Use_HealObsession;
	
	description					=	"Uleczenie z opêtania";
	COUNT[5]					=	value;
};
func void Use_HealObsession()
{
	B_ClearScObsession(self);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_VIOLET", self, self, 0, 0, 0, false);
	Snd_Play("SFX_HealObsession");
};

instance ItPo_NightVision (ItemPR_Potion)
{
	value						=	100;
	visual						=	"ItPo_Geist.3ds";
	on_state[0]					=	Use_ItPo_NightVision;
	
	description					=	"Mikstura widzenia w ciemnoœci";
	TEXT[1]						=	NAME_Duration;
	COUNT[1]					=	600;
	TEXT[2]						=	NAME_Bonus_Xp;
	COUNT[2]					=	10;
	COUNT[5]					=	value;
};
func void Use_ItPo_NightVision()
{
	Wld_PlayEffect ("SPELLFX_NIGHTVISION", self, self, 0, 0, 0, false);
	if (Npc_IsPlayer(self))
	{
		B_GivePlayerExp(10);
	};
};

instance ItPo_Poison (ItemPR_Potion)
{
	value						=	100;
	visual						=	"ItPo_Poison.3ds";
	
//	scemeName					=	"FASTUSE";
//	on_state[0]					=	MOBSI_POISONWEAPON_S1;
	
	description					=	"Trucizna";
	TEXT[1]						=	"S³u¿y do zatruwania";
	TEXT[2]						=	"broni i strza³.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Transform
///******************************************************************************************
instance ItSc_TrfAlligator (ItemPR_PotionTrf)
{
	value						=	200;
	TEXT[1]						=	"W aligatora";
	COUNT[5]					=	value;
};

instance ItSc_TrfBiter (ItemPR_PotionTrf)
{
	value						=	150;
	TEXT[1]						=	"W k¹sacza";
	COUNT[5]					=	value;
};

instance ItSc_TrfBloodfly (ItemPR_PotionTrf)
{
	value						=	125;
	TEXT[1]						=	"W krwiopijcê";
	COUNT[5]					=	value;
};

instance ItSc_TrfBloodhound (ItemPR_PotionTrf)
{
	value						=	225;
	TEXT[1]						=	"W krwawego ogara";
	COUNT[5]					=	value;
};

instance ItSc_TrfDemon (ItemPR_PotionTrf)
{
	value						=	350;
	TEXT[1]						=	"W demona";
	COUNT[5]					=	value;
};

instance ItSc_TrfDragonSnapper (ItemPR_PotionTrf)
{
	value						=	300;
	TEXT[1]						=	"W smoczego zêbacza";
	COUNT[5]					=	value;
};

instance ItSc_TrfFireWaran (ItemPR_PotionTrf)
{
	value						=	200;
	TEXT[1]						=	"W ognistego jaszczura";
	COUNT[5]					=	value;
};

instance ItSc_TrfGiantBug (ItemPR_PotionTrf)
{
	value						=	140;
	TEXT[1]						=	"W poln¹ bestiê";
	COUNT[5]					=	value;
};

instance ItSc_TrfGiantRat (ItemPR_PotionTrf)
{
	value						=	115;
	TEXT[1]						=	"W olbrzymiego szczura";
	COUNT[5]					=	value;
};

instance ItSc_TrfGiantSpider (ItemPR_PotionTrf)
{
	value						=	120;
	TEXT[1]						=	"W olbrzymiego paj¹ka";
	COUNT[5]					=	value;
};

instance ItSc_TrfGoat (ItemPR_PotionTrf)
{
	value						=	105;
	TEXT[1]						=	"W kozê";
	COUNT[5]					=	value;
};

instance ItSc_TrfGoblin (ItemPR_PotionTrf)
{
	value						=	120;
	TEXT[1]						=	"W goblina";
	COUNT[5]					=	value;
};

instance ItSc_TrfGorilla (ItemPR_PotionTrf)
{
	value						=	200;
	TEXT[1]						=	"W goryla";
	COUNT[5]					=	value;
};

instance ItSc_TrfHare (ItemPR_PotionTrf)
{
	value						=	105;
	TEXT[1]						=	"W zaj¹ca";
	COUNT[5]					=	value;
};

instance ItSc_TrfHarpy (ItemPR_PotionTrf)
{
	value						=	175;
	TEXT[1]						=	"W harpiê";
	COUNT[5]					=	value;
};

instance ItSc_TrfKeiler (ItemPR_PotionTrf)
{
	value						=	140;
	TEXT[1]						=	"W dzika";
	COUNT[5]					=	value;
};

instance ItSc_TrfLurker (ItemPR_PotionTrf)
{
	value						=	160;
	TEXT[1]						=	"W topielca";
	COUNT[5]					=	value;
};

instance ItSc_TrfMinecrawler (ItemPR_PotionTrf)
{
	value						=	175;
	TEXT[1]						=	"W pe³zacza";
	COUNT[5]					=	value;
};

instance ItSc_TrfMolerat (ItemPR_PotionTrf)
{
	value						=	125;
	TEXT[1]						=	"W kretoszczura";
	COUNT[5]					=	value;
};

instance ItSc_TrfScavenger (ItemPR_PotionTrf)
{
	value						=	125;
	TEXT[1]						=	"W œcierwojada";
	COUNT[5]					=	value;
};

instance ItSc_TrfShadowbeast (ItemPR_PotionTrf)
{
	value						=	275;
	TEXT[1]						=	"W cieniostwora";
	COUNT[5]					=	value;
};

instance ItSc_TrfSheep (ItemPR_PotionTrf)
{
	value						=	105;
	TEXT[1]						=	"W owcê";
	COUNT[5]					=	value;
};

instance ItSc_TrfSnapper (ItemPR_PotionTrf)
{
	value						=	175;
	TEXT[1]						=	"W zêbacza";
	COUNT[5]					=	value;
};

instance ItSc_TrfSpint (ItemPR_PotionTrf)
{
	value						=	120;
	TEXT[1]						=	"W spinta";
	COUNT[5]					=	value;
};

instance ItSc_TrfSwampshark (ItemPR_PotionTrf)
{
	value						=	250;
	TEXT[1]						=	"W b³otnego wê¿¹";
	COUNT[5]					=	value;
};

instance ItSc_TrfTiger (ItemPR_PotionTrf)
{
	value						=	200;
	TEXT[1]						=	"W tygrysa";
	COUNT[5]					=	value;
};

instance ItSc_TrfTroll (ItemPR_PotionTrf)
{
	value						=	400;
	TEXT[1]						=	"W trolla";
	COUNT[5]					=	value;
};

instance ItSc_TrfWaran (ItemPR_PotionTrf)
{
	value						=	160;
	TEXT[1]						=	"W jaszczura";
	COUNT[5]					=	value;
};

instance ItSc_TrfWarg (ItemPR_PotionTrf)
{
	value						=	190;
	TEXT[1]						=	"W warga";
	COUNT[5]					=	value;
};

instance ItSc_TrfWolf (ItemPR_PotionTrf)
{
	value						=	130;
	TEXT[1]						=	"W wilka";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Special
///******************************************************************************************
instance ItPo_DragonEggDrink (ItemPR_Potion)
{
	value						=	500;
	visual						=	"ItPo_MegaDrink.3ds";
	on_state[0]					=	Use_ItPo_DragonEggDrink;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	description					=	"Mikstura wydzieliny ze smoczych jaj";
	TEXT[3]						=	"Skutki nieznane.";
	COUNT[5]					=	value;
};
var int Neoras_ScUsedDragonEggDrink;
func void Use_ItPo_DragonEggDrink()
{
	if (Npc_IsPlayer(self))
	{
		Snd_Play("DEM_Warn");
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, -1000);
		regenPower[BarOrderHP] += 5;
		Neoras_ScUsedDragonEggDrink = true;
	};
};

instance ItPo_MegaDrink (ItemPR_Potion)
{
	value						=	1500;
	visual						=	"ItPo_MegaDrink.3ds";
	on_state[0]					=	Use_ItPo_MegaDrink;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	description					=	"Embarla Firgasto";
	TEXT[3]						=	"Skutki nieznane.";
	COUNT[5]					=	value;
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

instance ItPo_InnosTears (ItemPR_Potion)
{
//	value						=	50;
	visual						=	"ItPo_Innos.3ds";
	on_state[0]					=	Use_ItPo_InnosTears;
	
	wear						=	WEAR_EFFECT;
	effect						=	"SPELLFX_ITEMGLIMMER";
	
	description					=	"£zy Innosa";
	TEXT[3]						=	"Skutki nieznane.";
	COUNT[5]					=	value;
};
func void Use_ItPo_InnosTears()
{
	if (self.guild == GIL_KDF)
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
