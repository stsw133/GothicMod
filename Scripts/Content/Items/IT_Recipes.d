///******************************************************************************************
prototype ItemPR_Recipe (C_Item)
{
	name 					=	"Przepis";
	mainflag 				=	ITEM_KAT_DOCS;
	flags 					=	ITEM_MULTI;
	
	material 				=	MAT_LEATHER;
	scemeName				=	"MAP";
	
	TEXT[5]					=	NAME_Value;
};

///******************************************************************************************
/// Fletchery
///******************************************************************************************

const int FLETCHERY_Arrows			=	0;

const int MAX_TALENT_FLETCHERY		=	1;

var int PLAYER_TALENT_FLETCHERY[MAX_TALENT_FLETCHERY];

///******************************************************************************************
instance ItRe_FLETCHERY_Arrows (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_FLETCHERY_Arrows;
	
	description				=	"Instrukta¿ wyrobu strza³";
	COUNT[5]				=	value;
};
func void Use_ItRe_FLETCHERY_Arrows()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_FLETCHERY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_FLETCHERY[FLETCHERY_Arrows])
	{
		PLAYER_TALENT_FLETCHERY[FLETCHERY_Arrows] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};

///******************************************************************************************
/// Smith
///******************************************************************************************

const int SMITH_1H_Special_01		=	0;
const int SMITH_2H_Special_01		=	1;
const int SMITH_1H_Special_02		=	2;
const int SMITH_2H_Special_02		=	3;
const int SMITH_1H_Special_03		=	4;
const int SMITH_2H_Special_03		=	5;
const int SMITH_1H_Special_04		=	6;
const int SMITH_2H_Special_04		=	7;
const int SMITH_1H_Special_05		=	8;
const int SMITH_2H_Special_05		=	9;

const int SMITH_1H_Ignite_01		=	10;
const int SMITH_2H_Ignite_01		=	11;
const int SMITH_1H_Ignite_02		=	12;
const int SMITH_2H_Ignite_02		=	13;
const int SMITH_1H_Ignite_03		=	14;
const int SMITH_2H_Ignite_03		=	15;
const int SMITH_1H_Ignite_04		=	16;
const int SMITH_2H_Ignite_04		=	17;
const int SMITH_1H_Ignite_05		=	18;
const int SMITH_2H_Ignite_05		=	19;

const int SMITH_1H_Common			=	20;
const int SMITH_Schwert1			=	21;
const int SMITH_Schwert4			=	22;
const int SMITH_Rubinklinge			=	23;
const int SMITH_ElBastardo			=	24;

const int SMITH_Streitaxt1			=	25;
const int SMITH_Avalon				=	26;

const int MAX_TALENT_SMITH 			=	27;

var int PLAYER_TALENT_SMITH[MAX_TALENT_SMITH];

