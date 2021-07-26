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
	value 			=	50;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Common;
	
	description		=	"Przepis na miecz";
	TEXT[1]			=	"z 2 bry³ek ¿elaza.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_Schwert1;
	
	description		=	"Przepis na dobry miecz";
	TEXT[1]			=	"z 3 bry³ek ¿elaza.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	150;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_Schwert4;
	
	description		=	"Przepis na dobry d³ugi miecz";
	TEXT[1]			=	"z 4 bry³ek ¿elaza.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	200;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_Rubinklinge;
	
	description		=	"Przepis na Rubinowe Ostrze";
	TEXT[1]			=	"z 4 bry³ek ¿elaza.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	250;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_ElBastardo;
	
	description		=	"Przepis na El Bastardo";
	TEXT[1]			=	"z 5 bry³ek ¿elaza.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	150;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_Streitaxt1;
	
	description		=	"Przepis na lekki topór bojowy";
	TEXT[1]			=	"z 4 bry³ek ¿elaza";
	TEXT[2]			=	"i 2 k³ów.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	250;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_Avalon;
	
	description		=	"Przepis na Avalon";
	TEXT[1]			=	"z 6 bry³ek ¿elaza.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	400;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Special_01;
	
	description		=	"Przepis na d³ugi miecz magiczny";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 2 bry³ek niebieskiej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	400;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Special_01;
	
	description		=	"Przepis na magiczny miecz dwurêczny";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 2 bry³ek niebieskiej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	600;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Special_02;
	
	description		=	"Przepis na magiczny miecz pó³torarêczny";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 3 bry³ek niebieskiej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	600;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Special_02;
	
	description		=	"Przepis na ciê¿ki magiczny miecz dwurêczny";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 3 bry³ek niebieskiej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	800;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Special_03;
	
	description		=	"Przepis na magiczne ostrze bojowe";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 4 bry³ek niebieskiej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	800;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Special_03;
	
	description		=	"Przepis na ciê¿kie magiczne ostrze bojowe";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 4 bry³ek niebieskiej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	1000;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Special_04;
	
	description		=	"Przepis na magiczne ostrze na smoki";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 5 bry³ek niebieskiej rudy";
	TEXT[3]			=	"i 8 fiolek smoczej krwi.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	1000;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Special_04;
	
	description		=	"Przepis na du¿e magiczne ostrze na smoki";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 5 bry³ek niebieskiej rudy";
	TEXT[3]			=	"i 8 fiolek smoczej krwi.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	400;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Ignite_01;
	
	description		=	"Przepis na d³ugi miecz podpalaj¹cy";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 2 bry³ek czerwonej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	400;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Ignite_01;
	
	description		=	"Przepis na podpalaj¹cy miecz dwurêczny";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 2 bry³ek czerwonej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	600;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Ignite_02;
	
	description		=	"Przepis na podpalaj¹cy miecz pó³torarêczny";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 3 bry³ek czerwonej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	600;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Ignite_02;
	
	description		=	"Przepis na ciê¿ki podpalaj¹cy miecz dwurêczny";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 3 bry³ek czerwonej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	800;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Ignite_03;
	
	description		=	"Przepis na podpalaj¹ce ostrze bojowe";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 4 bry³ek czerwonej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	800;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Ignite_03;
	
	description		=	"Przepis na ciê¿kie podpalaj¹ce ostrze bojowe";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 4 bry³ek czerwonej rudy.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	1000;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Ignite_04;
	
	description		=	"Przepis na podpalaj¹ce smocze ostrze";
	TEXT[1]			=	"z 2 bry³ek ¿elaza";
	TEXT[2]			=	"i 5 bry³ek czerwonej rudy";
	TEXT[3]			=	"i 8 fiolek smoczej krwi.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	1000;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Ignite_04;
	
	description		=	"Przepis na du¿e podpalajaj¹ce smocze ostrze";
	TEXT[1]			=	"z 3 bry³ek ¿elaza";
	TEXT[2]			=	"i 5 bry³ek czerwonej rudy";
	TEXT[3]			=	"i 8 fiolek smoczej krwi.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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

var int PLAYER_TALENT_ENCHANTING[MAX_SPELL];

///******************************************************************************************
///	Alchemy
///******************************************************************************************

const int ALCHEMY_MegaDrink			=	0;

