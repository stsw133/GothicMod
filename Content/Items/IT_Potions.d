
const int	Value_MegaDrink			=	1800;		const int	STRorDEX_MegaDrink = 15; //Joly: MegaBoost am Ende des Spiels!!!!!!!!

//ADDON
const int 	Value_ManaTrunk			=   200;		
const int 	Value_HpTrunk			=   150;

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
	value 			=	30;
	visual 			=	"ItPo_Health_01.3ds";
	on_state[0]		=	Use_ItPo_Health_01;
	
	description		= 	"S³aba mikstura lecznicza";
	TEXT[1]			= 	NAME_Percent_HP;
	COUNT[1]		=	30;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	3;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Health_01()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 3);
		MOD_PoisonOFF();
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, (self.attribute[ATR_HITPOINTS_MAX]*3)/10);
	};
};

instance ItPo_Health_02 (ItemPR_Potion)
{
	value 			=	60;
	visual 			=	"ItPo_Health_02.3ds";
	on_state[0]		=	Use_ItPo_Health_02;
	
	description		= 	"Mikstura lecznicza";
	TEXT[1]			= 	NAME_Percent_HP;
	COUNT[1]		=	60;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	6;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Health_02()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 6);
		MOD_PoisonOFF();
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, (self.attribute[ATR_HITPOINTS_MAX]*6)/10);
	};
};

instance ItPo_Health_03 (ItemPR_Potion)
{
	value 			=	90;
	visual 			=	"ItPo_Health_03.3ds";
	on_state[0]		=	Use_ItPo_Health_03;
	
	description		= 	"Silna mikstura lecznicza";
	TEXT[1]			= 	NAME_Percent_HP;
	COUNT[1]		=	90;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	9;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Health_03()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_HITPOINTS, 9);
		MOD_PoisonOFF();
	}
	else
	{
		Npc_ChangeAttribute (self, ATR_HITPOINTS, (self.attribute[ATR_HITPOINTS_MAX]*9)/10);
	};
};

