///******************************************************************************************
prototype ItemPR_Recipe (C_Item)
{
	name						=	"Przepis";
	mainflag					=	ITEM_KAT_DOCS;
	flags						=	ITEM_MULTI;
	
	material					=	MAT_LEATHER;
	scemeName					=	"MAP";
	
	TEXT[0]						=	NAME_Craft_needed;
	TEXT[5]						=	NAME_Value;
	INV_ROTX					=	90;
	INV_ROTY					=	180;
	INV_ROTZ					=	180;
	//INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

///******************************************************************************************
func void ReadRecipe(var int talent, var int level, var int array, var int skill)
{
	if (Npc_GetTalentSkill(self, talent) < level)
	{
		B_Say (self, self, "$CANTUNDERSTANDTHIS");
	}
	else if (!MEM_ReadStatArr(array, skill))
	{
		MEM_WriteStatArr(array, skill, true);
		B_Say (self, self, "$VERSTEHE");
	}
	else
	{
		B_Say (self, self, "DIA_Harad_LEHRLING_OK_15_02");
	};
};

///******************************************************************************************
/// Fletchery
///******************************************************************************************

const int FLETCHERY_Ammo				=	0;
const int FLETCHERY_HuntingAmmo			=	1;
const int FLETCHERY_QuartzAmmo			=	2;
const int FLETCHERY_BangAmmo			=	3;
const int FLETCHERY_PoisonAmmo			=	4;
const int FLETCHERY_FireAmmo			=	5;
const int FLETCHERY_ExplosiveAmmo		=	6;
const int FLETCHERY_MagicAmmo			=	7;

const int FLETCHERY_Bow_L_01			=	8;
const int FLETCHERY_Bow_L_02			=	9;
const int FLETCHERY_Bow_L_03			=	10;
const int FLETCHERY_Bow_L_04			=	11;
const int FLETCHERY_Bow_M_01			=	12;
const int FLETCHERY_Bow_M_02			=	13;
const int FLETCHERY_Bow_M_03			=	14;
const int FLETCHERY_Bow_M_04			=	15;
const int FLETCHERY_Bow_M_05			=	16;
const int FLETCHERY_Bow_M_06			=	17;
const int FLETCHERY_Bow_M_07			=	18;
const int FLETCHERY_Bow_M_08			=	19;
const int FLETCHERY_Bow_H_01			=	20;
const int FLETCHERY_Bow_H_02			=	21;
const int FLETCHERY_Bow_H_03			=	22;
const int FLETCHERY_Bow_H_04			=	23;

const int FLETCHERY_CBow_L_01			=	24;
const int FLETCHERY_CBow_L_02			=	25;
const int FLETCHERY_CBow_M_01			=	26;
const int FLETCHERY_CBow_M_02			=	27;
const int FLETCHERY_CBow_H_01			=	28;
const int FLETCHERY_CBow_H_02			=	29;

const int MAX_TALENT_FLETCHERY			=	30;

var int PLAYER_TALENT_FLETCHERY[MAX_TALENT_FLETCHERY];

///******************************************************************************************
instance ItRe_FLETCHERY_Ammo (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryAmmo_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Ammo;
	
	description					=	"Instrukta¿ wyrobu zwyk³ej amunicji (10 szt)";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x bry³a ¿elaza";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Ammo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Ammo);
};

instance ItRe_FLETCHERY_HuntingAmmo (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryAmmo_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_HuntingAmmo;
	
	description					=	"Instrukta¿ wyrobu myœliwskiej amunicji (20 szt)";
	COUNT[0]					=	1;
	TEXT[1]						=	"-4x k³y";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_HuntingAmmo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_HuntingAmmo);
};

instance ItRe_FLETCHERY_QuartzAmmo (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryAmmo_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_QuartzAmmo;
	
	description					=	"Instrukta¿ wyrobu kwarcytowej amunicji (10 szt)";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x kwarcyt";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_QuartzAmmo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_QuartzAmmo);
};

instance ItRe_FLETCHERY_BangAmmo (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryAmmo_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_BangAmmo;
	
	description					=	"Instrukta¿ wyrobu hukowej amunicji (10 szt)";
	COUNT[0]					=	2;
	TEXT[1]						=	"-10x amunicja";
	TEXT[2]						=	"-1x czarny proch";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_BangAmmo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_BangAmmo);
};

instance ItRe_FLETCHERY_FireAmmo (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryAmmo_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_FireAmmo;
	
	description					=	"Instrukta¿ wyrobu ognistej amunicji (10 szt)";
	COUNT[0]					=	2;
	TEXT[1]						=	"-10x amunicja";
	TEXT[2]						=	"-1x smo³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_FireAmmo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_FireAmmo);
};

instance ItRe_FLETCHERY_PoisonAmmo (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryAmmo_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_PoisonAmmo;
	
	description					=	"Instrukta¿ wyrobu zatrutej amunicji (10 szt)";
	COUNT[0]					=	2;
	TEXT[1]						=	"-10x amunicja";
	TEXT[2]						=	"-1x truj¹ca wydzielina LUB 1x trucizna";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_PoisonAmmo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_PoisonAmmo);
};

instance ItRe_FLETCHERY_ExplosiveAmmo (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryAmmo_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_ExplosiveAmmo;
	
	description					=	"Instrukta¿ wyrobu wybuchowej amunicji (10 szt)";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x magiczna czerwona ruda";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_ExplosiveAmmo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_ExplosiveAmmo);
};

instance ItRe_FLETCHERY_MagicAmmo (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryAmmo_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_MagicAmmo;
	
	description					=	"Instrukta¿ wyrobu magicznej amunicji (10 szt)";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x magiczna niebieska ruda";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_MagicAmmo()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_MagicAmmo);
};

///******************************************************************************************
instance ItRe_FLETCHERY_Bow_L_01 (ItemPR_Recipe)
{
	value						=	25;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_01;
	
	description					=	"Schemat krótkiego ³uku";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-2x œciêgna";
	TEXT[3]						=	"-2x skóra szczura";
	TEXT[4]						=	"-2x pazury";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_L_01()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_01);
};

instance ItRe_FLETCHERY_Bow_L_02 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_02;
	
	description					=	"Schemat ³uku wierzbowego";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-2x œciêgna";
	TEXT[3]						=	"-2x skóra owcy";
	TEXT[4]						=	"-4x szpon topielca";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_L_02()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_02);
};

instance ItRe_FLETCHERY_Bow_L_03 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_03;
	
	description					=	"Schemat ³uku myœliwskiego";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-3x œciêgna";
	TEXT[3]						=	"-2x skóra dzika";
	TEXT[4]						=	"-5x kie³ dzika";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_L_03()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_03);
};

instance ItRe_FLETCHERY_Bow_L_04 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_04;
	
	description					=	"Schemat ³uku koœcianego";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-3x œciêgna";
	TEXT[3]						=	"-2x skóra jaszczura";
	TEXT[4]						=	"-10x koœæ szkieletu";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_L_04()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_04);
};

instance ItRe_FLETCHERY_Bow_M_01 (ItemPR_Recipe)
{
	value						=	125;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_01;
	
	description					=	"Schemat ³uku kompozytowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-4x œciêgna";
	TEXT[3]						=	"-2x skóra zêbacza";
	TEXT[4]						=	"-3x k³y b³otnego wê¿a";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_01()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_01);
};

instance ItRe_FLETCHERY_Bow_M_02 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_02;
	
	description					=	"Schemat ³uku jesionowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-4x œciêgna";
	TEXT[3]						=	"-2x skóra krwawego ogara";
	TEXT[4]						=	"-3x k³y b³otnego wê¿a";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_02()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_02);
};

instance ItRe_FLETCHERY_Bow_M_03 (ItemPR_Recipe)
{
	value						=	175;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_03;
	
	description					=	"Schemat d³ugiego ³uku";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-5x œciêgna";
	TEXT[3]						=	"-2x skóra aligatora";
	TEXT[4]						=	"-3x kie³ trolla";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_03()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_03);
};

instance ItRe_FLETCHERY_Bow_M_04 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_04;
	
	description					=	"Schemat ³uku dêbowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-5x œciêgna";
	TEXT[3]						=	"-2x skóra brzytwiaka";
	TEXT[4]						=	"-3x kie³ trolla";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_04()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_04);
};

instance ItRe_FLETCHERY_Bow_M_05 (ItemPR_Recipe)
{
	value						=	225;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_05;
	
	description					=	"Schemat ³uku bukowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-5x œciêgna + ³ój kretoszczura";
	TEXT[3]						=	"-2x skóra ognistego jaszczura";
	TEXT[4]						=	"-4x k³y b³otnego wê¿a";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_05()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_05);
};

instance ItRe_FLETCHERY_Bow_M_06 (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_06;
	
	description					=	"Schemat ³uku klonowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-5x œciêgna + ³ój kretoszczura";
	TEXT[3]						=	"-2x skóra tygrysa";
	TEXT[4]						=	"-4x k³y b³otnego wê¿a";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_06()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_06);
};

instance ItRe_FLETCHERY_Bow_M_07 (ItemPR_Recipe)
{
	value						=	275;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_07;
	
	description					=	"Schemat ³uku ¿o³nierskiego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-6x œciêgna + ³ój kretoszczura";
	TEXT[3]						=	"-2x skóra niedŸwiedzia";
	TEXT[4]						=	"-3x róg smoczego zêbacza";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_07()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_07);
};

instance ItRe_FLETCHERY_Bow_M_08 (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_08;
	
	description					=	"Schemat ³uku z poro¿a";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-6x œciêgna + ³ój kretoszczura";
	TEXT[3]						=	"-2x skóra czarnego niedŸwiedzia";
	TEXT[4]						=	"-3x róg smoczego zêbacza";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_M_08()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_08);
};

instance ItRe_FLETCHERY_Bow_H_01 (ItemPR_Recipe)
{
	value						=	325;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_01;
	
	description					=	"Schemat ³uku wojennego";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-6x œciêgna + sad³o niedŸwiedzia";
	TEXT[3]						=	"-2x skóra cieniostwora";
	TEXT[4]						=	"-2x róg cieniostwora";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_H_01()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_01);
};