///******************************************************************************************
instance ItRe_SMITH_1H_Common (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_SMITH_1H_Common;
	
	description				=	"Przepis na miecz";
	TEXT[1]					=	"z 2 bry³ek ¿elaza.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Common()
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
	on_state[0]				=	Use_ItRe_SMITH_Schwert1;
	
	description				=	"Przepis na dobry miecz";
	TEXT[1]					=	"z 3 bry³ek ¿elaza.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_Schwert1()
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
	on_state[0]				=	Use_ItRe_SMITH_Schwert4;
	
	description				=	"Przepis na dobry d³ugi miecz";
	TEXT[1]					=	"z 4 bry³ek ¿elaza.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_Schwert4()
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
	on_state[0]				=	Use_ItRe_SMITH_Rubinklinge;
	
	description				=	"Przepis na Rubinowe Ostrze";
	TEXT[1]					=	"z 4 bry³ek ¿elaza.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_Rubinklinge()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
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
	on_state[0]				=	Use_ItRe_SMITH_ElBastardo;
	
	description				=	"Przepis na El Bastardo";
	TEXT[1]					=	"z 5 bry³ek ¿elaza.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_ElBastardo()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
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
	on_state[0]				=	Use_ItRe_SMITH_Streitaxt1;
	
	description				=	"Przepis na lekki topór bojowy";
	TEXT[1]					=	"z 4 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 k³ów.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_Streitaxt1()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
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
	on_state[0]				=	Use_ItRe_SMITH_Avalon;
	
	description				=	"Przepis na Avalon";
	TEXT[1]					=	"z 4 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek srebra.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_Avalon()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Special_01;
	
	description				=	"Przepis na d³ugi miecz magiczny";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek niebieskiej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Special_01()
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Special_01;
	
	description				=	"Przepis na magiczny miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek niebieskiej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Special_01()
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Special_02;
	
	description				=	"Przepis na magiczny miecz pó³torarêczny";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek niebieskiej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Special_02()
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Special_02;
	
	description				=	"Przepis na ciê¿ki magiczny miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek niebieskiej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Special_02()
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Special_03;
	
	description				=	"Przepis na magiczne ostrze bojowe";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek niebieskiej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Special_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Special_03;
	
	description				=	"Przepis na ciê¿kie magiczne ostrze bojowe";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek niebieskiej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Special_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Special_04;
	
	description				=	"Przepis na magiczne ostrze na smoki";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek niebieskiej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Special_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Special_04;
	
	description				=	"Przepis na du¿e magiczne ostrze na smoki";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek niebieskiej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Special_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Ignite_01;
	
	description				=	"Przepis na d³ugi miecz podpalaj¹cy";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek czerwonej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Ignite_01()
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Ignite_01;
	
	description				=	"Przepis na podpalaj¹cy miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek czerwonej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Ignite_01()
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Ignite_02;
	
	description				=	"Przepis na podpalaj¹cy miecz pó³torarêczny";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek czerwonej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Ignite_02()
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Ignite_02;
	
	description				=	"Przepis na ciê¿ki podpalaj¹cy miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek czerwonej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Ignite_02()
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Ignite_03;
	
	description				=	"Przepis na podpalaj¹ce ostrze bojowe";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek czerwonej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Ignite_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Ignite_03;
	
	description				=	"Przepis na ciê¿kie podpalaj¹ce ostrze bojowe";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek czerwonej rudy.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Ignite_03()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_1H_Ignite_04;
	
	description				=	"Przepis na podpalaj¹ce smocze ostrze";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek czerwonej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_1H_Ignite_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	on_state[0]				=	Use_ItRe_SMITH_2H_Ignite_04;
	
	description				=	"Przepis na du¿e podpalajaj¹ce smocze ostrze";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek czerwonej rudy";
	TEXT[3]					=	"i 8 fiolek smoczej krwi.";
	COUNT[5]				=	value;
};
func void Use_ItRe_SMITH_2H_Ignite_04()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
/// Alchemy
///******************************************************************************************

const int ALCHEMY_MegaDrink			=	0;

const int ALCHEMY_Health_01			=	1;
const int ALCHEMY_Health_02			=	2;
const int ALCHEMY_Health_03			=	3;
const int ALCHEMY_Health_04			=	4;
const int ALCHEMY_Health_05			=	5;

const int ALCHEMY_Mana_01			=	6;
const int ALCHEMY_Mana_02			=	7;
const int ALCHEMY_Mana_03			=	8;
const int ALCHEMY_Mana_04			=	9;
const int ALCHEMY_Mana_05			=	10;

const int ALCHEMY_Stamina			=	11;

const int ALCHEMY_Time_Health		=	12;
const int ALCHEMY_Time_Mana  		=	13;
const int ALCHEMY_Time_Str			=	14;
const int ALCHEMY_Time_Dex			=	15;
const int ALCHEMY_Time_Pow			=	16;
const int ALCHEMY_Time_Prot			=	17;

const int ALCHEMY_Weak_Health		=	18;
const int ALCHEMY_Weak_Mana			=	19;
const int ALCHEMY_Weak_Str			=	20;
const int ALCHEMY_Weak_Dex			=	21;
const int ALCHEMY_Weak_Pow			=	22;

const int ALCHEMY_Perm_Health		=	23;
const int ALCHEMY_Perm_Mana			=	24;
const int ALCHEMY_Perm_Str			=	25;
const int ALCHEMY_Perm_Dex			=	26;
const int ALCHEMY_Perm_Pow			=	27;
const int ALCHEMY_Perm_Prot			=	28;

