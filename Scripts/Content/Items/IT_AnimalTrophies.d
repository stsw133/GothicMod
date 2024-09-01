///******************************************************************************************
prototype ItemPR_AnimalTrophy (C_Item)
{
	mainflag				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	material				=	MAT_LEATHER;
	TEXT[5]					=	NAME_Value;
};

///******************************************************************************************
///	Blood
///******************************************************************************************
prototype ItemPR_AnimalBlood (C_Item)
{
	name					=	"Krew";
	mainflag				=	ITEM_KAT_NONE;
	flags					=	ITEM_MULTI;
	
	visual					=	"ItAt_Blood.3DS";
	material				=	MAT_LEATHER;
};

instance ItAt_AlligatorBlood (ItemPR_AnimalBlood)	{ description = "Krew aligatora"; };
instance ItAt_BiterBlood (ItemPR_AnimalBlood)		{ description = "Krew k¹sacza"; };
instance ItAt_BloodflyBlood (ItemPR_AnimalBlood)	{ description = "Krew krwiopijcy"; };
instance ItAt_BloodhoundBlood (ItemPR_AnimalBlood)	{ description = "Krew krwawego ogara"; };
instance ItAt_DemonBlood (ItemPR_AnimalBlood)		{ description = "Krew demona"; };
instance ItAt_DrgSnapperBlood (ItemPR_AnimalBlood)	{ description = "Krew smoczego zêbacza"; };
instance ItAt_FireWaranBlood (ItemPR_AnimalBlood)	{ description = "Krew ognistego jaszczura"; };
instance ItAt_GiantBugBlood (ItemPR_AnimalBlood)	{ description = "Krew polnej bestii"; };
instance ItAt_GiantRatBlood (ItemPR_AnimalBlood)	{ description = "Krew olbrzymiego szczura"; };
instance ItAt_GiantSpiderBlood (ItemPR_AnimalBlood)	{ description = "Krew olbrzymiego paj¹ka"; };
instance ItAt_GoatBlood (ItemPR_AnimalBlood)		{ description = "Krew kozy"; };
instance ItAt_GoblinBlood (ItemPR_AnimalBlood)		{ description = "Krew goblina"; };
instance ItAt_GorillaBlood (ItemPR_AnimalBlood)		{ description = "Krew goryla"; };
instance ItAt_HareBlood (ItemPR_AnimalBlood)		{ description = "Krew zaj¹ca"; };
instance ItAt_HarpyBlood (ItemPR_AnimalBlood)		{ description = "Krew harpii"; };
instance ItAt_KeilerBlood (ItemPR_AnimalBlood)		{ description = "Krew dzika"; };
instance ItAt_LurkerBlood (ItemPR_AnimalBlood)		{ description = "Krew topielca"; };
instance ItAt_MinecrawlerBlood (ItemPR_AnimalBlood)	{ description = "Krew pe³zacza"; };
instance ItAt_MoleratBlood (ItemPR_AnimalBlood)		{ description = "Krew kretoszczura"; };
instance ItAt_ScavengerBlood (ItemPR_AnimalBlood)	{ description = "Krew œcierwojada"; };
instance ItAt_ShadowbeastBlood (ItemPR_AnimalBlood)	{ description = "Krew cieniostwora"; };
instance ItAt_SheepBlood (ItemPR_AnimalBlood)		{ description = "Krew owcy"; };
instance ItAt_SnapperBlood (ItemPR_AnimalBlood)		{ description = "Krew zêbacza"; };
instance ItAt_SpintBlood (ItemPR_AnimalBlood)		{ description = "Krew spinta"; };
instance ItAt_SwampsharkBlood (ItemPR_AnimalBlood)	{ description = "Krew b³otnego wê¿a"; };
instance ItAt_TigerBlood (ItemPR_AnimalBlood)		{ description = "Krew tygrysa"; };
instance ItAt_TrollBlood (ItemPR_AnimalBlood)		{ description = "Krew trolla"; };
instance ItAt_WaranBlood (ItemPR_AnimalBlood)		{ description = "Krew jaszczura"; };
instance ItAt_WargBlood (ItemPR_AnimalBlood)		{ description = "Krew warga"; };
instance ItAt_WolfBlood (ItemPR_AnimalBlood)		{ description = "Krew wilka"; };

