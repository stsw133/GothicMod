///******************************************************************************************
prototype ItemPR_StonePlate (C_Item)
{
	name 					=	"Kamienna tabliczka";
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	
	value 					=	100;
	material				=	MAT_STONE;
	scemename				=	"MAPSEALED";
	
	description				=	name;
	TEXT[5]					=	NAME_Value;
	COUNT[5]				= 	value;
	inv_rotx				=	INVCAM_X_STONEPLATE_STANDARD;
};
///******************************************************************************************
///	Stoneplates
///******************************************************************************************
instance ItWr_StonePlate (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_01.3DS";
	on_state[0]		=	Use_ItWr_StonePlate;
	
	TEXT[1]			= 	NAME_Bonus_Lp;
	COUNT[1]		= 	2;
};
func void Use_ItWr_StonePlate()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute(self, 0, 2);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_HP (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_05.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_HP;
	
	TEXT[1]			= 	NAME_Bonus_HpMax;
	COUNT[1]		= 	2*HP_PER_LP;
};
func void Use_ItWr_StonePlate_HP()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
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
instance ItWr_StonePlate_Mana (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_04.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_Mana;
	
	TEXT[1]			= 	NAME_Bonus_ManaMax;
	COUNT[1]		= 	2;
};
func void Use_ItWr_StonePlate_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
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
instance ItWr_StonePlate_Energy (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_05.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_Energy;
	
	TEXT[1]			= 	NAME_Bonus_EneMax;
	COUNT[1]		= 	5;
};
func void Use_ItWr_StonePlate_Energy()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		self.aivar[AIV_Energy_MAX] += 5;
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_Energy);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_STR (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_01.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_STR;
	
	TEXT[1]			= 	NAME_Bonus_STR;
	COUNT[1]		= 	2;
	
};
func void Use_ItWr_StonePlate_STR()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
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
	visual			=	"ItMi_StonePlate_PowerUp_02.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_DEX;
	
	TEXT[1]			= 	NAME_Bonus_DEX;
	COUNT[1]		= 	2;
};
func void Use_ItWr_StonePlate_DEX()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
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
	visual			=	"ItMi_StonePlate_PowerUp_03.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_Power;
	
	TEXT[1]			= 	NAME_Bonus_Power;
	COUNT[1]		= 	2;
};
func void Use_ItWr_StonePlate_Power()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
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
instance ItWr_StonePlate_1h (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_01.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_1h;
	
	TEXT[1]			= 	NAME_Bonus_1H;
	COUNT[1]		= 	1;
};
func void Use_ItWr_StonePlate_1h()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_AddFightSkill (self, NPC_TALENT_1H, 1);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_1h);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_2h (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_02.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_2h;
	
	TEXT[1]			= 	NAME_Bonus_2H;
	COUNT[1]		= 	1;
};
func void Use_ItWr_StonePlate_2h()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_AddFightSkill (self, NPC_TALENT_2H, 1);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_2h);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_Bow (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_03.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_Bow;
	
	TEXT[1]			= 	NAME_Bonus_Bow;
	COUNT[1]		= 	1;
};
func void Use_ItWr_StonePlate_Bow()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_AddFightSkill (self, NPC_TALENT_BOW, 1);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_Bow);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_CBow (ItemPR_StonePlate)
{
	visual			=	"ItMi_StonePlate_PowerUp_04.3DS";
	on_state[0]		=	Use_ItWr_StonePlate_CBow;
	
	TEXT[1]			= 	NAME_Bonus_CBow;
	COUNT[1]		= 	1;
};
func void Use_ItWr_StonePlate_CBow()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_AddFightSkill (self, NPC_TALENT_CROSSBOW, 1);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_CBow);
	};
};
///******************************************************************************************
func void Wld_InsertRandomStoneplate (var string spawnPoint)
{
	var int rand; rand = Hlp_Random(6);
	
	if		(rand == 0)	{	Wld_InsertItem (ItWr_StonePlate_HP, spawnPoint);	}
	else if (rand == 1)	{	Wld_InsertItem (ItWr_StonePlate_Mana, spawnPoint);	}
	else if (rand == 2)	{	Wld_InsertItem (ItWr_StonePlate_Energy, spawnPoint);}
	else if (rand == 3)	{	Wld_InsertItem (ItWr_StonePlate_STR, spawnPoint);	}
	else if (rand == 4)	{	Wld_InsertItem (ItWr_StonePlate_DEX, spawnPoint);	}
//	else if (rand == 5)	{	Wld_InsertItem (ItWr_StonePlate_Power, spawnPoint);	}
//	else if (rand == 6)	{	Wld_InsertItem (ItWr_StonePlate_1h, spawnPoint);	}
//	else if (rand == 7)	{	Wld_InsertItem (ItWr_StonePlate_2h, spawnPoint);	}
//	else if (rand == 8)	{	Wld_InsertItem (ItWr_StonePlate_Bow, spawnPoint);	}
//	else				{	Wld_InsertItem (ItWr_StonePlate_CBow, spawnPoint);	};
	else				{	Wld_InsertItem (ItWr_StonePlate_Power, spawnPoint);	};
};
///******************************************************************************************
func int C_ScHasMagicStonePlate()
{
	if (Npc_HasItems(hero, ItWr_StonePlate_HP))
	|| (Npc_HasItems(hero, ItWr_StonePlate_Mana))
	|| (Npc_HasItems(hero, ItWr_StonePlate_Energy))
	|| (Npc_HasItems(hero, ItWr_StonePlate_STR))
	|| (Npc_HasItems(hero, ItWr_StonePlate_DEX))
	|| (Npc_HasItems(hero, ItWr_StonePlate_Power))
	|| (Npc_HasItems(hero, ItWr_StonePlate_1h))
	|| (Npc_HasItems(hero, ItWr_StonePlate_2h))
	|| (Npc_HasItems(hero, ItWr_StonePlate_Bow))
	|| (Npc_HasItems(hero, ItWr_StonePlate_CBow))
	{
		return true;
	};
};