const int ALCHEMY_Health_01	  		=	1;
const int ALCHEMY_Health_02  		=	2;
const int ALCHEMY_Health_03  		=	3;
const int ALCHEMY_Health_04  		=	4;
const int ALCHEMY_Health_05  		=	5;

const int ALCHEMY_Mana_01  			=	6;
const int ALCHEMY_Mana_02  			=	7;
const int ALCHEMY_Mana_03 	 		=	8;
const int ALCHEMY_Mana_04 	 		=	9;
const int ALCHEMY_Mana_05 	 		=	10;

const int ALCHEMY_Perm_Health		=	11;
const int ALCHEMY_Perm_Mana  		=	12;
const int ALCHEMY_Perm_STR  		=	13;
const int ALCHEMY_Perm_DEX  		=	14;
const int ALCHEMY_Perm_Power  		=	15;
const int ALCHEMY_Perm_Fire	 		=	16;

const int ALCHEMY_Speed  			=	17;
const int ALCHEMY_Geist  			=	18;
const int ALCHEMY_Poison 			=	19;
const int ALCHEMY_HealObsession		=	20;

const int MAX_ALCHEMY				=	21;

var int PLAYER_TALENT_ALCHEMY[MAX_ALCHEMY];

///******************************************************************************************
instance ItRe_ALCHEMY_Health_01 (ItemPR_Recipe)
{
	value 			=	50;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Health_01;
	
	description		=	"Przepis na s³ab¹ miksturê lecznicz¹";
	TEXT[1]			=	"z 2 roœlin leczniczych";
	TEXT[2]			=	"i rdestu polnego i wody.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Health_02;
	
	description		=	"Przepis na œredni¹ miksturê lecznicz¹";
	TEXT[1]			=	"z 2 zió³ leczniczych";
	TEXT[2]			=	"i rdestu polnego i wody.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	150;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Health_03;
	
	description		=	"Przepis na siln¹ miksturê lecznicz¹";
	TEXT[1]			=	"z 2 korzeni leczniczych";
	TEXT[2]			=	"i rdestu polnego i wody.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	200;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Health_04;
	
	description		=	"Przepis na potê¿n¹ miksturê lecznicz¹";
	TEXT[1]			=	"z 3 s³abych mikstur leczniczych";
	TEXT[2]			=	"i rdestu polnego.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
};
func void Use_Recipe_ALCHEMY_Health_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
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
	value 			=	75;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Health_05;
	
	description		=	"Przepis na s³ab¹ miksturê lecznicz¹";
	TEXT[1]			=	"z 4 serafisów";
	TEXT[2]			=	"i rdestu polnego i wody.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	50;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Mana_01;
	
	description		=	"Przepis na s³ab¹ miksturê many";
	TEXT[1]			=	"z 2 ognistych pokrzyw";
	TEXT[2]			=	"i rdestu polnego i wina.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Mana_02;
	
	description		=	"Przepis na œredni¹ miksturê many";
	TEXT[1]			=	"z 2 ognistych zió³";
	TEXT[2]			=	"i rdestu polnego i wina.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	150;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Mana_03;
	
	description		=	"Przepis na siln¹ miksturê many";
	TEXT[1]			=	"z 2 ognistych korzeni";
	TEXT[2]			=	"i rdestu polnego i wina.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	200;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Mana_04;
	
	description		=	"Przepis na potê¿n¹ miksturê many";
	TEXT[1]			=	"z 3 s³abych mikstur many";
	TEXT[2]			=	"i rdestu polnego.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
};
func void Use_Recipe_ALCHEMY_Mana_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
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
	value 			=	75;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Mana_05;
	
	description		=	"Przepis na s³ab¹ miksturê many";
	TEXT[1]			=	"z 4 serafisów";
	TEXT[2]			=	"i rdestu polnego i wina.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
