///******************************************************************************************
///	Recipes
///******************************************************************************************
prototype ItemPR_Recipe (C_Item)
{
	name 					=	"Przepis";
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MULTI;
	
	material 				=	MAT_LEATHER;
	scemeName				=	"MAP";
	
	TEXT[4]					=	NAME_Lev_needed;
	TEXT[5]					=	NAME_Value;
};
///******************************************************************************************
///	Smith
///******************************************************************************************

const int SMITH_1H_Common			=	0;

const int SMITH_1H_Special_01		=	1;
const int SMITH_2H_Special_01		=	2;
const int SMITH_1H_Special_02		=	3;
const int SMITH_2H_Special_02		=	4;
const int SMITH_1H_Special_03		=	5;
const int SMITH_2H_Special_03		=	6;
const int SMITH_1H_Special_04		=	7;
const int SMITH_2H_Special_04		=	8;
const int SMITH_1H_Special_05		=	9;
const int SMITH_2H_Special_05		=	10;

const int SMITH_1H_Ignite_01		=	11;
const int SMITH_2H_Ignite_01		=	12;
const int SMITH_1H_Ignite_02		=	13;
const int SMITH_2H_Ignite_02		=	14;
const int SMITH_1H_Ignite_03		=	15;
const int SMITH_2H_Ignite_03		=	16;
const int SMITH_1H_Ignite_04		=	17;
const int SMITH_2H_Ignite_04		=	18;
const int SMITH_1H_Ignite_05		=	19;
const int SMITH_2H_Ignite_05		=	20;

const int SMITH_Schwert1			=	21;
const int SMITH_Schwert4			=	22;
const int SMITH_Rubinklinge			=	23;
const int SMITH_ElBastardo			=	24;

const int SMITH_Streitaxt1			=	25;
const int SMITH_Avalon				=	26;

const int MAX_SMITH 				=	27;

var int PLAYER_TALENT_SMITH[MAX_SMITH];

