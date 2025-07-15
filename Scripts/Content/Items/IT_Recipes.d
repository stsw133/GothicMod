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

const int FLETCHERY_Bow_L_01			=	10;
const int FLETCHERY_Bow_L_02			=	11;
const int FLETCHERY_Bow_L_03			=	12;
const int FLETCHERY_Bow_L_04			=	13;
const int FLETCHERY_Bow_M_01			=	14;
const int FLETCHERY_Bow_M_02			=	15;
const int FLETCHERY_Bow_M_03			=	16;
const int FLETCHERY_Bow_M_04			=	17;
const int FLETCHERY_Bow_M_05			=	18;
const int FLETCHERY_Bow_M_06			=	19;
const int FLETCHERY_Bow_M_07			=	20;
const int FLETCHERY_Bow_M_08			=	21;
const int FLETCHERY_Bow_H_01			=	22;
const int FLETCHERY_Bow_H_02			=	23;
const int FLETCHERY_Bow_H_03			=	24;
const int FLETCHERY_Bow_H_04			=	25;

const int FLETCHERY_CBow_L_01			=	26;
const int FLETCHERY_CBow_L_02			=	27;
const int FLETCHERY_CBow_M_01			=	28;
const int FLETCHERY_CBow_M_02			=	29;
const int FLETCHERY_CBow_H_01			=	30;
const int FLETCHERY_CBow_H_02			=	31;

const int MAX_TALENT_FLETCHERY			=	32;

var int PLAYER_TALENT_FLETCHERY[MAX_TALENT_FLETCHERY];

///******************************************************************************************

func void Use_ItRe_FLETCHERY_Ammo()				{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Ammo);			};
func void Use_ItRe_FLETCHERY_HuntingAmmo()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_HuntingAmmo);	};
func void Use_ItRe_FLETCHERY_QuartzAmmo()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_QuartzAmmo);		};
func void Use_ItRe_FLETCHERY_BangAmmo()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_BangAmmo);		};
func void Use_ItRe_FLETCHERY_FireAmmo()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_FireAmmo);		};
func void Use_ItRe_FLETCHERY_PoisonAmmo()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_PoisonAmmo);		};
func void Use_ItRe_FLETCHERY_ExplosiveAmmo()	{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_ExplosiveAmmo);	};
func void Use_ItRe_FLETCHERY_MagicAmmo()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_MagicAmmo);		};

///******************************************************************************************
instance ItRe_FLETCHERY_Ammo (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryAmmo_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Ammo;
	
	description					=	"Instrukta¿ wyrobu zwyk³ej amunicji";
	COUNT[0]					=	1;
	TEXT[1]						=	"-10x grot";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_HuntingAmmo (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryAmmo_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_HuntingAmmo;
	
	description					=	"Instrukta¿ wyrobu myœliwskiej amunicji";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x k³y";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_QuartzAmmo (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryAmmo_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_QuartzAmmo;
	
	description					=	"Instrukta¿ wyrobu kwarcytowej amunicji";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x kwarcyt";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_BangAmmo (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryAmmo_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_BangAmmo;
	
	description					=	"Instrukta¿ wyrobu hukowej amunicji";
	COUNT[0]					=	2;
	TEXT[1]						=	"-10x strza³a";
	TEXT[2]						=	"-1x czarny proch";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_FireAmmo (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryAmmo_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_FireAmmo;
	
	description					=	"Instrukta¿ wyrobu ognistej amunicji";
	COUNT[0]					=	2;
	TEXT[1]						=	"-10x strza³a";
	TEXT[2]						=	"-1x smo³a";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_PoisonAmmo (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryAmmo_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_PoisonAmmo;
	
	description					=	"Instrukta¿ wyrobu zatrutej amunicji";
	COUNT[0]					=	2;
	TEXT[1]						=	"-50x strza³a";
	TEXT[2]						=	"-1x trucizna";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_ExplosiveAmmo (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryAmmo_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_ExplosiveAmmo;
	
	description					=	"Instrukta¿ wyrobu wybuchowej amunicji";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x magiczna czerwona bry³ka";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_MagicAmmo (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryAmmo_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_MagicAmmo;
	
	description					=	"Instrukta¿ wyrobu magicznej amunicji";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x magiczna niebieska bry³ka";
	TEXT[2]						=	"-1x laga";
	TEXT[3]						=	"-1x pióra harpii";
	COUNT[5]					=	value;
};

///******************************************************************************************

func void Use_ItRe_FLETCHERY_Bow_L_01()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_01);		};
func void Use_ItRe_FLETCHERY_Bow_L_02()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_02);		};
func void Use_ItRe_FLETCHERY_Bow_L_03()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_03);		};
func void Use_ItRe_FLETCHERY_Bow_L_04()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_L_04);		};
func void Use_ItRe_FLETCHERY_Bow_M_01()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_01);		};
func void Use_ItRe_FLETCHERY_Bow_M_02()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_02);		};
func void Use_ItRe_FLETCHERY_Bow_M_03()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_03);		};
func void Use_ItRe_FLETCHERY_Bow_M_04()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_04);		};
func void Use_ItRe_FLETCHERY_Bow_M_05()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_05);		};
func void Use_ItRe_FLETCHERY_Bow_M_06()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_06);		};
func void Use_ItRe_FLETCHERY_Bow_M_07()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_07);		};
func void Use_ItRe_FLETCHERY_Bow_M_08()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_M_08);		};
func void Use_ItRe_FLETCHERY_Bow_H_01()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_01);		};
func void Use_ItRe_FLETCHERY_Bow_H_02()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_02);		};
func void Use_ItRe_FLETCHERY_Bow_H_03()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_03);		};
func void Use_ItRe_FLETCHERY_Bow_H_04()			{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_Bow_H_04);		};