instance ItRe_FLETCHERY_Bow_H_02 (ItemPR_Recipe)
{
	value						=	350;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_02;
	
	description					=	"Schemat pogromcy orków";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-6x œciêgna + sad³o niedŸwiedzia";
	TEXT[3]						=	"-2x skóra olbrzymiego zêbacza";
	TEXT[4]						=	"-2x róg cieniostwora";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_H_02()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_02);
};

instance ItRe_FLETCHERY_Bow_H_03 (ItemPR_Recipe)
{
	value						=	375;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_03;
	
	description					=	"Schemat gromow³adnego";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-7x œciêgna + sad³o niedŸwiedzia";
	TEXT[3]						=	"-2x skóra trolla";
	TEXT[4]						=	"-4x jêzyk smoka";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_H_03()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_03);
};

instance ItRe_FLETCHERY_Bow_H_04 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_04;
	
	description					=	"Schemat smoczego ³uku";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-7x œciêgna + sad³o niedŸwiedzia";
	TEXT[3]						=	"-2x skóra czarnego trolla";
	TEXT[4]						=	"-4x jêzyk smoka";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_Bow_H_04()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_04);
};

///******************************************************************************************
instance ItRe_FLETCHERY_CBow_L_01 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_FletcheryCBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_L_01;
	
	description					=	"Schemat kuszy myœliwskiej";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-2x œciêgna + bry³a ¿elaza";
	TEXT[3]						=	"-2x skóra owcy";
	TEXT[4]						=	"-4x szpon topielca";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_CBow_L_01()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_L_01);
};

instance ItRe_FLETCHERY_CBow_L_02 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_FletcheryCBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_L_02;
	
	description					=	"Schemat ma³ej kuszy";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-3x œciêgna + bry³a ¿elaza";
	TEXT[3]						=	"-2x skóra jaszczura";
	TEXT[4]						=	"-10x koœæ szkieletu";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_CBow_L_02()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_L_02);
};

instance ItRe_FLETCHERY_CBow_M_01 (ItemPR_Recipe)
{
	value						=	225;
	visual						=	"ItRe_FletcheryCBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_M_01;
	
	description					=	"Schemat kuszy";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-4x œciêgna + bry³a ¿elaza";
	TEXT[3]						=	"-2x skóra brzytwiaka";
	TEXT[4]						=	"-3x kie³ trolla";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_CBow_M_01()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_M_01);
};

instance ItRe_FLETCHERY_CBow_M_02 (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryCBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_M_02;
	
	description					=	"Schemat kuszy bojowej";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-5x œciêgna + bry³a ¿elaza + ³ój kretoszczura";
	TEXT[3]						=	"-2x skóra czarnego niedŸwiedzia";
	TEXT[4]						=	"-3x róg smoczego zêbacza";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_CBow_M_02()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_M_02);
};

instance ItRe_FLETCHERY_CBow_H_01 (ItemPR_Recipe)
{
	value						=	375;
	visual						=	"ItRe_FletcheryCBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_H_01;
	
	description					=	"Schemat ciê¿kiej kuszy";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-6x œciêgna + bry³a ¿elaza + sad³o niedŸwiedzia";
	TEXT[3]						=	"-2x skóra olbrzymiego zêbacza";
	TEXT[4]						=	"-2x róg cieniostwora";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_CBow_H_01()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_H_01);
};

instance ItRe_FLETCHERY_CBow_H_02 (ItemPR_Recipe)
{
	value						=	450;
	visual						=	"ItRe_FletcheryCBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_H_02;
	
	description					=	"Schemat smoczej kuszy";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x drewno do produkcji broni";
	TEXT[2]						=	"-7x œciêgna + bry³a ¿elaza + sad³o niedŸwiedzia";
	TEXT[3]						=	"-2x skóra czarnego trolla";
	TEXT[4]						=	"-4x jêzyk smoka";
	COUNT[5]					=	value;
};
func void Use_ItRe_FLETCHERY_CBow_H_02()
{
	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_H_02);
};

///******************************************************************************************
/// Smith
///******************************************************************************************

const int SMITH_1h_Special_01			=	0;
const int SMITH_2h_Special_01			=	1;
const int SMITH_1h_Special_02			=	2;
const int SMITH_2h_Special_02			=	3;
const int SMITH_1h_Special_03			=	4;
const int SMITH_2h_Special_03			=	5;
const int SMITH_1h_Special_04			=	6;
const int SMITH_2h_Special_04			=	7;
const int SMITH_1h_Special_05			=	8;
const int SMITH_2h_Special_05			=	9;

const int SMITH_1h_Ignite_01			=	10;
const int SMITH_2h_Ignite_01			=	11;
const int SMITH_1h_Ignite_02			=	12;
const int SMITH_2h_Ignite_02			=	13;
const int SMITH_1h_Ignite_03			=	14;
const int SMITH_2h_Ignite_03			=	15;
const int SMITH_1h_Ignite_04			=	16;
const int SMITH_2h_Ignite_04			=	17;
const int SMITH_1h_Ignite_05			=	18;
const int SMITH_2h_Ignite_05			=	19;

const int SMITH_1h_Vlk_Dagger			=	20;
const int SMITH_Sense					=	20;
const int SMITH_Nagelknueppel			=	20;
const int SMITH_Zwirbelschwert			=	20;
const int SMITH_ShortSword1				=	20;
const int SMITH_1h_Vlk_Axe				=	20;
const int SMITH_1h_Vlk_Sword			=	20;
const int SMITH_1h_Sword_L_03			=	20;
const int SMITH_1h_Nov_Mace				=	20;
const int SMITH_ShortSword2				=	20;
const int SMITH_1h_Sld_Axe				=	20;
const int SMITH_1h_Sld_Sword			=	20;
const int SMITH_Blutpfanne				=	20;
const int SMITH_ShortSword3				=	20;
const int SMITH_Nagelkeule				=	20;
const int SMITH_2h_Scythe				=	20;
const int SMITH_1h_Dyaebl				=	20;
const int SMITH_ShortSword4				=	20;
const int SMITH_1h_Mil_Sword			=	20;
const int SMITH_1h_Common_01			=	20;
const int SMITH_ShortSword5				=	20;
const int SMITH_1h_Keule				=	20;
const int SMITH_Richtstab				=	20;
const int SMITH_Kriegskeule				=	20;
const int SMITH_2h_Sld_Axe				=	20;
const int SMITH_2h_Sld_Sword			=	20;
const int SMITH_Kriegshammer1			=	20;
const int SMITH_Hellebarde				=	20;
const int SMITH_Nagelkeule2				=	20;
const int SMITH_Schiffsaxt				=	20;
const int SMITH_Schwert1				=	20;

const int SMITH_1h_NordmarSword			=	22;
const int SMITH_Schwert					=	22;
const int SMITH_2h_WarScythe			=	22;
const int SMITH_Piratensaebel			=	22;
const int SMITH_1h_Pal_Sword			=	22;
const int SMITH_Stabkeule				=	22;
const int SMITH_FaustSchwert			=	22;
const int SMITH_Steinbrecher			=	22;
const int SMITH_1h_Machete_02			=	22;
const int SMITH_Zweihaender1			=	22;
const int SMITH_1h_Sleeper_01			=	22;
const int SMITH_1h_NomadSabre			=	22;
const int SMITH_Spicker					=	22;
const int SMITH_Streitaxt1				=	22;
const int SMITH_Schwert4				=	22;
const int SMITH_GoldenSabre				=	22;
const int SMITH_KriegsSense				=	22;
const int SMITH_Schwert2				=	22;
const int SMITH_Doppelaxt				=	22;
const int SMITH_Bartaxt					=	22;
const int SMITH_2h_Pal_Sword			=	22;
const int SMITH_2h_NordmarSword			=	22;
const int SMITH_Streitkolben			=	22;
const int SMITH_2h_Machete_02			=	22;
const int SMITH_Rubinklinge				=	23;
const int SMITH_Rapier					=	23;
const int SMITH_Stachelkeule			=	23;
const int SMITH_2h_Keule				=	23;
const int SMITH_Zweihaender2			=	23;
const int SMITH_Morgenstern				=	23;
const int SMITH_Schwert3				=	23;
const int SMITH_Runenschwert			=	23;
const int SMITH_Inquisitor				=	23;
const int SMITH_2h_Warhammer			=	23;
const int SMITH_Rabenschnabel			=	23;
const int SMITH_Schwert5				=	23;
const int SMITH_Streitaxt2				=	23;
const int SMITH_Zweihaender3			=	23;
const int SMITH_NightBan				=	23;
const int SMITH_Kriegshammer2			=	23;
const int SMITH_ElBastardo				=	24;
const int SMITH_Meisterdegen			=	24;

const int SMITH_Folteraxt				=	26;
const int SMITH_Orkschlaechter			=	26;
const int SMITH_Hausordnung				=	26;
const int SMITH_Zweihaender4			=	26;
const int SMITH_Schlachtaxt				=	26;
const int SMITH_WargClaw				=	26;
const int SMITH_Avalon					=	26;
const int SMITH_Krummschwert			=	26;
const int SMITH_Barbarenstreitaxt		=	26;
const int SMITH_Sturmbringer			=	26;
const int SMITH_Glaive					=	26;
const int SMITH_Drachenschneide			=	26;
const int SMITH_Berserkeraxt			=	26;

const int SMITH_Stab_L_01				=	26;
const int SMITH_Stab_L_02				=	26;
const int SMITH_Stab_L_03				=	26;
const int SMITH_Stab_M_01				=	26;
const int SMITH_Stab_M_02				=	26;
const int SMITH_Stab_M_03				=	26;
const int SMITH_Stab_H_01				=	26;
const int SMITH_Stab_H_02				=	26;
const int SMITH_Stab_H_03				=	26;

const int MAX_TALENT_SMITH				=	27;

var int PLAYER_TALENT_SMITH[MAX_TALENT_SMITH];

///******************************************************************************************

func void Use_ItRe_SMITH_1H_Common_01()			{	ReadRecipe(NPC_TALENT_SMITH, 1, PLAYER_TALENT_SMITH, SMITH_1H_Common_01);				};
func void Use_ItRe_SMITH_Schwert1()				{	ReadRecipe(NPC_TALENT_SMITH, 1, PLAYER_TALENT_SMITH, SMITH_Schwert1);					};
func void Use_ItRe_SMITH_Schwert4()				{	ReadRecipe(NPC_TALENT_SMITH, 1, PLAYER_TALENT_SMITH, SMITH_Schwert4);					};
func void Use_ItRe_SMITH_Rubinklinge()			{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_Rubinklinge);				};
func void Use_ItRe_SMITH_ElBastardo()			{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_ElBastardo);					};
func void Use_ItRe_SMITH_Streitaxt1()			{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_Streitaxt1);					};
func void Use_ItRe_SMITH_Avalon()				{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_Avalon);						};