///******************************************************************************************
instance ItRe_SMITH_1H_Common (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Common;
	
	description				=	"Przepis na miecz";
	TEXT[1]					=	"z 2 bry�ek �elaza.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Common()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Common])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Common] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Schwert1 (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Schwert1;
	
	description				=	"Przepis na dobry miecz";
	TEXT[1]					=	"z 3 bry�ek �elaza.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Schwert1()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Schwert1])
	{
		PLAYER_TALENT_SMITH[SMITH_Schwert1] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Schwert4 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Schwert4;
	
	description				=	"Przepis na dobry d�ugi miecz";
	TEXT[1]					=	"z 4 bry�ek �elaza.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Schwert4()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Schwert4])
	{
		PLAYER_TALENT_SMITH[SMITH_Schwert4] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Rubinklinge (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Rubinklinge;
	
	description				=	"Przepis na Rubinowe Ostrze";
	TEXT[1]					=	"z 4 bry�ek �elaza.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Rubinklinge()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Rubinklinge])
	{
		PLAYER_TALENT_SMITH[SMITH_Rubinklinge] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_ElBastardo (ItemPR_Recipe)
{
	value 					=	250;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_ElBastardo;
	
	description				=	"Przepis na El Bastardo";
	TEXT[1]					=	"z 5 bry�ek �elaza.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_ElBastardo()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_ElBastardo])
	{
		PLAYER_TALENT_SMITH[SMITH_ElBastardo] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Streitaxt1 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Streitaxt1;
	
	description				=	"Przepis na lekki top�r bojowy";
	TEXT[1]					=	"z 4 bry�ek �elaza";
	TEXT[2]					=	"i 2 k��w.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Streitaxt1()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Streitaxt1])
	{
		PLAYER_TALENT_SMITH[SMITH_Streitaxt1] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Avalon (ItemPR_Recipe)
{
	value 					=	250;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Avalon;
	
	description				=	"Przepis na Avalon";
	TEXT[1]					=	"z 6 bry�ek �elaza.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Avalon()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Avalon])
	{
		PLAYER_TALENT_SMITH[SMITH_Avalon] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Special_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Special_01;
	
	description				=	"Przepis na d�ugi miecz magiczny";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 2 bry�ek niebieskiej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Special_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Special_01])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Special_01] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_01;
	
	description				=	"Przepis na magiczny miecz dwur�czny";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 2 bry�ek niebieskiej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Special_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Special_01])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Special_01] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Special_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Special_02;
	
	description				=	"Przepis na magiczny miecz p�torar�czny";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 3 bry�ek niebieskiej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Special_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Special_02])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Special_02] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_02;
	
	description				=	"Przepis na ci�ki magiczny miecz dwur�czny";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 3 bry�ek niebieskiej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Special_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Special_02])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Special_02] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Special_03 (ItemPR_Recipe)
{
	value 					=	800;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Special_03;
	
	description				=	"Przepis na magiczne ostrze bojowe";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 4 bry�ek niebieskiej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Special_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Special_03])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Special_03] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_03 (ItemPR_Recipe)
{
	value 					=	800;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_03;
	
	description				=	"Przepis na ci�kie magiczne ostrze bojowe";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 4 bry�ek niebieskiej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Special_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Special_03])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Special_03] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Special_04 (ItemPR_Recipe)
{
	value 					=	1000;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Special_04;
	
	description				=	"Przepis na magiczne ostrze na smoki";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 5 bry�ek niebieskiej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Special_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Special_04])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Special_04] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_04 (ItemPR_Recipe)
{
	value 					=	1000;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_04;
	
	description				=	"Przepis na du�e magiczne ostrze na smoki";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 5 bry�ek niebieskiej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Special_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Special_04])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Special_04] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_01;
	
	description				=	"Przepis na d�ugi miecz podpalaj�cy";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 2 bry�ek czerwonej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Ignite_01])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Ignite_01] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_01;
	
	description				=	"Przepis na podpalaj�cy miecz dwur�czny";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 2 bry�ek czerwonej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Ignite_01])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Ignite_01] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_02;
	
	description				=	"Przepis na podpalaj�cy miecz p�torar�czny";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 3 bry�ek czerwonej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Ignite_02])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Ignite_02] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_02;
	
	description				=	"Przepis na ci�ki podpalaj�cy miecz dwur�czny";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 3 bry�ek czerwonej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Ignite_02])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Ignite_02] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_03 (ItemPR_Recipe)
{
	value 					=	800;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_03;
	
	description				=	"Przepis na podpalaj�ce ostrze bojowe";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 4 bry�ek czerwonej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Ignite_03])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Ignite_03] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_03 (ItemPR_Recipe)
{
	value 					=	800;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_03;
	
	description				=	"Przepis na ci�kie podpalaj�ce ostrze bojowe";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 4 bry�ek czerwonej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Ignite_03])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Ignite_03] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_04 (ItemPR_Recipe)
{
	value 					=	1000;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_04;
	
	description				=	"Przepis na podpalaj�ce smocze ostrze";
	TEXT[1]					=	"z 2 bry�ek �elaza";
	TEXT[2]					=	"i 5 bry�ek czerwonej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_1H_Ignite_04])
	{
		PLAYER_TALENT_SMITH[SMITH_1H_Ignite_04] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_04 (ItemPR_Recipe)
{
	value 					=	1000;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_04;
	
	description				=	"Przepis na du�e podpalajaj�ce smocze ostrze";
	TEXT[1]					=	"z 3 bry�ek �elaza";
	TEXT[2]					=	"i 5 bry�ek czerwonej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_2H_Ignite_04])
	{
		PLAYER_TALENT_SMITH[SMITH_2H_Ignite_04] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
///	Enchanting
///******************************************************************************************

const int ENCHANTING_ProtPhysical	=	MAX_SPELL + 0;
const int ENCHANTING_ProtMagic		=	MAX_SPELL + 1;
const int ENCHANTING_ProtFire		=	MAX_SPELL + 2;
const int ENCHANTING_ProtTotal		=	MAX_SPELL + 3;
const int ENCHANTING_Hp				=	MAX_SPELL + 4;
const int ENCHANTING_Mana			=	MAX_SPELL + 5;
const int ENCHANTING_Energy			=	MAX_SPELL + 6;
const int ENCHANTING_Str			=	MAX_SPELL + 7;
const int ENCHANTING_Dex			=	MAX_SPELL + 8;
const int ENCHANTING_Power			=	MAX_SPELL + 9;
const int ENCHANTING_LifeSteal		=	MAX_SPELL + 10;

const int MAX_ENCHANTING			=	MAX_SPELL + 11;

var int PLAYER_TALENT_ENCHANTING[MAX_ENCHANTING];

///******************************************************************************************
instance ItRe_ENCHANTING_Light (ItemPR_Recipe)
{
	value 					=	40;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Light;
	
	description				=	"Przepis na '�wiat�o'";
	TEXT[1]					=	"ze z�otej monety.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Light()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_nLight])
	{
		PLAYER_TALENT_ENCHANTING[SPL_nLight] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Heal (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Heal;
	
	description				=	"Przepis na 'Uleczenie'";
	TEXT[1]					=	"z zio�a leczniczego.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Heal()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_nHeal])
	{
		PLAYER_TALENT_ENCHANTING[SPL_nHeal] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_SlowTime (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_SlowTime;
	
	description				=	"Przepis na 'Spowolnienie czasu'";
	TEXT[1]					=	"ze szmaragdu i 10 cz�steczek czasu.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_SlowTime()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_SlowTime])
	{
		PLAYER_TALENT_ENCHANTING[SPL_SlowTime] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_NightToDay (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_NightToDay;
	
	description				=	"Przepis na 'Noc w dzie�'";
	TEXT[1]					=	"z owczej sk�ry i pi�r harpii.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_NightToDay()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_NightToDay])
	{
		PLAYER_TALENT_ENCHANTING[SPL_NightToDay] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Telekinesis (ItemPR_Recipe)
{
	value 					=	40;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Telekinesis;
	
	description				=	"Przepis na 'Telekineza'";
	TEXT[1]					=	"z monety fortuny.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Telekinesis()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Telekinesis])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Telekinesis] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_FireBolt (ItemPR_Recipe)
{
	value 					=	60;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_FireBolt;
	
	description				=	"Przepis na 'Ognisty pocisk'";
	TEXT[1]					=	"z siarki.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_FireBolt()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_FireBolt])
	{
		PLAYER_TALENT_ENCHANTING[SPL_FireBolt] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_IceBolt (ItemPR_Recipe)
{
	value 					=	60;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_IceBolt;
	
	description				=	"Przepis na 'Lodowy pocisk'";
	TEXT[1]					=	"z kryszta�u.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_IceBolt()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_IceBolt])
	{
		PLAYER_TALENT_ENCHANTING[SPL_IceBolt] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Zap (ItemPR_Recipe)
{
	value 					=	60;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Zap;
	
	description				=	"Przepis na 'Ma�a b�yskawica'";
	TEXT[1]					=	"z bry�ki srebra.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Zap()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Zap])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Zap] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Charm (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Charm;
	
	description				=	"Przepis na 'Amnezja'";
	TEXT[1]					=	"z bagiennego ziela i �uwaczek polnej bestii.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Charm()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Charm])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Charm] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_WindFist (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_WindFist;
	
	description				=	"Przepis na 'Pi�� wichru'";
	TEXT[1]					=	"z w�gla i pazur�w.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_WindFist()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_WindFist])
	{
		PLAYER_TALENT_ENCHANTING[SPL_WindFist] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Sleep (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Sleep;
	
	description				=	"Przepis na 'U�pienie'";
	TEXT[1]					=	"z bagiennego ziela.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Sleep()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Sleep])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Sleep] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_MassSleep (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_MassSleep;
	
	description				=	"Przepis na 'Grupowe u�pienie'";
	TEXT[1]					=	"z bagiennego ziela i rubinu.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_MassSleep()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_MassSleep])
	{
		PLAYER_TALENT_ENCHANTING[SPL_MassSleep] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_LightningFlash (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_LightningFlash;
	
	description				=	"Przepis na 'B�yskawica'";
	TEXT[1]					=	"z bry�ki �elaza i szpon�w topielca.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_LightningFlash()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_LightningFlash])
	{
		PLAYER_TALENT_ENCHANTING[SPL_LightningFlash] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ChargeFireball (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ChargeFireball;
	
	description				=	"Przepis na 'Du�a kula ognia'";
	TEXT[1]					=	"z ognistego kryszta�u i smo�y.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_ChargeFireball()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_ChargeFireball])
	{
		PLAYER_TALENT_ENCHANTING[SPL_ChargeFireball] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Whirlwind (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Whirlwind;
	
	description				=	"Przepis na 'Wir'";
	TEXT[1]					=	"ze skrzyde� i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Whirlwind()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Whirlwind])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Whirlwind] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Fear (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Fear;
	
	description				=	"Przepis na 'Strach'";
	TEXT[1]					=	"ze skrzyde�.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Fear()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Fear])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Fear] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_MassFear (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_MassFear;
	
	description				=	"Przepis na 'Grupowy strach'";
	TEXT[1]					=	"ze skrzyde� i rubinu.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_MassFear()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_MassFear])
	{
		PLAYER_TALENT_ENCHANTING[SPL_MassFear] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ChargeZap (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ChargeZap;
	
	description				=	"Przepis na 'Piorun kulisty'";
	TEXT[1]					=	"z bry�ki �elaza i pazur�w.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_ChargeZap()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_ChargeZap])
	{
		PLAYER_TALENT_ENCHANTING[SPL_ChargeZap] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_EarthQuake (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_EarthQuake;
	
	description				=	"Przepis na 'Trz�sienie ziemi'";
	TEXT[1]					=	"z bazaltu i saletry.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_EarthQuake()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_EarthQuake])
	{
		PLAYER_TALENT_ENCHANTING[SPL_EarthQuake] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Geyser (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Geyser;
	
	description				=	"Przepis na 'Gejzer'";
	TEXT[1]					=	"z akwamarynu.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Geyser()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Geyser])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Geyser] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_WaterFist (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_WaterFist;
	
	description				=	"Przepis na 'Wodna pi��'";
	TEXT[1]					=	"z akwamarynu i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_WaterFist()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_WaterFist])
	{
		PLAYER_TALENT_ENCHANTING[SPL_WaterFist] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_IceLance (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_IceLance;
	
	description				=	"Przepis na 'Lodowa lanca'";
	TEXT[1]					=	"z bia�ej per�y.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_IceLance()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_IceLance])
	{
		PLAYER_TALENT_ENCHANTING[SPL_IceLance] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_IceWave (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_IceWave;
	
	description				=	"Przepis na 'Lodowa fala'";
	TEXT[1]					=	"z bia�ej per�y i akwamarynu.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_IceWave()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_IceWave])
	{
		PLAYER_TALENT_ENCHANTING[SPL_IceWave] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Inflate (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Inflate;
	
	description				=	"Przepis na 'Spuchni�cie'";
	TEXT[1]					=	"z wody i �oju kretoszczura.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Inflate()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Inflate])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Inflate] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Rage (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Rage;
	
	description				=	"Przepis na '�lep� furi�'";
	TEXT[1]					=	"z krwi.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Rage()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Rage])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Rage] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_MassRage (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_MassRage;
	
	description				=	"Przepis na 'Grupow� furi�'";
	TEXT[1]					=	"z krwi i rubinu.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_MassRage()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_MassRage])
	{
		PLAYER_TALENT_ENCHANTING[SPL_MassRage] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_BreathOfDeath (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_BreathOfDeath;
	
	description				=	"Przepis na 'Tchnienie �mierci'";
	TEXT[1]					=	"z w�gla i czarnej per�y.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_BreathOfDeath()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_BreathOfDeath])
	{
		PLAYER_TALENT_ENCHANTING[SPL_BreathOfDeath] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_MassDeath (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_MassDeath;
	
	description				=	"Przepis na 'Fala �mierci'";
	TEXT[1]					=	"z krwi i czarnej per�y.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_MassDeath()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_MassDeath])
	{
		PLAYER_TALENT_ENCHANTING[SPL_MassDeath] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ArmyOfDarkness (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ArmyOfDarkness;
	
	description				=	"Przepis na 'Armia ciemno�ci'";
	TEXT[1]					=	"z ko�ci szkieletu i czarnej per�y.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_ArmyOfDarkness()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_ArmyOfDarkness])
	{
		PLAYER_TALENT_ENCHANTING[SPL_ArmyOfDarkness] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Shrink (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Shrink;
	
	description				=	"Przepis na 'Zmniejszenie potwora'";
	TEXT[1]					=	"z k�a trolla i jaja pe�zacza.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Shrink()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Shrink])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Shrink] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_PoisonBolt (ItemPR_Recipe)
{
	value 					=	60;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_PoisonBolt;
	
	description				=	"Przepis na 'Truj�cy pocisk'";
	TEXT[1]					=	"z truj�cego grzyba.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_PoisonBolt()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_PoisonBolt])
	{
		PLAYER_TALENT_ENCHANTING[SPL_PoisonBolt] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_SkullBolt (ItemPR_Recipe)
{
	value 					=	80;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_SkullBolt;
	
	description				=	"Przepis na 'Krzyk umar�ych'";
	TEXT[1]					=	"z czaszki.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_SkullBolt()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_SkullBolt])
	{
		PLAYER_TALENT_ENCHANTING[SPL_SkullBolt] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_BloodFireball (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_BloodFireball;
	
	description				=	"Przepis na 'Krwaw� kul� ognia'";
	TEXT[1]					=	"ze smoczej krwi.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_BloodFireball()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_BloodFireball])
	{
		PLAYER_TALENT_ENCHANTING[SPL_BloodFireball] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_DragonBall (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_DragonBall;
	
	description				=	"Przepis na 'Smocz� kul�'";
	TEXT[1]					=	"z serca smoka.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_DragonBall()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_DragonBall])
	{
		PLAYER_TALENT_ENCHANTING[SPL_DragonBall] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_BlackDragonBall (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_BlackDragonBall;
	
	description				=	"Przepis na 'Czarn� smocz� kul�'";
	TEXT[1]					=	"z kamienia duszy smoka-o�ywie�ca.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_BlackDragonBall()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_BlackDragonBall])
	{
		PLAYER_TALENT_ENCHANTING[SPL_BlackDragonBall] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
///	Alchemy
///******************************************************************************************

const int ALCHEMY_MegaDrink			=	ID_MM_MAX + 0;

const int ALCHEMY_Health_01	  		=	ID_MM_MAX + 1;
const int ALCHEMY_Health_02  		=	ID_MM_MAX + 2;
const int ALCHEMY_Health_03  		=	ID_MM_MAX + 3;
const int ALCHEMY_Health_04  		=	ID_MM_MAX + 4;
const int ALCHEMY_Health_05  		=	ID_MM_MAX + 5;

const int ALCHEMY_Mana_01  			=	ID_MM_MAX + 6;
const int ALCHEMY_Mana_02  			=	ID_MM_MAX + 7;
const int ALCHEMY_Mana_03 	 		=	ID_MM_MAX + 8;
const int ALCHEMY_Mana_04 	 		=	ID_MM_MAX + 9;
const int ALCHEMY_Mana_05 	 		=	ID_MM_MAX + 10;

const int ALCHEMY_Temp_Health		=	ID_MM_MAX + 11;
const int ALCHEMY_Temp_Mana  		=	ID_MM_MAX + 12;
const int ALCHEMY_Temp_STR  		=	ID_MM_MAX + 13;
const int ALCHEMY_Temp_DEX  		=	ID_MM_MAX + 14;
const int ALCHEMY_Temp_Power  		=	ID_MM_MAX + 15;

const int ALCHEMY_Weak_Health		=	ID_MM_MAX + 16;
const int ALCHEMY_Weak_Mana  		=	ID_MM_MAX + 17;
const int ALCHEMY_Weak_STR  		=	ID_MM_MAX + 18;
const int ALCHEMY_Weak_DEX  		=	ID_MM_MAX + 19;
const int ALCHEMY_Weak_Power  		=	ID_MM_MAX + 20;

const int ALCHEMY_Perm_Health		=	ID_MM_MAX + 21;
const int ALCHEMY_Perm_Mana  		=	ID_MM_MAX + 22;
const int ALCHEMY_Perm_STR  		=	ID_MM_MAX + 23;
const int ALCHEMY_Perm_DEX  		=	ID_MM_MAX + 24;
const int ALCHEMY_Perm_Power  		=	ID_MM_MAX + 25;
const int ALCHEMY_Perm_Fire	 		=	ID_MM_MAX + 26;

const int ALCHEMY_Digestion			=	ID_MM_MAX + 27;
const int ALCHEMY_NightVision		=	ID_MM_MAX + 28;
const int ALCHEMY_Speed				=	ID_MM_MAX + 29;
const int ALCHEMY_Geist				=	ID_MM_MAX + 30;
const int ALCHEMY_Poison			=	ID_MM_MAX + 31;
const int ALCHEMY_HealObsession		=	ID_MM_MAX + 32;

const int MAX_ALCHEMY				=	ID_MM_MAX + 33;

var int PLAYER_TALENT_ALCHEMY[MAX_ALCHEMY];

///******************************************************************************************
instance ItRe_ALCHEMY_Health_01 (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_01;
	
	description				=	"Przepis na s�ab� mikstur� lecznicz�";
	TEXT[1]					=	"z 2 ro�lin leczniczych";
	TEXT[2]					=	"i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Health_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_01])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_01] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_02 (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_02;
	
	description				=	"Przepis na �redni� mikstur� lecznicz�";
	TEXT[1]					=	"z 2 zi� leczniczych";
	TEXT[2]					=	"i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Health_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_02])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_02] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_03 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_03;
	
	description				=	"Przepis na siln� mikstur� lecznicz�";
	TEXT[1]					=	"z 2 korzeni leczniczych";
	TEXT[2]					=	"i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Health_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_03])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_03] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_04 (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_04;
	
	description				=	"Przepis na pot�n� mikstur� lecznicz�";
	TEXT[1]					=	"z silnej mikstury leczniczej";
	TEXT[2]					=	"i rdestu polnego.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Health_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_04])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_04] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_05 (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_05;
	
	description				=	"Przepis na s�ab� mikstur� lecznicz�";
	TEXT[1]					=	"z 5 serafis�w";
	TEXT[2]					=	"i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Health_05()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_05])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Health_05] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_01 (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_01;
	
	description				=	"Przepis na s�ab� mikstur� many";
	TEXT[1]					=	"z 2 ognistych pokrzyw";
	TEXT[2]					=	"i wina.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Mana_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_01])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_01] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_02 (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_02;
	
	description				=	"Przepis na �redni� mikstur� many";
	TEXT[1]					=	"z 2 ognistych zi�";
	TEXT[2]					=	"i wina.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Mana_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_02])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_02] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_03 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_03;
	
	description				=	"Przepis na siln� mikstur� many";
	TEXT[1]					=	"z 2 ognistych korzeni";
	TEXT[2]					=	"i wina.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Mana_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_03])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_03] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_04 (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_04;
	
	description				=	"Przepis na pot�n� mikstur� many";
	TEXT[1]					=	"z silnej mikstury many";
	TEXT[2]					=	"i rdestu polnego.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Mana_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_04])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_04] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_05 (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_05;
	
	description				=	"Przepis na s�ab� mikstur� many";
	TEXT[1]					=	"z 5 serafis�w";
	TEXT[2]					=	"i i wina.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Mana_05()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_05])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Mana_05] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_Health (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_Health;
	
	description				=	"Przepis na czasowy eliksir �ywotno�ci";
	TEXT[1]					=	"z krwawego rumianku";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Temp_Health()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Health])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Health] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_Mana (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_Mana;
	
	description				=	"Przepis na czasowy eliksir ducha";
	TEXT[1]					=	"z wilczej mi�ty";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Temp_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Mana])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Mana] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_STR (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_STR;
	
	description				=	"Przepis na czasowy eliksir si�y";
	TEXT[1]					=	"ze smoczego korzenia";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Temp_STR()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_STR])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_STR] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_DEX (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_DEX;
	
	description				=	"Przepis na czasowy eliksir zr�czno�ci";
	TEXT[1]					=	"z goblinich jag�d";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Temp_DEX()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_DEX])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_DEX] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_Power (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_Power;
	
	description				=	"Przepis na czasowy eliksir mocy";
	TEXT[1]					=	"z wampirzej r�y";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Temp_Power()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Power])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Temp_Power] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_Health (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_Health;
	
	description				=	"Przepis na negatywny eliksir �ywotno�ci";
	TEXT[1]					=	"z krwawego rumianku";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Weak_Health()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Health])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Health] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_Mana (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_Mana;
	
	description				=	"Przepis na negatywny eliksir ducha";
	TEXT[1]					=	"z wilczej mi�ty";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Weak_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Mana])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Mana] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_STR (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_STR;
	
	description				=	"Przepis na negatywny eliksir si�y";
	TEXT[1]					=	"ze smoczego korzenia";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Weak_STR()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_STR])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_STR] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_DEX (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_DEX;
	
	description				=	"Przepis na negatywny eliksir zr�czno�ci";
	TEXT[1]					=	"z goblinich jag�d";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Weak_DEX()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_DEX])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_DEX] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_Power (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_Power;
	
	description				=	"Przepis na negatywny eliksir mocy";
	TEXT[1]					=	"z wampirzej r�y";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Weak_Power()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Power])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Power] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Health (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Health;
	
	description				=	"Przepis na trwa�y eliksir �ywotno�ci";
	TEXT[1]					=	"z krwawego rumianku";
	TEXT[2]					=	"i szczawiu kr�lewskiego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Perm_Health()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Health])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Health] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Mana (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Mana;
	
	description				=	"Przepis na trwa�y eliksir ducha";
	TEXT[1]					=	"z wilczej mi�ty";
	TEXT[2]					=	"i szczawiu kr�lewskiego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Perm_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Mana])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Mana] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_STR (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_STR;
	
	description				=	"Przepis na trwa�y eliksir si�y";
	TEXT[1]					=	"ze smoczego korzenia";
	TEXT[2]					=	"i szczawiu kr�lewskiego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Perm_STR()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_STR])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_STR] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_DEX (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_DEX;
	
	description				=	"Przepis na trwa�y eliksir zr�czno�ci";
	TEXT[1]					=	"z goblinich jag�d";
	TEXT[2]					=	"i szczawiu kr�lewskiego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Perm_DEX()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_DEX])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_DEX] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Power (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Power;
	
	description				=	"Przepis na trwa�y eliksir mocy";
	TEXT[1]					=	"z wampirzej r�y";
	TEXT[2]					=	"i szczawiu kr�lewskiego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Perm_Power()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Power])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Power] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Fire (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Fire;
	
	description				=	"Przepis na trwa�y eliksir odporno�ci na ogie�";
	TEXT[1]					=	"ze s�onecznego aloesu";
	TEXT[2]					=	"i szczawiu kr�lewskiego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Perm_Fire()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Fire])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Fire] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfAlligator (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfAlligator;
	
	description				=	"Przepis na przemian� w aligatora";
	TEXT[1]					=	"z 10 fiolek krwi aligatora";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfAlligator()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_ALLIGATOR])
	{
		PLAYER_TALENT_ALCHEMY[ID_ALLIGATOR] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfBiter (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfBiter;
	
	description				=	"Przepis na przemian� w k�sacza";
	TEXT[1]					=	"z 10 fiolek krwi k�sacza";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfBiter()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_BITER])
	{
		PLAYER_TALENT_ALCHEMY[ID_BITER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfBloodfly (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfBloodfly;
	
	description				=	"Przepis na przemian� w krwiopijc�";
	TEXT[1]					=	"z 10 fiolek krwi krwiopijcy";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfBloodfly()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_BLOODFLY])
	{
		PLAYER_TALENT_ALCHEMY[ID_BLOODFLY] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfBloodhound (ItemPR_Recipe)
{
	value 					=	250;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfBloodhound;
	
	description				=	"Przepis na przemian� w krwawego ogara";
	TEXT[1]					=	"z 10 fiolek krwi krwawego ogara";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfBloodhound()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_BLOODHOUND])
	{
		PLAYER_TALENT_ALCHEMY[ID_BLOODHOUND] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfDemon (ItemPR_Recipe)
{
	value 					=	350;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfDemon;
	
	description				=	"Przepis na przemian� w demona";
	TEXT[1]					=	"z 10 fiolek krwi demona";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfDemon()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_DEMON])
	{
		PLAYER_TALENT_ALCHEMY[ID_DEMON] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfDrgSnapper (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfDrgSnapper;
	
	description				=	"Przepis na przemian� w smoczego z�bacza";
	TEXT[1]					=	"z 10 fiolek krwi smoczego z�bacza";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfDrgSnapper()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_DRAGONSNAPPER])
	{
		PLAYER_TALENT_ALCHEMY[ID_DRAGONSNAPPER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfFireWaran (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfFireWaran;
	
	description				=	"Przepis na przemian� w ognistego jaszczura";
	TEXT[1]					=	"z 10 fiolek krwi ognistego jaszczura";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfFireWaran()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_FIREWARAN])
	{
		PLAYER_TALENT_ALCHEMY[ID_FIREWARAN] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfGiantBug (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfGiantBug;
	
	description				=	"Przepis na przemian� w poln� besti�";
	TEXT[1]					=	"z 10 fiolek krwi polnej bestii";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfGiantBug()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_GIANT_BUG])
	{
		PLAYER_TALENT_ALCHEMY[ID_GIANT_BUG] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfGiantRat (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfGiantRat;
	
	description				=	"Przepis na przemian� w olbrzymiego szczura";
	TEXT[1]					=	"z 10 fiolek krwi olbrzymiego szczura";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfGiantRat()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_GIANT_RAT])
	{
		PLAYER_TALENT_ALCHEMY[ID_GIANT_RAT] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfGiantSpider (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfGiantSpider;
	
	description				=	"Przepis na przemian� w olbrzymiego paj�ka";
	TEXT[1]					=	"z 10 fiolek krwi olbrzymiego paj�ka";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfGiantSpider()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_GIANT_SPIDER])
	{
		PLAYER_TALENT_ALCHEMY[ID_GIANT_SPIDER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfGoat (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfGoat;
	
	description				=	"Przepis na przemian� w koz�";
	TEXT[1]					=	"z 10 fiolek krwi kozy";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfGoat()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_GOAT])
	{
		PLAYER_TALENT_ALCHEMY[ID_GOAT] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfGoblin (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfGoblin;
	
	description				=	"Przepis na przemian� w goblina";
	TEXT[1]					=	"z 10 fiolek krwi goblina";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfGoblin()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_GOBBO])
	{
		PLAYER_TALENT_ALCHEMY[ID_GOBBO] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfGorilla (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfGorilla;
	
	description				=	"Przepis na przemian� w goryla";
	TEXT[1]					=	"z 10 fiolek krwi goryla";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfGorilla()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_GORILLA])
	{
		PLAYER_TALENT_ALCHEMY[ID_GORILLA] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfHare (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfHare;
	
	description				=	"Przepis na przemian� w zaj�ca";
	TEXT[1]					=	"z 10 fiolek krwi zaj�ca";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfHare()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_HARE])
	{
		PLAYER_TALENT_ALCHEMY[ID_HARE] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfHarpy (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfHarpy;
	
	description				=	"Przepis na przemian� w harpi�";
	TEXT[1]					=	"z 10 fiolek krwi karpii";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfHarpy()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_HARPY])
	{
		PLAYER_TALENT_ALCHEMY[ID_HARPY] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfKeiler (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfKeiler;
	
	description				=	"Przepis na przemian� w dzika";
	TEXT[1]					=	"z 10 fiolek krwi dzika";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfKeiler()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_KEILER])
	{
		PLAYER_TALENT_ALCHEMY[ID_KEILER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfLurker (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfLurker;
	
	description				=	"Przepis na przemian� w topielca";
	TEXT[1]					=	"z 10 fiolek krwi topielca";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfLurker()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_LURKER])
	{
		PLAYER_TALENT_ALCHEMY[ID_LURKER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfMinecrawler (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfMinecrawler;
	
	description				=	"Przepis na przemian� w pe�zacza";
	TEXT[1]					=	"z 10 fiolek krwi pe�zacza";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfMinecrawler()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_MINECRAWLER])
	{
		PLAYER_TALENT_ALCHEMY[ID_MINECRAWLER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfMolerat (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfMolerat;
	
	description				=	"Przepis na przemian� w kretoszczura";
	TEXT[1]					=	"z 10 fiolek krwi kretoszczura";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfMolerat()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_MOLERAT])
	{
		PLAYER_TALENT_ALCHEMY[ID_MOLERAT] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfScavenger (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfScavenger;
	
	description				=	"Przepis na przemian� w �cierwojada";
	TEXT[1]					=	"z 10 fiolek krwi �cierwojada";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfScavenger()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_SCAVENGER])
	{
		PLAYER_TALENT_ALCHEMY[ID_SCAVENGER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfShadowbeast (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfShadowbeast;
	
	description				=	"Przepis na przemian� w cieniostwora";
	TEXT[1]					=	"z 10 fiolek krwi cieniostwora";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfShadowbeast()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_SHADOWBEAST])
	{
		PLAYER_TALENT_ALCHEMY[ID_SHADOWBEAST] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfSheep (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfSheep;
	
	description				=	"Przepis na przemian� w owc�";
	TEXT[1]					=	"z 10 fiolek krwi owcy";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfSheep()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_SHEEP])
	{
		PLAYER_TALENT_ALCHEMY[ID_SHEEP] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfSnapper (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfSnapper;
	
	description				=	"Przepis na przemian� w z�bacza";
	TEXT[1]					=	"z 10 fiolek krwi z�bacza";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfSnapper()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_SNAPPER])
	{
		PLAYER_TALENT_ALCHEMY[ID_SNAPPER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfSpint (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfSpint;
	
	description				=	"Przepis na przemian� w spinta";
	TEXT[1]					=	"z 10 fiolek krwi spinta";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfSpint()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_SPINT])
	{
		PLAYER_TALENT_ALCHEMY[ID_SPINT] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfSwampshark (ItemPR_Recipe)
{
	value 					=	250;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfSwampshark;
	
	description				=	"Przepis na przemian� w b�otnego w꿹";
	TEXT[1]					=	"z 10 fiolek krwi b�otnego w�a";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfSwampshark()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_SWAMPSHARK])
	{
		PLAYER_TALENT_ALCHEMY[ID_SWAMPSHARK] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfTiger (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfTiger;
	
	description				=	"Przepis na przemian� w tygrysa";
	TEXT[1]					=	"z 10 fiolek krwi tygrysa";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfTiger()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_TIGER])
	{
		PLAYER_TALENT_ALCHEMY[ID_TIGER] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfTroll (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfTroll;
	
	description				=	"Przepis na przemian� w trolla";
	TEXT[1]					=	"z 10 fiolek krwi trolla";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfTroll()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_TROLL])
	{
		PLAYER_TALENT_ALCHEMY[ID_TROLL] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfWaran (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfWaran;
	
	description				=	"Przepis na przemian� w jaszczura";
	TEXT[1]					=	"z 10 fiolek krwi jaszczura";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfWaran()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_WARAN])
	{
		PLAYER_TALENT_ALCHEMY[ID_WARAN] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfWarg (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfWarg;
	
	description				=	"Przepis na przemian� w warga";
	TEXT[1]					=	"z 10 fiolek krwi warga";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfWarg()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_WARG])
	{
		PLAYER_TALENT_ALCHEMY[ID_WARG] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_TrfWolf (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_TrfWolf;
	
	description				=	"Przepis na przemian� w wilka";
	TEXT[1]					=	"z 10 fiolek krwi wilka";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_TrfWolf()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ID_WOLF])
	{
		PLAYER_TALENT_ALCHEMY[ID_WOLF] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Digestion (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Digestion;
	
	description				=	"Przepis na mikstur� trawienia";
	TEXT[1]					=	"z ro�liny leczniczej";
	TEXT[2]					=	"i serafisu i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Digestion()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Digestion])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Digestion] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_NightVision (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_NightVision;
	
	description				=	"Przepis na mikstur� widzenia w ciemno�ci";
	TEXT[1]					=	"z ro�liny many";
	TEXT[2]					=	"i serafisu i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_NightVision()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_NightVision])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_NightVision] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Speed (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Speed;
	
	description				=	"Przepis na mikstur� energii";
	TEXT[1]					=	"z 2 z�batych zi�";
	TEXT[2]					=	"i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Speed()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Speed] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Geist (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Geist;
	
	description				=	"Przepis na mikstur� jasno�ci umys�u";
	TEXT[1]					=	"z 2 bagiennych zi�";
	TEXT[2]					=	"i gorza�y.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Geist()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Geist])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Geist] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Poison (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Poison;
	
	description				=	"Przepis na trucizn�";
	TEXT[1]					=	"z 4 truj�cych grzyb�w";
	TEXT[2]					=	"i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Poison()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Poison])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Poison] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_HealObsession (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_HealObsession;
	
	description				=	"Przepis na leczenie z op�tania";
	TEXT[1]					=	"z ro�liny leczniczej";
	TEXT[2]					=	"i ro�liny many i wody �wi�conej.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_HealObsession()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_HealObsession])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_HealObsession] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_MegaDrink (ItemPR_Recipe)
{
	value 					=	0;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_MegaDrink;
	
	description				=	"Przepis na Embarla Firgasto";
	TEXT[1]					=	"z 10 smoczych jaj";
	TEXT[2]					=	"i czarnej per�y";
	TEXT[3]					=	"i siarki i rt�ci.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_MegaDrink()
{
	var int nDocID;
	nDocID = 	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage 	(nDocID,  0, "letters.TGA", false);
				Doc_SetFont 	(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont 	(nDocID,  0, FONT_Book);
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "Zdo�a�em wskrzesi� pradawn� sztuk�, boj� si� jednak, �e nie spodoba si� to Feodaronowi.");
				Doc_PrintLines	(nDocID,  0, "Musz� zmiesza� ca�e jego potomstwo i stworzy� z niego mikstur� w moim laboratorium. Gdyby jeszcze tylko nie siedzia� bez przerwy na tych jajach... Nadal jednak czuj� wobec niego szacunek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Embarla Firgasto:");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "10 smoczych jaj, jedna starta na proszek czarna per�a i szczypta siarki.");
				Doc_PrintLines	(nDocID,  0, "Mikstur� nale�y doprowadzi� do wrzenia i miesza� bez przerwy podczas destylacji.");
				Doc_PrintLines	(nDocID,  0, "Substancji ko�cowej nale�y u�ywa� z umiarem, gdy� wywo�uje silne efekty uboczne i mo�e rozchwia� ca�y system kontroli nad magi�.");
				Doc_Show		(nDocID);
	
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_MegaDrink])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_MegaDrink] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
///	Hunting
///******************************************************************************************

const int HUNTING_Furs				=	0;
const int HUNTING_Skins				=	1;
const int HUNTING_Teeth				=	2;
const int HUNTING_Claws				=	3;
const int HUNTING_Wings				=	4;
const int HUNTING_Stings			=	5;
const int HUNTING_Mandibles			=	6;
const int HUNTING_Horns 			=	7;
const int HUNTING_Tongues			=	8;
const int HUNTING_Plates			=	9;
const int HUNTING_Scales			=	10;
const int HUNTING_Hearts			=	11;
const int HUNTING_Blood				=	12;
const int HUNTING_Bones				=	13;

const int MAX_HUNTING				=	14;

var int PLAYER_TALENT_HUNTING[MAX_HUNTING];

///******************************************************************************************
instance ItRe_HUNTING_Furs (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Furs;
	
	description				=	"Instrukta� sk�rowania zwierzat";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Furs()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Furs])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Furs] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Skins (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Skins;
	
	description				=	"Instrukta� sk�rowania gad�w";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Skins()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Skins])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Skins] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Teeth (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Teeth;
	
	description				=	"Instrukta� usuwania z�b�w";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Teeth()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Teeth])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Teeth] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Claws (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Claws;
	
	description				=	"Instrukta� usuwania pazur�w";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Claws()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Claws])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Claws] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Wings (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Wings;
	
	description				=	"Instrukta� usuwania skrzyde�";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Wings()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Wings])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Wings] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Stings (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Stings;
	
	description				=	"Instrukta� usuwania ��de�";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Stings()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Stings])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Stings] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Mandibles (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Mandibles;
	
	description				=	"Instrukta� usuwania �uwaczek";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Mandibles()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Mandibles])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Mandibles] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Horns (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Horns;
	
	description				=	"Instrukta� usuwania rog�w";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Horns()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Horns])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Horns] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Tongues (ItemPR_Recipe)
{
	value 					=	250;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Tongues;
	
	description				=	"Instrukta� usuwania j�zyk�w";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Tongues()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Tongues])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Tongues] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Plates (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Plates;
	
	description				=	"Instrukta� usuwania p�ytek pancerzy";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Plates()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Plates])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Plates] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Scales (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Scales;
	
	description				=	"Instrukta� usuwania �usek";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Scales()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Scales])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Scales] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Hearts (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Hearts;
	
	description				=	"Instrukta� usuwania serc";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Hearts()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Hearts])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Hearts] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Blood (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Blood;
	
	description				=	"Instrukta� upuszczania krwi";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Blood()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Blood])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Blood] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Bones (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Bones;
	
	description				=	"Instrukta� selekcjonowania ko�ci";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_Bones()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_Bones])
	{
		PLAYER_TALENT_HUNTING[HUNTING_Bones] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