///******************************************************************************************
instance ItRe_FLETCHERY_Bow_L_01 (ItemPR_Recipe)
{
	value						=	25;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_01;
	
	description					=	"Schemat krótkiego ³uku";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra szczura";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_L_02 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_02;
	
	description					=	"Schemat ³uku wierzbowego";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra wilka";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_L_03 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_03;
	
	description					=	"Schemat ³uku myœliwskiego";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra zêbacza";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_L_04 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_FletcheryBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_L_04;
	
	description					=	"Schemat ³uku koœcianego";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra brzytwiaka";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_01 (ItemPR_Recipe)
{
	value						=	125;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_01;
	
	description					=	"Schemat ³uku kompozytowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra warga";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_02 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_02;
	
	description					=	"Schemat ³uku jesionowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra ogara";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_03 (ItemPR_Recipe)
{
	value						=	175;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_03;
	
	description					=	"Schemat d³ugiego ³uku";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra ognistego jaszczura";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_04 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_04;
	
	description					=	"Schemat ³uku dêbowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra tygrysa";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_05 (ItemPR_Recipe)
{
	value						=	225;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_05;
	
	description					=	"Schemat ³uku bukowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra tygrysa";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_06 (ItemPR_Recipe)
{
	value						=	250;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_06;
	
	description					=	"Schemat ³uku klonowego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra tygrysa";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_07 (ItemPR_Recipe)
{
	value						=	275;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_07;
	
	description					=	"Schemat ³uku ¿o³nierskiego";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra tygrysa";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_M_08 (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_M_08;
	
	description					=	"Schemat ³uku z poro¿a";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra tygrysa";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_H_01 (ItemPR_Recipe)
{
	value						=	325;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_01;
	
	description					=	"Schemat ³uku wojennego";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra cieniostwora";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_H_02 (ItemPR_Recipe)
{
	value						=	350;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_02;
	
	description					=	"Schemat pogromcy orków";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra olbrzymiego zêbacza";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_H_03 (ItemPR_Recipe)
{
	value						=	375;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_03;
	
	description					=	"Schemat gromow³adnego";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra trolla";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_Bow_H_04 (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_FletcheryBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_Bow_H_04;
	
	description					=	"Schemat smoczego ³uku";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra czarnego trolla";
	COUNT[5]					=	value;
};

///******************************************************************************************

func void Use_ItRe_FLETCHERY_CBow_L_01()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_L_01);		};
func void Use_ItRe_FLETCHERY_CBow_L_02()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 1, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_L_02);		};
func void Use_ItRe_FLETCHERY_CBow_M_01()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_M_01);		};
func void Use_ItRe_FLETCHERY_CBow_M_02()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 2, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_M_02);		};
func void Use_ItRe_FLETCHERY_CBow_H_01()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_H_01);		};
func void Use_ItRe_FLETCHERY_CBow_H_02()		{	ReadRecipe(NPC_TALENT_FLETCHERY, 3, PLAYER_TALENT_FLETCHERY, FLETCHERY_CBow_H_02);		};

