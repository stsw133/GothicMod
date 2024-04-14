///******************************************************************************************
prototype ItemPR_AnimalTrophy (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI;
	material 				=	MAT_LEATHER;
	TEXT[5]					= 	NAME_Value;
};
///******************************************************************************************
/// Furs
///******************************************************************************************
instance ItAt_GoatFur (ItemPR_AnimalTrophy)
{
	name 					=	"Kozia sk�ra";
	value 					=	5;
	visual 					=	"ItAt_GoatFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_HareFur (ItemPR_AnimalTrophy)
{
	name 					=	"Zaj�cza sk�ra";
	value 					=	5;
	visual 					=	"ItAt_HareFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_SheepFur (ItemPR_AnimalTrophy)
{
	name 					=	"Owcza sk�ra";
	value 					=	5;
	visual 					=	"ItAt_SheepFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItAt_JackalFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra szakala";
	value 					=	5;
	visual 					=	"ItAt_JackalFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_KeilerFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra dzika";
	value 					=	10;
	visual 					=	"ItAt_KeilerFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_WolfFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra wilka";
	value 					=	10;
	visual 					=	"ItAt_WolfFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_IceWolfFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra lodowego wilka";
	value 					=	20;
	visual 					=	"ItAt_IceWolfFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_WargFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra warga";
	value 					=	30;
	visual 					=	"ItAt_WargFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_TigerFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra tygrysa";
	value 					=	100;
	visual 					=	"ItAt_TigerFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_ShadowFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra cieniostwora";
	value 					=	200;
	visual 					=	"ItAt_ShadowFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_TrollFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra trolla";
	value 					=	300;
	visual 					=	"ItAt_TrollFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_TrollBlackFur (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra czarnego trolla";
	value 					=	350;
	visual 					=	"ItAt_TrollBlackFur.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItAt_LurkerSkin (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra topielca";
	value 					=	15;
	visual 					=	"ItAt_LurkerSkin.3DS";
	
	description				= 	"Sk�ra topielca";
	COUNT[5]				=	value;
};
instance ItAt_SharkSkin (ItemPR_AnimalTrophy)
{
	name 					=	"Sk�ra b�otnego w�a";
	value 					=	150;
	visual 					=	"ItAt_SharkSkin.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
/// Claws
///******************************************************************************************
instance ItAt_Claw (ItemPR_AnimalTrophy)
{
	name 					=	"Pazury";
	value 					=	10;
	visual 					=	"ItAt_Claw.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_LurkerClaw (ItemPR_AnimalTrophy)
{
	name 					=	"Szpony topielca";
	value 					=	15;
	visual 					=	"ItAt_LurkerClaw.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Teeth
///******************************************************************************************
instance ItAt_Teeth (ItemPR_AnimalTrophy)
{
	name 					=	"Z�by";
	value 					=	10;
	visual 					=	"ItAt_Teeth.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_SharkTeeth (ItemPR_AnimalTrophy)
{
	name 					=	"K�y b�otnego w�a";
	value 					=	100;
	visual 					=	"ItAt_SharkTeeth.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_TrollTooth (ItemPR_AnimalTrophy)
{
	name 					=	"Kie� trolla";
	value 					=	100;
	visual 					=	"ItAt_TrollTooth.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
};
///******************************************************************************************
///	Wings & Feathers
///******************************************************************************************
instance ItAt_Wing (ItemPR_AnimalTrophy)
{
	name 					=	"Skrzyd�o";
	value 					=	5;
	visual 					=	"ItAt_Wing.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItAt_HarpyFeathers (ItemPR_AnimalTrophy)
{
	name 					=	"Pi�ra harpii";
	value 					=	25;
	visual 					=	"ItAt_HarpyFeathers.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Stings
///******************************************************************************************
instance ItAt_Sting (ItemPR_AnimalTrophy)
{
	name 					=	"��d�o";
	value 					=	15;
	visual 					=	"ItAt_Sting.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Tongues
///******************************************************************************************
instance ItAt_WaranFireTongue (ItemPR_AnimalTrophy)
{
	name 					=	"J�zyk ognistego jaszczura";
	value 					=	60;
	visual 					=	"ItAt_WaranFireTongue.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Mandibles
///******************************************************************************************
instance ItAt_BugMandibles (ItemPR_AnimalTrophy)
{
	name 					=	"�uwaczki polnej bestii";
	value 					=	10;
	visual 					=	"ItAt_BugMandibles.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_CrawlerMandibles (ItemPR_AnimalTrophy)
{
	name 					=	"�uwaczki pe�zacza";
	value 					=	20;
	visual 					=	"ItAt_CrawlerMandibles.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Plates & Scales
///******************************************************************************************
instance ItAt_CrawlerPlate (ItemPR_AnimalTrophy)
{
	name 					=	"P�yta pancerza pe�zacza";
	value 					=	40;
	visual 					=	"ItAt_CrawlerPlate.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItAt_DragonScale (ItemPR_AnimalTrophy)
{
	name 					=	"Smocze �uski";
	value 					=	200;
	visual 					=	"ItAt_DragonScale.3DS";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Horns
///******************************************************************************************
instance ItAt_ShadowHorn (ItemPR_AnimalTrophy)
{
	name 					=	"R�g cieniostwora";
	value 					=	200;
	visual 					=	"ItAt_ShadowHorn.3DS";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_DrgSnapperHorn (ItemPR_AnimalTrophy)
{
	name 					=	"R�g smoczego z�bacza";
	value 					=	100;
	visual 					=	"ItAt_DrgSnapperHorn.3DS";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Hearts
///******************************************************************************************
instance ItAt_GolemHeart (ItemPR_AnimalTrophy)
{
	name 					=	"Serce golema";
	value 					=	200;
	visual 					=	"ItAt_StoneGolemHeart.3DS";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_DemonHeart (ItemPR_AnimalTrophy)
{
	name 					=	"Serce demona";
	value 					=	300;
	visual 					=	"ItAt_DemonHeart.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_DragonHeart (ItemPR_AnimalTrophy)
{
	name 					=	"Serce smoka";
	value 					=	400;
	visual 					=	"ItAt_FireDragonHeart.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_UndeadDragonSoulStone (ItemPR_AnimalTrophy)
{
	name 					=	"Kamie� duszy smoka-o�ywie�ca";
	value 					=	500;
	visual 					=	"ItAt_UndeadDragonSoulStone.3DS";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};
///******************************************************************************************
///	Blood & Lubric
///******************************************************************************************
instance ItAt_AlligatorBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew aligatora";
};
instance ItAt_BiterBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew k�sacza";
};
instance ItAt_BloodflyBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew krwiopijcy";
};
instance ItAt_BloodhoundBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew krwawego ogara";
};
instance ItAt_DemonBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew demona";
};
instance ItAt_DrgSnapperBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew smoczego z�bacza";
};
instance ItAt_FireWaranBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew ognistego jaszczura";
};
instance ItAt_GiantBugBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew polnej bestii";
};
instance ItAt_GiantRatBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew olbrzymiego szczura";
};
instance ItAt_GiantSpiderBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew olbrzymiego paj�ka";
};
instance ItAt_GoatBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew kozy";
};
instance ItAt_GoblinBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew goblina";
};
instance ItAt_GorillaBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew goryla";
};
instance ItAt_HareBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew zaj�ca";
};
instance ItAt_HarpyBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew harpii";
};
instance ItAt_KeilerBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew dzika";
};
instance ItAt_LurkerBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew topielca";
};
instance ItAt_MinecrawlerBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew pe�zacza";
};
instance ItAt_MoleratBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew kretoszczura";
};
instance ItAt_ScavengerBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew �cierwojada";
};
instance ItAt_ShadowbeastBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew cieniostwora";
};
instance ItAt_SheepBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew owcy";
};
instance ItAt_SnapperBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew z�bacza";
};
instance ItAt_SpintBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew spinta";
};
instance ItAt_SwampsharkBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew b�otnego w�a";
};
instance ItAt_TigerBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew tygrysa";
};
instance ItAt_TrollBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew trolla";
};
instance ItAt_WaranBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew jaszczura";
};
instance ItAt_WargBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew warga";
};
instance ItAt_WolfBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Krew";
	visual 					=	"ItAt_DragonBlood.3DS";
	description				= 	"Krew wilka";
};
///******************************************************************************************
instance ItAt_DragonBlood (ItemPR_AnimalTrophy)
{
	name 					=	"Smocza krew";
	value 					=	100;
	visual 					=	"ItAt_DragonBlood.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItAt_MoleratLubric (ItemPR_AnimalTrophy)
{
	name 					=	"��j kretoszczura";
	value 					=	15;
	visual 					=	"ItMi_MoleratLubric.3DS";
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Bones
///******************************************************************************************
instance ItAt_SkeletonBone (ItemPR_AnimalTrophy)
{
	name 					=	"Ko�� nieumar�ego";
	value 					=	15;
	visual 					=	"ItAt_SkeletonBone.3DS";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_SkeletonSkull (ItemPR_AnimalTrophy)
{
	name 					=	"Czaszka szkieleta-lorda";
	value 					=	30;
	visual 					=	"DT_SKELETON_V01_HEAD.3ds";
	material 				=	MAT_STONE;
	
	description				= 	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
///	Eggs
///******************************************************************************************
instance ItAt_CrawlerEgg (ItemPR_AnimalTrophy)
{	
	name 					=	"Jajo pe�zacza";
	value 					=	100;
	visual 					=	"ItAt_CrawlerEgg.3ds";
	
	description				= 	name;
	COUNT[5]				=	value;
};
instance ItAt_DragonEgg_MIS	(ItemPR_AnimalTrophy)
{	
	name 					=	"Smocze jajo";
	value 					=	400;
	visual 					=	"ItAt_DragonEgg.3ds";
	
	description				= 	name;
	COUNT[5]				=	value;
};
