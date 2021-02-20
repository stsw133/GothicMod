///******************************************************************************************
prototype ItemPR_StonePlate (C_Item)
{
	name 					=	"Kamienna tabliczka";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	material				=	MAT_STONE;
	scemename				=	"MAPSEALED";
	
	description				=	name;
	TEXT[5]					=	NAME_Value;
	inv_rotx				=	INVCAM_X_STONEPLATE_STANDARD;
};
///******************************************************************************************
///	Stoneplates
///******************************************************************************************
instance ItWr_StonePlate (ItemPR_StonePlate)
{
	value 			=	100;
	visual			=	"ItMi_StonePlate_PowerUp_01.3DS";
	on_state[0]		=	Use_ItWr_StonePlate;
	
	TEXT[1]			= 	NAME_Bonus_Lp;
	COUNT[1]		= 	2;
	COUNT[5]		= 	value;
};
FUNC VOID Use_ItWr_StonePlate()
{
	if (Npc_GetTalentSkill(self,NPC_TALENT_LANGUAGE) == true)
	{
		self.lp += 2;
		var string concatText;
		concatText = ConcatStrings(PRINT_LearnLP, IntToString(2));
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_STR (ItemPR_StonePlate)
{
	value 			=	100;
	visual			=	"ItMi_StonePlate_PowerUp_01.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_STR;
	
	TEXT[1]			= 	NAME_Bonus_STR;
	COUNT[1]		= 	2;
	COUNT[5]		= 	value;
};
FUNC VOID Use_ItWr_StonePlate_STR()
{
	if (Npc_GetTalentSkill(self,NPC_TALENT_LANGUAGE) == true)
	{
		B_RaiseAttribute (self, ATR_STRENGTH, 2);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_STR);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_DEX (ItemPR_StonePlate)
{
	value 			=	100;
	visual			=	"ItMi_StonePlate_PowerUp_02.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_DEX;
	
	TEXT[1]			= 	NAME_Bonus_DEX;
	COUNT[1]		= 	2;
	COUNT[5]		= 	value;
};
FUNC VOID Use_ItWr_StonePlate_DEX()
{
	if (Npc_GetTalentSkill(self,NPC_TALENT_LANGUAGE) == true)
	{
		B_RaiseAttribute (self, ATR_DEXTERITY, 2);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_DEX);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_Power (ItemPR_StonePlate)
{
	value 			=	100;
	visual			=	"ItMi_StonePlate_PowerUp_03.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_Power;
	
	TEXT[1]			= 	NAME_Bonus_Power;
	COUNT[1]		= 	2;
	COUNT[5]		= 	value;
};
FUNC VOID Use_ItWr_StonePlate_Power()
{
	if (Npc_GetTalentSkill(self,NPC_TALENT_LANGUAGE) == true)
	{
		B_RaiseAttribute (self, ATR_POWER, 2);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_Power);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_Mana (ItemPR_StonePlate)
{
	value 			=	100;
	visual			=	"ItMi_StonePlate_PowerUp_04.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_Mana;
	
	TEXT[1]			= 	NAME_Bonus_ManaMax;
	COUNT[1]		= 	2;
	COUNT[5]		= 	value;
};
FUNC VOID Use_ItWr_StonePlate_Mana()
{
	if (Npc_GetTalentSkill(self,NPC_TALENT_LANGUAGE) == true)
	{
		B_RaiseAttribute (self, ATR_MANA_MAX, 2);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_Mana);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_HP (ItemPR_StonePlate)
{
	value 			=	100;
	visual			=	"ItMi_StonePlate_PowerUp_05.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_HP;
	
	TEXT[1]			= 	NAME_Bonus_HpMax;
	COUNT[1]		= 	2*HP_PER_LP;
	COUNT[5]		= 	value;
};
FUNC VOID Use_ItWr_StonePlate_HP()
{
	if (Npc_GetTalentSkill(self,NPC_TALENT_LANGUAGE) == true)
	{
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 2*HP_PER_LP);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_HP);
	};
};
///******************************************************************************************
func void Wld_InsertRandomStoneplate (var string spawnPoint)
{
	var int rand; rand = Hlp_Random(5);
	
	if (rand == 0)		{	Wld_InsertItem (ItWr_StonePlate_STR, spawnPoint);	}
	else if (rand == 1)	{	Wld_InsertItem (ItWr_StonePlate_DEX, spawnPoint);	}
	else if (rand == 2)	{	Wld_InsertItem (ItWr_StonePlate_Power, spawnPoint);	}
	else if (rand == 3)	{	Wld_InsertItem (ItWr_StonePlate_Mana, spawnPoint);	}
	else				{	Wld_InsertItem (ItWr_StonePlate_HP, spawnPoint);	};
};