///******************************************************************************************
instance ItRe_FLETCHERY_CBow_L_01 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_FletcheryCBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_L_01;
	
	description					=	"Schemat kuszy myœliwskiej";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra szczura";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_CBow_L_02 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_FletcheryCBow_1.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_L_02;
	
	description					=	"Schemat ma³ej kuszy";
	COUNT[0]					=	1;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra szczura";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_CBow_M_01 (ItemPR_Recipe)
{
	value						=	225;
	visual						=	"ItRe_FletcheryCBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_M_01;
	
	description					=	"Schemat kuszy";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra szczura";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_CBow_M_02 (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_FletcheryCBow_2.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_M_02;
	
	description					=	"Schemat kuszy bojowej";
	COUNT[0]					=	2;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra szczura";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_CBow_H_01 (ItemPR_Recipe)
{
	value						=	375;
	visual						=	"ItRe_FletcheryCBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_H_01;
	
	description					=	"Schemat ciê¿kiej kuszy";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra szczura";
	COUNT[5]					=	value;
};

instance ItRe_FLETCHERY_CBow_H_02 (ItemPR_Recipe)
{
	value						=	450;
	visual						=	"ItRe_FletcheryCBow_3.3ds";
	on_state[0]					=	Use_ItRe_FLETCHERY_CBow_H_02;
	
	description					=	"Schemat smoczej kuszy";
	COUNT[0]					=	3;
	TEXT[1]						=	"-1x k³oda";
	TEXT[2]						=	"-1x skóra szczura";
	COUNT[5]					=	value;
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

const int ALCHEMY_Mana_01				=	5;
const int ALCHEMY_Mana_02				=	6;
const int ALCHEMY_Mana_03				=	7;
const int ALCHEMY_Mana_04				=	8;
const int ALCHEMY_Mana_05				=	9;

const int ALCHEMY_Stamina				=	10;

const int ALCHEMY_Temp_Health			=	11;
const int ALCHEMY_Temp_Mana 			=	12;
const int ALCHEMY_Temp_Str				=	13;
const int ALCHEMY_Temp_Dex				=	14;
const int ALCHEMY_Temp_Pow				=	15;
const int ALCHEMY_Temp_Prot				=	16;

const int ALCHEMY_Perm_Health			=	17;
const int ALCHEMY_Perm_Mana				=	18;
const int ALCHEMY_Perm_Str				=	19;
const int ALCHEMY_Perm_Dex				=	20;
const int ALCHEMY_Perm_Pow				=	21;
const int ALCHEMY_Perm_Prot				=	22;

const int ALCHEMY_Lightness				=	23;
const int ALCHEMY_Speed					=	24;

const int ALCHEMY_NightVision			=	25;
const int ALCHEMY_Geist					=	26;
const int ALCHEMY_HealObsession			=	27;
const int ALCHEMY_Poison				=	28;

const int ALCHEMY_Transform				=	29;
const int ALCHEMY_MegaDrink				=	30;

const int MAX_TALENT_ALCHEMY			=	31;

var int PLAYER_TALENT_ALCHEMY[MAX_TALENT_ALCHEMY];

///******************************************************************************************

func void Use_ItRe_ALCHEMY_Health_01()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_01);			};
func void Use_ItRe_ALCHEMY_Health_02()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_02);			};
func void Use_ItRe_ALCHEMY_Health_03()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_03);			};
func void Use_ItRe_ALCHEMY_Health_04()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_04);			};
func void Use_ItRe_ALCHEMY_Health_05()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Health_05);			};
func void Use_ItRe_ALCHEMY_Mana_01()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_01);				};
func void Use_ItRe_ALCHEMY_Mana_02()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_02);				};
func void Use_ItRe_ALCHEMY_Mana_03()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_03);				};
func void Use_ItRe_ALCHEMY_Mana_04()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_04);				};
func void Use_ItRe_ALCHEMY_Mana_05()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Mana_05);				};