instance ItRe_ALCHEMY_Perm_Health (ItemPR_Recipe)
{
	value 			=	500;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Perm_Health;
	
	description		=	"Przepis na eliksir ¿ywotnoœci";
	TEXT[1]			=	"z krwawego rumianku";
	TEXT[2]			=	"i szczawiu królewskiego i rtêci.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	500;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Perm_Mana;
	
	description		=	"Przepis na eliksir ducha";
	TEXT[1]			=	"z wilczej miêty";
	TEXT[2]			=	"i szczawiu królewskiego i rtêci.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	500;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Perm_STR;
	
	description		=	"Przepis na eliksir si³y";
	TEXT[1]			=	"ze smoczego korzenia";
	TEXT[2]			=	"i szczawiu królewskiego i rtêci.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	500;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Perm_DEX;
	
	description		=	"Przepis na eliksir zrêcznoœci";
	TEXT[1]			=	"z goblinich jagód";
	TEXT[2]			=	"i szczawiu królewskiego i rtêci.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	500;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Perm_Power;
	
	description		=	"Przepis na eliksir mocy";
	TEXT[1]			=	"z wampirzej ró¿y";
	TEXT[2]			=	"i szczawiu królewskiego i rtêci.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	500;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Perm_Fire;
	
	description		=	"Przepis na eliksir odpornoœci na ogieñ";
	TEXT[1]			=	"ze s³onecznego aloesu";
	TEXT[2]			=	"i szczawiu królewskiego i rtêci.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
instance ItRe_ALCHEMY_Speed (ItemPR_Recipe)
{
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Speed;
	
	description		=	"Przepis na miksturê energii";
	TEXT[1]			=	"z 2 zêbatych zió³";
	TEXT[2]			=	"i rdestu polnego i wody.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Geist;
	
	description		=	"Przepis na miksturê jasnoœci umys³u";
	TEXT[1]			=	"z bagiennego ziela";
	TEXT[2]			=	"i cmentarnego mchu i gorza³y.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	200;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_Poison;
	
	description		=	"Przepis na truciznê";
	TEXT[1]			=	"z truj¹cego grzyba";
	TEXT[2]			=	"i rdestu polnego i wody.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_HealObsession;
	
	description		=	"Przepis na leczenie z opêtania";
	TEXT[1]			=	"z zêbatego ziela";
	TEXT[2]			=	"i cmentarnego mchu i wody.";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	0;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_ALCHEMY_MegaDrink;
	
	description		=	"Przepis na Embarla Firgasto";
	TEXT[1]			=	"z 10 smoczych jaj";
	TEXT[2]			=	"i czarnej per³y";
	TEXT[3]			=	"i siarki i rtêci.";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
				Doc_PrintLines	(nDocID,  0, "Zdo³a³em wskrzesiæ pradawn¹ sztukê, bojê siê jednak, ¿e nie spodoba siê to Feodaronowi.");
				Doc_PrintLines	(nDocID,  0, "Muszê zmieszaæ ca³e jego potomstwo i stworzyæ z niego miksturê w moim laboratorium. Gdyby jeszcze tylko nie siedzia³ bez przerwy na tych jajach... Nadal jednak czujê wobec niego szacunek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Embarla Firgasto:");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "10 smoczych jaj, jedna starta na proszek czarna per³a i szczypta siarki.");
				Doc_PrintLines	(nDocID,  0, "Miksturê nale¿y doprowadziæ do wrzenia i mieszaæ bez przerwy podczas destylacji.");
				Doc_PrintLines	(nDocID,  0, "Substancji koñcowej nale¿y u¿ywaæ z umiarem, gdy¿ wywo³uje silne efekty uboczne i mo¿e rozchwiaæ ca³y system kontroli nad magi¹.");
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
	value 			=	50;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Furs;
	
	description		=	"Instrukta¿ skórowania zwierzat";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	150;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Skins;
	
	description		=	"Instrukta¿ skórowania gadów";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	75;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Teeth;
	
	description		=	"Instrukta¿ usuwania zêbów";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	75;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Claws;
	
	description		=	"Instrukta¿ usuwania pazurów";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	75;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Wings;
	
	description		=	"Instrukta¿ usuwania skrzyde³";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	200;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Stings;
	
	description		=	"Instrukta¿ usuwania ¿¹de³";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	200;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Mandibles;
	
	description		=	"Instrukta¿ usuwania ¿uwaczek";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	300;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Horns;
	
	description		=	"Instrukta¿ usuwania rogów";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	250;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Tongues;
	
	description		=	"Instrukta¿ usuwania jêzyków";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_HUNTING_Tongues()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 3)
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
	value 			=	200;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Plates;
	
	description		=	"Instrukta¿ usuwania p³ytek pancerzy";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	400;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Scales;
	
	description		=	"Instrukta¿ usuwania ³usek";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	500;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Hearts;
	
	description		=	"Instrukta¿ usuwania serc";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
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
	value 			=	100;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Blood;
	
	description		=	"Instrukta¿ upuszczania krwi";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
	value 			=	50;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_HUNTING_Bones;
	
	description		=	"Instrukta¿ selekcjonowania koœci";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
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
