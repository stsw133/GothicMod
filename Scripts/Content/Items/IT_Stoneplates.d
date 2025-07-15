///******************************************************************************************
prototype ItemPR_Stoneplate (C_Item)
{
	name						=	"Kamienna tabliczka";
	mainflag					=	ITEM_KAT_DOCS;
	flags						=	ITEM_MULTI;
	
	value						=	10;
	material					=	MAT_STONE;
	scemeName					=	"MAPSEALED";
	
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
	inv_rotx					=	INVCAM_X_STONEPLATE_STANDARD;
	INV_ZBIAS					=	150;
};

///******************************************************************************************
/// Stoneplates
///******************************************************************************************
instance ItWr_Stoneplate_01 (ItemPR_Stoneplate)
{
	visual						=	"ItMi_StonePlate_PowerUp_03.3ds";
	on_state[0]					=	Use_ItWr_Stoneplate_01;
	description					=	"Tablica wojowników";
};
var int RandHitchanceStoneplateCounter;
func void Use_ItWr_Stoneplate_01()
{
	if (!Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_StonePlate_01);
	}
	else
	{
		B_AddFightSkill (self, MEM_ReadStatArr(RandomizedHitchanceOrder, RandHitchanceStoneplateCounter % 4), 2);
		
		if (Npc_IsPlayer(self))
		{
			RandHitchanceStoneplateCounter += 1;
		};
	};
};

///******************************************************************************************
instance ItWr_Stoneplate_02 (ItemPR_Stoneplate)
{
	visual						=	"ItMi_StonePlate_PowerUp_02.3ds";
	on_state[0]					=	Use_ItWr_Stoneplate_02;
	description					=	"Tablica stra¿ników umar³ych";
};
func void Use_ItWr_Stoneplate_02()
{
	if (!Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_Stoneplate_02);
	}
	else
	{
		if (self.attribute[ATR_POWER] > self.attribute[ATR_STRENGTH] && self.attribute[ATR_POWER] > self.attribute[ATR_DEXTERITY])
		{
			B_RaiseAttribute (self, ATR_POWER, 2);
		}
		else if (self.attribute[ATR_DEXTERITY] > self.attribute[ATR_STRENGTH] && self.attribute[ATR_DEXTERITY] > self.attribute[ATR_POWER])
		{
			B_RaiseAttribute (self, ATR_DEXTERITY, 2);
		}
		else
		{
			B_RaiseAttribute (self, ATR_STRENGTH, 2);
		};
		
		self.attribute[ATR_HITPOINTS] /= 2;
		self.attribute[ATR_MANA] /= 2;
		self.aivar[AIV_Stamina] /= 2;
	};
};

///******************************************************************************************
instance ItWr_Stoneplate_03 (ItemPR_Stoneplate)
{
	visual						=	"ItMi_StonePlate_PowerUp_05.3ds";
	on_state[0]					=	Use_ItWr_Stoneplate_03;
	description					=	"Tablica kap³anów";
};
func void Use_ItWr_Stoneplate_03()
{
	if (!Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_Stoneplate_03);
	}
	else
	{
		B_RaiseAttribute (self, ATR_MANA_MAX, 2*MP_PER_LP);
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
	};
};

///******************************************************************************************
instance ItWr_Stoneplate_04 (ItemPR_Stoneplate)
{
	visual						=	"ItMi_StonePlate_PowerUp_01.3ds";
	on_state[0]					=	Use_ItWr_Stoneplate_04;
	description					=	"Tablica uzdrowicieli";
};
func void Use_ItWr_Stoneplate_04()
{
	if (!Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_Stoneplate_04);
	}
	else
	{
		B_RaiseAttribute (self, ATR_HITPOINTS_MAX, 2*HP_PER_LP);
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
};

///******************************************************************************************
instance ItWr_Stoneplate_05 (ItemPR_Stoneplate)
{
	visual						=	"ItMi_StonePlate_PowerUp_04.3ds";
	on_state[0]					=	Use_ItWr_Stoneplate_05;
	description					=	"Tablica uczonych";
};
func void Use_ItWr_Stoneplate_05()
{
	if (!Npc_GetTalentSkill(self, NPC_TALENT_LANGUAGE))
	{
		B_Say (self, self, "$CANTREADTHIS");
		CreateInvItem (self, ItWr_Stoneplate_05);
	}
	else
	{
		B_RaiseAttribute (self, default, 2);
	};
};

///******************************************************************************************
var int RandomizedStoneplateOrder[5];

func void InitRandomizedStoneplateOrder()
{
	var int used[5];

	var int i;
	repeat(i, 5);
		var int index; index = Hlp_Random(5);
		
		var int j;
		repeat(j, 5);
			if (MEM_ReadStatArr(used, index))
			{
				index = (index + 1) % 5;
			};
		end;

		MEM_WriteStatArr(RandomizedStoneplateOrder, i, index);
		MEM_WriteStatArr(used, index, true);
	end;
};

func void GiveStoneplateByIndex(var C_Npc slf, var int index)
{
	if		(index == 0)	{	CreateInvItem(slf, ItWr_Stoneplate_01);	}
	else if	(index == 1)	{	CreateInvItem(slf, ItWr_Stoneplate_02);	}
	else if	(index == 2)	{	CreateInvItem(slf, ItWr_Stoneplate_03);	}
	else if	(index == 3)	{	CreateInvItem(slf, ItWr_Stoneplate_04);	}
	else if	(index == 4)	{	CreateInvItem(slf, ItWr_Stoneplate_05);	};
};