///******************************************************************************************
instance ItRe_ALCHEMY_Health_01 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_01;
	
	description					=	"Przepis na s³ab¹ miksturê lecznicz¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 roœlin leczniczych";
	TEXT[2]						=	"i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Health_02 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_02;
	
	description					=	"Przepis na œredni¹ miksturê lecznicz¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 zió³ leczniczych";
	TEXT[2]						=	"i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Health_03 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_03;
	
	description					=	"Przepis na siln¹ miksturê lecznicz¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 korzeni leczniczych";
	TEXT[2]						=	"i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Health_04 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_04;
	
	description					=	"Przepis na potê¿n¹ miksturê lecznicz¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"z silnej mikstury leczniczej";
	TEXT[2]						=	"i rdestu polnego.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Health_05 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Health_05;
	
	description					=	"Przepis na s³ab¹ miksturê lecznicz¹";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 5 serafisów";
	TEXT[2]						=	"i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Mana_01 (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_01;
	
	description					=	"Przepis na s³ab¹ miksturê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 ognistych pokrzyw";
	TEXT[2]						=	"i wina.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Mana_02 (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_02;
	
	description					=	"Przepis na œredni¹ miksturê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 ognistych zió³";
	TEXT[2]						=	"i wina.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Mana_03 (ItemPR_Recipe)
{
	value						=	150;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_03;
	
	description					=	"Przepis na siln¹ miksturê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 ognistych korzeni";
	TEXT[2]						=	"i wina.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Mana_04 (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_04;
	
	description					=	"Przepis na potê¿n¹ miksturê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"z silnej mikstury many";
	TEXT[2]						=	"i rdestu polnego.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Mana_05 (ItemPR_Recipe)
{
	value						=	75;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Mana_05;
	
	description					=	"Przepis na s³ab¹ miksturê many";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 5 serafisów";
	TEXT[2]						=	"i wina.";
	COUNT[5]					=	value;
};

///******************************************************************************************

func void Use_ItRe_ALCHEMY_Temp_Health()		{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Health);			};
func void Use_ItRe_ALCHEMY_Temp_Mana()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Mana);			};
func void Use_ItRe_ALCHEMY_Temp_Str()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Str);				};
func void Use_ItRe_ALCHEMY_Temp_Dex()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Dex);				};
func void Use_ItRe_ALCHEMY_Temp_Pow()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Temp_Pow);				};
func void Use_ItRe_ALCHEMY_Perm_Health()		{	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Health);			};
func void Use_ItRe_ALCHEMY_Perm_Mana()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Mana);			};
func void Use_ItRe_ALCHEMY_Perm_Str()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Str);				};
func void Use_ItRe_ALCHEMY_Perm_Dex()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Dex);				};
func void Use_ItRe_ALCHEMY_Perm_Pow()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Pow);				};
func void Use_ItRe_ALCHEMY_Perm_Prot()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 3, PLAYER_TALENT_ALCHEMY, ALCHEMY_Perm_Prot);			};

///******************************************************************************************
instance ItRe_ALCHEMY_Temp_Health (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Health;
	
	description					=	"Przepis na czasowy eliksir ¿ywotnoœci";
	COUNT[0]					=	2;
	TEXT[1]						=	"z krwawej miêty";
	TEXT[2]						=	"i rdestu polnego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Temp_Mana (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Mana;
	
	description					=	"Przepis na czasowy eliksir ducha";
	COUNT[0]					=	2;
	TEXT[1]						=	"z wilczego rumianku";
	TEXT[2]						=	"i rdestu polnego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Temp_Str (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Str;
	
	description					=	"Przepis na czasowy eliksir si³y";
	COUNT[0]					=	2;
	TEXT[1]						=	"ze smoczego korzenia";
	TEXT[2]						=	"i rdestu polnego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Temp_Dex (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Dex;
	
	description					=	"Przepis na czasowy eliksir zrêcznoœci";
	COUNT[0]					=	2;
	TEXT[1]						=	"z gobliniej ró¿y";
	TEXT[2]						=	"i rdestu polnego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Temp_Pow (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Temp_Pow;
	
	description					=	"Przepis na czasowy eliksir mocy";
	COUNT[0]					=	2;
	TEXT[1]						=	"z harpiej winoroœli";
	TEXT[2]						=	"i rdestu polnego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Perm_Health (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Health;
	
	description					=	"Przepis na trwa³y eliksir ¿ywotnoœci";
	COUNT[0]					=	3;
	TEXT[1]						=	"z krwawej miêty";
	TEXT[2]						=	"i szczawiu królewskiego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Perm_Mana (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Mana;
	
	description					=	"Przepis na trwa³y eliksir ducha";
	COUNT[0]					=	3;
	TEXT[1]						=	"z wilczego rumianku";
	TEXT[2]						=	"i szczawiu królewskiego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Perm_Str (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Str;
	
	description					=	"Przepis na trwa³y eliksir si³y";
	COUNT[0]					=	3;
	TEXT[1]						=	"ze smoczego korzenia";
	TEXT[2]						=	"i szczawiu królewskiego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Perm_Dex (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Dex;
	
	description					=	"Przepis na trwa³y eliksir zrêcznoœci";
	COUNT[0]					=	3;
	TEXT[1]						=	"z gobliniej ró¿y";
	TEXT[2]						=	"i szczawiu królewskiego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Perm_Pow (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Pow;
	
	description					=	"Przepis na trwa³y eliksir mocy";
	COUNT[0]					=	3;
	TEXT[1]						=	"z harpiej winoroœli";
	TEXT[2]						=	"i szczawiu królewskiego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Perm_Prot (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Perm_Prot;
	
	description					=	"Przepis na trwa³y eliksir ochrony";
	COUNT[0]					=	3;
	TEXT[1]						=	"ze s³onecznego aloesu";
	TEXT[2]						=	"i szczawiu królewskiego i wody.";
	COUNT[5]					=	value;
};

