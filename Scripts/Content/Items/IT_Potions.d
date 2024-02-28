///******************************************************************************************
prototype ItemPR_Potion (C_Item)
{
	name 					=	"Mikstura";
	mainflag 				=	ITEM_KAT_POTIONS;
	flags 					=	ITEM_MULTI;
	
	material 				=	MAT_GLAS;
	scemeName				=	"POTIONFAST";
	
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
prototype ItemPR_PotionTrf (C_Item)
{
	name 					=	"Mikstura";
	mainflag 				=	ITEM_KAT_RUNE;
	flags 					=	ITEM_MULTI;
	
	value 					=	100;
	spell					=	SPL_Transform;
	visual 					=	"ITPO_TRANSFORM.3ds";
	material 				=	MAT_GLAS;
	
	description				=	"Mikstura przemiany";
	TEXT[5]					= 	NAME_Value;
	INV_ROTZ				=	INVCAM_Z_RING_STANDARD;
};
///******************************************************************************************
///	Health
///******************************************************************************************
instance ItPo_Health_01 (ItemPR_Potion)
{
	value 					=	25;
	visual 					=	"ItPo_Health_01.3ds";
	on_state[0]				=	Use_ItPo_Health_01;
	
	description				= 	"S³aba mikstura lecznicza";
	TEXT[1]					= 	NAME_Bonus_HP;
	COUNT[1]				=	2*60;
	TEXT[2]					=	NAME_EffectPerSec;
	COUNT[2]				=	2;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_01()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 2, 2*60, 0);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, 200);
	};
};
///******************************************************************************************
instance ItPo_Health_02 (ItemPR_Potion)
{
	value 					=	50;
	visual 					=	"ItPo_Health_02.3ds";
	on_state[0]				=	Use_ItPo_Health_02;
	
	description				= 	"Œrednia mikstura lecznicza";
	TEXT[1]					= 	NAME_Bonus_HP;
	COUNT[1]				=	3*60;
	TEXT[2]					=	NAME_EffectPerSec;
	COUNT[2]				=	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_02()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 3, 3*60, 0);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, 400);
	};
};
///******************************************************************************************
instance ItPo_Health_03 (ItemPR_Potion)
{
	value 					=	75;
	visual 					=	"ItPo_Health_03.3ds";
	on_state[0]				=	Use_ItPo_Health_03;
	
	description				= 	"Silna mikstura lecznicza";
	TEXT[1]					= 	NAME_Bonus_HP;
	COUNT[1]				=	4*60;
	TEXT[2]					=	NAME_EffectPerSec;
	COUNT[2]				=	4;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_03()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 4, 4*60, 0);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, 600);
	};
};
///******************************************************************************************
instance ItPo_Health_Addon_04 (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ItPo_Health_04.3ds";
	on_state[0]				=	Use_ItPo_Health_04;
	
	description				= 	"Potê¿na mikstura lecznicza";
	TEXT[1]					= 	NAME_Bonus_HP;
	COUNT[1]				=	5*60;
	TEXT[2]					= 	NAME_Percent_HP;
	COUNT[2]				=	20;
	TEXT[3]					=	NAME_EffectPerSec;
	COUNT[3]				=	5;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_04()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 5, 5*60, 20);
		MOD_SetPoison(0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]);
	};
};
///******************************************************************************************
///	Mana
///******************************************************************************************
instance ItPo_Mana_01 (ItemPR_Potion)
{
	value 					=	25;
	visual 					=	"ItPo_Mana_01.3ds";
	on_state[0]				=	Use_ItPo_Mana_01;
	
	description				= 	"S³aba mikstura many";
	TEXT[1]					= 	NAME_Bonus_Mana;
	COUNT[1]				=	2*60;
	TEXT[2]					=	NAME_EffectPerSec;
	COUNT[2]				=	2;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_01()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 2, 2*60, 0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, 200);
	};
};
///******************************************************************************************
instance ItPo_Mana_02 (ItemPR_Potion)
{
	value 					=	50;
	visual 					=	"ItPo_Mana_02.3ds";
	on_state[0]				=	Use_ItPo_Mana_02;
	
	description				= 	"Œrednia mikstura many";
	TEXT[1]					= 	NAME_Bonus_Mana;
	COUNT[1]				=	3*60;
	TEXT[2]					=	NAME_EffectPerSec;
	COUNT[2]				=	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_02()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 3, 3*60, 0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, 400);
	};
};
///******************************************************************************************
instance ItPo_Mana_03 (ItemPR_Potion)
{
	value 					=	75;
	visual 					=	"ItPo_Mana_03.3ds";
	on_state[0]				=	Use_ItPo_Mana_03;
	
	description				= 	"Silna mikstura many";
	TEXT[1]					= 	NAME_Bonus_Mana;
	COUNT[1]				=	4*60;
	TEXT[2]					=	NAME_EffectPerSec;
	COUNT[2]				=	4;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_03()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 4, 4*60, 0);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, 600);
	};
};
///******************************************************************************************
instance ItPo_Mana_Addon_04 (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ItPo_Mana_04.3ds";
	on_state[0]				=	Use_ItPo_Mana_04;
	
	description				= 	"Potê¿na mikstura many";
	TEXT[1]					= 	NAME_Bonus_Mana;
	COUNT[1]				=	5*60;
	TEXT[2]					= 	NAME_Percent_Mana;
	COUNT[2]				=	20;
	TEXT[3]					=	NAME_EffectPerSec;
	COUNT[3]				=	5;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_04()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 5, 5*60, 20);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]);
	};
};
///******************************************************************************************
///	Stamina & Running
///******************************************************************************************
instance ItPo_Speed (ItemPR_Potion)
{
	value 					=	50;
	visual 					=	"ItPo_Speed.3ds";
	on_state[0]				=	Use_ItPo_Speed;
	
	description				= 	"Mikstura energii";
	TEXT[1]					= 	NAME_Bonus_Stamina;
	COUNT[1]				=	6*60;
	TEXT[2]					=	NAME_EffectPerSec;
	COUNT[2]				=	6;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Speed()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (AIV_Stamina_MAX, 6, 6*60, 0);
	}
	else
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_FASTRUN.MDS", 60 * 1000);
	};
};
///******************************************************************************************
instance ItPo_Lightness (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Speed.3ds";
	on_state[0]				=	Use_ItPo_Lightness;
	
	description				= 	"Mikstura lekkoœci";
	TEXT[1]					= 	NAME_Duration;
	COUNT[1]				=	120;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Lightness()
{
	Mdl_ApplyOverlayMDSTimed (self, "HUMANS_SPRINT.MDS", 120 * 1000);
};
///******************************************************************************************
///	Temp
///******************************************************************************************
instance ItPo_Temp_Health (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_Health.3ds";
	on_state[0]				=	Use_ItPo_Temp_Health;
	
	description				= 	"Czasowy eliksir ¿ywotnoœci";
	TEXT[1]					= 	NAME_Bonus_HpMax;
	COUNT[1]				= 	20*HP_PER_LP;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_Health()
{
	if (Npc_IsPlayer(self))
	{
		if (hpMaxPotionTime == 0)
		{
			B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 20*HP_PER_LP);
		};
		hpMaxPotionTime = 300;
	};
};
///******************************************************************************************
instance ItPo_Temp_Mana (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_Mana.3ds";
	on_state[0]				=	Use_ItPo_Temp_Mana;
	
	description				= 	"Czasowy eliksir ducha";
	TEXT[1]					= 	NAME_Bonus_MpMax;
	COUNT[1]				= 	20*MP_PER_LP;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_Mana()
{
	if (Npc_IsPlayer(self))
	{
		if (mpMaxPotionTime == 0)
		{
			B_RaiseAttribute (self, ATR_MANA_MAX, 20*MP_PER_LP);
		};
		mpMaxPotionTime = 300;
	};
};
///******************************************************************************************
instance ItPo_Temp_STR (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_STR.3ds";
	on_state[0]				=	Use_ItPo_Temp_STR;
	
	description				= 	"Czasowy eliksir si³y";
	TEXT[1]					= 	NAME_Bonus_Str;
	COUNT[1]				= 	20;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_STR()
{
	if (Npc_IsPlayer(self))
	{
		if (strPotionTime == 0)
		{
			B_RaiseAttribute (self, ATR_STRENGTH, 20);
		};
		strPotionTime = 300;
	};
};
///******************************************************************************************
instance ItPo_Temp_DEX (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_DEX.3ds";
	on_state[0]				=	Use_ItPo_Temp_DEX;
	
	description				= 	"Czasowy eliksir zrêcznoœci";
	TEXT[1]					= 	NAME_Bonus_Dex;
	COUNT[1]				= 	20;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_DEX()
{
	if (Npc_IsPlayer(self))
	{
		if (dexPotionTime == 0)
		{
			B_RaiseAttribute (self, ATR_DEXTERITY, 20);
		};
		dexPotionTime = 300;
	};
};
///******************************************************************************************
instance ItPo_Temp_POW (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_POW.3ds";
	on_state[0]				=	Use_ItPo_Temp_POW;
	
	description				= 	"Czasowy eliksir mocy";
	TEXT[1]					= 	NAME_Bonus_Pow;
	COUNT[1]				= 	20;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_POW()
{
	if (Npc_IsPlayer(self))
	{
		if (powPotionTime == 0)
		{
			B_RaiseAttribute (self, ATR_POWER, 20);
		};
		powPotionTime = 300;
	};
};
///******************************************************************************************
///	Weak
///******************************************************************************************
instance ItPo_Weak_Health (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_Health.3ds";
	on_state[0]				=	Use_ItPo_Weak_Health;
	
	description				= 	"Negatywny eliksir ¿ywotnoœci";
	TEXT[1]					= 	"Wymienia max. punktów ¿ycia:";
	COUNT[1]				= 	10*HP_PER_LP;
	TEXT[2]					= 	"na punkty nauki jeœli posiadasz";
	TEXT[3]					= 	"max. punktów ¿ycia ponad:";
	COUNT[3]				=	10*HP_PER_LP;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Weak_Health()
{
	if (self.attribute[ATR_HITPOINTS_MAX] > 10*HP_PER_LP)
	{
		Npc_ChangeAttribute(self, ATR_HITPOINTS_MAX, -10*HP_PER_LP);
		B_RaiseAttribute (self, 0, 10);
	};
};
///******************************************************************************************
instance ItPo_Weak_Mana (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_Mana.3ds";
	on_state[0]				=	Use_ItPo_Weak_Mana;
	
	description				= 	"Negatywny eliksir ducha";
	TEXT[1]					= 	"Wymienia max. punktów many:";
	COUNT[1]				= 	10*MP_PER_LP;
	TEXT[2]					= 	"na punkty nauki jeœli posiadasz";
	TEXT[3]					= 	"max. punktów many ponad:";
	COUNT[3]				=	10*MP_PER_LP;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Weak_Mana()
{
	if (self.attribute[ATR_MANA_MAX] > 10*MP_PER_LP)
	{
		Npc_ChangeAttribute(self, ATR_MANA_MAX, -10*MP_PER_LP);
		B_RaiseAttribute (self, 0, 10);
	};
};
///******************************************************************************************
instance ItPo_Weak_STR (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_STR.3ds";
	on_state[0]				=	Use_ItPo_Weak_STR;
	
	description				= 	"Negatywny eliksir si³y";
	TEXT[1]					= 	"Wymienia punktów si³y:";
	COUNT[1]				= 	10;
	TEXT[2]					= 	"na punkty nauki jeœli posiadasz";
	TEXT[3]					= 	"punktów si³y ponad:";
	COUNT[3]				=	10;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Weak_STR()
{
	if (self.attribute[ATR_STRENGTH] > 10)
	{
		Npc_ChangeAttribute(self, ATR_STRENGTH, -10);
		B_RaiseAttribute (self, 0, 10);
	};
};
///******************************************************************************************
instance ItPo_Weak_DEX (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_DEX.3ds";
	on_state[0]				=	Use_ItPo_Weak_DEX;
	
	description				= 	"Negatywny eliksir zrêcznoœci";
	TEXT[1]					= 	"Wymienia punktów zrêcznoœci:";
	COUNT[1]				= 	10;
	TEXT[2]					= 	"na punkty nauki jeœli posiadasz";
	TEXT[3]					= 	"punktów zrêcznoœci ponad:";
	COUNT[3]				=	10;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Weak_DEX()
{
	if (self.attribute[ATR_DEXTERITY] > 10)
	{
		Npc_ChangeAttribute(self, ATR_DEXTERITY, -10);
		B_RaiseAttribute (self, 0, 10);
	};
};
///******************************************************************************************
instance ItPo_Weak_POW (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ItPo_Perm_POW.3ds";
	on_state[0]				=	Use_ItPo_Weak_POW;
	
	description				= 	"Negatywny eliksir mocy";
	TEXT[1]					= 	"Wymienia punktów mocy:";
	COUNT[1]				= 	10;
	TEXT[2]					= 	"na punkty nauki jeœli posiadasz";
	TEXT[3]					= 	"punktów mocy ponad:";
	COUNT[3]				=	10;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Weak_POW()
{
	if (self.attribute[ATR_POWER] > 10)
	{
		Npc_AddPowerPoints(self, -10);
		B_RaiseAttribute (self, 0, 10);
	};
};
///******************************************************************************************
///	Perm
///******************************************************************************************
instance ItPo_Perm_Health (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_Perm_Health.3ds";
	on_state[0]				=	Use_ItPo_Perm_Health;
	
	description				= 	"Trwa³y eliksir ¿ywotnoœci";
	TEXT[1]					= 	NAME_Bonus_HpMax;
	COUNT[1]				= 	2*HP_PER_LP;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_Health()
{
	B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 2*HP_PER_LP);
};
///******************************************************************************************
instance ItPo_Perm_Mana (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_Perm_Mana.3ds";
	on_state[0]				=	Use_ItPo_Perm_Mana;
	
	description				= 	"Trwa³y eliksir ducha";
	TEXT[1]					= 	NAME_Bonus_MpMax;
	COUNT[1]				= 	2;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_Mana()
{
	B_RaiseAttribute (self, ATR_MANA_MAX, 2*MP_PER_LP);
};
///******************************************************************************************
instance ItPo_Perm_STR (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_Perm_STR.3ds";
	on_state[0]				=	Use_ItPo_Perm_STR;
	
	description				= 	"Trwa³y eliksir si³y";
	TEXT[1]					= 	NAME_Bonus_Str;
	COUNT[1]				= 	2;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_STR()
{
	B_RaiseAttribute (self, ATR_STRENGTH, 2);
};
///******************************************************************************************
instance ItPo_Perm_DEX (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_Perm_DEX.3ds";
	on_state[0]				=	Use_ItPo_Perm_DEX;
	
	description				= 	"Trwa³y eliksir zrêcznoœci";
	TEXT[1]					= 	NAME_Bonus_Dex;
	COUNT[1]				= 	2;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_DEX()
{
	B_RaiseAttribute (self, ATR_DEXTERITY, 2);
};
///******************************************************************************************
instance ItPo_Perm_POW (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_Perm_POW.3ds";
	on_state[0]				=	Use_ItPo_Perm_POW;
	
	description				= 	"Trwa³y eliksir mocy";
	TEXT[1]					= 	NAME_Bonus_Pow;
	COUNT[1]				= 	2;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_POW()
{
	B_RaiseAttribute (self, ATR_POWER, 2);
};
///******************************************************************************************
instance ItPo_Perm_Fire (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_Perm_Fire.3ds";
	on_state[0]				=	Use_ItPo_Perm_Fire;
	
	description				= 	"Trwa³y eliksir odpornoœci na ogieñ";
	TEXT[1]					=	NAME_Prot_Fire;
	COUNT[1]				=	2;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_Fire()
{
	self.protection[PROT_FIRE] += 2;
};
///******************************************************************************************
///	Transform
///******************************************************************************************
instance ItSc_TrfAlligator (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W aligatora";
	COUNT[5]				= 	value;
};
instance ItSc_TrfBiter (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W k¹sacza";
	COUNT[5]				= 	value;
};
instance ItSc_TrfBloodfly (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W krwiopijcê";
	COUNT[5]				= 	value;
};
instance ItSc_TrfBloodhound (ItemPR_PotionTrf)
{
	value 					=	250;
	TEXT[1]					=	"W krwawego ogara";
	COUNT[5]				= 	value;
};
instance ItSc_TrfDemon (ItemPR_PotionTrf)
{
	value 					=	350;
	TEXT[1]					=	"W demona";
	COUNT[5]				= 	value;
};
instance ItSc_TrfDragonSnapper (ItemPR_PotionTrf)
{
	value 					=	300;
	TEXT[1]					=	"W smoczego zêbacza";
	COUNT[5]				= 	value;
};
instance ItSc_TrfFireWaran (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W ognistego jaszczura";
	COUNT[5]				= 	value;
};
instance ItSc_TrfGiantBug (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W poln¹ bestiê";
	COUNT[5]				= 	value;
};
instance ItSc_TrfGiantRat (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W olbrzymiego szczura";
	COUNT[5]				= 	value;
};
instance ItSc_TrfGiantSpider (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W olbrzymiego paj¹ka";
	COUNT[5]				= 	value;
};
instance ItSc_TrfGoat (ItemPR_PotionTrf)
{
	value 					=	100;
	TEXT[1]					=	"W kozê";
	COUNT[5]				= 	value;
};
instance ItSc_TrfGoblin (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W goblina";
	COUNT[5]				= 	value;
};
instance ItSc_TrfGorilla (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W goryla";
	COUNT[5]				= 	value;
};
instance ItSc_TrfHare (ItemPR_PotionTrf)
{
	value 					=	100;
	TEXT[1]					=	"W zaj¹ca";
	COUNT[5]				= 	value;
};
instance ItSc_TrfHarpy (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W harpiê";
	COUNT[5]				= 	value;
};
instance ItSc_TrfKeiler (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W dzika";
	COUNT[5]				= 	value;
};
instance ItSc_TrfLurker (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W topielca";
	COUNT[5]				= 	value;
};
instance ItSc_TrfMinecrawler (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W pe³zacza";
	COUNT[5]				= 	value;
};
instance ItSc_TrfMolerat (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W kretoszczura";
	COUNT[5]				= 	value;
};
instance ItSc_TrfScavenger (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W œcierwojada";
	COUNT[5]				= 	value;
};
instance ItSc_TrfShadowbeast (ItemPR_PotionTrf)
{
	value 					=	300;
	TEXT[1]					=	"W cieniostwora";
	COUNT[5]				= 	value;
};
instance ItSc_TrfSheep (ItemPR_PotionTrf)
{
	value 					=	100;
	TEXT[1]					=	"W owcê";
	COUNT[5]				= 	value;
};
instance ItSc_TrfSnapper (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W zêbacza";
	COUNT[5]				= 	value;
};
instance ItSc_TrfSpint (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W spinta";
	COUNT[5]				= 	value;
};
instance ItSc_TrfSwampshark (ItemPR_PotionTrf)
{
	value 					=	250;
	TEXT[1]					=	"W b³otnego wê¿¹";
	COUNT[5]				= 	value;
};
instance ItSc_TrfTiger (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W tygrysa";
	COUNT[5]				= 	value;
};
instance ItSc_TrfTroll (ItemPR_PotionTrf)
{
	value 					=	400;
	TEXT[1]					=	"W trolla";
	COUNT[5]				= 	value;
};
instance ItSc_TrfWaran (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W jaszczura";
	COUNT[5]				= 	value;
};
instance ItSc_TrfWarg (ItemPR_PotionTrf)
{
	value 					=	200;
	TEXT[1]					=	"W warga";
	COUNT[5]				= 	value;
};
instance ItSc_TrfWolf (ItemPR_PotionTrf)
{
	value 					=	150;
	TEXT[1]					=	"W wilka";
	COUNT[5]				= 	value;
};
///******************************************************************************************
///	Other
///******************************************************************************************
instance ItPo_Digestion (ItemPR_Potion)
{
	value 					=	100;
	visual 					=	"ItPo_Stamina.3ds";
	on_state[0]				=	Use_ItPo_Digestion;
	
	description				= 	"Mikstura trawienia";
	TEXT[1]					=	"¯ywnoœæ daje 2x wiêcej nasycenia";
	TEXT[2]					=	"a efekt regeneracji ¿ycia";
	TEXT[3]					=	"jest natychmiastowy.";
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	600;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Digestion()
{
	if (Npc_IsPlayer(self))
	{
		digestionTime = 600;
		if (foodTime > 0)
		{
			Npc_ChangeAttribute (self, ATR_HITPOINTS, foodTime*2);
			foodTime = 0;
		};
	};
};
///******************************************************************************************
instance ItPo_Geist (ItemPR_Potion)
{
	value 					=	100;
	visual 					=	"ItPo_Geist.3ds";
	on_state[0]				=	Use_ItPo_Geist;
	
	description				= 	"Mikstura jasnoœci umys³u";
	TEXT[1]					=	"Czas wydaje siê dwukrotnie";
	TEXT[2]					=	"spowolniony podczas dzia³ania.";
	TEXT[4]					=	NAME_Duration;
	COUNT[4]				=	30;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Geist()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, false);
	};
};
///******************************************************************************************
instance ItPo_HealObsession (ItemPR_Potion)
{
	value 					=	100;
	visual 					=	"ItPo_Geist.3ds";
	on_state[0]				=	Use_HealObsession;
	
	description				= 	"Uleczenie z opêtania";
	COUNT[5]				= 	value;
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
	value 					=	100;
	visual 					=	"ItPo_Geist.3ds";
	on_state[0]				=	Use_ItPo_NightVision;
	
	description				= 	"Mikstura widzenia w ciemnoœci";
	TEXT[1]					=	NAME_Duration;
	COUNT[1]				=	600;
	COUNT[5]				= 	value;
};
func void Use_ItPo_NightVision()
{
	Wld_PlayEffect ("SPELLFX_NIGHTVISION", self, self, 0, 0, 0, false);
};
///******************************************************************************************
instance ItPo_Poison (ItemPR_Potion)
{
	value 					=	100;
	visual 					=	"ItPo_Poison.3ds";
	
	scemeName				=	"FASTUSE";
//	on_state[0]				=	MOBSI_POISONWEAPON_S1;
	
	description				= 	"Trucizna";
	TEXT[1]					= 	"S³u¿y do zatruwania";
	TEXT[2]					= 	"broni i strza³.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
///	Special potions
///******************************************************************************************
instance ItPo_AntiPoison (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_MegaDrink.3ds";
	on_state[0]				=	Use_ItPo_AntiPoison;
	
	description				= 	"Mikstura odpornoœci na trucizny";
	COUNT[5]				= 	value;
};
func void Use_ItPo_AntiPoison()
{
	if (Npc_IsPlayer(self))
	{
		MOD_SetPoison(-1);
	};
};
///******************************************************************************************
var int Neoras_ScUsedDragonEggDrink;

instance ItPo_DragonEggDrink (ItemPR_Potion)
{
	value 					=	500;
	visual 					=	"ItPo_MegaDrink.3ds";
	on_state[0]				=	Use_ItPo_DragonEggDrink;
	
	wear					= 	WEAR_EFFECT;
	effect					=	"SPELLFX_ITEMGLIMMER";
	
	description				= 	"Mikstura wydzieliny ze smoczych jaj";
	TEXT[3]					= 	"Skutki nieznane.";
	COUNT[5]				= 	value;
};
func void Use_ItPo_DragonEggDrink()
{
	if (Npc_IsPlayer(self))
	{
		Snd_Play("DEM_Warn");
		Npc_ChangeAttribute (self, ATR_HITPOINTS_MAX, -10);
		hpRegenPower += 5;
		Neoras_ScUsedDragonEggDrink = true;
	};
};
///******************************************************************************************
instance ItPo_MegaDrink (ItemPR_Potion)
{
	value 					=	1500;
	visual 					=	"ItPo_MegaDrink.3ds";
	on_state[0]				=	Use_ItPo_MegaDrink;
	
	wear					= 	WEAR_EFFECT;
	effect					=	"SPELLFX_ITEMGLIMMER";
	
	description				= 	"Embarla Firgasto";
	TEXT[3]					= 	"Skutki nieznane.";
	COUNT[5]				= 	value;
};
func void Use_ItPo_MegaDrink()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("spellFX_LIGHTSTAR_RED", self, self, 0, 0, 0, false);
		Snd_Play("DEM_Warn");
		hpRegenPower += 10;
	};
};
///******************************************************************************************
instance ItPo_InnosTears (ItemPR_Potion)
{
//	value 					=	50;
	visual 					=	"ItPo_Innos.3ds";
	on_state[0]				=	Use_ItPo_InnosTears;
	
	wear					= 	WEAR_EFFECT;
	effect					=	"SPELLFX_ITEMGLIMMER";
	
	description				= 	"£zy Innosa";
	TEXT[3]					= 	"Skutki nieznane.";
	COUNT[5]				= 	value;
};
func void Use_ItPo_InnosTears()
{
	if (self.guild == GIL_KDF)
	{
 		Wld_PlayEffect ("spellFX_LIGHTSTAR_BLUE", self, self, 0, 0, 0, false);
		Snd_Play ("SFX_HealObsession");
		mpRegenPower += 5;
	}
	else
	{
		Wld_PlayEffect ("VOB_MAGICBURN", self, self, 0, 0, 0, false);
		B_Say (self, self, "$Dead");
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
	};
};