///******************************************************************************************
instance ItRe_SMITH_1H_Common_01 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Smith1h_1.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Common_01;
	
	description					=	"Przepis na miecz";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 bry³ek ¿elaza.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_Schwert1 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Smith1h_1.3ds";
	on_state[0]					=	Use_ItRe_SMITH_Schwert1;
	
	description					=	"Przepis na dobry miecz";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 3 bry³ek ¿elaza.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_Schwert4 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Smith1h_1.3ds";
	on_state[0]					=	Use_ItRe_SMITH_Schwert4;
	
	description					=	"Przepis na dobry d³ugi miecz";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 4 bry³ek ¿elaza.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_Rubinklinge (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Smith1h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_Rubinklinge;
	
	description					=	"Przepis na Rubinowe Ostrze";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 4 bry³ek ¿elaza.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_ElBastardo (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Smith1h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_ElBastardo;
	
	description					=	"Przepis na El Bastardo";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 5 bry³ek ¿elaza.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_Streitaxt1 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Smith2h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_Streitaxt1;
	
	description					=	"Przepis na lekki topór bojowy";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 4 bry³ek ¿elaza";
	TEXT[2]						=	"i 2 k³ów.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_Avalon (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Smith2h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_Avalon;
	
	description					=	"Przepis na Avalon";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 4 bry³ek ¿elaza";
	TEXT[2]						=	"i 2 bry³ek srebra.";
	COUNT[5]					=	value;
};

///******************************************************************************************

func void Use_ItRe_SMITH_1H_Special_01()		{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_1H_Special_01);				};
func void Use_ItRe_SMITH_2H_Special_01()		{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_2H_Special_01);				};
func void Use_ItRe_SMITH_1H_Special_02()		{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_1H_Special_02);				};
func void Use_ItRe_SMITH_2H_Special_02()		{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_2H_Special_02);				};
func void Use_ItRe_SMITH_1H_Special_03()		{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_1H_Special_03);				};
func void Use_ItRe_SMITH_2H_Special_03()		{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_2H_Special_03);				};
func void Use_ItRe_SMITH_1H_Special_04()		{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_1H_Special_04);				};
func void Use_ItRe_SMITH_2H_Special_04()		{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_2H_Special_04);				};
func void Use_ItRe_SMITH_1H_Ignite_01()			{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_1H_Ignite_01);				};
func void Use_ItRe_SMITH_2H_Ignite_01()			{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_2H_Ignite_01);				};
func void Use_ItRe_SMITH_1H_Ignite_02()			{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_1H_Ignite_02);				};
func void Use_ItRe_SMITH_2H_Ignite_02()			{	ReadRecipe(NPC_TALENT_SMITH, 2, PLAYER_TALENT_SMITH, SMITH_2H_Ignite_02);				};
func void Use_ItRe_SMITH_1H_Ignite_03()			{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_1H_Ignite_03);				};
func void Use_ItRe_SMITH_2H_Ignite_03()			{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_2H_Ignite_03);				};
func void Use_ItRe_SMITH_1H_Ignite_04()			{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_1H_Ignite_04);				};
func void Use_ItRe_SMITH_2H_Ignite_04()			{	ReadRecipe(NPC_TALENT_SMITH, 3, PLAYER_TALENT_SMITH, SMITH_2H_Ignite_04);				};

///******************************************************************************************
instance ItRe_SMITH_1H_Special_01 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Smith1h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Special_01;
	
	description					=	"Przepis na d³ugi miecz magiczny";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 2 bry³ek niebieskiej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Special_01 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Smith2h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Special_01;
	
	description					=	"Przepis na magiczny miecz dwurêczny";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 2 bry³ek niebieskiej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_1H_Special_02 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Smith1h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Special_02;
	
	description					=	"Przepis na magiczny miecz pó³torarêczny";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 3 bry³ek niebieskiej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Special_02 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Smith2h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Special_02;
	
	description					=	"Przepis na ciê¿ki magiczny miecz dwurêczny";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 3 bry³ek niebieskiej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_1H_Special_03 (ItemPR_Recipe)
{
	value						=	800;
	visual						=	"ItRe_Smith1h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Special_03;
	
	description					=	"Przepis na magiczne ostrze bojowe";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 4 bry³ek niebieskiej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Special_03 (ItemPR_Recipe)
{
	value						=	800;
	visual						=	"ItRe_Smith2h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Special_03;
	
	description					=	"Przepis na ciê¿kie magiczne ostrze bojowe";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 4 bry³ek niebieskiej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_1H_Special_04 (ItemPR_Recipe)
{
	value						=	1000;
	visual						=	"ItRe_Smith1h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Special_04;
	
	description					=	"Przepis na magiczne ostrze na smoki";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 5 bry³ek niebieskiej rudy";
	TEXT[3]						=	"i 8 fiolek smoczej krwi.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Special_04 (ItemPR_Recipe)
{
	value						=	1000;
	visual						=	"ItRe_Smith2h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Special_04;
	
	description					=	"Przepis na du¿e magiczne ostrze na smoki";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 5 bry³ek niebieskiej rudy";
	TEXT[3]						=	"i 8 fiolek smoczej krwi.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_1H_Ignite_01 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Smith1h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Ignite_01;
	
	description					=	"Przepis na d³ugi miecz podpalaj¹cy";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 2 bry³ek czerwonej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Ignite_01 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Smith2h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Ignite_01;
	
	description					=	"Przepis na podpalaj¹cy miecz dwurêczny";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 2 bry³ek czerwonej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_1H_Ignite_02 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Smith1h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Ignite_02;
	
	description					=	"Przepis na podpalaj¹cy miecz pó³torarêczny";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 3 bry³ek czerwonej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Ignite_02 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Smith2h_2.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Ignite_02;
	
	description					=	"Przepis na ciê¿ki podpalaj¹cy miecz dwurêczny";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 3 bry³ek czerwonej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_1H_Ignite_03 (ItemPR_Recipe)
{
	value						=	800;
	visual						=	"ItRe_Smith1h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Ignite_03;
	
	description					=	"Przepis na podpalaj¹ce ostrze bojowe";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 4 bry³ek czerwonej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Ignite_03 (ItemPR_Recipe)
{
	value						=	800;
	visual						=	"ItRe_Smith2h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Ignite_03;
	
	description					=	"Przepis na ciê¿kie podpalaj¹ce ostrze bojowe";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 4 bry³ek czerwonej rudy.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_1H_Ignite_04 (ItemPR_Recipe)
{
	value						=	1000;
	visual						=	"ItRe_Smith1h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_1H_Ignite_04;
	
	description					=	"Przepis na podpalaj¹ce smocze ostrze";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 2 bry³ek ¿elaza";
	TEXT[2]						=	"i 5 bry³ek czerwonej rudy";
	TEXT[3]						=	"i 8 fiolek smoczej krwi.";
	COUNT[5]					=	value;
};

instance ItRe_SMITH_2H_Ignite_04 (ItemPR_Recipe)
{
	value						=	1000;
	visual						=	"ItRe_Smith2h_3.3ds";
	on_state[0]					=	Use_ItRe_SMITH_2H_Ignite_04;
	
	description					=	"Przepis na du¿e podpalajaj¹ce smocze ostrze";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 3 bry³ek ¿elaza";
	TEXT[2]						=	"i 5 bry³ek czerwonej rudy";
	TEXT[3]						=	"i 8 fiolek smoczej krwi.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Alchemy
///******************************************************************************************

const int ALCHEMY_Health_01				=	0;
const int ALCHEMY_Health_02				=	1;
const int ALCHEMY_Health_03				=	2;
const int ALCHEMY_Health_04				=	3;
const int ALCHEMY_Health_05				=	4;
const int ALCHEMY_Health_Addon_01		=	5;
const int ALCHEMY_Health_Addon_02		=	6;
const int ALCHEMY_Health_Addon_03		=	7;
const int ALCHEMY_Health_Addon_04		=	8;
const int ALCHEMY_Health_Addon_05		=	9;

const int ALCHEMY_Mana_01				=	10;
const int ALCHEMY_Mana_02				=	11;
const int ALCHEMY_Mana_03				=	12;
const int ALCHEMY_Mana_04				=	13;
const int ALCHEMY_Mana_05				=	14;
const int ALCHEMY_Mana_Addon_01			=	15;
const int ALCHEMY_Mana_Addon_02			=	16;
const int ALCHEMY_Mana_Addon_03			=	17;
const int ALCHEMY_Mana_Addon_04			=	18;
const int ALCHEMY_Mana_Addon_05			=	19;

const int ALCHEMY_Stamina_Addon_01		=	20;
const int ALCHEMY_Stamina_Addon_02		=	21;
const int ALCHEMY_Stamina_Addon_03		=	22;

const int ALCHEMY_Blueplant_01			=	23;
const int ALCHEMY_Blueplant_02			=	24;
const int ALCHEMY_Blueplant_03			=	25;
const int ALCHEMY_Blueplant_04			=	26;
const int ALCHEMY_Blueplant_05			=	27;
const int ALCHEMY_Blueplant_06			=	28;
const int ALCHEMY_Blueplant_Addon_01	=	29;
const int ALCHEMY_Blueplant_Addon_02	=	30;
const int ALCHEMY_Blueplant_Addon_03	=	31;
const int ALCHEMY_Blueplant_Addon_04	=	32;
const int ALCHEMY_Blueplant_Addon_05	=	33;
const int ALCHEMY_Blueplant_Addon_06	=	34;

const int ALCHEMY_Shield_01				=	35;
const int ALCHEMY_Shield_02				=	36;
const int ALCHEMY_Shield_03				=	37;

const int ALCHEMY_Temp_Health			=	38;
const int ALCHEMY_Temp_Mana				=	39;
const int ALCHEMY_Temp_Stamina			=	40;
const int ALCHEMY_Temp_Str				=	41;
const int ALCHEMY_Temp_Dex				=	42;
const int ALCHEMY_Temp_Pow				=	43;
const int ALCHEMY_Temp_Prot				=	44;

const int ALCHEMY_Perm_Health			=	45;
const int ALCHEMY_Perm_Mana				=	46;
const int ALCHEMY_Perm_Stamina			=	47;
const int ALCHEMY_Perm_Str				=	48;
const int ALCHEMY_Perm_Dex				=	49;
const int ALCHEMY_Perm_Pow				=	50;
const int ALCHEMY_Perm_Prot				=	51;

const int ALCHEMY_Geist					=	52;
const int ALCHEMY_HealObsession			=	53;
const int ALCHEMY_NightVision			=	54;
const int ALCHEMY_Perfume				=	55;
const int ALCHEMY_Poison				=	56;
const int ALCHEMY_Speed					=	57;
const int ALCHEMY_Stealth				=	58;
const int ALCHEMY_Underwater			=	59;

const int ALCHEMY_MegaDrink				=	60;
const int ALCHEMY_Transform				=	61;

const int MAX_TALENT_ALCHEMY			=	62;

var int PLAYER_TALENT_ALCHEMY[MAX_TALENT_ALCHEMY];

///******************************************************************************************
instance ItRe_ALCHEMY_Health_01 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_01;
	
	description					=	"Przepis na esencjê ¿ycia";
	COUNT[0]					=	1;
	TEXT[1]						=	"-3x roœlina lecznicza";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_01);
};

instance ItRe_ALCHEMY_Health_02 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_02;
	
	description					=	"Przepis na ekstrakt ¿ycia";
	COUNT[0]					=	2;
	TEXT[1]						=	"-3x ziele lecznicze";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_02);
};

instance ItRe_ALCHEMY_Health_03 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_03;
	
	description					=	"Przepis na eliksir ¿ycia";
	COUNT[0]					=	3;
	TEXT[1]						=	"-3x korzeñ leczniczy";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_03);
};

instance ItRe_ALCHEMY_Health_04 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_04;
	
	description					=	"Przepis na esencjê ¿ycia";
	COUNT[0]					=	1;
	TEXT[1]						=	"-2x roœlina lecznicza";
	TEXT[2]						=	"-1x serafis";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_04()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_04);
};