instance ItPo_Health_Addon_04 (ItemPR_Potion)
{
	value 			=	150;
	visual 			=	"ItPo_Health_03.3ds";
	on_state[0]		=	Use_ItPo_Health_04;
	
	description		= 	"Potê¿na mikstura lecznicza";
	TEXT[1]			= 	NAME_Percent_HP;
	COUNT[1]		=	100;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Health_04()
{
	self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	
	if (Npc_IsPlayer(self))
	{
		MOD_PoisonOFF();
	};
};

///******************************************************************************************
///	Mana
///******************************************************************************************
instance ItPo_Mana_01 (ItemPR_Potion)
{
	value 			=	30;
	visual 			=	"ItPo_Mana_01.3ds";
	on_state[0]		=	Use_ItPo_Mana_01;
	
	description		= 	"S³aba mikstura many";
	TEXT[1]			= 	NAME_Percent_Mana;
	COUNT[1]		=	30;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	3;
	COUNT[5]		= 	value;
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

instance ItPo_Mana_02 (ItemPR_Potion)
{
	value 			=	60;
	visual 			=	"ItPo_Mana_02.3ds";
	on_state[0]		=	Use_ItPo_Mana_02;
	
	description		= 	"Mikstura many";
	TEXT[1]			= 	NAME_Percent_Mana;
	COUNT[1]		=	60;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	6;
	COUNT[5]		= 	value;
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

instance ItPo_Mana_03 (ItemPR_Potion)
{
	value 			=	90;
	visual 			=	"ItPo_Mana_03.3ds";
	on_state[0]		=	Use_ItPo_Mana_03;
	
	description		= 	"Silna mikstura many";
	TEXT[1]			= 	NAME_Percent_Mana;
	COUNT[1]		=	90;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	9;
	COUNT[5]		= 	value;
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

instance ItPo_Mana_Addon_04 (ItemPR_Potion)
{
	value 			=	150;
	visual 			=	"ItPo_Mana_03.3ds";
	on_state[0]		=	Use_ItPo_Mana_04;
	
	description		= 	"Potê¿na mikstura many";
	TEXT[1]			= 	NAME_Percent_Mana;
	COUNT[1]		=	100;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Mana_04()
{
	self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
};

///******************************************************************************************
///	Perm
///******************************************************************************************
instance ItPo_Perm_STR (ItemPR_Potion)
{
	value 			=	600;
	visual 			=	"ItPo_Perm_STR.3ds";
	on_state[0]		=	Use_ItPo_Perm_STR;
	
	description		= 	"Eliksir si³y";
	TEXT[1]			= 	NAME_Bonus_Str;
	COUNT[1]		= 	3;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Perm_STR()
{
	B_RaiseAttribute (self, ATR_STRENGTH, 3);
};

instance ItPo_Perm_DEX (ItemPR_Potion)
{
	value 			=	600;
	visual 			=	"ItPo_Perm_DEX.3ds";
	on_state[0]		=	Use_ItPo_Perm_DEX;
	
	description		= 	"Eliksir zrêcznoœci";
	TEXT[1]			= 	NAME_Bonus_Dex;
	COUNT[1]		= 	3;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Perm_DEX()
{
	B_RaiseAttribute (self, ATR_DEXTERITY, 3);
};

instance ItPo_Perm_Power (ItemPR_Potion)
{
	value 			=	600;
	visual 			=	"ItPo_Perm_Mana.3ds";
	on_state[0]		=	Use_ItPo_Perm_Power;
	
	description		= 	"Eliksir mocy";
	TEXT[1]			= 	NAME_Bonus_Power;
	COUNT[1]		= 	3;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Perm_Power()
{
	B_RaiseAttribute (self, ATR_POWER, 3);
};

instance ItPo_Perm_Mana (ItemPR_Potion)
{
	value 			=	600;
	visual 			=	"ItPo_Perm_Mana.3ds";
	on_state[0]		=	Use_ItPo_Perm_Mana;
	
	description		= 	"Eliksir ducha";
	TEXT[1]			= 	NAME_Bonus_ManaMax;
	COUNT[1]		= 	3;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Perm_Mana()
{
	B_RaiseAttribute (self, ATR_MANA_MAX, 3);
};

instance ItPo_Perm_Health (ItemPR_Potion)
{
	value 			=	600;
	visual 			=	"ItPo_Perm_Health.3ds";
	on_state[0]		=	Use_ItPo_Perm_Health;
	
	description		= 	"Eliksir ¿ywotnoœci";
	TEXT[1]			= 	NAME_Bonus_HpMax;
	COUNT[1]		= 	3*HP_PER_LP;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Perm_Health()
{
	B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 3*HP_PER_LP);
};

///******************************************************************************************
///	Transform
///******************************************************************************************
instance ItPo_TrfWolf (ItemPR_Potion)
{
	value 			=	120;
	visual 			=	"ItPo_MegaDrink.3ds";
	on_state[0]		=	Use_ItPo_TrfWolf;
	
	description		= 	"Mikstura przemiany";
	TEXT[1]			=	"W wilka";
	COUNT[5]		= 	value;
};
func void Use_ItPo_TrfWolf()
{
	Npc_SetActiveSpellInfo (self, Wolf);
};

instance ItPo_TrfWaran (ItemPR_Potion)
{
	value 			=	150;
	visual 			=	"ItPo_MegaDrink.3ds";
	on_state[0]		=	Use_ItPo_TrfWaran;
	
	description		= 	"Mikstura przemiany";
	TEXT[1]			=	"W jaszczura";
	COUNT[5]		= 	value;
};
func void Use_ItPo_TrfWaran()
{
	Npc_SetActiveSpellInfo (self, Waran);
};

///******************************************************************************************
///	Other
///******************************************************************************************
instance ItPo_Speed (ItemPR_Potion)
{
	value 			=	60;
	visual 			=	"ItPo_Speed.3ds";
	on_state[0]		=	Use_ItPo_Speed;
	
	description		= 	"Mikstura energii";
	TEXT[1]			= 	NAME_Percent_Energy;
	COUNT[1]		=	120;
	TEXT[2]			=	NAME_Duration;
	COUNT[2]		=	12;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Speed()
{
	if (Npc_IsPlayer(self))
	{
		PotionRG_ADD (ATR_ENERGY_MAX, 12);
	}
	else
	{
		Mdl_ApplyOverlayMDSTimed (self, "HUMANS_FASTRUN.MDS", 10000);
	};
};

instance ItPo_Geist (ItemPR_Potion)
{
	value 			=	60;
	visual 			=	"ItPo_Speed.3ds";
	on_state[0]		=	Use_ItPo_Geist;
	
	description		= 	"Mikstura jasnoœci umys³u";
	COUNT[5]		= 	value;
};
func void Use_ItPo_Geist()
{
	if (Npc_IsPlayer(self))
	{
		Wld_PlayEffect ("SLOW_TIME", self, self, 0, 0, 0, false);
	};
};

instance ItPo_Poison (ItemPR_Potion)
{
	value 			=	60;
	visual 			=	"ItPo_Speed.3ds";
//	scemeName		=	"FASTUSE";
//	on_state[0]		=	MOBSI_POISONWEAPON_S1;
	
	description		= 	"Trucizna";
	TEXT[1]			= 	"S³u¿y do zatruwania";
	TEXT[2]			= 	"broni i strza³.";
	COUNT[5]		= 	value;
};

instance ItPo_Fire (ItemPR_Potion)
{
	value 			=	600;
	visual 			=	"ItPo_Speed.3ds";
	on_state[0]		=	Use_ItPo_Fire;
	
	description		= 	"S³oneczna mikstura";
	TEXT[1]			=	NAME_Prot_Fire;
	COUNT[1]		=	2;
	COUNT[5]		= 	value;
};
func void Use_ItPo_Fire()
{
	self.protection[PROT_FIRE] += 2;
};

/******************************************************************************************/
//	MegaDrink	Kapitel 6																      //
/******************************************************************************************/

INSTANCE ItPo_MegaDrink (C_Item)
{
	name 			=	"Embarla Firgasto";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	Value_MegaDrink;	

	visual 			=	"ItPo_Perm_Mana.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	UseItPo_MegaDrink;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	name;
	
	TEXT[3]			= 	"Skutki nieznane.";				

	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID UseItPo_MegaDrink()
		{
			if (self.attribute[ATR_STRENGTH] < self.attribute[ATR_DEXTERITY])
				{
					B_RaiseAttribute	(self, ATR_DEXTERITY,	STRorDEX_MegaDrink);
				}
			else
				{
					B_RaiseAttribute	(self, ATR_STRENGTH,	STRorDEX_MegaDrink);
				};
	
			Npc_ChangeAttribute	(self,	ATR_MANA, - ATR_MANA); //Joly: gemäß des Rezeptes
			Snd_Play ("DEM_Warn");
		};