const int ALCHEMY_Lightness			=	29;
const int ALCHEMY_Speed				=	30;

const int ALCHEMY_NightVision		=	31;
const int ALCHEMY_Geist				=	32;
const int ALCHEMY_HealObsession		=	33;
const int ALCHEMY_Poison			=	34;

const int ALCHEMY_Transform			=	35;

const int MAX_TALENT_ALCHEMY		=	36;

var int PLAYER_TALENT_ALCHEMY[MAX_TALENT_ALCHEMY];

///******************************************************************************************
instance ItRe_ALCHEMY_Health_01 (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Health_01;
	
	description				=	"Przepis na s³ab¹ miksturê lecznicz¹";
	TEXT[1]					=	"z 2 roœlin leczniczych";
	TEXT[2]					=	"i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Health_01()
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Health_02;
	
	description				=	"Przepis na œredni¹ miksturê lecznicz¹";
	TEXT[1]					=	"z 2 zió³ leczniczych";
	TEXT[2]					=	"i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Health_02()
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Health_03;
	
	description				=	"Przepis na siln¹ miksturê lecznicz¹";
	TEXT[1]					=	"z 2 korzeni leczniczych";
	TEXT[2]					=	"i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Health_03()
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Health_04;
	
	description				=	"Przepis na potê¿n¹ miksturê lecznicz¹";
	TEXT[1]					=	"z silnej mikstury leczniczej";
	TEXT[2]					=	"i rdestu polnego.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Health_04()
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
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Health_05;
	
	description				=	"Przepis na s³ab¹ miksturê lecznicz¹";
	TEXT[1]					=	"z 5 serafisów";
	TEXT[2]					=	"i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Health_05()
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Mana_01;
	
	description				=	"Przepis na s³ab¹ miksturê many";
	TEXT[1]					=	"z 2 ognistych pokrzyw";
	TEXT[2]					=	"i wina.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Mana_01()
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Mana_02;
	
	description				=	"Przepis na œredni¹ miksturê many";
	TEXT[1]					=	"z 2 ognistych zió³";
	TEXT[2]					=	"i wina.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Mana_02()
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Mana_03;
	
	description				=	"Przepis na siln¹ miksturê many";
	TEXT[1]					=	"z 2 ognistych korzeni";
	TEXT[2]					=	"i wina.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Mana_03()
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Mana_04;
	
	description				=	"Przepis na potê¿n¹ miksturê many";
	TEXT[1]					=	"z silnej mikstury many";
	TEXT[2]					=	"i rdestu polnego.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Mana_04()
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
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Mana_05;
	
	description				=	"Przepis na s³ab¹ miksturê many";
	TEXT[1]					=	"z 5 serafisów";
	TEXT[2]					=	"i wina.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Mana_05()
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
instance ItRe_ALCHEMY_Speed (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Speed;
	
	description				=	"Przepis na miksturê energii";
	TEXT[1]					=	"z 2 zêbatych zió³";
	TEXT[2]					=	"i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Speed()
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
instance ItRe_ALCHEMY_Lightness (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Lightness;
	
	description				=	"Przepis na miksturê lekkoœci";
	TEXT[1]					=	"z 4 zêbatych zió³";
	TEXT[2]					=	"i 2 rdestów polnych";
	TEXT[3]					=	"i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Lightness()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Lightness])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Lightness] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Time_Health (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Time_Health;
	
	description				=	"Przepis na czasowy eliksir ¿ywotnoœci";
	TEXT[1]					=	"z krwawej miêty";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Time_Health()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Health])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Health] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Time_Mana (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Time_Mana;
	
	description				=	"Przepis na czasowy eliksir ducha";
	TEXT[1]					=	"z wilczego rumianku";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Time_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Mana])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Mana] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Time_Str (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Time_Str;
	
	description				=	"Przepis na czasowy eliksir si³y";
	TEXT[1]					=	"ze smoczego korzenia";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Time_Str()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Str])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Str] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Time_Dex (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Time_Dex;
	
	description				=	"Przepis na czasowy eliksir zrêcznoœci";
	TEXT[1]					=	"z gobliniej ró¿y";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Time_Dex()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Dex])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Dex] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Time_Pow (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Time_Pow;
	
	description				=	"Przepis na czasowy eliksir mocy";
	TEXT[1]					=	"z harpiej winoroœli";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Time_Pow()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Pow])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Time_Pow] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_Health (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Weak_Health;
	
	description				=	"Przepis na negatywny eliksir ¿ywotnoœci";
	TEXT[1]					=	"z krwawej miêty";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Weak_Health()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Weak_Mana;
	
	description				=	"Przepis na negatywny eliksir ducha";
	TEXT[1]					=	"z wilczego rumianku";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Weak_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
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
instance ItRe_ALCHEMY_Weak_Str (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Weak_Str;
	
	description				=	"Przepis na negatywny eliksir si³y";
	TEXT[1]					=	"ze smoczego korzenia";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Weak_Str()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Str])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Str] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_Dex (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Weak_Dex;
	
	description				=	"Przepis na negatywny eliksir zrêcznoœci";
	TEXT[1]					=	"z gobliniej ró¿y";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Weak_Dex()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Dex])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Dex] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_Pow (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Weak_Pow;
	
	description				=	"Przepis na negatywny eliksir mocy";
	TEXT[1]					=	"z harpiej winoroœli";
	TEXT[2]					=	"i cmentarnego mchu i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Weak_Pow()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Pow])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Weak_Pow] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Health (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Perm_Health;
	
	description				=	"Przepis na trwa³y eliksir ¿ywotnoœci";
	TEXT[1]					=	"z krwawej miêty";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Health()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
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
	on_state[0]				=	Use_ItRe_ALCHEMY_Perm_Mana;
	
	description				=	"Przepis na trwa³y eliksir ducha";
	TEXT[1]					=	"z wilczego rumianku";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
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
instance ItRe_ALCHEMY_Perm_Str (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Perm_Str;
	
	description				=	"Przepis na trwa³y eliksir si³y";
	TEXT[1]					=	"ze smoczego korzenia";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Str()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Str])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Str] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Dex (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Perm_Dex;
	
	description				=	"Przepis na trwa³y eliksir zrêcznoœci";
	TEXT[1]					=	"z gobliniej ró¿y";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Dex()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Dex])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Dex] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Pow (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Perm_Pow;
	
	description				=	"Przepis na trwa³y eliksir mocy";
	TEXT[1]					=	"z harpiej winoroœli";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Pow()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Pow])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Pow] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Prot (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Perm_Prot;
	
	description				=	"Przepis na trwa³y eliksir ochrony";
	TEXT[1]					=	"ze s³onecznego aloesu";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Prot()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Prot])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Perm_Prot] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Transform (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Transform;
	
	description				=	"Przepis na przemianê w potwora";
	TEXT[1]					=	"z 10 fiolek krwi danego potwora";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Transform()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Transform])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Transform] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_NightVision (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_NightVision;
	
	description				=	"Przepis na miksturê widzenia w ciemnoœci";
	TEXT[1]					=	"z roœliny many";
	TEXT[2]					=	"i serafisu i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_NightVision()
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
instance ItRe_ALCHEMY_Geist (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Geist;
	
	description				=	"Przepis na miksturê jasnoœci umys³u";
	TEXT[1]					=	"z 2 bagiennych zió³";
	TEXT[2]					=	"i gorza³y.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Geist()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
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
instance ItRe_ALCHEMY_HealObsession (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_HealObsession;
	
	description				=	"Przepis na leczenie z opêtania";
	TEXT[1]					=	"z roœliny leczniczej";
	TEXT[2]					=	"i roœliny many i wody œwiêconej.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_HealObsession()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
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
instance ItRe_ALCHEMY_Poison (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_Poison;
	
	description				=	"Przepis na truciznê";
	TEXT[1]					=	"z 4 truj¹cych grzybów";
	TEXT[2]					=	"i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_Poison()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
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
instance ItRe_ALCHEMY_MegaDrink (ItemPR_Recipe)
{
	value 					=	0;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ALCHEMY_MegaDrink;
	
	description				=	"Przepis na Embarla Firgasto";
	TEXT[1]					=	"z 10 smoczych jaj";
	TEXT[2]					=	"i czarnej per³y";
	TEXT[3]					=	"i siarki i rtêci.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ALCHEMY_MegaDrink()
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
	
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 3)
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
/// Enchanting
///******************************************************************************************

var int PLAYER_TALENT_ENCHANTING[MAX_SPELL];

///******************************************************************************************
instance ItRe_ENCHANTING_Light (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Light;
	
	description				=	"Przepis na 'Œwiat³o'";
	TEXT[1]					=	"ze z³otej monety.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Light()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Light])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Light] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Heal (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Heal;
	
	description				=	"Przepis na 'Uleczenie'";
	TEXT[1]					=	"z zio³a leczniczego.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Heal()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Heal])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Heal] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_SlowTime (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_SlowTime;
	
	description				=	"Przepis na 'Spowolnienie czasu'";
	TEXT[1]					=	"ze szmaragdu i 10 cz¹steczek czasu.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_SlowTime()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_SlowTime])
	{
		PLAYER_TALENT_ENCHANTING[SPL_SlowTime] = true;
		B_Say (self, self, "$VERSTEHE");
		
		enableTimeDust = true;
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_NightToDay (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_NightToDay;
	
	description				=	"Przepis na 'Noc w dzieñ'";
	TEXT[1]					=	"z owczej skóry i 5 cz¹steczek czasu.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_NightToDay()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_NightToDay])
	{
		PLAYER_TALENT_ENCHANTING[SPL_NightToDay] = true;
		B_Say (self, self, "$VERSTEHE");
		
		enableTimeDust = true;
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Telekinesis (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Telekinesis;
	
	description				=	"Przepis na 'Telekineza'";
	TEXT[1]					=	"z monety fortuny.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Telekinesis()
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
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_FireBolt;
	
	description				=	"Przepis na 'Ognisty pocisk'";
	TEXT[1]					=	"z siarki.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_FireBolt()
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
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_IceBolt;
	
	description				=	"Przepis na 'Lodowy pocisk'";
	TEXT[1]					=	"z kryszta³u.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_IceBolt()
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
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Zap;
	
	description				=	"Przepis na 'Ma³a b³yskawica'";
	TEXT[1]					=	"z bry³ki srebra.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Zap()
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
instance ItRe_ENCHANTING_SkullBolt (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_SkullBolt;
	
	description				=	"Przepis na 'Krzyk umar³ych'";
	TEXT[1]					=	"z czaszki.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_SkullBolt()
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
instance ItRe_ENCHANTING_WindFist (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_WindFist;
	
	description				=	"Przepis na 'Piêœæ wichru'";
	TEXT[1]					=	"z wêgla i pazurów.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_WindFist()
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
	on_state[0]				=	Use_ItRe_ENCHANTING_Sleep;
	
	description				=	"Przepis na 'Uœpienie'";
	TEXT[1]					=	"z bagiennego ziela.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Sleep()
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
instance ItRe_ENCHANTING_Charm (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Charm;
	
	description				=	"Przepis na 'Amnezja'";
	TEXT[1]					=	"z bagiennego ziela i ¿uwaczek polnej bestii.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Charm()
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
instance ItRe_ENCHANTING_LightningFlash (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_LightningFlash;
	
	description				=	"Przepis na 'B³yskawica'";
	TEXT[1]					=	"z bry³ki ¿elaza i szponów topielca.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_LightningFlash()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
	on_state[0]				=	Use_ItRe_ENCHANTING_ChargeFireball;
	
	description				=	"Przepis na 'Du¿a kula ognia'";
	TEXT[1]					=	"z ognistego kryszta³u i smo³y.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_ChargeFireball()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
	on_state[0]				=	Use_ItRe_ENCHANTING_Whirlwind;
	
	description				=	"Przepis na 'Wir'";
	TEXT[1]					=	"ze skrzyde³ i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Whirlwind()
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
	on_state[0]				=	Use_ItRe_ENCHANTING_Fear;
	
	description				=	"Przepis na 'Strach'";
	TEXT[1]					=	"ze skrzyde³.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Fear()
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
instance ItRe_ENCHANTING_Rage (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Rage;
	
	description				=	"Przepis na 'Œlep¹ furiê'";
	TEXT[1]					=	"z krwi demona.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Rage()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
instance ItRe_ENCHANTING_ChargeZap (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_ChargeZap;
	
	description				=	"Przepis na 'Piorun kulisty'";
	TEXT[1]					=	"z bry³ki ¿elaza i pazurów.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_ChargeZap()
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
instance ItRe_ENCHANTING_Geyser (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Geyser;
	
	description				=	"Przepis na 'Gejzer'";
	TEXT[1]					=	"z akwamarynu.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Geyser()
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
	on_state[0]				=	Use_ItRe_ENCHANTING_WaterFist;
	
	description				=	"Przepis na 'Wodna piêœæ'";
	TEXT[1]					=	"z akwamarynu i wody.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_WaterFist()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
instance ItRe_ENCHANTING_Pyrokinesis (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_Pyrokinesis;
	
	description				=	"Przepis na 'Du¿a burza ognista'";
	TEXT[1]					=	"z ognistego kryszta³u i saletry.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Pyrokinesis()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Pyrokinesis])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Pyrokinesis] = true;
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_IceLance (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_IceLance;
	
	description				=	"Przepis na 'Lodowa lanca'";
	TEXT[1]					=	"z bia³ej per³y.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_IceLance()
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
	on_state[0]				=	Use_ItRe_ENCHANTING_IceWave;
	
	description				=	"Przepis na 'Lodowa fala'";
	TEXT[1]					=	"z bia³ej per³y i akwamarynu.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_IceWave()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
	on_state[0]				=	Use_ItRe_ENCHANTING_Inflate;
	
	description				=	"Przepis na 'Spuchniêcie'";
	TEXT[1]					=	"z wody i ³oju kretoszczura.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Inflate()
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
instance ItRe_ENCHANTING_DragonBall (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_DragonBall;
	
	description				=	"Przepis na 'Smocz¹ kulê'";
	TEXT[1]					=	"z serca smoka.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_DragonBall()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
	on_state[0]				=	Use_ItRe_ENCHANTING_BlackDragonBall;
	
	description				=	"Przepis na 'Czarn¹ smocz¹ kulê'";
	TEXT[1]					=	"z kamienia duszy smoka-o¿ywieñca.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_BlackDragonBall()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
instance ItRe_ENCHANTING_BreathOfDeath (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_ItRe_ENCHANTING_BreathOfDeath;
	
	description				=	"Przepis na 'Tchnienie œmierci'";
	TEXT[1]					=	"z wêgla i czarnej per³y.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_BreathOfDeath()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
	on_state[0]				=	Use_ItRe_ENCHANTING_MassDeath;
	
	description				=	"Przepis na 'Fala œmierci'";
	TEXT[1]					=	"z krwi demona i czarnej per³y.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_MassDeath()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
	on_state[0]				=	Use_ItRe_ENCHANTING_ArmyOfDarkness;
	
	description				=	"Przepis na 'Armia ciemnoœci'";
	TEXT[1]					=	"z koœci szkieletu i czarnej per³y.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_ArmyOfDarkness()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
	on_state[0]				=	Use_ItRe_ENCHANTING_Shrink;
	
	description				=	"Przepis na 'Zmniejszenie potwora'";
	TEXT[1]					=	"z k³a trolla i jaja pe³zacza.";
	COUNT[5]				=	value;
};
func void Use_ItRe_ENCHANTING_Shrink()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
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
/// Hunting
///******************************************************************************************

const int HUNTING_Blood				=	0;
const int HUNTING_Claws				=	1;
const int HUNTING_Furs				=	2;
const int HUNTING_Hearts			=	3;
const int HUNTING_Horns 			=	4;
const int HUNTING_Mandibles			=	5;
const int HUNTING_Plates			=	6;
const int HUNTING_Scales			=	7;
const int HUNTING_Skins				=	8;
const int HUNTING_Stings			=	9;
const int HUNTING_Teeth				=	10;
const int HUNTING_Tongues			=	11;
const int HUNTING_Wings				=	12;

const int MAX_TALENT_HUNTING		=	13;

var int PLAYER_TALENT_HUNTING[MAX_TALENT_HUNTING];

///******************************************************************************************
/// Cooking
///******************************************************************************************

const int MAX_TALENT_COOKING		=	0;

var int PLAYER_TALENT_COOKING[MAX_TALENT_COOKING];