///******************************************************************************************

func void Use_ItRe_ALCHEMY_Transform()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Transform);			};
func void Use_ItRe_ALCHEMY_Speed()				{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_Speed);				};
func void Use_ItRe_ALCHEMY_Lightness()			{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Lightness);			};
func void Use_ItRe_ALCHEMY_NightVision()		{	ReadRecipe(NPC_TALENT_ALCHEMY, 1, PLAYER_TALENT_ALCHEMY, ALCHEMY_NightVision);			};
func void Use_ItRe_ALCHEMY_Geist()				{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Geist);				};
func void Use_ItRe_ALCHEMY_HealObsession()		{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_HealObsession);		};
func void Use_ItRe_ALCHEMY_Poison()				{	ReadRecipe(NPC_TALENT_ALCHEMY, 2, PLAYER_TALENT_ALCHEMY, ALCHEMY_Poison);				};

///******************************************************************************************
instance ItRe_ALCHEMY_Transform (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Transform;
	
	description					=	"Przepis na przemianê w potwora";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 10 fiolek krwi danego potwora";
	TEXT[2]						=	"i rdestu polnego i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Speed (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Speed;
	
	description					=	"Przepis na miksturê energii";
	COUNT[0]					=	1;
	TEXT[1]						=	"z 2 zêbatych zió³";
	TEXT[2]						=	"i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Lightness (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Lightness;
	
	description					=	"Przepis na miksturê lekkoœci";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 4 zêbatych zió³";
	TEXT[2]						=	"i 2 rdestów polnych";
	TEXT[3]						=	"i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_NightVision (ItemPR_Recipe)
{
	value						=	50;
	visual						=	"ItRe_Alchemy_1.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_NightVision;
	
	description					=	"Przepis na miksturê widzenia w ciemnoœci";
	COUNT[0]					=	1;
	TEXT[1]						=	"z roœliny many";
	TEXT[2]						=	"i serafisu i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Geist (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Geist;
	
	description					=	"Przepis na miksturê jasnoœci umys³u";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 2 bagiennych zió³";
	TEXT[2]						=	"i gorza³y.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_HealObsession (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_HealObsession;
	
	description					=	"Przepis na leczenie z opêtania";
	COUNT[0]					=	2;
	TEXT[1]						=	"z roœliny leczniczej";
	TEXT[2]						=	"i roœliny many i wody œwiêconej.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_Poison (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Alchemy_2.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_Poison;
	
	description					=	"Przepis na truciznê";
	COUNT[0]					=	2;
	TEXT[1]						=	"z 4 truj¹cych grzybów";
	TEXT[2]						=	"i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ALCHEMY_MegaDrink (ItemPR_Recipe)
{
	value						=	0;
	visual						=	"ItRe_Alchemy_3.3ds";
	on_state[0]					=	Use_ItRe_ALCHEMY_MegaDrink;
	
	description					=	"Przepis na Embarla Firgasto";
	COUNT[0]					=	3;
	TEXT[1]						=	"z 10 smoczych jaj";
	TEXT[2]						=	"i czarnej per³y";
	TEXT[3]						=	"i siarki i rtêci.";
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

///******************************************************************************************
/// Enchanting
///******************************************************************************************

var int PLAYER_TALENT_ENCHANTING[MAX_SPELL];

///******************************************************************************************

func void Use_ItRe_ENCHANTING_Light()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Light);				};
func void Use_ItRe_ENCHANTING_Heal()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Heal);				};
func void Use_ItRe_ENCHANTING_SlowTime()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_SlowTime);			};
func void Use_ItRe_ENCHANTING_NightToDay()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_NightToDay);			};
func void Use_ItRe_ENCHANTING_Telekinesis()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Telekinesis);		};
func void Use_ItRe_ENCHANTING_FireBolt()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_FireBolt);			};
func void Use_ItRe_ENCHANTING_IceBolt()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_IceBolt);			};
func void Use_ItRe_ENCHANTING_Zap()				{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Zap);				};
func void Use_ItRe_ENCHANTING_SkullBolt()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_SkullBolt);			};
func void Use_ItRe_ENCHANTING_WindFist()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_WindFist);			};
func void Use_ItRe_ENCHANTING_Sleep()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Sleep);				};
func void Use_ItRe_ENCHANTING_Charm()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Charm);				};
func void Use_ItRe_ENCHANTING_LightningFlash()	{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_LightningFlash);		};
func void Use_ItRe_ENCHANTING_ChargeFireball()	{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_ChargeFireball);		};
func void Use_ItRe_ENCHANTING_Whirlwind()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Whirlwind);			};
func void Use_ItRe_ENCHANTING_Fear()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Fear);				};
func void Use_ItRe_ENCHANTING_Rage()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Rage);				};
func void Use_ItRe_ENCHANTING_ChargeZap()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_ChargeZap);			};
func void Use_ItRe_ENCHANTING_Geyser()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Geyser);				};
func void Use_ItRe_ENCHANTING_WaterFist()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_WaterFist);			};
func void Use_ItRe_ENCHANTING_Pyrokinesis()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Pyrokinesis);		};
func void Use_ItRe_ENCHANTING_IceLance()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_IceLance);			};
func void Use_ItRe_ENCHANTING_IceWave()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_IceWave);			};
func void Use_ItRe_ENCHANTING_Inflate()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Inflate);			};
func void Use_ItRe_ENCHANTING_DragonBall()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_DragonBall);			};
func void Use_ItRe_ENCHANTING_BlackDragonBall()	{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_BlackDragonBall);	};
func void Use_ItRe_ENCHANTING_BreathOfDeath()	{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_BreathOfDeath);		};
func void Use_ItRe_ENCHANTING_MassDeath()		{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_MassDeath);			};
func void Use_ItRe_ENCHANTING_ArmyOfDarkness()	{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_ArmyOfDarkness);		};
func void Use_ItRe_ENCHANTING_Shrink()			{	ReadRecipe(NPC_TALENT_ENCHANTING, 1, PLAYER_TALENT_ENCHANTING, SPL_Shrink);				};

