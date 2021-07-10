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
	TEXT[1]			=	"z 2 bryłek żelaza.";
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
	TEXT[1]			=	"z 3 bryłek żelaza.";
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
	
	description		=	"Przepis na dobry długi miecz";
	TEXT[1]			=	"z 4 bryłek żelaza.";
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
	TEXT[1]			=	"z 4 bryłek żelaza.";
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
	TEXT[1]			=	"z 5 bryłek żelaza.";
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
	TEXT[1]			=	"z 4 bryłek żelaza";
	TEXT[2]			=	"i 2 kłów.";
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
	TEXT[1]			=	"z 6 bryłek żelaza.";
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
	
	description		=	"Przepis na długi miecz magiczny";
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 2 bryłek niebieskiej rudy.";
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
	
	description		=	"Przepis na magiczny miecz dwuręczny";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 2 bryłek niebieskiej rudy.";
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
	
	description		=	"Przepis na magiczny miecz półtoraręczny";
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 3 bryłek niebieskiej rudy.";
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
	
	description		=	"Przepis na ciężki magiczny miecz dwuręczny";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 3 bryłek niebieskiej rudy.";
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
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 4 bryłek niebieskiej rudy.";
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
	
	description		=	"Przepis na ciężkie magiczne ostrze bojowe";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 4 bryłek niebieskiej rudy.";
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
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 5 bryłek niebieskiej rudy";
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
	
	description		=	"Przepis na duże magiczne ostrze na smoki";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 5 bryłek niebieskiej rudy";
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
	
	description		=	"Przepis na długi miecz podpalający";
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 2 bryłek czerwonej rudy.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	
	description		=	"Przepis na podpalający miecz dwuręczny";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 2 bryłek czerwonej rudy.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_01()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	
	description		=	"Przepis na podpalający miecz półtoraręczny";
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 3 bryłek czerwonej rudy.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	
	description		=	"Przepis na ciężki podpalający miecz dwuręczny";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 3 bryłek czerwonej rudy.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_02()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_SMITH) < 3)
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
	
	description		=	"Przepis na podpalające ostrze bojowe";
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 4 bryłek czerwonej rudy.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_03()
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
	value 			=	800;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Ignite_03;
	
	description		=	"Przepis na ciężkie podpalające ostrze bojowe";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 4 bryłek czerwonej rudy.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_03()
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
	value 			=	1000;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_1H_Ignite_04;
	
	description		=	"Przepis na podpalające smocze ostrze";
	TEXT[1]			=	"z 2 bryłek żelaza";
	TEXT[2]			=	"i 5 bryłek czerwonej rudy";
	TEXT[3]			=	"i 8 fiolek smoczej krwi.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_1H_Ignite_04()
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
	value 			=	1000;
	visual 			=	"ItWr_Scroll_01.3DS";
	on_state[0]		=	Use_Recipe_SMITH_2H_Ignite_04;
	
	description		=	"Przepis na duże podpalajające smocze ostrze";
	TEXT[1]			=	"z 3 bryłek żelaza";
	TEXT[2]			=	"i 5 bryłek czerwonej rudy";
	TEXT[3]			=	"i 8 fiolek smoczej krwi.";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_SMITH_2H_Ignite_04()
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
	
	description		=	"Przepis na słabą miksturę leczniczą";
	TEXT[1]			=	"z 2 roślin leczniczych";
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
	
	description		=	"Przepis na średnią miksturę leczniczą";
	TEXT[1]			=	"z 2 ziół leczniczych";
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
	
	description		=	"Przepis na silną miksturę leczniczą";
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
	
	description		=	"Przepis na potężną miksturę leczniczą";
	TEXT[1]			=	"z 3 słabych mikstur leczniczych";
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
	
	description		=	"Przepis na słabą miksturę leczniczą";
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
	
	description		=	"Przepis na słabą miksturę many";
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
	
	description		=	"Przepis na średnią miksturę many";
	TEXT[1]			=	"z 2 ognistych ziół";
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
	
	description		=	"Przepis na silną miksturę many";
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
	
	description		=	"Przepis na potężną miksturę many";
	TEXT[1]			=	"z 3 słabych mikstur many";
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
	
	description		=	"Przepis na słabą miksturę many";
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
	
	description		=	"Przepis na eliksir żywotności";
	TEXT[1]			=	"z krwawego rumianku";
	TEXT[2]			=	"i szczawiu królewskiego i rtęci.";
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
	TEXT[1]			=	"z wilczej mięty";
	TEXT[2]			=	"i szczawiu królewskiego i rtęci.";
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
	
	description		=	"Przepis na eliksir siły";
	TEXT[1]			=	"ze smoczego korzenia";
	TEXT[2]			=	"i szczawiu królewskiego i rtęci.";
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
	
	description		=	"Przepis na eliksir zręczności";
	TEXT[1]			=	"z goblinich jagód";
	TEXT[2]			=	"i szczawiu królewskiego i rtęci.";
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
	TEXT[1]			=	"z wampirzej róży";
	TEXT[2]			=	"i szczawiu królewskiego i rtęci.";
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
	
	description		=	"Przepis na eliksir odporności na ogień";
	TEXT[1]			=	"ze słonecznego aloesu";
	TEXT[2]			=	"i szczawiu królewskiego i rtęci.";
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
	
	description		=	"Przepis na miksturę energii";
	TEXT[1]			=	"z 2 zębatych ziół";
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
	
	description		=	"Przepis na miksturę jasności umysłu";
	TEXT[1]			=	"z bagiennego ziela";
	TEXT[2]			=	"i cmentarnego mchu i gorzały.";
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
	
	description		=	"Przepis na truciznę";
	TEXT[1]			=	"z trującego grzyba";
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
	
	description		=	"Przepis na leczenie z opętania";
	TEXT[1]			=	"z zębatego ziela";
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
	TEXT[2]			=	"i czarnej perły";
	TEXT[3]			=	"i siarki i rtęci.";
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
				Doc_PrintLines	(nDocID,  0, "Zdołałem wskrzesić pradawną sztukę, boję się jednak, że nie spodoba się to Feodaronowi.");
				Doc_PrintLines	(nDocID,  0, "Muszę zmieszać całe jego potomstwo i stworzyć z niego miksturę w moim laboratorium. Gdyby jeszcze tylko nie siedział bez przerwy na tych jajach... Nadal jednak czuję wobec niego szacunek.");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLine	(nDocID,  0, "Embarla Firgasto:");
				Doc_PrintLine	(nDocID,  0, "");
				Doc_PrintLines	(nDocID,  0, "10 smoczych jaj, jedna starta na proszek czarna perła i szczypta siarki.");
				Doc_PrintLines	(nDocID,  0, "Miksturę należy doprowadzić do wrzenia i mieszać bez przerwy podczas destylacji.");
				Doc_PrintLines	(nDocID,  0, "Substancji końcowej należy używać z umiarem, gdyż wywołuje silne efekty uboczne i może rozchwiać cały system kontroli nad magią.");
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
	
	description		=	"Instruktaż skórowania zwierzat";
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
	
	description		=	"Instruktaż skórowania gadów";
	COUNT[4]		=	2;
	COUNT[5]		=	value;
};
func void Use_Recipe_HUNTING_Skins()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 2)
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
	
	description		=	"Instruktaż usuwania zębów";
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
	
	description		=	"Instruktaż usuwania pazurów";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
};
func void Use_Recipe_HUNTING_Claws()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
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
	
	description		=	"Instruktaż usuwania skrzydeł";
	COUNT[4]		=	1;
	COUNT[5]		=	value;
};
func void Use_Recipe_HUNTING_Wings()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 1)
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
	
	description		=	"Instruktaż usuwania żądeł";
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
	
	description		=	"Instruktaż usuwania żuwaczek";
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
	
	description		=	"Instruktaż usuwania rogów";
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
	
	description		=	"Instruktaż usuwania języków";
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
	
	description		=	"Instruktaż usuwania płytek pancerzy";
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
	
	description		=	"Instruktaż usuwania łusek";
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
	
	description		=	"Instruktaż usuwania serc";
	COUNT[4]		=	3;
	COUNT[5]		=	value;
};
func void Use_Recipe_HUNTING_Hearts()
{
	if (Npc_GetTalentSkill(self, NPC_TALENT_HUNTING) < 3)
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
	
	description		=	"Instruktaż upuszczania krwi";
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
	
	description		=	"Instruktaż selekcjonowania kości";
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
