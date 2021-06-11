///******************************************************************************************
///	IT_AnimalTrophies
///******************************************************************************************
prototype ItemPR_AnimalTrophy (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
///	Furs
///******************************************************************************************
instance ItAt_HareFur (ItemPR_AnimalTrophy)
{
	name 			=	"Zajêcza skóra";
	
	value 			=	5;
	visual 			=	"ItAt_HareFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_SheepFur (ItemPR_AnimalTrophy)
{
	name 			=	"Owcza skóra";
	
	value 			=	10;
	visual 			=	"ItAt_SheepFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_GoatFur (ItemPR_AnimalTrophy)
{
	name 			=	"Kozia skóra";
	
	value 			=	10;
	visual 			=	"ItAt_GoatFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItAt_WolfFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra wilka";
	
	value 			=	10;
	visual 			=	"ItAt_WolfFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_JackalFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra szakala";
	
	value 			=	10;
	visual 			=	"ItAt_JackalFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_KeilerFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra dzika";
	
	value 			=	10;
	visual 			=	"ItAt_KeilerFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItAt_WargFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra warga";
	
	value 			=	50;
	visual 			=	"ItAt_WargFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_TigerFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra tygrysa";
	
	value 			=	100;
	visual 			=	"ItAt_TigerFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_ShadowFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra cieniostwora";
	
	value 			=	200;
	visual 			=	"ItAt_ShadowFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItAt_TrollFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra trolla";
	
	value 			=	300;
	visual 			=	"ItAt_TrollFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_TrollBlackFur (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra czarnego trolla";
	
	value 			=	350;
	visual 			=	"ItAt_TrollBlackFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance itat_LurkerSkin (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra topielca";
	
	value 			=	20;
	visual 			=	"ItAt_LurkerSkin.3DS";
	
	description		= 	"Skóra topielca";
	COUNT[5]		=	value;
};
instance ItAt_SharkSkin (ItemPR_AnimalTrophy)
{
	name 			=	"Skóra b³otnego wê¿a";
	
	value 			=	100;
	visual 			=	"ItAt_SharkSkin.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
/// Claws & Teeth & Wings
///******************************************************************************************
instance ItAt_Claw (ItemPR_AnimalTrophy)
{
	name 			=	"Pazury";
	
	value 			=	10;
	visual 			=	"ItAt_Claw.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_Teeth (ItemPR_AnimalTrophy)
{
	name 			=	"Zêby";
	
	value 			=	10;
	visual 			=	"ItAt_Teeth.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_SharkTeeth (ItemPR_AnimalTrophy)
{
	name 			=	"K³y b³otnego wê¿a";
	
	value 			=	100;
	visual 			=	"ItAt_SharkTeeth.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_TrollTooth (ItemPR_AnimalTrophy)
{
	name 			=	"Kie³ trolla";
	
	value 			=	100;
	visual 			=	"ItAt_TrollTooth.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
	
	INV_ZBIAS		=	INVCAM_ENTF_RING_STANDARD;
};
instance ItAt_Wing (ItemPR_AnimalTrophy)
{
	name 			=	"Skrzyd³a";
	
	value 			=	5;
	visual 			=	"ItAt_Wing.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
///	Mandibles
///******************************************************************************************
instance ItAt_BugMandibles (ItemPR_AnimalTrophy)
{
	name 			=	"¯uwaczki polnej bestii";
	
	value 			=	10;
	visual 			=	"ItAt_BugMandibles.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_CrawlerMandibles (ItemPR_AnimalTrophy)
{
	name 			=	"¯uwaczki pe³zacza";
	
	value 			=	20;
	visual 			=	"ItAt_CrawlerMandibles.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
///	Scales
///******************************************************************************************
instance ItAt_CrawlerPlate (ItemPR_AnimalTrophy)
{
	name 			=	"P³yta pancerza pe³zacza";
	
	value 			=	20;
	visual 			=	"ItAt_CrawlerPlate.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DragonScale (ItemPR_AnimalTrophy)
{
	name 			=	"Smocze ³uski";
	
	value 			=	100;
	visual 			=	"ItAt_DragonScale.3DS";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
///	Horns
///******************************************************************************************
instance ItAt_ShadowHorn (ItemPR_AnimalTrophy)
{
	name 			=	"Róg cieniostwora";
	
	value 			=	200;
	visual 			=	"ItAt_ShadowHorn.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DrgSnapperHorn (ItemPR_AnimalTrophy)
{
	name 			=	"Róg smoczego zêbacza";
	
	value 			=	200;
	visual 			=	"ItAt_DrgSnapperHorn.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
///	Hearts
///******************************************************************************************
instance ItAt_GolemHeart (ItemPR_AnimalTrophy)
{
	name 			=	"Serce golema";
	
	value 			=	200;
	visual 			=	"ItAt_StoneGolemHeart.3DS";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DemonHeart (ItemPR_AnimalTrophy)
{
	name 			=	"Serce demona";
	
	value 			=	300;
	visual 			=	"ItAt_DemonHeart.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DragonHeart (ItemPR_AnimalTrophy)
{
	name 			=	"Serce smoka";
	
	value 			=	400;
	visual 			=	"ItAt_FiredragonHeart.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_UndeadDragonSoulStone (ItemPR_AnimalTrophy)
{
	name 			=	"Kamieñ duszy smoka-o¿ywieñca";
	
	value 			=	500;
	visual 			=	"ItAt_UndeadDragonSoulStone.3DS";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		=	value;
	
	INV_ZBIAS		=	INVCAM_ENTF_MISC_STANDARD;
};
///******************************************************************************************
///	Eggs
///******************************************************************************************
instance ItAt_CrawlerEgg (ItemPR_AnimalTrophy)
{	
	name 			=	"Jajo pe³zacza";
	
	value 			=	50;
	visual 			=	"ItAt_CrawlerEgg.3ds";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DragonEgg_MIS	(ItemPR_AnimalTrophy)
{	
	name 			=	"Smocze jajo";
	
	value 			=	400;
	visual 			=	"ItAt_DragonEgg.3ds";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
///	Misc
///******************************************************************************************
instance ItAt_SkeletonBone (ItemPR_AnimalTrophy)
{
	name 			=	"Koœæ szkieletu";
	
	value 			=	1;
	visual 			=	"ItAt_SkeletonBone.3DS";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_Skull (ItemPR_AnimalTrophy)
{
	name 			=	"Czaszka";
	
	value 			=	5;
	visual 			=	"DT_SKELETON_V01_HEAD.3ds";
	material 		=	MAT_STONE;
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_Sting (ItemPR_AnimalTrophy)
{
	name 			=	"¯¹d³o";
	
	value 			=	10;
	visual 			=	"ItAt_Sting.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_LurkerClaw (ItemPR_AnimalTrophy)
{
	name 			=	"Szpony topielca";
	
	value 			=	20;
	visual 			=	"ItAt_LurkerClaw.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_WaranFireTongue (ItemPR_AnimalTrophy)
{
	name 			=	"Jêzyk ognistego jaszczura";
	
	value 			=	100;
	visual 			=	"ItAt_WaranFireTongue.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DragonBlood (ItemPR_AnimalTrophy)
{
	name 			=	"Smocza krew";
	
	value 			=	100;
	visual 			=	"ItAt_DragonBlood.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