///******************************************************************************************
instance ItAt_DragonBlood (ItemPR_AnimalTrophy)
{
	name					=	"Smocza krew";
	value					=	100;
	visual					=	"ItAt_DragonBlood.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Bones
///******************************************************************************************
instance ItAt_GoblinBone (ItemPR_AnimalTrophy)
{
	name					=	"Koœæ goblina";
	value					=	5;
	visual					=	"ItAt_GoblinBone.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_SkeletonBone (ItemPR_AnimalTrophy)
{
	name					=	"Koœæ nieumar³ego";
	value					=	5;
	visual					=	"ItAt_SkeletonBone.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_SkeletonSkull (ItemPR_AnimalTrophy)
{
	name					=	"Czaszka nieumar³ego";
	value					=	15;
	visual					=	"DT_SKELETON_V01_HEAD.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
/// Claws
///******************************************************************************************
instance ItAt_Claw (ItemPR_AnimalTrophy)
{
	name					=	"Pazury";
	value					=	10;
	visual					=	"ItAt_Claw.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_LurkerClaw (ItemPR_AnimalTrophy)
{
	name					=	"Szpon topielca";
	value					=	15;
	visual					=	"ItAt_LurkerClaw.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DemonClaw (ItemPR_AnimalTrophy)
{
	name					=	"Szpon demona";
	value					=	50;
	visual					=	"ItAt_DemonClaw.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Eggs
///******************************************************************************************
instance ItAt_ScavengerEgg (ItemPR_AnimalTrophy)
{	
	name					=	"Jajo œcierwojada";
	value					=	10;
	visual					=	"ItAt_ScavengerEgg.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_CrawlerEgg (ItemPR_AnimalTrophy)
{	
	name					=	"Jajo pe³zacza";
	value					=	100;
	visual					=	"ItAt_CrawlerEgg.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DragonEgg_MIS	(ItemPR_AnimalTrophy)
{	
	name					=	"Smocze jajo";
	value					=	400;
	visual					=	"ItAt_DragonEgg.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
/// Feathers
///******************************************************************************************
instance ItAt_HarpyFeathers (ItemPR_AnimalTrophy)
{
	name					=	"Pióra harpii";
	value					=	25;
	visual					=	"ItAt_HarpyFeathers.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
/// Furs
///******************************************************************************************
instance ItAt_GoatFur (ItemPR_AnimalTrophy)
{
	name					=	"Kozia skóra";
	value					=	10;
	visual					=	"ItAt_GoatFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_HareFur (ItemPR_AnimalTrophy)
{
	name					=	"Zajêcza skóra";
	value					=	10;
	visual					=	"ItAt_HareFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_SheepFur (ItemPR_AnimalTrophy)
{
	name					=	"Owcza skóra";
	value					=	10;
	visual					=	"ItAt_SheepFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItAt_GiantRatFur (ItemPR_AnimalTrophy)
{
	name					=	"Szczurza skóra";
	value					=	5;
	visual					=	"ItAt_GiantRatFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_JackalFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra szakala";
	value					=	5;
	visual					=	"ItAt_JackalFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_KeilerFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra dzika";
	value					=	10;
	visual					=	"ItAt_KeilerFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_WolfFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra wilka";
	value					=	10;
	visual					=	"ItAt_WolfFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_IceWolfFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra lodowego wilka";
	value					=	20;
	visual					=	"ItAt_IceWolfFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_WargFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra warga";
	value					=	30;
	visual					=	"ItAt_WargFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_BloodhoundFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra krwawego ogara";
	value					=	50;
	visual					=	"ItAt_BloodhoundFur.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_TigerFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra tygrysa";
	value					=	100;
	visual					=	"ItAt_TigerFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_ShadowFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra cieniostwora";
	value					=	200;
	visual					=	"ItAt_ShadowFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_TrollFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra trolla";
	value					=	300;
	visual					=	"ItAt_TrollFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_TrollBlackFur (ItemPR_AnimalTrophy)
{
	name					=	"Skóra czarnego trolla";
	value					=	350;
	visual					=	"ItAt_TrollBlackFur.3ds";
	
	scemeName				=	"FASTUSE";
	on_state[0]				=	MOBSI_UseFur_S1;
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Hearts
///******************************************************************************************
instance ItAt_GargoyleHeart (ItemPR_AnimalTrophy)
{
	name					=	"Serce gargulca";
	value					=	100;
	visual					=	"ItAt_StoneGolemHeart.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_GolemHeart (ItemPR_AnimalTrophy)
{
	name					=	"Serce golema";
	value					=	200;
	visual					=	"ItAt_StoneGolemHeart.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DemonHeart (ItemPR_AnimalTrophy)
{
	name					=	"Serce demona";
	value					=	300;
	visual					=	"ItAt_DemonHeart.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DragonHeart (ItemPR_AnimalTrophy)
{
	name					=	"Serce smoka";
	value					=	400;
	visual					=	"ItAt_FireDragonHeart.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_UndeadDragonSoulStone (ItemPR_AnimalTrophy)
{
	name					=	"Kamieñ duszy smoka-o¿ywieñca";
	value					=	500;
	visual					=	"ItAt_UndeadDragonSoulStone.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_MISC_STANDARD;
};

///******************************************************************************************
///	Horns
///******************************************************************************************
instance ItAt_ShadowHorn (ItemPR_AnimalTrophy)
{
	name					=	"Róg cieniostwora";
	value					=	200;
	visual					=	"ItAt_ShadowHorn.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DrgSnapperHorn (ItemPR_AnimalTrophy)
{
	name					=	"Róg smoczego zêbacza";
	value					=	100;
	visual					=	"ItAt_DrgSnapperHorn.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Lubric
///******************************************************************************************
instance ItAt_MoleratLubric (ItemPR_AnimalTrophy)
{
	name					=	"£ój kretoszczura";
	value					=	15;
	visual					=	"ItMi_MoleratLubric.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Mandibles
///******************************************************************************************
instance ItAt_BugMandibles (ItemPR_AnimalTrophy)
{
	name					=	"¯uwaczki polnej bestii";
	value					=	10;
	visual					=	"ItAt_BugMandibles.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_CrawlerMandibles (ItemPR_AnimalTrophy)
{
	name					=	"¯uwaczki pe³zacza";
	value					=	20;
	visual					=	"ItAt_CrawlerMandibles.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Plates
///******************************************************************************************
instance ItAt_CrawlerPlate (ItemPR_AnimalTrophy)
{
	name					=	"P³yta pancerza pe³zacza";
	value					=	40;
	visual					=	"ItAt_CrawlerPlate.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Scales
///******************************************************************************************
instance ItAt_DrgSnapperScale (ItemPR_AnimalTrophy)
{
	name					=	"£uski smoczego zêbacza";
	value					=	40;
	visual					=	"ItAt_DrgSnapperScale.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DragonScale (ItemPR_AnimalTrophy)
{
	name					=	"Smocze ³uski";
	value					=	200;
	visual					=	"ItAt_DragonScale.3ds";
	material				=	MAT_STONE;
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
/// Skins
///******************************************************************************************
instance ItAt_WaranSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra jaszczura";
	value					=	10;
	visual					=	"ItAt_WaranSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_SnapperSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra zêbacza";
	value					=	15;
	visual					=	"ItAt_SnapperSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_LurkerSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra topielca";
	value					=	25;
	visual					=	"ItAt_LurkerSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_AlligatorSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra aligatora";
	value					=	30;
	visual					=	"ItAt_AlligatorSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_RazorSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra brzytwiaka";
	value					=	30;
	visual					=	"ItAt_RazorSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_FirewaranSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra ognistego jaszczura";
	value					=	50;
	visual					=	"ItAt_FirewaranSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_SharkSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra b³otnego wê¿a";
	value					=	150;
	visual					=	"ItAt_SharkSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_GiantSnapperSkin (ItemPR_AnimalTrophy)
{
	name					=	"Skóra olbrzymiego zêbacza";
	value					=	250;
	visual					=	"ItAt_GiantSnapperSkin.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Stings & Secretion
///******************************************************************************************
instance ItAt_Sting (ItemPR_AnimalTrophy)
{
	name					=	"¯¹d³o";
	value					=	20;
	visual					=	"ItAt_Sting.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
///******************************************************************************************
instance ItAt_Ink (ItemPR_AnimalTrophy)
{
	name					=	"Atrament";
	value					=	10;
	visual					=	"ItAt_Ink.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_Poison (ItemPR_AnimalTrophy)
{
	name					=	"Truj¹ca wydzielina";
	value					=	20;
	visual					=	"ItAt_Poison.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Teeth
///******************************************************************************************
instance ItAt_Teeth (ItemPR_AnimalTrophy)
{
	name					=	"Zêby";
	value					=	10;
	visual					=	"ItAt_Teeth.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_KeilerTusk (ItemPR_AnimalTrophy)
{
	name					=	"Kie³ dzika";
	value					=	15;
	visual					=	"ItAt_KeilerTusk.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_SharkTeeth (ItemPR_AnimalTrophy)
{
	name					=	"K³y b³otnego wê¿a";
	value					=	100;
	visual					=	"ItAt_SharkTeeth.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_TrollTooth (ItemPR_AnimalTrophy)
{
	name					=	"Kie³ trolla";
	value					=	100;
	visual					=	"ItAt_TrollTooth.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
	INV_ZBIAS				=	INVCAM_ENTF_RING_STANDARD;
};

///******************************************************************************************
///	Tongues
///******************************************************************************************
instance ItAt_FirewaranTongue (ItemPR_AnimalTrophy)
{
	name					=	"Jêzyk ognistego jaszczura";
	value					=	50;
	visual					=	"ItAt_FirewaranTongue.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DragonTongue (ItemPR_AnimalTrophy)
{
	name					=	"Jêzyk smoka";
	value					=	100;
	visual					=	"ItAt_FirewaranTongue.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};

///******************************************************************************************
///	Wings
///******************************************************************************************
instance ItAt_Wing (ItemPR_AnimalTrophy)
{
	name					=	"Skrzyd³o";
	value					=	5;
	visual					=	"ItAt_Wing.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_SwampdroneWing (ItemPR_AnimalTrophy)
{
	name					=	"Skrzyd³o trutnia";
	value					=	10;
	visual					=	"ItAt_SwampdroneWing.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
instance ItAt_DemonWing (ItemPR_AnimalTrophy)
{
	name					=	"Skrzyd³o demona";
	value					=	50;
	visual					=	"ItAt_DemonWing.3ds";
	
	description				=	name;
	COUNT[5]				=	value;
};
