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
///	Health
///******************************************************************************************
instance ItPo_Health_01 (ItemPR_Potion)
{
	value 					=	30;
	visual 					=	"ItPo_Health_01.3ds";
	on_state[0]				=	Use_ItPo_Health_01;
	
	description				= 	"S³aba mikstura lecznicza";
	TEXT[1]					= 	NAME_Percent_HP;
	COUNT[1]				=	30;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_01()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 3);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, (self.attribute[ATR_HITPOINTS_MAX]*3)/10);
	};
	MOD_PoisonOFF(self);
};
///******************************************************************************************
instance ItPo_Health_02 (ItemPR_Potion)
{
	value 					=	60;
	visual 					=	"ItPo_Health_02.3ds";
	on_state[0]				=	Use_ItPo_Health_02;
	
	description				= 	"Mikstura lecznicza";
	TEXT[1]					= 	NAME_Percent_HP;
	COUNT[1]				=	60;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	6;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_02()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 6);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, (self.attribute[ATR_HITPOINTS_MAX]*6)/10);
	};
	MOD_PoisonOFF(self);
};
///******************************************************************************************
instance ItPo_Health_03 (ItemPR_Potion)
{
	value 					=	90;
	visual 					=	"ItPo_Health_03.3ds";
	on_state[0]				=	Use_ItPo_Health_03;
	
	description				= 	"Silna mikstura lecznicza";
	TEXT[1]					= 	NAME_Percent_HP;
	COUNT[1]				=	90;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	9;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_03()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 9);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, (self.attribute[ATR_HITPOINTS_MAX]*9)/10);
	};
	MOD_PoisonOFF(self);
};
///******************************************************************************************
instance ItPo_Health_Addon_04 (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Health_04.3ds";
	on_state[0]				=	Use_ItPo_Health_04;
	
	description				= 	"Potê¿na mikstura lecznicza";
	TEXT[1]					= 	NAME_Percent_HP;
	COUNT[1]				=	300;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	30;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Health_04()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 30);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, self.attribute[ATR_HITPOINTS_MAX]*3);
	};
	MOD_PoisonOFF(self);
};
///******************************************************************************************
///	Mana
///******************************************************************************************
instance ItPo_Mana_01 (ItemPR_Potion)
{
	value 					=	30;
	visual 					=	"ItPo_Mana_01.3ds";
	on_state[0]				=	Use_ItPo_Mana_01;
	
	description				= 	"S³aba mikstura many";
	TEXT[1]					= 	NAME_Percent_Mana;
	COUNT[1]				=	30;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_01()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 3);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, (self.attribute[ATR_MANA_MAX]*3)/10);
	};
};
///******************************************************************************************
instance ItPo_Mana_02 (ItemPR_Potion)
{
	value 					=	60;
	visual 					=	"ItPo_Mana_02.3ds";
	on_state[0]				=	Use_ItPo_Mana_02;
	
	description				= 	"Mikstura many";
	TEXT[1]					= 	NAME_Percent_Mana;
	COUNT[1]				=	60;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	6;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_02()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 6);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, (self.attribute[ATR_MANA_MAX]*6)/10);
	};
};
///******************************************************************************************
instance ItPo_Mana_03 (ItemPR_Potion)
{
	value 					=	90;
	visual 					=	"ItPo_Mana_03.3ds";
	on_state[0]				=	Use_ItPo_Mana_03;
	
	description				= 	"Silna mikstura many";
	TEXT[1]					= 	NAME_Percent_Mana;
	COUNT[1]				=	90;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	9;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_03()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 9);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, (self.attribute[ATR_MANA_MAX]*9)/10);
	};
};
///******************************************************************************************
instance ItPo_Mana_Addon_04 (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Mana_04.3ds";
	on_state[0]				=	Use_ItPo_Mana_04;
	
	description				= 	"Potê¿na mikstura many";
	TEXT[1]					= 	NAME_Percent_Mana;
	COUNT[1]				=	300;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	30;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Mana_04()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_MANA, 30);
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_MANA, self.attribute[ATR_MANA_MAX]*3);
	};
};
///******************************************************************************************
///	Temp
///******************************************************************************************
instance ItPo_Temp_Health (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Perm_Health.3ds";
	on_state[0]				=	Use_ItPo_Temp_Health;
	
	description				= 	"Czasowy eliksir ¿ywotnoœci";
	TEXT[1]					= 	NAME_Bonus_HpMax;
	COUNT[1]				= 	10*HP_PER_LP;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_Health()
{
	//B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 3*HP_PER_LP);
};
///******************************************************************************************
instance ItPo_Temp_Mana (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Perm_Mana.3ds";
	on_state[0]				=	Use_ItPo_Temp_Mana;
	
	description				= 	"Czasowy eliksir ducha";
	TEXT[1]					= 	NAME_Bonus_ManaMax;
	COUNT[1]				= 	10;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_Mana()
{
	//B_RaiseAttribute (self, ATR_MANA_MAX, 3);
};
///******************************************************************************************
instance ItPo_Temp_STR (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Perm_STR.3ds";
	on_state[0]				=	Use_ItPo_Temp_STR;
	
	description				= 	"Czasowy eliksir si³y";
	TEXT[1]					= 	NAME_Bonus_Str;
	COUNT[1]				= 	10;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_STR()
{
	//B_RaiseAttribute (self, ATR_STRENGTH, 3);
};
///******************************************************************************************
instance ItPo_Temp_DEX (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Perm_DEX.3ds";
	on_state[0]				=	Use_ItPo_Temp_DEX;
	
	description				= 	"Czasowy eliksir zrêcznoœci";
	TEXT[1]					= 	NAME_Bonus_Dex;
	COUNT[1]				= 	10;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_DEX()
{
	//B_RaiseAttribute (self, ATR_DEXTERITY, 3);
};
///******************************************************************************************
instance ItPo_Temp_Power (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Perm_Power.3ds";
	on_state[0]				=	Use_ItPo_Temp_Power;
	
	description				= 	"Czasowy eliksir mocy";
	TEXT[1]					= 	NAME_Bonus_Power;
	COUNT[1]				= 	10;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_Power()
{
	//B_RaiseAttribute (self, ATR_POWER, 3);
};
///******************************************************************************************
instance ItPo_Temp_Fire (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ItPo_Perm_Fire.3ds";
	on_state[0]				=	Use_ItPo_Temp_Fire;
	
	description				= 	"Czasowy eliksir odpornoœci na ogieñ";
	TEXT[1]					=	NAME_Prot_Fire;
	COUNT[1]				= 	10;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Temp_Fire()
{
	//self.protection[PROT_FIRE] += 2;
};
///******************************************************************************************
///	Perm
///******************************************************************************************
instance ItPo_Perm_Health (ItemPR_Potion)
{
	value 					=	600;
	visual 					=	"ItPo_Perm_Health.3ds";
	on_state[0]				=	Use_ItPo_Perm_Health;
	
	description				= 	"Trwa³y eliksir ¿ywotnoœci";
	TEXT[1]					= 	NAME_Bonus_HpMax;
	COUNT[1]				= 	3*HP_PER_LP;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_Health()
{
	B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 3*HP_PER_LP);
};
///******************************************************************************************
instance ItPo_Perm_Mana (ItemPR_Potion)
{
	value 					=	600;
	visual 					=	"ItPo_Perm_Mana.3ds";
	on_state[0]				=	Use_ItPo_Perm_Mana;
	
	description				= 	"Trwa³y eliksir ducha";
	TEXT[1]					= 	NAME_Bonus_ManaMax;
	COUNT[1]				= 	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_Mana()
{
	B_RaiseAttribute (self, ATR_MANA_MAX, 3);
};
///******************************************************************************************
instance ItPo_Perm_STR (ItemPR_Potion)
{
	value 					=	600;
	visual 					=	"ItPo_Perm_STR.3ds";
	on_state[0]				=	Use_ItPo_Perm_STR;
	
	description				= 	"Trwa³y eliksir si³y";
	TEXT[1]					= 	NAME_Bonus_Str;
	COUNT[1]				= 	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_STR()
{
	B_RaiseAttribute (self, ATR_STRENGTH, 3);
};
///******************************************************************************************
instance ItPo_Perm_DEX (ItemPR_Potion)
{
	value 					=	600;
	visual 					=	"ItPo_Perm_DEX.3ds";
	on_state[0]				=	Use_ItPo_Perm_DEX;
	
	description				= 	"Trwa³y eliksir zrêcznoœci";
	TEXT[1]					= 	NAME_Bonus_Dex;
	COUNT[1]				= 	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_DEX()
{
	B_RaiseAttribute (self, ATR_DEXTERITY, 3);
};
///******************************************************************************************
instance ItPo_Perm_Power (ItemPR_Potion)
{
	value 					=	600;
	visual 					=	"ItPo_Perm_Power.3ds";
	on_state[0]				=	Use_ItPo_Perm_Power;
	
	description				= 	"Trwa³y eliksir mocy";
	TEXT[1]					= 	NAME_Bonus_Power;
	COUNT[1]				= 	3;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Perm_Power()
{
	B_RaiseAttribute (self, ATR_POWER, 3);
};
///******************************************************************************************
instance ItPo_Perm_Fire (ItemPR_Potion)
{
	value 					=	600;
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
instance ItSc_TrfAlligator (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfAlligator;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W aligatora";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfAlligator()
{
	TrfStoneID = ID_ALLIGATOR;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfBiter (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfBiter;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W k¹sacza";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfBiter()
{
	TrfStoneID = ID_BITER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfBloodfly (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfBloodfly;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W krwiopijcê";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfBloodfly()
{
	TrfStoneID = ID_BLOODFLY;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfBloodhound (ItemPR_Potion)
{
	value 					=	250;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfBloodhound;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W krwawego ogara";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfBloodhound()
{
	TrfStoneID = ID_BLOODHOUND;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfDemon (ItemPR_Potion)
{
	value 					=	350;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfDemon;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W demona";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfDemon()
{
	TrfStoneID = ID_DEMON;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfDragonSnapper (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfDragonSnapper;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W smoczego zêbacza";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfDragonSnapper()
{
	TrfStoneID = ID_DRAGONSNAPPER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfFireWaran (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfFireWaran;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W ognistego jaszczura";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfFireWaran()
{
	TrfStoneID = ID_FIREWARAN;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfGiantBug (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfGiantBug;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W poln¹ bestiê";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfGiantBug()
{
	TrfStoneID = ID_GIANT_BUG;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfGiantRat (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfGiantRat;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W olbrzymiego szczura";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfGiantRat()
{
	TrfStoneID = ID_GIANT_RAT;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfGiantSpider (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfGiantSpider;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W olbrzymiego paj¹ka";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfGiantSpider()
{
	TrfStoneID = ID_GIANT_SPIDER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfGoat (ItemPR_Potion)
{
	value 					=	100;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfGoat;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W kozê";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfGoat()
{
	TrfStoneID = ID_GOAT;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfGoblin (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfGoblin;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W goblina";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfGoblin()
{
	TrfStoneID = ID_GOBBO;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfGorilla (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfGorilla;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W goryla";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfGorilla()
{
	TrfStoneID = ID_GORILLA;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfHare (ItemPR_Potion)
{
	value 					=	100;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfHare;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W zaj¹ca";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfHare()
{
	TrfStoneID = ID_HARE;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfHarpy (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfHarpy;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W harpiê";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfHarpy()
{
	TrfStoneID = ID_HARPY;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfKeiler (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfKeiler;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W dzika";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfKeiler()
{
	TrfStoneID = ID_KEILER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfLurker (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfLurker;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W topielca";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfLurker()
{
	TrfStoneID = ID_LURKER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfMinecrawler (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfMinecrawler;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W pe³zacza";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfMinecrawler()
{
	TrfStoneID = ID_MINECRAWLER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfMolerat (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfMolerat;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W kretoszczura";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfMolerat()
{
	TrfStoneID = ID_MOLERAT;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfScavenger (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfScavenger;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W œcierwojada";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfScavenger()
{
	TrfStoneID = ID_SCAVENGER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfShadowbeast (ItemPR_Potion)
{
	value 					=	300;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfShadowbeast;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W cieniostwora";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfShadowbeast()
{
	TrfStoneID = ID_SHADOWBEAST;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfSheep (ItemPR_Potion)
{
	value 					=	100;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfSheep;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W owcê";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfSheep()
{
	TrfStoneID = ID_SHEEP;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfSnapper (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfSnapper;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W zêbacza";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfSnapper()
{
	TrfStoneID = ID_SNAPPER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfSpint (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfSpint;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W spinta";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfSpint()
{
	TrfStoneID = ID_SPINT;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfSwampshark (ItemPR_Potion)
{
	value 					=	250;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfSwampshark;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W b³otnego wê¿¹";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfSwampshark()
{
	TrfStoneID = ID_SWAMPSHARK;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfTiger (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfTiger;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W tygrysa";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfTiger()
{
	TrfStoneID = ID_TIGER;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfTroll (ItemPR_Potion)
{
	value 					=	400;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfTroll;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W trolla";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfTroll()
{
	TrfStoneID = ID_TROLL;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfWaran (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfWaran;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W jaszczura";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfWaran()
{
	TrfStoneID = ID_WARAN;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfWarg (ItemPR_Potion)
{
	value 					=	200;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfWarg;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W warga";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfWarg()
{
	TrfStoneID = ID_WARG;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
instance ItSc_TrfWolf (ItemPR_Potion)
{
	value 					=	150;
	visual 					=	"ITPO_TRANSFORM.3ds";
	on_state[0]				=	Use_ItPo_TrfWolf;
	
	description				= 	"Mikstura przemiany";
	TEXT[1]					=	"W wilka";
	COUNT[5]				= 	value;
};
func void Use_ItPo_TrfWolf()
{
	TrfStoneID = ID_WOLF;
	AI_ReadySpell (self, SPL_Transform, 0);
};
///******************************************************************************************
///	Other
///******************************************************************************************
instance ItPo_Digestion (ItemPR_Potion)
{
	value 					=	30;
	visual 					=	"ItPo_Stamina.3ds";
	on_state[0]				=	Use_ItPo_Digestion;
	
	description				= 	"Mikstura trawienia";
	TEXT[1]					=	NAME_Duration;
	COUNT[1]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Digestion()
{
	if (Npc_IsPlayer(self))
	{
		digestionTime = 300;
	};
};
///******************************************************************************************
instance ItPo_NightVision (ItemPR_Potion)
{
	value 					=	30;
	visual 					=	"ItPo_Geist.3ds";
	on_state[0]				=	Use_ItPo_NightVision;
	
	description				= 	"Mikstura widzenia w ciemnoœci";
	TEXT[1]					=	NAME_Duration;
	COUNT[1]				=	300;
	COUNT[5]				= 	value;
};
func void Use_ItPo_NightVision()
{
	Wld_PlayEffect ("SPELLFX_NIGHTVISION", self, self, 0, 0, 0, false);
};
///******************************************************************************************
instance ItPo_Speed (ItemPR_Potion)
{
	value 					=	60;
	visual 					=	"ItPo_Speed.3ds";
	on_state[0]				=	Use_ItPo_Speed;
	
	description				= 	"Mikstura energii";
	TEXT[1]					= 	NAME_Percent_Energy;
	COUNT[1]				=	300;
	TEXT[2]					=	NAME_Duration;
	COUNT[2]				=	30;
	COUNT[5]				= 	value;
};
func void Use_ItPo_Speed()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_ENERGY_MAX, 30);
	}
	else
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_FASTRUN.MDS", 30 * 1000);
	};
};
///******************************************************************************************
instance ItPo_Geist (ItemPR_Potion)
{
	value 					=	60;
	visual 					=	"ItPo_Geist.3ds";
	on_state[0]				=	Use_ItPo_Geist;
	
	description				= 	"Mikstura jasnoœci umys³u";
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
instance ItPo_Poison (ItemPR_Potion)
{
	value 					=	60;
	visual 					=	"ItPo_Poison.3ds";
//	scemeName				=	"FASTUSE";
//	on_state[0]				=	MOBSI_POISONWEAPON_S1;
	
	description				= 	"Trucizna";
	TEXT[1]					= 	"S³u¿y do zatruwania";
	TEXT[2]					= 	"broni i strza³.";
	COUNT[5]				= 	value;
};
///******************************************************************************************
instance ItPo_HealObsession (ItemPR_Potion)
{
	name 					=	"Lekarstwo";
	value 					=	60;
	visual 					=	"ItMi_Flask.3ds";
	on_state[0]				=	Use_HealObsession;
	
	description				= 	"Uleczenie z opêtania";
	COUNT[5]				= 	value;
};
func void Use_HealObsession()
{
	B_ClearSCObsession(self);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_VIOLET", self, self, 0, 0, 0, false);
	Snd_Play ("SFX_HealObsession");
};
///******************************************************************************************
///	Special potions
///******************************************************************************************
var int Neoras_SCUsedDragonEggDrink;

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
		hpRegenPower += 1;
		Snd_Play("DEM_Warn");
		Neoras_SCUsedDragonEggDrink = true;
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
		hpRegenPower += 10;
		Snd_Play("DEM_Warn");
	};
};
///******************************************************************************************
instance ItPo_InnosTears (ItemPR_Potion)
{
	value 					=	30;
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
		B_RaiseAttribute (self, ATR_MANA_MAX, 10);
		
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];		 
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
		PrintScreen (PRINT_FullyHealed, -1, 55, FONT_Screen, 2);
	}
	else
	{
		Wld_PlayEffect ("VOB_MAGICBURN", self, self, 0, 0, 0, false);
		B_Say (self, self, "$Dead");
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
	};
};
