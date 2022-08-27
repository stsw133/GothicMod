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

const int SMITH_Hardening			=	0;
const int SMITH_Sharpening			=	1;
const int SMITH_Jewelery			=	2;

const int SMITH_1H_Common			=	3;

const int SMITH_1H_Special_01		=	4;
const int SMITH_2H_Special_01		=	5;
const int SMITH_1H_Special_02		=	6;
const int SMITH_2H_Special_02		=	7;
const int SMITH_1H_Special_03		=	8;
const int SMITH_2H_Special_03		=	9;
const int SMITH_1H_Special_04		=	10;
const int SMITH_2H_Special_04		=	11;
const int SMITH_1H_Special_05		=	12;
const int SMITH_2H_Special_05		=	13;

const int SMITH_1H_Ignite_01		=	14;
const int SMITH_2H_Ignite_01		=	15;
const int SMITH_1H_Ignite_02		=	16;
const int SMITH_2H_Ignite_02		=	17;
const int SMITH_1H_Ignite_03		=	18;
const int SMITH_2H_Ignite_03		=	19;
const int SMITH_1H_Ignite_04		=	20;
const int SMITH_2H_Ignite_04		=	21;
const int SMITH_1H_Ignite_05		=	22;
const int SMITH_2H_Ignite_05		=	23;

const int SMITH_Schwert1			=	24;
const int SMITH_Schwert4			=	25;
const int SMITH_Rubinklinge			=	26;
const int SMITH_ElBastardo			=	27;

const int SMITH_Streitaxt1			=	28;
const int SMITH_Avalon				=	29;

const int MAX_SMITH 				=	30;

var int PLAYER_TALENT_SMITH[MAX_SMITH];
var int COUNTER_SMITH;