instance ItRe_ALCHEMY_Health_05 (ItemPR_Recipe)
{
	value						=	125;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_05;
	
	description					=	"Przepis na ekstrakt ¿ycia";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x roœlina + ziele + korzeñ leczniczy";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_05()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_05);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Health_Addon_01 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_Addon_01;
	
	description					=	"Przepis na s³ab¹ miksturê lecznicz¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"-3x roœlina lecznicza";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_Addon_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_Addon_01);
};

instance ItRe_ALCHEMY_Health_Addon_02 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_Addon_02;
	
	description					=	"Przepis na œredni¹ miksturê lecznicz¹";
	COUNT[0]					=	2;
	TEXT[1]						=	"-3x ziele lecznicze";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_Addon_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_Addon_02);
};

instance ItRe_ALCHEMY_Health_Addon_03 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_Addon_03;
	
	description					=	"Przepis na siln¹ miksturê lecznicz¹";
	COUNT[0]					=	3;
	TEXT[1]						=	"-3x korzeñ leczniczy";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_Addon_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_Addon_03);
};

instance ItRe_ALCHEMY_Health_Addon_04 (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_Addon_04;
	
	description					=	"Przepis na s³ab¹ miksturê lecznicz¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"-2x roœlina lecznicza";
	TEXT[2]						=	"-1x serafis";
	TEXT[3]						=	"-1x rdest polny";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_Addon_04()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_Addon_04);
};

instance ItRe_ALCHEMY_Health_Addon_05 (ItemPR_Recipe)
{
	value						=	500;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_Addon_05;
	
	description					=	"Przepis na œredni¹ miksturê lecznicz¹";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x roœlina + ziele + korzeñ leczniczy";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Health_Addon_05()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_Addon_05);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Mana_01 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_01;
	
	description					=	"Przepis na esencjê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-3x roœlina many";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_01);
};

instance ItRe_ALCHEMY_Mana_02 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_02;
	
	description					=	"Przepis na ekstrakt many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-3x ziele many";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_02);
};

instance ItRe_ALCHEMY_Mana_03 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_03;
	
	description					=	"Przepis na eliksir many";
	COUNT[0]					=	3;
	TEXT[1]						=	"-3x korzeñ many";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_03);
};

instance ItRe_ALCHEMY_Mana_04 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_04;
	
	description					=	"Przepis na esencjê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-2x roœlina many";
	TEXT[2]						=	"-1x serafis";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_04()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_04);
};

instance ItRe_ALCHEMY_Mana_05 (ItemPR_Recipe)
{
	value						=	125;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_05;
	
	description					=	"Przepis na ekstrakt many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x roœlina + ziele + korzeñ many";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_05()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_05);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Mana_Addon_01 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_Addon_01;
	
	description					=	"Przepis na s³ab¹ miksturê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-3x roœlina many";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_Addon_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_Addon_01);
};

instance ItRe_ALCHEMY_Mana_Addon_02 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_Addon_02;
	
	description					=	"Przepis na œredni¹ miksturê many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-3x ziele many";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_Addon_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_Addon_02);
};

instance ItRe_ALCHEMY_Mana_Addon_03 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_Addon_03;
	
	description					=	"Przepis na siln¹ miksturê many";
	COUNT[0]					=	3;
	TEXT[1]						=	"-3x korzeñ many";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_Addon_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_Addon_03);
};

instance ItRe_ALCHEMY_Mana_Addon_04 (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_Addon_04;
	
	description					=	"Przepis na s³ab¹ miksturê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-2x roœlina many";
	TEXT[2]						=	"-1x serafis";
	TEXT[3]						=	"-1x rdest polny";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_Addon_04()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_Addon_04);
};

instance ItRe_ALCHEMY_Mana_Addon_05 (ItemPR_Recipe)
{
	value						=	500;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_Addon_05;
	
	description					=	"Przepis na œredni¹ miksturê many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x roœlina + ziele + korzeñ many";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Mana_Addon_05()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_Addon_05);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Stamina_Addon_01 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Stamina_Addon_01;
	
	description					=	"Przepis na s³ab¹ miksturê energii";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x roœlina lecznicza + many";
	TEXT[2]						=	"-1x zêbate ziele";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Stamina_Addon_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Stamina_Addon_01);
};

instance ItRe_ALCHEMY_Stamina_Addon_02 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Stamina_Addon_02;
	
	description					=	"Przepis na œredni¹ miksturê energii";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x ziele lecznicze + many";
	TEXT[2]						=	"-1x zêbate ziele";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Stamina_Addon_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Stamina_Addon_02);
};

instance ItRe_ALCHEMY_Stamina_Addon_03 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Stamina_Addon_03;
	
	description					=	"Przepis na siln¹ miksturê energii";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x korzeñ leczniczy + many";
	TEXT[2]						=	"-1x zêbate ziele";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Stamina_Addon_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Stamina_Addon_03);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Blueplant_01 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_01;
	
	description					=	"Przepis na esencjê ¿ycia i many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-3x serafis";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_01);
};

instance ItRe_ALCHEMY_Blueplant_02 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_02;
	
	description					=	"Przepis na ekstrakt ¿ycia i many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-6x serafis";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_02);
};

instance ItRe_ALCHEMY_Blueplant_03 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_03;
	
	description					=	"Przepis na eliksir ¿ycia i many";
	COUNT[0]					=	3;
	TEXT[1]						=	"-9x serafis";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_03);
};

instance ItRe_ALCHEMY_Blueplant_04 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_04;
	
	description					=	"Przepis na esencjê ¿ycia i many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x roœlina lecznicza + many";
	TEXT[2]						=	"-1x serafis";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_04()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_04);
};

instance ItRe_ALCHEMY_Blueplant_05 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_05;
	
	description					=	"Przepis na ekstrakt ¿ycia i many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x ziele lecznicze + many";
	TEXT[2]						=	"-2x serafis";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_05()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_05);
};

instance ItRe_ALCHEMY_Blueplant_06 (ItemPR_Recipe)
{
	value						=	225;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_06;
	
	description					=	"Przepis na eliksir ¿ycia i many";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x korzeñ leczniczy + many";
	TEXT[2]						=	"-3x serafis";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_06()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_06);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Blueplant_Addon_01 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_Addon_01;
	
	description					=	"Przepis na s³ab¹ miksturê ¿ycia i many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-3x serafis";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_Addon_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_Addon_01);
};

instance ItRe_ALCHEMY_Blueplant_Addon_02 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_Addon_02;
	
	description					=	"Przepis na œredni¹ miksturê ¿ycia i many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-6x serafis";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_Addon_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_Addon_02);
};

instance ItRe_ALCHEMY_Blueplant_Addon_03 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_Addon_03;
	
	description					=	"Przepis na siln¹ miksturê ¿ycia i many";
	COUNT[0]					=	3;
	TEXT[1]						=	"-9x serafis";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_Addon_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_Addon_03);
};

instance ItRe_ALCHEMY_Blueplant_Addon_04 (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_Addon_04;
	
	description					=	"Przepis na s³ab¹ miksturê ¿ycia i many";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x roœlina ¿ycia + many";
	TEXT[2]						=	"-1x serafis";
	TEXT[3]						=	"-1x rdest polny";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_Addon_04()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_Addon_04);
};

instance ItRe_ALCHEMY_Blueplant_Addon_05 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_Addon_05;
	
	description					=	"Przepis na s³ab¹ miksturê ¿ycia i many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x ziele lecznicze + many";
	TEXT[2]						=	"-2x serafis";
	TEXT[3]						=	"-1x rdest polny";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_Addon_05()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_Addon_05);
};

instance ItRe_ALCHEMY_Blueplant_Addon_06 (ItemPR_Recipe)
{
	value						=	900;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Blueplant_Addon_06;
	
	description					=	"Przepis na siln¹ miksturê ¿ycia i many";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x korzeñ leczniczy + many";
	TEXT[2]						=	"-3x serafis";
	TEXT[3]						=	"-1x rdest polny";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Blueplant_Addon_06()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Blueplant_Addon_06);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Shield_01 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Shield_01;
	
	description					=	"Przepis na esencjê os³ony";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x roœlina lecznicza + many";
	TEXT[2]						=	"-1x kamienna trzcina";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Shield_01()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Shield_01);
};

