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
/*
instance ItWr_StonePlate (ItemPR_StonePlate)
{
	visual					=	"ItMi_StonePlate_PowerUp_01.3DS";
	on_state[0]				=	Use_ItWr_StonePlate;
	
	TEXT[1]					= 	NAME_Bonus_Lp;
	COUNT[1]				= 	2;
	TEXT[2]					=	NAME_Bonus_Exp;
	COUNT[2]				=	200;
};
func void Use_ItWr_StonePlate()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute(self, 0, 2);
		B_GivePlayerExp(200);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate);
	};
};
*/
///******************************************************************************************
instance ItWr_StonePlate_HP (ItemPR_StonePlate)
{
	visual					=	"ItMi_StonePlate_PowerUp_05.3DS";
	on_state[0]				=	Use_ItWr_StonePlate_HP;
	
	TEXT[1]					= 	NAME_Bonus_HpMax;
	COUNT[1]				= 	2*HP_PER_LP;
	TEXT[2]					=	NAME_Bonus_Exp;
	COUNT[2]				=	200;
};
func void Use_ItWr_StonePlate_HP()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 2*HP_PER_LP);
		B_GivePlayerExp(200);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_HP);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_MP (ItemPR_StonePlate)
{
	visual					=	"ItMi_StonePlate_PowerUp_04.3DS";
	on_state[0]				=	Use_ItWr_StonePlate_MP;
	
	TEXT[1]					= 	NAME_Bonus_MpMax;
	COUNT[1]				= 	2*MP_PER_LP;
	TEXT[2]					=	NAME_Bonus_Exp;
	COUNT[2]				=	200;
};
func void Use_ItWr_StonePlate_MP()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute (self, ATR_MANA_MAX, 2*MP_PER_LP);
		B_GivePlayerExp(200);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_MP);
	};
};
///******************************************************************************************
/*
instance ItWr_StonePlate_Stamina (ItemPR_StonePlate)
{
	visual					=	"ItMi_StonePlate_PowerUp_05.3DS";
	on_state[0]				=	Use_ItWr_StonePlate_Stamina;
	
	TEXT[1]					= 	NAME_Bonus_SpMax;
	COUNT[1]				= 	2*SP_PER_LP;
	TEXT[2]					=	NAME_Bonus_Exp;
	COUNT[2]				=	200;
};
func void Use_ItWr_StonePlate_Stamina()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		self.aivar[AIV_Stamina_MAX] += 2*SP_PER_LP;
		B_GivePlayerExp(200);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_Stamina);
	};
};
*/
///******************************************************************************************
instance ItWr_StonePlate_STR (ItemPR_StonePlate)
{
	visual					=	"ItMi_StonePlate_PowerUp_01.3DS";
	on_state[0]				=	Use_ItWr_StonePlate_STR;
	
	TEXT[1]					= 	NAME_Bonus_STR;
	COUNT[1]				= 	2;
	TEXT[2]					=	NAME_Bonus_Exp;
	COUNT[2]				=	200;
	
};
func void Use_ItWr_StonePlate_STR()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute (self, ATR_STRENGTH, 2);
		B_GivePlayerExp(200);
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
	visual					=	"ItMi_StonePlate_PowerUp_02.3DS";
	on_state[0]				=	Use_ItWr_StonePlate_DEX;
	
	TEXT[1]					= 	NAME_Bonus_DEX;
	COUNT[1]				= 	2;
	TEXT[2]					=	NAME_Bonus_Exp;
	COUNT[2]				=	200;
};
func void Use_ItWr_StonePlate_DEX()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute (self, ATR_DEXTERITY, 2);
		B_GivePlayerExp(200);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_DEX);
	};
};
///******************************************************************************************
instance ItWr_StonePlate_POW (ItemPR_StonePlate)
{
	visual					=	"ItMi_StonePlate_PowerUp_03.3DS";
	on_state[0]				=	Use_ItWr_StonePlate_POW;
	
	TEXT[1]					= 	NAME_Bonus_Pow;
	COUNT[1]				= 	2;
	TEXT[2]					=	NAME_Bonus_Exp;
	COUNT[2]				=	200;
};
func void Use_ItWr_StonePlate_POW()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_RaiseAttribute (self, ATR_POWER, 2);
		B_GivePlayerExp(200);
	}
	else
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_POW);
	};
};

///******************************************************************************************
func void Wld_InsertRandomStoneplate (var string spawnPoint)
{
	var int rand; rand = Hlp_Random(5);
	
	if		(rand == 0)	{	Wld_InsertItem (ItWr_StonePlate_HP, spawnPoint);	}
	else if (rand == 1)	{	Wld_InsertItem (ItWr_StonePlate_MP, spawnPoint);	}
	else if (rand == 2)	{	Wld_InsertItem (ItWr_StonePlate_STR, spawnPoint);	}
	else if (rand == 3)	{	Wld_InsertItem (ItWr_StonePlate_DEX, spawnPoint);	}
	else if (rand == 4)	{	Wld_InsertItem (ItWr_StonePlate_POW, spawnPoint);	};
};
///******************************************************************************************
func int C_ScHasMagicStonePlate()
{
	if (Npc_HasItems(hero, ItWr_StonePlate_HP))
	|| (Npc_HasItems(hero, ItWr_StonePlate_MP))
//	|| (Npc_HasItems(hero, ItWr_StonePlate_Stamina))
	|| (Npc_HasItems(hero, ItWr_StonePlate_STR))
	|| (Npc_HasItems(hero, ItWr_StonePlate_DEX))
	|| (Npc_HasItems(hero, ItWr_StonePlate_POW))
	{
		return true;
	};
};