///******************************************************************************************
instance ItRe_ENCHANTING_Light (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Light;
	
	description					=	"Przepis na 'Œwiat³o'";
	COUNT[0]					=	1;
	TEXT[1]						=	"ze z³otej monety.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Heal (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Heal;
	
	description					=	"Przepis na 'Uleczenie'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z zio³a leczniczego.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_SlowTime (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_SlowTime;
	
	description					=	"Przepis na 'Spowolnienie czasu'";
	COUNT[0]					=	1;
	TEXT[1]						=	"ze szmaragdu i 10 cz¹steczek czasu.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_NightToDay (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_NightToDay;
	
	description					=	"Przepis na 'Noc w dzieñ'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z owczej skóry i 5 cz¹steczek czasu.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Telekinesis (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Telekinesis;
	
	description					=	"Przepis na 'Telekineza'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z monety fortuny.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_FireBolt (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_FireBolt;
	
	description					=	"Przepis na 'Ognisty pocisk'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z siarki.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_IceBolt (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_IceBolt;
	
	description					=	"Przepis na 'Lodowy pocisk'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z kryszta³u.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Zap (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Zap;
	
	description					=	"Przepis na 'Ma³a b³yskawica'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z bry³ki srebra.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_SkullBolt (ItemPR_Recipe)
{
	value						=	100;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_SkullBolt;
	
	description					=	"Przepis na 'Krzyk umar³ych'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z czaszki.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_WindFist (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_WindFist;
	
	description					=	"Przepis na 'Piêœæ wichru'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z wêgla i pazurów.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Sleep (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Sleep;
	
	description					=	"Przepis na 'Uœpienie'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z bagiennego ziela.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Charm (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Charm;
	
	description					=	"Przepis na 'Amnezja'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z bagiennego ziela i ¿uwaczek polnej bestii.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_LightningFlash (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_LightningFlash;
	
	description					=	"Przepis na 'B³yskawica'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z bry³ki ¿elaza i szponów topielca.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_ChargeFireball (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_ChargeFireball;
	
	description					=	"Przepis na 'Du¿a kula ognia'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z ognistego kryszta³u i smo³y.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Whirlwind (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Whirlwind;
	
	description					=	"Przepis na 'Wir'";
	COUNT[0]					=	1;
	TEXT[1]						=	"ze skrzyde³ i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Fear (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Fear;
	
	description					=	"Przepis na 'Strach'";
	COUNT[0]					=	1;
	TEXT[1]						=	"ze skrzyde³.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Rage (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Rage;
	
	description					=	"Przepis na 'Œlep¹ furiê'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z krwi demona.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_ChargeZap (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_ChargeZap;
	
	description					=	"Przepis na 'Piorun kulisty'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z bry³ki ¿elaza i pazurów.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Geyser (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Geyser;
	
	description					=	"Przepis na 'Gejzer'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z akwamarynu.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_WaterFist (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_WaterFist;
	
	description					=	"Przepis na 'Wodna piêœæ'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z akwamarynu i wody.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Pyrokinesis (ItemPR_Recipe)
{
	value						=	500;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Pyrokinesis;
	
	description					=	"Przepis na 'Du¿a burza ognista'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z ognistego kryszta³u i saletry.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_IceLance (ItemPR_Recipe)
{
	value						=	200;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_IceLance;
	
	description					=	"Przepis na 'Lodowa lanca'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z bia³ej per³y.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_IceWave (ItemPR_Recipe)
{
	value						=	500;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_IceWave;
	
	description					=	"Przepis na 'Lodowa fala'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z bia³ej per³y i akwamarynu.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Inflate (ItemPR_Recipe)
{
	value						=	300;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Inflate;
	
	description					=	"Przepis na 'Spuchniêcie'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z wody i ³oju kretoszczura.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_DragonBall (ItemPR_Recipe)
{
	value						=	400;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_DragonBall;
	
	description					=	"Przepis na 'Smocz¹ kulê'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z serca smoka.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_BlackDragonBall (ItemPR_Recipe)
{
	value						=	500;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_BlackDragonBall;
	
	description					=	"Przepis na 'Czarn¹ smocz¹ kulê'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z kamienia duszy smoka-o¿ywieñca.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_BreathOfDeath (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_BreathOfDeath;
	
	description					=	"Przepis na 'Tchnienie œmierci'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z wêgla i czarnej per³y.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_MassDeath (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_MassDeath;
	
	description					=	"Przepis na 'Fala œmierci'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z krwi demona i czarnej per³y.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_ArmyOfDarkness (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_ArmyOfDarkness;
	
	description					=	"Przepis na 'Armia ciemnoœci'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z koœci szkieletu i czarnej per³y.";
	COUNT[5]					=	value;
};

instance ItRe_ENCHANTING_Shrink (ItemPR_Recipe)
{
	value						=	600;
	visual						=	"ItRe_Enchanting_1.3ds";
	on_state[0]					=	Use_ItRe_ENCHANTING_Shrink;
	
	description					=	"Przepis na 'Zmniejszenie potwora'";
	COUNT[0]					=	1;
	TEXT[1]						=	"z k³a trolla i jaja pe³zacza.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Hunting
///******************************************************************************************

const int HUNTING_Blood					=	0;
const int HUNTING_Claws					=	1;
const int HUNTING_Furs					=	2;
const int HUNTING_Hearts				=	3;
const int HUNTING_Horns					=	4;
const int HUNTING_Mandibles				=	5;
const int HUNTING_Plates				=	6;
const int HUNTING_Scales				=	7;
const int HUNTING_Skins					=	8;
const int HUNTING_Stings				=	9;
const int HUNTING_Teeth					=	10;
const int HUNTING_Tongues				=	11;
const int HUNTING_Wings					=	12;

const int MAX_TALENT_HUNTING			=	13;

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

func void Use_ItRe_COOKING_BugPulp()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BugPulp);				};
func void Use_ItRe_COOKING_ForestStew()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_ForestStew);			};
func void Use_ItRe_COOKING_FriedPasta()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_FriedPasta);			};
func void Use_ItRe_COOKING_HoneyOatmeal()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_HoneyOatmeal);			};
func void Use_ItRe_COOKING_JamPaste()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_JamPaste);				};
func void Use_ItRe_COOKING_MeatCauldron()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MeatCauldron);			};
func void Use_ItRe_COOKING_MeatStew()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MeatStew);				};
func void Use_ItRe_COOKING_Pilaf()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Pilaf);				};
func void Use_ItRe_COOKING_Puree()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Puree);				};
func void Use_ItRe_COOKING_Salad()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Salad);				};
func void Use_ItRe_COOKING_ScrambledEggs()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_ScrambledEggs);		};
func void Use_ItRe_COOKING_Spaghetti()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Spaghetti);			};
func void Use_ItRe_COOKING_SpicyStew()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SpicyStew);			};
func void Use_ItRe_COOKING_Stew()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Stew);					};
func void Use_ItRe_COOKING_StewedVegetables()	{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_StewedVegetables);		};
func void Use_ItRe_COOKING_WineStew()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_WineStew);				};

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
	TEXT[3]						=	"-przyprawy";
	COUNT[5]					=	value;
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