instance ItRe_ALCHEMY_Shield_02 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Shield_02;
	
	description					=	"Przepis na ekstrakt os³ony";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x ziele lecznicze + many";
	TEXT[2]						=	"-1x kamienna trzcina";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Shield_02()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Shield_02);
};

instance ItRe_ALCHEMY_Shield_03 (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Shield_03;
	
	description					=	"Przepis na eliksir os³ony";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x korzeñ leczniczy + many";
	TEXT[2]						=	"-1x kamienna trzcina";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Shield_03()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Shield_03);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Temp_Health (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Health;
	
	description					=	"Przepis na czasowy eliksir ¿ycia";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x s³oneczny aloes";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Temp_Health()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Health);
};

instance ItRe_ALCHEMY_Temp_Mana (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Mana;
	
	description					=	"Przepis na czasowy eliksir many";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x ksiê¿ycowy aloes";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Temp_Mana()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Mana);
};

instance ItRe_ALCHEMY_Temp_Stamina (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Stamina;
	
	description					=	"Przepis na czasowy eliksir energii";
	COUNT[0]					=	2;
	TEXT[1]						=	"-3x zêbate ziele";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Temp_Stamina()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Stamina);
};

instance ItRe_ALCHEMY_Temp_Str (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Str;
	
	description					=	"Przepis na czasowy eliksir si³y";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x smoczy korzeñ";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Temp_Str()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Str);
};

instance ItRe_ALCHEMY_Temp_Dex (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Dex;
	
	description					=	"Przepis na czasowy eliksir zrêcznoœci";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x goblinie jagody";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Temp_Dex()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Dex);
};

instance ItRe_ALCHEMY_Temp_Pow (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Pow;
	
	description					=	"Przepis na czasowy eliksir mocy";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x harpia winoroœl";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Temp_Pow()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Pow);
};

instance ItRe_ALCHEMY_Temp_Prot (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Prot;
	
	description					=	"Przepis na czasowy eliksir ochrony";
	COUNT[0]					=	2;
	TEXT[1]						=	"-3x kamienna trzcina";
	TEXT[2]						=	"-1x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Temp_Prot()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Prot);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Perm_Health (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Health;
	
	description					=	"Przepis na trwa³y eliksir ¿ycia";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x s³oneczny aloes";
	TEXT[2]						=	"-1x szczaw królewski";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Health()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Health);
};

instance ItRe_ALCHEMY_Perm_Mana (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Mana;
	
	description					=	"Przepis na trwa³y eliksir many";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x ksiê¿ycowy aloes";
	TEXT[2]						=	"-1x szczaw królewski";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Mana()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Mana);
};

instance ItRe_ALCHEMY_Perm_Stamina (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Stamina;
	
	description					=	"Przepis na trwa³y eliksir energii";
	COUNT[0]					=	3;
	TEXT[1]						=	"-3x zêbate ziele";
	TEXT[2]						=	"-1x szczaw królewski";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Stamina()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Stamina);
};

instance ItRe_ALCHEMY_Perm_Str (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Str;
	
	description					=	"Przepis na trwa³y eliksir si³y";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x smoczy korzeñ";
	TEXT[2]						=	"-1x szczaw królewski";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Str()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Str);
};

instance ItRe_ALCHEMY_Perm_Dex (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Dex;
	
	description					=	"Przepis na trwa³y eliksir zrêcznoœci";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x goblinie jagody";
	TEXT[2]						=	"-1x szczaw królewski";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Dex()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Dex);
};

instance ItRe_ALCHEMY_Perm_Pow (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Pow;
	
	description					=	"Przepis na trwa³y eliksir mocy";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x harpia winoroœl";
	TEXT[2]						=	"-1x szczaw królewski";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Pow()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Pow);
};

instance ItRe_ALCHEMY_Perm_Prot (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Prot;
	
	description					=	"Przepis na trwa³y eliksir ochrony";
	COUNT[0]					=	3;
	TEXT[1]						=	"-3x kamienna trzcina";
	TEXT[2]						=	"-1x szczaw królewski";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perm_Prot()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Prot);
};

///******************************************************************************************
instance ItRe_ALCHEMY_Geist (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Geist;
	
	description					=	"Przepis na miksturê jasnoœci umys³u";
	COUNT[0]					=	1;
	TEXT[1]						=	"-3x bagienne (lub pustynne) ziele";
	TEXT[2]						=	"-1x lekki alkohol";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Geist()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Geist);
};

instance ItRe_ALCHEMY_HealObsession (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_HealObsession;
	
	description					=	"Przepis na leczenie z opêtania";
	COUNT[0]					=	2;
	TEXT[1]						=	"-6x ksiê¿ycowa rosa (lub 3x du¿a)";
	TEXT[2]						=	"-1x mech (cmentarny lub górski)";
	TEXT[3]						=	"-1x woda œwiêcona";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_HealObsession()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_HealObsession);
};

instance ItRe_ALCHEMY_NightVision (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_NightVision;
	
	description					=	"Przepis na miksturê widzenia w ciemnoœci";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x kwiat œwitu";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_NightVision()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_NightVision);
};

instance ItRe_ALCHEMY_Perfume (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perfume;
	
	description					=	"Przepis na perfumy";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x kwiat œwitu";
	TEXT[2]						=	"-1x mech (cmentarny lub górski)";
	TEXT[3]						=	"-1x lekki alkohol";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Perfume()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perfume);
};

instance ItRe_ALCHEMY_Poison (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Poison;
	
	description					=	"Przepis na truciznê";
	COUNT[0]					=	2;
	TEXT[1]						=	"-6x truj¹cy grzyb (lub 3x du¿y)";
	TEXT[2]						=	"-2x truj¹ca wydzielina";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Poison()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Poison);
};

instance ItRe_ALCHEMY_Speed (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Speed;
	
	description					=	"Przepis na miksturê szybkoœci";
	COUNT[0]					=	3;
	TEXT[1]						=	"-2x zêbate ziele";
	TEXT[2]						=	"-2x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Speed()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Speed);
};

instance ItRe_ALCHEMY_Stealth (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Stealth;
	
	description					=	"Przepis na miksturê niewidzialnoœci";
	COUNT[0]					=	3;
	TEXT[1]						=	"-4x bagienne (lub pustynne) ziele";
	TEXT[2]						=	"-2x rdest polny";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Stealth()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Stealth);
};

instance ItRe_ALCHEMY_Underwater (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Underwater;
	
	description					=	"Przepis na miksturê oddychania pod wod¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x wodorosty";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Underwater()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Underwater);
};

///******************************************************************************************
instance ItRe_ALCHEMY_MegaDrink (ItemPR_Recipe)
{
	value						=	0;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_MegaDrink;
	
	description					=	"Przepis na Embarla Firgasto";
	COUNT[0]					=	3;
	TEXT[1]						=	"-10x smocze jajo";
	TEXT[2]						=	"-1x czarna per³a";
	TEXT[3]						=	"-1x siarka";
	TEXT[4]						=	"-1x lekki alkohol";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_MegaDrink()
{
	var int nDocID;
	nDocID =	Doc_Create		();
				Doc_SetPages	(nDocID,  1);
				Doc_SetPage		(nDocID,  0, "letters.TGA", false);
				Doc_SetFont		(nDocID,  0, FONT_BookHeadline);
				
				Doc_SetMargins	(nDocID, -1, 50, 50, 50, 50, 1);
				Doc_SetFont		(nDocID,  0, FONT_Book);
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
	
	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_MegaDrink);
};

instance ItRe_ALCHEMY_Transform (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Transform;
	
	description					=	"Przepis na przemianê w potwora";
	COUNT[0]					=	2;
	TEXT[1]						=	"-5x fiolka krwi wybranego potwora";
	TEXT[2]						=	"-1x rtêæ";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ALCHEMY_Transform()
{
	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Transform);
};

///******************************************************************************************
/// Enchanting
///******************************************************************************************

var int PLAYER_TALENT_ENCHANTING[MAX_SPELL];

///******************************************************************************************
instance ItRe_ENCHANTING_Light (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Light;
	
	description					=	"Przepis na 'Œwiat³o'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x z³ota moneta";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Light()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Light);
};

instance ItRe_ENCHANTING_Heal (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Heal;
	
	description					=	"Przepis na 'Uleczenie'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x roœlina lecznicza";
	TEXT[3]						=	"-1x ziele lecznicze";
	TEXT[4]						=	"-1x korzeñ leczniczy";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Heal()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Heal);
};

instance ItRe_ENCHANTING_Telekinesis (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Telekinesis;
	
	description					=	"Przepis na 'Telekineza'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x moneta fortuny";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Telekinesis()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Telekinesis);
};

instance ItRe_ENCHANTING_PalBless (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PalBless;
	
	description					=	"Przepis na 'B³ogos³awieñstwo'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PalBless()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_PalBless);
};

instance ItRe_ENCHANTING_PalFaith (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PalFaith;
	
	description					=	"Przepis na 'Wiara'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	TEXT[3]						=	"-1x bry³ka srebra";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PalFaith()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_PalFaith);
};

instance ItRe_ENCHANTING_PalHolyBolt (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PalHolyBolt;
	
	description					=	"Przepis na 'Œwiêty pocisk'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	TEXT[3]						=	"-1x bry³ka srebra";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PalHolyBolt()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_PalHolyBolt);
};

instance ItRe_ENCHANTING_PalGlory (ItemPR_Recipe)
{
	value						=	175;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PalGlory;
	
	description					=	"Przepis na 'Chwa³a'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	TEXT[3]						=	"-1x bia³a per³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PalGlory()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_PalGlory);
};

instance ItRe_ENCHANTING_PalRepelEvil (ItemPR_Recipe)
{
	value						=	175;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PalRepelEvil;
	
	description					=	"Przepis na 'Wygnanie z³a'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	TEXT[3]						=	"-1x bia³a per³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PalRepelEvil()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_PalRepelEvil);
};

instance ItRe_ENCHANTING_PalJustice (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PalJustice;
	
	description					=	"Przepis na 'Sprawiedliwoœæ'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	TEXT[3]						=	"-1x diament";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PalJustice()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_PalJustice);
};

instance ItRe_ENCHANTING_PalDestroyEvil (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PalDestroyEvil;
	
	description					=	"Przepis na 'Zniszczenie z³a'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	TEXT[3]						=	"-1x diament";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PalDestroyEvil()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_PalDestroyEvil);
};

