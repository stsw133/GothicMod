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
	name 			=	"Zaj�cza sk�ra";
	
	value 			=	5;
	visual 			=	"ItAt_HareFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_SheepFur (ItemPR_AnimalTrophy)
{
	name 			=	"Owcza sk�ra";
	
	value 			=	10;
	visual 			=	"ItAt_SheepFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_GoatFur (ItemPR_AnimalTrophy)
{
	name 			=	"Kozia sk�ra";
	
	value 			=	10;
	visual 			=	"ItAt_GoatFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItAt_WolfFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra wilka";
	
	value 			=	10;
	visual 			=	"ItAt_WolfFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_JackalFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra szakala";
	
	value 			=	10;
	visual 			=	"ItAt_JackalFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_KeilerFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra dzika";
	
	value 			=	10;
	visual 			=	"ItAt_KeilerFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItAt_WargFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra warga";
	
	value 			=	50;
	visual 			=	"ItAt_WargFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_TigerFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra tygrysa";
	
	value 			=	100;
	visual 			=	"ItAt_TigerFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_ShadowFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra cieniostwora";
	
	value 			=	200;
	visual 			=	"ItAt_ShadowFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance ItAt_TrollFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra trolla";
	
	value 			=	300;
	visual 			=	"ItAt_TrollFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_TrollBlackFur (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra czarnego trolla";
	
	value 			=	350;
	visual 			=	"ItAt_TrollBlackFur.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
///******************************************************************************************
instance itat_LurkerSkin (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra topielca";
	
	value 			=	20;
	visual 			=	"ItAt_LurkerSkin.3DS";
	
	description		= 	"Sk�ra topielca";
	COUNT[5]		=	value;
};
instance ItAt_SharkSkin (ItemPR_AnimalTrophy)
{
	name 			=	"Sk�ra b�otnego w�a";
	
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
	name 			=	"Z�by";
	
	value 			=	10;
	visual 			=	"ItAt_Teeth.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_SharkTeeth (ItemPR_AnimalTrophy)
{
	name 			=	"K�y b�otnego w�a";
	
	value 			=	100;
	visual 			=	"ItAt_SharkTeeth.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_TrollTooth (ItemPR_AnimalTrophy)
{
	name 			=	"Kie� trolla";
	
	value 			=	100;
	visual 			=	"ItAt_TrollTooth.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
	
	INV_ZBIAS		=	INVCAM_ENTF_RING_STANDARD;
};
instance ItAt_Wing (ItemPR_AnimalTrophy)
{
	name 			=	"Skrzyd�a";
	
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
	name 			=	"�uwaczki polnej bestii";
	
	value 			=	10;
	visual 			=	"ItAt_BugMandibles.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_CrawlerMandibles (ItemPR_AnimalTrophy)
{
	name 			=	"�uwaczki pe�zacza";
	
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
	name 			=	"P�yta pancerza pe�zacza";
	
	value 			=	20;
	visual 			=	"ItAt_CrawlerPlate.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DragonScale (ItemPR_AnimalTrophy)
{
	name 			=	"Smocze �uski";
	
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
	name 			=	"R�g cieniostwora";
	
	value 			=	200;
	visual 			=	"ItAt_ShadowHorn.3DS";
	
	description		= 	name;
	COUNT[5]		=	value;
};
instance ItAt_DrgSnapperHorn (ItemPR_AnimalTrophy)
{
	name 			=	"R�g smoczego z�bacza";
	
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
	name 			=	"Kamie� duszy smoka-o�ywie�ca";
	
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
	name 			=	"Jajo pe�zacza";
	
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
	name 			=	"Ko�� szkieletu";
	
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
	name 			=	"��d�o";
	
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
	name 			=	"J�zyk ognistego jaszczura";
	
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