instance ItRe_COOKING_FriedPasta (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_ForestStew;
	
	description					=	"Przepis na sma¿ony makaron";
	TEXT[1]						=	"-1x miêso";
	TEXT[2]						=	"-1x cebula";
	TEXT[3]						=	"-m¹ka";
	TEXT[4]						=	"-zio³a";
	COUNT[5]					=	value;
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

instance ItRe_COOKING_SpicyStew (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_Stew;
	
	description					=	"Przepis na ostry gulasz";
	TEXT[1]						=	"-2x piekielnik";
	TEXT[2]						=	"-1x kapusta";
	TEXT[3]						=	"-1x ry¿";
	TEXT[4]						=	"-przyprawy";
	COUNT[5]					=	value;
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

///******************************************************************************************

func void Use_ItRe_COOKING_BerrySoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BerrySoup);			};
func void Use_ItRe_COOKING_CabbageSoup()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_CabbageSoup);			};
func void Use_ItRe_COOKING_CheeseSoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_CheeseSoup);			};
func void Use_ItRe_COOKING_FishSoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_FishSoup);				};
func void Use_ItRe_COOKING_GreenSoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_GreenSoup);			};
func void Use_ItRe_COOKING_HoneySoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_HoneySoup);			};
func void Use_ItRe_COOKING_MilkSoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MilkSoup);				};
func void Use_ItRe_COOKING_MushroomSoup()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_MushroomSoup);			};
func void Use_ItRe_COOKING_OnionSoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_OnionSoup);			};
func void Use_ItRe_COOKING_OysterSoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_OysterSoup);			};
func void Use_ItRe_COOKING_SausageSoup()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SausageSoup);			};
func void Use_ItRe_COOKING_SpicySoup()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SpicySoup);			};
func void Use_ItRe_COOKING_AppleCompote()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_AppleCompote);			};
func void Use_ItRe_COOKING_BerryCompote()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BerryCompote);			};
func void Use_ItRe_COOKING_PearCompote()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_PearCompote);			};
func void Use_ItRe_COOKING_BlueDecoction()		{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_BlueDecoction);		};

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

///******************************************************************************************

func void Use_ItRe_COOKING_Booze()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Booze);				};
func void Use_ItRe_COOKING_DarkBeer()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_DarkBeer);				};
func void Use_ItRe_COOKING_Mead()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Mead);					};
func void Use_ItRe_COOKING_Sake()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Sake);					};
func void Use_ItRe_COOKING_SourWine()			{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_SourWine);				};
func void Use_ItRe_COOKING_Wine()				{	ReadRecipe(NPC_TALENT_HUNTING, 0, PLAYER_TALENT_COOKING, COOKING_Wine);					};

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

instance ItRe_COOKING_Wine (ItemPR_Recipe)
{
	value						=	5;
	visual						=	"ItRe_Cooking.3ds";
	on_state[0]					=	Use_ItRe_COOKING_SourWine;
	
	description					=	"Przepis na wino";
	TEXT[1]						=	"-1x winogrono";
	TEXT[2]						=	"-1x woda";
	COUNT[5]					=	value;
};