///******************************************************************************************
instance ItRe_ENCHANTING_Resurrection (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Resurrection;
	
	description					=	"Przepis na 'Wskrzeszenie'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-2x mech";
	TEXT[3]						=	"-1x woda œwiêcona";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Resurrection()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Resurrection);
};

instance ItRe_ENCHANTING_Rage (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Rage;
	
	description					=	"Przepis na 'Sza³'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x jajo pe³zacza";
	TEXT[3]						=	"-1x szpon demona";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Rage()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Rage);
};

instance ItRe_ENCHANTING_Seduction (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Seduction;
	
	description					=	"Przepis na 'Uwodzenie'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x perfumy";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Seduction()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Seduction);
};

instance ItRe_ENCHANTING_MindControl (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_MindControl;
	
	description					=	"Przepis na 'Kontrola umys³u'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x jajo pe³zacza";
	TEXT[3]						=	"-1x ¿uwaczki pe³zacza";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_MindControl()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_MindControl);
};

instance ItRe_ENCHANTING_PickLock (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_PickLock;
	
	description					=	"Przepis na 'Otwieranie zamków'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x wytrych";
	TEXT[3]						=	"-1x bry³ka z³ota";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_PickLock()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_PickLock);
};

instance ItRe_ENCHANTING_NightToDay (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_NightToDay;
	
	description					=	"Przepis na 'Noc w dzieñ'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x owcza skóra";
	TEXT[3]						=	"-1x kwiat œwitu";
	TEXT[4]						=	"-5x cz¹steczka czasu";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_NightToDay()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_NightToDay);
};

instance ItRe_ENCHANTING_FireBolt (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_FireBolt;
	
	description					=	"Przepis na 'Ognisty pocisk'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x siarka";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_FireBolt()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_FireBolt);
};

///******************************************************************************************
instance ItRe_ENCHANTING_IceBolt (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_IceBolt;
	
	description					=	"Przepis na 'Lodowy pocisk'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kryszta³";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_IceBolt()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_IceBolt);
};

instance ItRe_ENCHANTING_Stealth (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Stealth;
	
	description					=	"Przepis na 'Ukrycie'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-2x bagienne lub pustynne ziele";
	TEXT[3]						=	"-1x skóra b³otnego wê¿a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Stealth()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Stealth);
};

instance ItRe_ENCHANTING_SkullBolt (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_SkullBolt;
	
	description					=	"Przepis na 'Szept umar³ych'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x czaszka";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_SkullBolt()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_SkullBolt);
};

instance ItRe_ENCHANTING_InstantFireball (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_InstantFireball;
	
	description					=	"Przepis na 'Kula ognia'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x smo³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_InstantFireball()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_InstantFireball);
};

instance ItRe_ENCHANTING_Zap (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Zap;
	
	description					=	"Przepis na 'Ma³a b³yskawica'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x bry³ka srebra";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Zap()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Zap);
};

instance ItRe_ENCHANTING_Slimeball (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Zap;
	
	description					=	"Przepis na 'Kula szlamu'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x bagienne lub pustynne ziele";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Slimeball()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Slimeball);
};

instance ItRe_ENCHANTING_WindFist (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_WindFist;
	
	description					=	"Przepis na 'Piêœæ wichru'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x wêgiel";
	TEXT[3]						=	"-5x skrzyd³o krwiopijcy";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_WindFist()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_WindFist);
};

instance ItRe_ENCHANTING_Sleep (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Sleep;
	
	description					=	"Przepis na 'Uœpienie'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x owcza skóra";
	TEXT[3]						=	"-1x bagienne lun pustynne ziele";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Sleep()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Sleep);
};

instance ItRe_ENCHANTING_Charm (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Charm;
	
	description					=	"Przepis na 'Amnezja'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x bagienne lub pustynne ziele";
	TEXT[3]						=	"-1x k³y b³otnego wê¿a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Charm()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Charm);
};

instance ItRe_ENCHANTING_LightningFlash (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_LightningFlash;
	
	description					=	"Przepis na 'B³yskawica'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x bry³ka srebra";
	TEXT[3]						=	"-1x róg smoczego zêbacza";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_LightningFlash()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_LightningFlash);
};

///*******************************************************************************************
instance ItRe_ENCHANTING_ChargeFireball (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_ChargeFireball;
	
	description					=	"Przepis na 'Du¿a kula ognia'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x smo³a";
	TEXT[3]						=	"-1x jêzyk ognistego jaszczura";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_ChargeFireball()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_ChargeFireball);
};

instance ItRe_ENCHANTING_Curse (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Curse;
	
	description					=	"Przepis na 'Kl¹twa'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x koœæ szkieletu";
	TEXT[3]						=	"-2x czaszka";
	TEXT[4]						=	"-3x koœæ goblina";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Curse()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Curse);
};

instance ItRe_ENCHANTING_Fear (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Fear;
	
	description					=	"Przepis na 'Strach'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-2x skrzyd³o demona";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Fear()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Fear);
};

instance ItRe_ENCHANTING_IceCube (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_IceCube;
	
	description					=	"Przepis na 'Zamro¿enie'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kryszta³";
	TEXT[3]						=	"-1x bia³a per³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_IceCube()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_IceCube);
};

instance ItRe_ENCHANTING_ChargeZap (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_ChargeZap;
	
	description					=	"Przepis na 'Piorun kulisty'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x bry³ka srebra";
	TEXT[3]						=	"-2x kie³ dzika";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_ChargeZap()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_ChargeZap);
};

instance ItRe_ENCHANTING_SummonGolem (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_SummonGolem;
	
	description					=	"Przepis na 'Tworzenie golema'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x serce golema";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_SummonGolem()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_SummonGolem);
};

instance ItRe_ENCHANTING_DestroyUndead (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_DestroyUndead;
	
	description					=	"Przepis na 'Zniszczenie nieumar³ych'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x woda œwiêcona";
	TEXT[3]						=	"-1x czaszka";
	TEXT[4]						=	"-5x koœæ goblina";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_DestroyUndead()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_DestroyUndead);
};

instance ItRe_ENCHANTING_Pyrokinesis (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Pyrokinesis;
	
	description					=	"Przepis na 'Du¿a burza ognista'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x siarka";
	TEXT[3]						=	"-1x saletra";
	TEXT[4]						=	"-1x jêzyk smoka";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Pyrokinesis()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Pyrokinesis);
};

instance ItRe_ENCHANTING_Firestorm (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Firestorm;
	
	description					=	"Przepis na 'Ma³a burza ognista'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x siarka";
	TEXT[3]						=	"-1x saletra";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Firestorm()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Firestorm);
};

instance ItRe_ENCHANTING_IceWave (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_IceWave;
	
	description					=	"Przepis na 'Lodowa fala'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kryszta³";
	TEXT[3]						=	"-1x bia³a per³a";
	TEXT[4]						=	"-1x akwamaryn";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_IceWave()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_IceWave);
};

///*******************************************************************************************
instance ItRe_ENCHANTING_SummonDemon (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_SummonDemon;
	
	description					=	"Przepis na 'Przyzwanie demona'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x serce demona";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_SummonDemon()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_SummonDemon);
};

instance ItRe_ENCHANTING_Explosion (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Explosion;
	
	description					=	"Przepis na 'Eksplozja'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x smo³a";
	TEXT[3]						=	"-3x czarny proch";
	TEXT[4]						=	"-1x jêzyk ognistego jaszczura";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Explosion()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Explosion);
};

instance ItRe_ENCHANTING_Firerain (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Firerain;
	
	description					=	"Przepis na 'Deszcz ognia'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x smo³a";
	TEXT[3]						=	"-1x rubin";
	TEXT[4]						=	"-1x jêzyk ognistego jaszczura";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Firerain()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Firerain);
};

instance ItRe_ENCHANTING_BreathOfDeath (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_BreathOfDeath;
	
	description					=	"Przepis na 'Tchnienie œmierci'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x wêgiel";
	TEXT[3]						=	"-1x czarna per³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_BreathOfDeath()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_BreathOfDeath);
};

instance ItRe_ENCHANTING_MassDeath (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_MassDeath;
	
	description					=	"Przepis na 'Fala œmierci'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x diament";
	TEXT[3]						=	"-1x smocza krew";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_MassDeath()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_MassDeath);
};

instance ItRe_ENCHANTING_ArmyOfDarkness (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_ArmyOfDarkness;
	
	description					=	"Przepis na 'Armia ciemnoœci'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-5x koœæ szkieletu";
	TEXT[3]						=	"-5x czaszka";
	TEXT[4]						=	"-10x koœæ goblina";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_ArmyOfDarkness()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_ArmyOfDarkness);
};

instance ItRe_ENCHANTING_Shrink (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Shrink;
	
	description					=	"Przepis na 'Zmniejszenie potwora'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x jajo pe³zacza";
	TEXT[3]						=	"-2x kie³ trolla";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Shrink()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Shrink);
};

instance ItRe_ENCHANTING_Tame (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Tame;
	
	description					=	"Przepis na 'Oswojenie'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x ¿ywica";
	TEXT[3]						=	"-1x skóra niedŸwiedzia";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Tame()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Tame);
};

instance ItRe_ENCHANTING_RunicEchoes (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_RunicEchoes;
	
	description					=	"Przepis na 'Runiczne echa'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x ¿ywica";
	TEXT[3]						=	"-1x szmaragd";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_RunicEchoes()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_RunicEchoes);
};

instance ItRe_ENCHANTING_SlowTime (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_SlowTime;
	
	description					=	"Przepis na 'Spowolnienie czasu'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x ¿ywica";
	TEXT[3]						=	"-1x diament";
	TEXT[4]						=	"-10x cz¹steczka czasu";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_SlowTime()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_SlowTime);
};

///*******************************************************************************************
instance ItRe_ENCHANTING_HealingAura (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_HealingAura;
	
	description					=	"Przepis na 'Aura lecznicza'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x rtêæ";
	TEXT[3]						=	"-1x ¿ywica";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_HealingAura()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_HealingAura);
};

instance ItRe_ENCHANTING_StoneSkin (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_StoneSkin;
	
	description					=	"Przepis na 'Kamienna skóra'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x rtêæ";
	TEXT[3]						=	"-1x kwarcyt";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_StoneSkin()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_StoneSkin);
};

instance ItRe_ENCHANTING_AirShield (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_AirShield;
	
	description					=	"Przepis na 'Tarcza powietrza'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x rtêæ";
	TEXT[3]						=	"-1x kryszta³";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_AirShield()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_AirShield);
};