///******************************************************************************************
instance ItRe_SMITH_Hardening (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Hardening;
	
	description				=	"Instrukta¿ utwardzania pancerzy";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Hardening()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Hardening])
	{
		PLAYER_TALENT_SMITH[SMITH_Hardening] = true;
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Sharpening (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Sharpening;
	
	description				=	"Instrukta¿ ostrzenia broni";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Sharpening()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Sharpening])
	{
		PLAYER_TALENT_SMITH[SMITH_Sharpening] = true;
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Jewelery (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Jewelery;
	
	description				=	"Instrukta¿ wyrobu bi¿uterii";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_SMITH_Jewelery()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_SMITH[SMITH_Jewelery])
	{
		PLAYER_TALENT_SMITH[SMITH_Jewelery] = true;
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Common (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Common;
	
	description				=	"Przepis na miecz";
	TEXT[1]					=	"z 2 bry³ek ¿elaza.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
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
	TEXT[1]					=	"z 3 bry³ek ¿elaza.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Schwert4 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Schwert4;
	
	description				=	"Przepis na dobry d³ugi miecz";
	TEXT[1]					=	"z 4 bry³ek ¿elaza.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
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
	TEXT[1]					=	"z 4 bry³ek ¿elaza.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
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
	TEXT[1]					=	"z 5 bry³ek ¿elaza.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_Streitaxt1 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_Streitaxt1;
	
	description				=	"Przepis na lekki topór bojowy";
	TEXT[1]					=	"z 4 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 k³ów.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
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
	TEXT[1]					=	"z 4 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek srebra.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Special_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Special_01;
	
	description				=	"Przepis na d³ugi miecz magiczny";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek niebieskiej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_01;
	
	description				=	"Przepis na magiczny miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek niebieskiej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Special_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Special_02;
	
	description				=	"Przepis na magiczny miecz pó³torarêczny";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek niebieskiej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_02;
	
	description				=	"Przepis na ciê¿ki magiczny miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek niebieskiej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
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
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek niebieskiej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_03 (ItemPR_Recipe)
{
	value 					=	800;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_03;
	
	description				=	"Przepis na ciê¿kie magiczne ostrze bojowe";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek niebieskiej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
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
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek niebieskiej rudy";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Special_04 (ItemPR_Recipe)
{
	value 					=	1000;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Special_04;
	
	description				=	"Przepis na du¿e magiczne ostrze na smoki";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek niebieskiej rudy";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_01;
	
	description				=	"Przepis na d³ugi miecz podpalaj¹cy";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek czerwonej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_01 (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_01;
	
	description				=	"Przepis na podpalaj¹cy miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 2 bry³ek czerwonej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_02;
	
	description				=	"Przepis na podpalaj¹cy miecz pó³torarêczny";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek czerwonej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_02 (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_02;
	
	description				=	"Przepis na ciê¿ki podpalaj¹cy miecz dwurêczny";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 3 bry³ek czerwonej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_03 (ItemPR_Recipe)
{
	value 					=	800;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_03;
	
	description				=	"Przepis na podpalaj¹ce ostrze bojowe";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek czerwonej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_03 (ItemPR_Recipe)
{
	value 					=	800;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_03;
	
	description				=	"Przepis na ciê¿kie podpalaj¹ce ostrze bojowe";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 4 bry³ek czerwonej rudy.";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_1H_Ignite_04 (ItemPR_Recipe)
{
	value 					=	1000;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_1H_Ignite_04;
	
	description				=	"Przepis na podpalaj¹ce smocze ostrze";
	TEXT[1]					=	"z 2 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek czerwonej rudy";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_SMITH_2H_Ignite_04 (ItemPR_Recipe)
{
	value 					=	1000;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_SMITH_2H_Ignite_04;
	
	description				=	"Przepis na du¿e podpalajaj¹ce smocze ostrze";
	TEXT[1]					=	"z 3 bry³ek ¿elaza";
	TEXT[2]					=	"i 5 bry³ek czerwonej rudy";
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
		COUNTER_SMITH += 1;
		Npc_SetTalentValue (self, NPC_TALENT_SMITH, COUNTER_SMITH * 100 / MAX_SMITH);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
///	Enchanting
///******************************************************************************************

const int ENCHANTING_ProtPhysical	=	SPL_NecDeath + 1;
const int ENCHANTING_ProtMagic		=	SPL_NecDeath + 2;
const int ENCHANTING_ProtFire		=	SPL_NecDeath + 3;
const int ENCHANTING_ProtTotal		=	SPL_NecDeath + 4;
const int ENCHANTING_Hp				=	SPL_NecDeath + 5;
const int ENCHANTING_Mana			=	SPL_NecDeath + 6;
const int ENCHANTING_Energy			=	SPL_NecDeath + 7;
const int ENCHANTING_Str			=	SPL_NecDeath + 8;
const int ENCHANTING_Dex			=	SPL_NecDeath + 9;
const int ENCHANTING_Power			=	SPL_NecDeath + 10;
const int ENCHANTING_LifeSteal		=	SPL_NecDeath + 11;

const int MAX_ENCHANTING			=	SPL_NecDeath + 12;

var int PLAYER_TALENT_ENCHANTING[MAX_ENCHANTING];
var int COUNTER_ENCHANTING;

///******************************************************************************************
instance ItRe_ENCHANTING_ProtPhysical (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ProtPhysical;
	
	description				=	"Instrukta¿ talizmanów odp. fizycznej";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_ProtPhysical()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtPhysical])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtPhysical] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ProtMagic (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ProtMagic;
	
	description				=	"Instrukta¿ talizmanów odp. magicznej";
	TEXT[1]					=	"z niebieskiej magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_ProtMagic()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtMagic])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtMagic] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ProtFire (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ProtFire;
	
	description				=	"Instrukta¿ talizmanów odp. na ogieñ";
	TEXT[1]					=	"z czerwonej magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_ProtFire()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtFire])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtFire] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ProtTotal (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ProtTotal;
	
	description				=	"Instrukta¿ talizmanów nietykalnoœci";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_ProtTotal()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtTotal])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_ProtTotal] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Hp (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Hp;
	
	description				=	"Instrukta¿ talizmanów ¿ycia";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Hp()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_Hp])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_Hp] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Mana (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Mana;
	
	description				=	"Instrukta¿ talizmanów many";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Mana()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_Mana])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_Mana] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Energy (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Energy;
	
	description				=	"Instrukta¿ talizmanów energii";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Energy()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_Energy])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_Energy] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Str (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Str;
	
	description				=	"Instrukta¿ talizmanów si³y";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Str()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_Str])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_Str] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Dex (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Dex;
	
	description				=	"Instrukta¿ talizmanów zrêcznoœci";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Dex()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_Dex])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_Dex] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Power (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Power;
	
	description				=	"Instrukta¿ talizmanów mocy";
	TEXT[1]					=	"z magicznej rudy.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Power()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_Power])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_Power] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_LifeSteal (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_LifeSteal;
	
	description				=	"Instrukta¿ talizmanów kradzie¿y ¿ycia";
	TEXT[1]					=	"z czerwonej magicznej rudy.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_LifeSteal()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[ENCHANTING_LifeSteal])
	{
		PLAYER_TALENT_ENCHANTING[ENCHANTING_LifeSteal] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Light (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Light;
	
	description				=	"Przepis na 'Œwiat³o'";
	TEXT[1]					=	"ze z³otej monety.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"z zio³a leczniczego.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"ze szmaragdu i 10 cz¹steczek czasu.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
		
		enableTimeDust = true;
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_NightToDay (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_NightToDay;
	
	description				=	"Przepis na 'Noc w dzieñ'";
	TEXT[1]					=	"z owczej skóry i 5 cz¹steczek czasu.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
		
		enableTimeDust = true;
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Telekinesis (ItemPR_Recipe)
{
	value 					=	100;
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_FireBolt (ItemPR_Recipe)
{
	value 					=	100;
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_IceBolt (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_IceBolt;
	
	description				=	"Przepis na 'Lodowy pocisk'";
	TEXT[1]					=	"z kryszta³u.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Zap (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Zap;
	
	description				=	"Przepis na 'Ma³a b³yskawica'";
	TEXT[1]					=	"z bry³ki srebra.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_SkullBolt (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_SkullBolt;
	
	description				=	"Przepis na 'Krzyk umar³ych'";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_WindFist (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_WindFist;
	
	description				=	"Przepis na 'Piêœæ wichru'";
	TEXT[1]					=	"z wêgla i pazurów.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Sleep (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Sleep;
	
	description				=	"Przepis na 'Uœpienie'";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Charm (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Charm;
	
	description				=	"Przepis na 'Amnezja'";
	TEXT[1]					=	"z bagiennego ziela i ¿uwaczek polnej bestii.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_LightningFlash (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_LightningFlash;
	
	description				=	"Przepis na 'B³yskawica'";
	TEXT[1]					=	"z bry³ki ¿elaza i szponów topielca.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ChargeFireball (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ChargeFireball;
	
	description				=	"Przepis na 'Du¿a kula ognia'";
	TEXT[1]					=	"z ognistego kryszta³u i smo³y.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"ze skrzyde³ i wody.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"ze skrzyde³.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Rage (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Rage;
	
	description				=	"Przepis na 'Œlep¹ furiê'";
	TEXT[1]					=	"z krwi demona.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"z bry³ki ¿elaza i pazurów.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_WaterFist (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_WaterFist;
	
	description				=	"Przepis na 'Wodna piêœæ'";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Pyrokinesis (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Pyrokinesis;
	
	description				=	"Przepis na 'Du¿a burza ognista'";
	TEXT[1]					=	"z ognistego kryszta³u i saletry.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ENCHANTING_Pyrokinesis()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ENCHANTING) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ENCHANTING[SPL_Pyrokinesis])
	{
		PLAYER_TALENT_ENCHANTING[SPL_Pyrokinesis] = true;
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"z bia³ej per³y.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"z bia³ej per³y i akwamarynu.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_Inflate (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_Inflate;
	
	description				=	"Przepis na 'Spuchniêcie'";
	TEXT[1]					=	"z wody i ³oju kretoszczura.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_DragonBall (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_DragonBall;
	
	description				=	"Przepis na 'Smocz¹ kulê'";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_BlackDragonBall (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_BlackDragonBall;
	
	description				=	"Przepis na 'Czarn¹ smocz¹ kulê'";
	TEXT[1]					=	"z kamienia duszy smoka-o¿ywieñca.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_BreathOfDeath (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_BreathOfDeath;
	
	description				=	"Przepis na 'Tchnienie œmierci'";
	TEXT[1]					=	"z wêgla i czarnej per³y.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_MassDeath (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_MassDeath;
	
	description				=	"Przepis na 'Fala œmierci'";
	TEXT[1]					=	"z krwi demona i czarnej per³y.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ENCHANTING_ArmyOfDarkness (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ENCHANTING_ArmyOfDarkness;
	
	description				=	"Przepis na 'Armia ciemnoœci'";
	TEXT[1]					=	"z koœci szkieletu i czarnej per³y.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
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
	TEXT[1]					=	"z k³a trolla i jaja pe³zacza.";
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
		COUNTER_ENCHANTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ENCHANTING, COUNTER_ENCHANTING * 100 / MAX_ENCHANTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
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

const int ALCHEMY_Temp_Health		=	11;
const int ALCHEMY_Temp_Mana  		=	12;
const int ALCHEMY_Temp_STR  		=	13;
const int ALCHEMY_Temp_DEX  		=	14;
const int ALCHEMY_Temp_Power  		=	15;

const int ALCHEMY_Weak_Health		=	16;
const int ALCHEMY_Weak_Mana  		=	17;
const int ALCHEMY_Weak_STR  		=	18;
const int ALCHEMY_Weak_DEX  		=	19;
const int ALCHEMY_Weak_Power  		=	20;

const int ALCHEMY_Perm_Health		=	21;
const int ALCHEMY_Perm_Mana  		=	22;
const int ALCHEMY_Perm_STR  		=	23;
const int ALCHEMY_Perm_DEX  		=	24;
const int ALCHEMY_Perm_Power  		=	25;
const int ALCHEMY_Perm_Fire	 		=	26;

const int ALCHEMY_Transform			=	27;

const int ALCHEMY_Digestion			=	28;
const int ALCHEMY_NightVision		=	29;
const int ALCHEMY_Geist				=	30;
const int ALCHEMY_HealObsession		=	31;
const int ALCHEMY_Poison			=	32;
const int ALCHEMY_Speed				=	33;

const int ALCHEMY_AntiPoison		=	34;

const int MAX_ALCHEMY				=	35;

var int PLAYER_TALENT_ALCHEMY[MAX_ALCHEMY];
var int COUNTER_ALCHEMY;

///******************************************************************************************
instance ItRe_ALCHEMY_Health_01 (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_01;
	
	description				=	"Przepis na s³ab¹ miksturê lecznicz¹";
	TEXT[1]					=	"z 2 roœlin leczniczych";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_02 (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_02;
	
	description				=	"Przepis na œredni¹ miksturê lecznicz¹";
	TEXT[1]					=	"z 2 zió³ leczniczych";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_03 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_03;
	
	description				=	"Przepis na siln¹ miksturê lecznicz¹";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_04 (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_04;
	
	description				=	"Przepis na potê¿n¹ miksturê lecznicz¹";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Health_05 (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Health_05;
	
	description				=	"Przepis na s³ab¹ miksturê lecznicz¹";
	TEXT[1]					=	"z 5 serafisów";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_01 (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_01;
	
	description				=	"Przepis na s³ab¹ miksturê many";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_02 (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_02;
	
	description				=	"Przepis na œredni¹ miksturê many";
	TEXT[1]					=	"z 2 ognistych zió³";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_03 (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_03;
	
	description				=	"Przepis na siln¹ miksturê many";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_04 (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_04;
	
	description				=	"Przepis na potê¿n¹ miksturê many";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Mana_05 (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Mana_05;
	
	description				=	"Przepis na s³ab¹ miksturê many";
	TEXT[1]					=	"z 5 serafisów";
	TEXT[2]					=	"i wina.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_Health (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_Health;
	
	description				=	"Przepis na czasowy eliksir ¿ywotnoœci";
	TEXT[1]					=	"z krwawej miêty";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
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
	TEXT[1]					=	"z wilczego rumianku";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_STR (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_STR;
	
	description				=	"Przepis na czasowy eliksir si³y";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Temp_DEX (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Temp_DEX;
	
	description				=	"Przepis na czasowy eliksir zrêcznoœci";
	TEXT[1]					=	"z gobliniej ró¿y";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
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
	TEXT[1]					=	"z harpiej winoroœli";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_Health (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_Health;
	
	description				=	"Przepis na negatywny eliksir ¿ywotnoœci";
	TEXT[1]					=	"z krwawej miêty";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
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
	TEXT[1]					=	"z wilczego rumianku";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_STR (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_STR;
	
	description				=	"Przepis na negatywny eliksir si³y";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Weak_DEX (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Weak_DEX;
	
	description				=	"Przepis na negatywny eliksir zrêcznoœci";
	TEXT[1]					=	"z gobliniej ró¿y";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
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
	TEXT[1]					=	"z harpiej winoroœli";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Health (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Health;
	
	description				=	"Przepis na trwa³y eliksir ¿ywotnoœci";
	TEXT[1]					=	"z krwawej miêty";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Mana (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Mana;
	
	description				=	"Przepis na trwa³y eliksir ducha";
	TEXT[1]					=	"z wilczego rumianku";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_STR (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_STR;
	
	description				=	"Przepis na trwa³y eliksir si³y";
	TEXT[1]					=	"ze smoczego korzenia";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_DEX (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_DEX;
	
	description				=	"Przepis na trwa³y eliksir zrêcznoœci";
	TEXT[1]					=	"z gobliniej ró¿y";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Power (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Power;
	
	description				=	"Przepis na trwa³y eliksir mocy";
	TEXT[1]					=	"z harpiej winoroœli";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Fire (ItemPR_Recipe)
{
	value 					=	600;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Perm_Fire;
	
	description				=	"Przepis na trwa³y eliksir odpornoœci na ogieñ";
	TEXT[1]					=	"ze s³onecznego aloesu";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Transform (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Transform;
	
	description				=	"Przepis na przemianê w potwora";
	TEXT[1]					=	"z 10 fiolek krwi danego potwora";
	TEXT[2]					=	"i rdestu polnego i wody.";
	COUNT[4]				=	2;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_Transform()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 2)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_Transform])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_Transform] = true;
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Digestion (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Digestion;
	
	description				=	"Przepis na miksturê trawienia";
	TEXT[1]					=	"z roœliny leczniczej";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_NightVision (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_NightVision;
	
	description				=	"Przepis na miksturê widzenia w ciemnoœci";
	TEXT[1]					=	"z roœliny many";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Geist (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Geist;
	
	description				=	"Przepis na miksturê jasnoœci umys³u";
	TEXT[1]					=	"z 2 bagiennych zió³";
	TEXT[2]					=	"i gorza³y.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_HealObsession (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_HealObsession;
	
	description				=	"Przepis na leczenie z opêtania";
	TEXT[1]					=	"z roœliny leczniczej";
	TEXT[2]					=	"i roœliny many i wody œwiêconej.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Poison (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Poison;
	
	description				=	"Przepis na truciznê";
	TEXT[1]					=	"z 4 truj¹cych grzybów";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_Speed (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_Speed;
	
	description				=	"Przepis na miksturê energii";
	TEXT[1]					=	"z 2 zêbatych zió³";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_ALCHEMY_AntiPoison (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_ALCHEMY_AntiPoison;
	
	description				=	"Przepis na miksturê odpornoœci na trucizny";
	TEXT[1]					=	"z wydzieliny z ¿¹d³a krwiopijcy";
	TEXT[2]					=	"i szczawiu królewskiego i wody.";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_ALCHEMY_AntiPoison()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_ALCHEMY) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_ALCHEMY[ALCHEMY_AntiPoison])
	{
		PLAYER_TALENT_ALCHEMY[ALCHEMY_AntiPoison] = true;
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
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
	TEXT[2]					=	"i czarnej per³y";
	TEXT[3]					=	"i siarki i rtêci.";
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
		COUNTER_ALCHEMY += 1;
		Npc_SetTalentValue (self, NPC_TALENT_ALCHEMY, COUNTER_ALCHEMY * 100 / MAX_ALCHEMY);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
///	Hunting
///******************************************************************************************

const int HUNTING_ArrowMaking		=	0;

const int HUNTING_Furs				=	1;
const int HUNTING_Skins				=	2;
const int HUNTING_Teeth				=	3;
const int HUNTING_Claws				=	4;
const int HUNTING_Wings				=	5;
const int HUNTING_Stings			=	6;
const int HUNTING_Mandibles			=	7;
const int HUNTING_Horns 			=	8;
const int HUNTING_Tongues			=	9;
const int HUNTING_Plates			=	10;
const int HUNTING_Scales			=	11;
const int HUNTING_Hearts			=	12;
const int HUNTING_Blood				=	13;
const int HUNTING_Bones				=	14;

const int MAX_HUNTING				=	15;

var int PLAYER_TALENT_HUNTING[MAX_HUNTING];
var int COUNTER_HUNTING;

///******************************************************************************************
instance ItRe_HUNTING_ArrowMaking (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_ArrowMaking;
	
	description				=	"Instrukta¿ wyrobu strza³";
	COUNT[4]				=	1;
	COUNT[5]				=	value;
};
func void Use_Recipe_HUNTING_ArrowMaking()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!PLAYER_TALENT_HUNTING[HUNTING_ArrowMaking])
	{
		PLAYER_TALENT_HUNTING[HUNTING_ArrowMaking] = true;
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Furs (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Furs;
	
	description				=	"Instrukta¿ skórowania zwierzat";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Skins (ItemPR_Recipe)
{
	value 					=	150;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Skins;
	
	description				=	"Instrukta¿ skórowania gadów";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Teeth (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Teeth;
	
	description				=	"Instrukta¿ usuwania zêbów";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Claws (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Claws;
	
	description				=	"Instrukta¿ usuwania pazurów";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Wings (ItemPR_Recipe)
{
	value 					=	75;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Wings;
	
	description				=	"Instrukta¿ usuwania skrzyde³";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Stings (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Stings;
	
	description				=	"Instrukta¿ usuwania ¿¹de³";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Mandibles (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Mandibles;
	
	description				=	"Instrukta¿ usuwania ¿uwaczek";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Horns (ItemPR_Recipe)
{
	value 					=	300;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Horns;
	
	description				=	"Instrukta¿ usuwania rogów";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Tongues (ItemPR_Recipe)
{
	value 					=	250;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Tongues;
	
	description				=	"Instrukta¿ usuwania jêzyków";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Plates (ItemPR_Recipe)
{
	value 					=	200;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Plates;
	
	description				=	"Instrukta¿ usuwania p³ytek pancerzy";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Scales (ItemPR_Recipe)
{
	value 					=	400;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Scales;
	
	description				=	"Instrukta¿ usuwania ³usek";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Hearts (ItemPR_Recipe)
{
	value 					=	500;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Hearts;
	
	description				=	"Instrukta¿ usuwania serc";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Blood (ItemPR_Recipe)
{
	value 					=	100;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Blood;
	
	description				=	"Instrukta¿ upuszczania krwi";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
///******************************************************************************************
instance ItRe_HUNTING_Bones (ItemPR_Recipe)
{
	value 					=	50;
	visual 					=	"ItWr_Scroll_01.3DS";
	on_state[0]				=	Use_Recipe_HUNTING_Bones;
	
	description				=	"Instrukta¿ selekcjonowania koœci";
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
		COUNTER_HUNTING += 1;
		Npc_SetTalentValue (self, NPC_TALENT_HUNTING, COUNTER_HUNTING * 100 / MAX_HUNTING);
		B_Say (self, self, "$VERSTEHE");
	};
};