instance ItRe_ENCHANTING_FireShield (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_FireShield;
	
	description					=	"Przepis na 'Tarcza ognia'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x rtêæ";
	TEXT[3]						=	"-1x smo³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_FireShield()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_FireShield);
};

instance ItRe_ENCHANTING_DarkBarrier (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_DarkBarrier;
	
	description					=	"Przepis na 'Mroczna bariera'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x rtêæ";
	TEXT[3]						=	"-1x koœæ szkieletu";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_DarkBarrier()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_DarkBarrier);
};

///*******************************************************************************************
instance ItRe_ENCHANTING_Dragonball (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Dragonball;
	
	description					=	"Przepis na 'Smocza kula'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x serce smoka";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Dragonball()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Dragonball);
};

instance ItRe_ENCHANTING_BlackDragonball (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_BlackDragonball;
	
	description					=	"Przepis na 'Czarna smocza kula'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kamieñ duszy smoka-o¿ywieñca";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_BlackDragonball()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_BlackDragonball);
};

///*******************************************************************************************
instance ItRe_ENCHANTING_Thunderstorm (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Thunderstorm;
	
	description					=	"Przepis na 'Burza gradowa'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kryszta³";
	TEXT[3]						=	"-1x bia³a per³a";
	TEXT[4]						=	"-1x akwamaryn";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Thunderstorm()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Thunderstorm);
};

instance ItRe_ENCHANTING_Whirlwind (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Whirlwind;
	
	description					=	"Przepis na 'Wir'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x skrzyd³o trutnia";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Whirlwind()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Whirlwind);
};

instance ItRe_ENCHANTING_WaterFist (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_WaterFist;
	
	description					=	"Przepis na 'Wodna piêœæ'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x akwamaryn";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_WaterFist()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_WaterFist);
};

instance ItRe_ENCHANTING_IceLance (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_IceLance;
	
	description					=	"Przepis na 'Lodowa lanca'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kryszta³";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_IceLance()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_IceLance);
};

instance ItRe_ENCHANTING_Inflate (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Inflate;
	
	description					=	"Przepis na 'Spuchniêcie'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-2x sad³o niedŸwiedzia";
	TEXT[3]						=	"-2x ³ój kretoszczura";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Inflate()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Inflate);
};

instance ItRe_ENCHANTING_Geyser (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Geyser;
	
	description					=	"Przepis na 'Gejzer'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x akwamaryn";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Geyser()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Geyser);
};

instance ItRe_ENCHANTING_Fireburning (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Fireburning;
	
	description					=	"Przepis na 'Pyrokineza'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x smo³a";
	TEXT[3]						=	"-1x saletra";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Fireburning()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Fireburning);
};

instance ItRe_ENCHANTING_ChainLightning (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_ChainLightning;
	
	description					=	"Przepis na '£añcuch piorunów'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-2x bry³ka srebra";
	TEXT[3]						=	"-1x bia³a per³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_ChainLightning()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_ChainLightning);
};

instance ItRe_ENCHANTING_Hurricane (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Hurricane;
	
	description					=	"Przepis na 'Huragan'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x wêgiel";
	TEXT[3]						=	"-5x skrzyd³o trutnia";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Hurricane()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Hurricane);
};

instance ItRe_ENCHANTING_LightFlash (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_LightFlash;
	
	description					=	"Przepis na 'Oœlepienie'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x bry³ka z³ota";
	TEXT[3]						=	"-1x róg cieniostwora";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_LightFlash()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_LightFlash);
};

///*******************************************************************************************
instance ItRe_ENCHANTING_Plague (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Plague;
	
	description					=	"Przepis na 'Plaga'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x koœæ szkieletu";
	TEXT[3]						=	"-2x truj¹ca wydzielina";
	TEXT[4]						=	"-2x szpon demona";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Plague()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Plague);
};

instance ItRe_ENCHANTING_Swarm (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Swarm;
	
	description					=	"Przepis na 'Rój owadów'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-3x ¿¹d³o";
	TEXT[3]						=	"-2x ¿uwaczki polnej bestii";
	TEXT[4]						=	"-1x ¿uwaczki pe³zacza";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Swarm()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Swarm);
};

instance ItRe_ENCHANTING_Greententacle (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Greententacle;
	
	description					=	"Przepis na 'Korzeñ'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x ¿ywica";
	TEXT[3]						=	"-2x korzeñ many";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Greententacle()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 2, PLAYER_TALENT_ENCHANTING, SPL_Greententacle);
};

instance ItRe_ENCHANTING_Earthquake (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Earthquake;
	
	description					=	"Przepis na 'Trzêsienie ziemi'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kwarcyt";
	TEXT[3]						=	"-3x serce gargulca";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Earthquake()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Earthquake);
};

instance ItRe_ENCHANTING_Rock (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Rock;
	
	description					=	"Przepis na 'G³az'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kwarcyt";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Rock()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Rock);
};

instance ItRe_ENCHANTING_Mysticball (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Mysticball;
	
	description					=	"Przepis na 'Mistyczny pocisk'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x ¿ywica";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Mysticball()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Mysticball);
};

instance ItRe_ENCHANTING_SuckEnergy (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_SuckEnergy;
	
	description					=	"Przepis na 'Kradzie¿ ¿ycia'";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x ¿¹d³o";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_SuckEnergy()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_SuckEnergy);
};

instance ItRe_ENCHANTING_Skull (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Skull;
	
	description					=	"Przepis na 'Krzyk umar³ych'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x czaszka";
	TEXT[3]						=	"-1x rubin";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Skull()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Skull);
};

instance ItRe_ENCHANTING_Elevate (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Enchanting_2.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Elevate;
	
	description					=	"Przepis na 'Piedesta³'";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kwarcyt";
	TEXT[2]						=	"-1x serce gargulca";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Elevate()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Elevate);
};

instance ItRe_ENCHANTING_Crush (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_3.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Crush;
	
	description					=	"Przepis na 'Zmia¿d¿enie'";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x runa LUB 1x pergaminy + magiczny atrament";
	TEXT[2]						=	"-1x kwarcyt";
	TEXT[3]						=	"-1x diament";
	COUNT[5]					=	value;
};
func void Use_ItRe_ENCHANTING_Crush()
{
	ReadRecipe(NPC_TALENT_ENCHANTING, 3, PLAYER_TALENT_ENCHANTING, SPL_Crush);
};

///******************************************************************************************
/// Hunting
///******************************************************************************************

const int HUNTING_Blood					=	0;
const int HUNTING_Bones					=	1;
const int HUNTING_Claws					=	2;
const int HUNTING_Fat					=	3;
const int HUNTING_Furs					=	4;
const int HUNTING_Hearts				=	5;
const int HUNTING_Horns					=	6;
const int HUNTING_Mandibles				=	7;
const int HUNTING_Plates				=	8;
const int HUNTING_Scales				=	9;
const int HUNTING_Skins					=	10;
const int HUNTING_Stings				=	11;
const int HUNTING_Teeth					=	12;
const int HUNTING_Tendons				=	13;
const int HUNTING_Tongues				=	14;
const int HUNTING_Wings					=	15;

const int MAX_TALENT_HUNTING			=	16;

var int PLAYER_TALENT_HUNTING[MAX_TALENT_HUNTING];

///******************************************************************************************
/// Cooking
///******************************************************************************************

const int COOKING_BugPulp				=	0;
const int COOKING_ForestStew			=	1;
const int COOKING_FriedPasta			=	2;
const int COOKING_HoneyOatmeal			=	3;
const int COOKING_JamPaste				=	4;
const int COOKING_MeatCauldron			=	5;
const int COOKING_MeatStew				=	6;
const int COOKING_Pilaf					=	7;
const int COOKING_Puree					=	8;
const int COOKING_Salad					=	9;
const int COOKING_ScrambledEggs			=	10;
const int COOKING_Spaghetti				=	11;
const int COOKING_SpicyStew				=	12;
const int COOKING_Stew					=	13;
const int COOKING_StewedVegetables		=	14;
const int COOKING_WineStew				=	15;

const int COOKING_BerrySoup				=	16;
const int COOKING_CabbageSoup			=	17;
const int COOKING_CheeseSoup			=	18;
const int COOKING_FishSoup				=	19;
const int COOKING_GreenSoup				=	20;
const int COOKING_HoneySoup				=	21;
const int COOKING_MilkSoup				=	22;
const int COOKING_MushroomSoup			=	23;
const int COOKING_OnionSoup				=	24;
const int COOKING_OysterSoup			=	25;
const int COOKING_SausageSoup			=	26;
const int COOKING_SpicySoup				=	27;
const int COOKING_AppleCompote			=	28;
const int COOKING_BerryCompote			=	29;
const int COOKING_PearCompote			=	30;
const int COOKING_BlueDecoction			=	31;

const int COOKING_Booze					=	32;
const int COOKING_DarkBeer				=	33;
const int COOKING_Mead					=	34;
const int COOKING_Sake					=	35;
const int COOKING_SourWine				=	36;
const int COOKING_Wine					=	37;

const int MAX_TALENT_COOKING			=	38;

var int PLAYER_TALENT_COOKING[MAX_TALENT_COOKING];

///******************************************************************************************
instance ItRe_COOKING_BugPulp (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_BugPulp;
	
	description					=	"Przepis na owadzi¹ papkê z nasionami";
	TEXT[1]						=	"-2x nasiono";
	TEXT[2]						=	"-1x owadzie miêso";
	TEXT[3]						=	"-1x cebula";
	TEXT[4]						=	"-przyprawy";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_BugPulp()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BugPulp);
};

instance ItRe_COOKING_ForestStew (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_ForestStew;
	
	description					=	"Przepis na leœny gulasz";
	TEXT[1]						=	"-2x twarde miêso";
	TEXT[2]						=	"-1x marchew";
	TEXT[3]						=	"-1x pietruszka";
	TEXT[4]						=	"-przyprawy";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_ForestStew()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_ForestStew);
};

instance ItRe_COOKING_FriedPasta (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_FriedPasta;
	
	description					=	"Przepis na sma¿ony makaron";
	TEXT[1]						=	"-1x miêso";
	TEXT[2]						=	"-1x cebula";
	TEXT[3]						=	"-m¹ka";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_FriedPasta()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_FriedPasta);
};

instance ItRe_COOKING_HoneyOatmeal (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_HoneyOatmeal;
	
	description					=	"Przepis na miodow¹ owsiankê";
	TEXT[1]						=	"-2x jab³ko";
	TEXT[2]						=	"-1x miód";
	TEXT[3]						=	"-1x ry¿";
	TEXT[4]						=	"-1x mleko";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_HoneyOatmeal()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_HoneyOatmeal);
};

instance ItRe_COOKING_JamPaste (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_JamPaste;
	
	description					=	"Przepis na pastê owocow¹ z d¿emem";
	TEXT[1]						=	"-2x winogrono";
	TEXT[2]						=	"-1x d¿em";
	TEXT[3]						=	"-1x miód";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_JamPaste()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_JamPaste);
};

instance ItRe_COOKING_MeatCauldron (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_MeatCauldron;
	
	description					=	"Przepis na miêsny kocio³ek";
	TEXT[1]						=	"-5x ziemniak";
	TEXT[2]						=	"-2x miêso";
	TEXT[3]						=	"-1x cebula";
	TEXT[4]						=	"-przyprawy";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_MeatCauldron()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MeatCauldron);
};

instance ItRe_COOKING_MeatStew (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_MeatStew;
	
	description					=	"Przepis na gulasz miêsny";
	TEXT[1]						=	"-1x miêso";
	TEXT[2]						=	"-1x marchewka";
	TEXT[3]						=	"-1x pietruszka";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_MeatStew()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MeatStew);
};

instance ItRe_COOKING_Pilaf (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Pilaf;
	
	description					=	"Przepis na pilaf";
	TEXT[1]						=	"-1x ry¿";
	TEXT[2]						=	"-1x miêso";
	TEXT[3]						=	"-1x marchew";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Pilaf()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Pilaf);
};

instance ItRe_COOKING_Puree (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Puree;
	
	description					=	"Przepis na puree";
	TEXT[1]						=	"-5x ziemniak";
	TEXT[2]						=	"-1x szynka";
	TEXT[3]						=	"-1x cebula";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Puree()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Puree);
};

instance ItRe_COOKING_Salad (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Salad;
	
	description					=	"Przepis na sa³atkê";
	TEXT[1]						=	"-2x marchew";
	TEXT[2]						=	"-1x pietruszka";
	TEXT[3]						=	"-1x cebula";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Salad()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Salad);
};

instance ItRe_COOKING_ScrambledEggs (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_ScrambledEggs;
	
	description					=	"Przepis na jajecznicê";
	TEXT[1]						=	"-2x jajo œcierwojada";
	TEXT[2]						=	"-1x ser";
	TEXT[3]						=	"-1x cebula";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_ScrambledEggs()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_ScrambledEggs);
};

instance ItRe_COOKING_Spaghetti (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Spaghetti;
	
	description					=	"Przepis na spaghetti";
	TEXT[1]						=	"-1x miêso";
	TEXT[2]						=	"-1x chili";
	TEXT[3]						=	"-m¹ka";
	TEXT[4]						=	"-przyprawy";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Spaghetti()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Spaghetti);
};

instance ItRe_COOKING_SpicyStew (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_SpicyStew;
	
	description					=	"Przepis na ostry gulasz";
	TEXT[1]						=	"-2x piekielnik";
	TEXT[2]						=	"-1x kapusta";
	TEXT[3]						=	"-1x ry¿";
	TEXT[4]						=	"-przyprawy";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_SpicyStew()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SpicyStew);
};

instance ItRe_COOKING_Stew (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Stew;
	
	description					=	"Przepis na gulasz";
	TEXT[1]						=	"-1x marchew";
	TEXT[2]						=	"-1x cebula";
	TEXT[3]						=	"-1x grzyb";
	TEXT[4]						=	"-przyprawy";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Stew()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Stew);
};

instance ItRe_COOKING_StewedVegetables (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_StewedVegetables;
	
	description					=	"Przepis na duszone warzywa";
	TEXT[1]						=	"-1x kapusta";
	TEXT[2]						=	"-1x marchew";
	TEXT[3]						=	"-1x jajo œcierwojada";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_StewedVegetables()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_StewedVegetables);
};

instance ItRe_COOKING_WineStew (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_WineStew;
	
	description					=	"Przepis na gulasz na winie";
	TEXT[1]						=	"-2x miêso";
	TEXT[2]						=	"-1x wino";
	TEXT[3]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_WineStew()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_WineStew);
};

///******************************************************************************************
instance ItRe_COOKING_BerrySoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_BerrySoup;
	
	description					=	"Przepis na zupê owocow¹";
	TEXT[1]						=	"-2x jagoda";
	TEXT[2]						=	"-1x jab³ko";
	TEXT[3]						=	"-1x gruszka";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_BerrySoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BerrySoup);
};

instance ItRe_COOKING_CabbageSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_CabbageSoup;
	
	description					=	"Przepis na kapuœniak";
	TEXT[1]						=	"-2x kapusta";
	TEXT[2]						=	"-2x ziemniaki";
	TEXT[3]						=	"-1x miêso";
	TEXT[4]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_CabbageSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_CabbageSoup);
};

instance ItRe_COOKING_CheeseSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_CheeseSoup;
	
	description					=	"Przepis na zupê serow¹ na piwie";
	TEXT[1]						=	"-1x piwo";
	TEXT[2]						=	"-1x ser";
	TEXT[3]						=	"-1x cebula";
	TEXT[4]						=	"-1x mleko";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_CheeseSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_CheeseSoup);
};

instance ItRe_COOKING_FishSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_FishSoup;
	
	description					=	"Przepis na zupê rybn¹";
	TEXT[1]						=	"-2x ryba";
	TEXT[2]						=	"-1x woda";
	TEXT[3]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_FishSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_FishSoup);
};

instance ItRe_COOKING_GreenSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_GreenSoup;
	
	description					=	"Przepis na zupê z pora";
	TEXT[1]						=	"-2x por";
	TEXT[2]						=	"-1x woda";
	TEXT[3]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_GreenSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_GreenSoup);
};

instance ItRe_COOKING_HoneySoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_HoneySoup;
	
	description					=	"Przepis na ry¿ankê z miodem";
	TEXT[1]						=	"-1x miód";
	TEXT[2]						=	"-1x ry¿";
	TEXT[3]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_HoneySoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_HoneySoup);
};

instance ItRe_COOKING_MilkSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_MilkSoup;
	
	description					=	"Przepis na zupê mleczn¹";
	TEXT[1]						=	"-1x mleko";
	TEXT[2]						=	"-1x ryba";
	TEXT[3]						=	"-1x por";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_MilkSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MilkSoup);
};

instance ItRe_COOKING_MushroomSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_MushroomSoup;
	
	description					=	"Przepis na zupê grzybow¹";
	TEXT[1]						=	"-2x mu³owy grzyb";
	TEXT[2]						=	"-1x cebula";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_MushroomSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MushroomSoup);
};

instance ItRe_COOKING_OnionSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_OnionSoup;
	
	description					=	"Przepis na zupê cebulow¹";
	TEXT[1]						=	"-2x cebula";
	TEXT[2]						=	"-1x chleb";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_OnionSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_OnionSoup);
};

instance ItRe_COOKING_OysterSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_OysterSoup;
	
	description					=	"Przepis na zupê z ostryg";
	TEXT[1]						=	"-1x ostryga";
	TEXT[2]						=	"-1x ser";
	TEXT[3]						=	"-1x mleko";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_OysterSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_OysterSoup);
};

instance ItRe_COOKING_SausageSoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_SausageSoup;
	
	description					=	"Przepis na zupê piwn¹ z kie³bas¹";
	TEXT[1]						=	"-1x piwo";
	TEXT[2]						=	"-1x kie³basa";
	TEXT[3]						=	"-1x cebula";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_SausageSoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SausageSoup);
};

instance ItRe_COOKING_SpicySoup (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_SpicySoup;
	
	description					=	"Przepis na ostr¹ zupê";
	TEXT[1]						=	"-1x chili";
	TEXT[2]						=	"-1x kie³basa";
	TEXT[3]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_SpicySoup()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SpicySoup);
};

instance ItRe_COOKING_AppleCompote (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_AppleCompote;
	
	description					=	"Przepis na kompot jab³kowy";
	TEXT[1]						=	"-2x jab³ko";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_AppleCompote()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_AppleCompote);
};

instance ItRe_COOKING_BerryCompote (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_BerryCompote;
	
	description					=	"Przepis na kompot jagodowy";
	TEXT[1]						=	"-2x polna jagoda";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_BerryCompote()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BerryCompote);
};

instance ItRe_COOKING_PearCompote (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_PearCompote;
	
	description					=	"Przepis na kompot gruszkowy";
	TEXT[1]						=	"-2x gruszka";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_PearCompote()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_PearCompote);
};

instance ItRe_COOKING_BlueDecoction (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_BlueDecoction;
	
	description					=	"Przepis na wywar z serafisu";
	TEXT[1]						=	"-2x serafis";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_BlueDecoction()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BlueDecoction);
};

///******************************************************************************************
instance ItRe_COOKING_Booze (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Booze;
	
	description					=	"Przepis na gorza³ê";
	TEXT[1]						=	"-2x ziemniak";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Booze()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Booze);
};

instance ItRe_COOKING_DarkBeer (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_DarkBeer;
	
	description					=	"Przepis na ciemne piwo";
	TEXT[1]						=	"-2x nasiona";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_DarkBeer()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_DarkBeer);
};

instance ItRe_COOKING_Mead (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Mead;
	
	description					=	"Przepis na 3x miód pitny";
	TEXT[1]						=	"-1x miód";
	TEXT[2]						=	"-3x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Mead()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Mead);
};

instance ItRe_COOKING_Sake (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Sake;
	
	description					=	"Przepis na 2x ry¿ówkê";
	TEXT[1]						=	"-1x ry¿";
	TEXT[2]						=	"-2x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Sake()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Sake);
};

instance ItRe_COOKING_SourWine (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_SourWine;
	
	description					=	"Przepis na kwaœne wino";
	TEXT[1]						=	"-1x leœna jagoda";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_SourWine()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SourWine);
};

instance ItRe_COOKING_Wine (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Wine;
	
	description					=	"Przepis na wino";
	TEXT[1]						=	"-1x winogrono";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
func void Use_ItRe_COOKING_Wine()
{
	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Wine);
};
