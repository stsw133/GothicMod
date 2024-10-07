///******************************************************************************************
/// B_GiveDeathInv
///******************************************************************************************
func void B_GiveDeathInv (var C_Npc slf)
{
	if (slf.aivar[AIV_DeathInvGiven])
	{
		return;
	};
	
	/// FUNC
	if (slf.aivar[AIV_MM_REAL_ID] == ID_INKBUG)					{	CreateInvItems (slf, ItAt_Ink			, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MUMMY)
	{
		if (Hlp_Random(2))										{	CreateInvItems (slf, ItMi_Emerald		, 1);	}
		else													{	CreateInvItems (slf, ItMi_Ruby			, 1);	};
	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)					{	CreateInvItems (slf, ItMi_Wood			, Hlp_Random(4));	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)					{	CreateInvItems (slf, ItPl_Mushroom_03	, Hlp_Random(2));	};
	
	/// ------ Blood ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Blood])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ALLIGATOR)				{	CreateInvItem (slf, ItAt_AlligatorBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BITER)					{	CreateInvItem (slf, ItAt_BiterBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)				{	CreateInvItem (slf, ItAt_BloodflyBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)				{	CreateInvItem (slf, ItAt_BloodhoundBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)					{	CreateInvItem (slf, ItAt_DemonBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItem (slf, ItAt_DrgSnapperBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)				{	CreateInvItem (slf, ItAt_FireWaranBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_BUG)				{	CreateInvItem (slf, ItAt_GiantBugBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_RAT)				{	CreateInvItem (slf, ItAt_GiantRatBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_SPIDER)			{	CreateInvItem (slf, ItAt_GiantSpiderBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)					{	CreateInvItem (slf, ItAt_GoatBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)					{	CreateInvItem (slf, ItAt_GoblinBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GORILLA)				{	CreateInvItem (slf, ItAt_GorillaBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)					{	CreateInvItem (slf, ItAt_HareBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_HARPY)					{	CreateInvItem (slf, ItAt_HarpyBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_KEILER)					{	CreateInvItem (slf, ItAt_KeilerBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)					{	CreateInvItem (slf, ItAt_LurkerBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)			{	CreateInvItem (slf, ItAt_MinecrawlerBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MOLERAT)				{	CreateInvItem (slf, ItAt_MoleratBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SCAVENGER)				{	CreateInvItem (slf, ItAt_ScavengerBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItem (slf, ItAt_ShadowbeastBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)					{	CreateInvItem (slf, ItAt_SheepBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)				{	CreateInvItem (slf, ItAt_SnapperBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SPINT)					{	CreateInvItem (slf, ItAt_SpintBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)				{	CreateInvItem (slf, ItAt_SwampsharkBlood);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)					{	CreateInvItem (slf, ItAt_TigerBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)					{	CreateInvItem (slf, ItAt_TrollBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)					{	CreateInvItem (slf, ItAt_WaranBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)					{	CreateInvItem (slf, ItAt_WargBlood);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)					{	CreateInvItem (slf, ItAt_WolfBlood);			};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)					{	CreateInvItems (slf, ItAt_DragonBlood	, 2);	};
	};
	
	/// ------ Bones ------
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SKELETON)			{	CreateInvItems (slf, ItAt_GoblinBone	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF_SKELETON)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)				{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_DARK)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_LORD)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST_SKELETON)	{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)				{	CreateInvItems (slf, ItAt_SkeletonSkull	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)			{	CreateInvItems (slf, ItAt_SkeletonSkull	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_DARK)			{	CreateInvItems (slf, ItAt_SkeletonSkull	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_LORD)			{	CreateInvItems (slf, ItAt_SkeletonSkull	, 1);	};
	
	/// ------ Claws ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Claws])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)					{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)				{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)				{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)					{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANTSNAPPER)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)				{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)					{	CreateInvItems (slf, ItAt_LurkerClaw	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)					{	CreateInvItems (slf, ItAt_DemonClaw		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD)				{	CreateInvItems (slf, ItAt_DemonClaw		, 1);	};
	};
	
	/// ------ Eggs ------
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SCAVENGER)				{	CreateInvItems (slf, ItAt_ScavengerEgg	, Hlp_Random(2));	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)		{	CreateInvItems (slf, ItAt_CrawlerEgg	, 1);	};
	
	/// ------ Feathers ------
	if (slf.aivar[AIV_MM_REAL_ID] == ID_HARPY)					{	CreateInvItems (slf, ItAt_HarpyFeathers	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_VAMPHARPY)				{	CreateInvItems (slf, ItAt_HarpyFeathers	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONHARPY)			{	CreateInvItems (slf, ItAt_HarpyFeathers	, 1);	};
	
	/// ------ Furs ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Furs])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)					{	CreateInvItems (slf, ItAt_GoatFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)					{	CreateInvItems (slf, ItAt_HareFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)					{	CreateInvItems (slf, ItAt_SheepFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_RAT)				{	CreateInvItems (slf, ItAt_GiantRatFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_JACKAL)					{	CreateInvItems (slf, ItAt_JackalFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_KEILER)					{	CreateInvItems (slf, ItAt_KeilerFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)					{	CreateInvItems (slf, ItAt_WolfFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)				{	CreateInvItems (slf, ItAt_IceWolfFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)					{	CreateInvItems (slf, ItAt_WargFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)				{	CreateInvItems (slf, ItAt_BloodhoundFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)					{	CreateInvItems (slf, ItAt_TigerFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_ShadowFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)					{	CreateInvItems (slf, ItAt_TrollFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)			{	CreateInvItems (slf, ItAt_TrollBlackFur	, 1);	};
	};
	
	/// ------ Hearts ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Hearts])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GARGOYLE)				{	CreateInvItems (slf, ItAt_GargoyleHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOLEM)					{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_AVATAR)					{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)					{	CreateInvItems (slf, ItAt_DemonHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD)				{	CreateInvItems (slf, ItAt_DemonHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)					{	CreateInvItems (slf, ItAt_DragonHeart	, 1);	};
	};
	
	/// ------ Horns ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Horns])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_ShadowHorn	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST_SKELETON)	{	CreateInvItems (slf, ItAt_ShadowHorn	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_DrgSnapperHorn, 2);	};
	};
	
	/// ------ Mandibles ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Mandibles])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_BUG)				{	CreateInvItems (slf, ItAt_BugMandibles	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)			{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)		{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)		{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
	};
	
	/// ------ Meat ------
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MEATBUG)				{	CreateInvItems (slf, ItFo_MeatbugFlesh	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)					{	CreateInvItems (slf, ItFoMuttonRaw		, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)					{	CreateInvItems (slf, ItFoMuttonRaw		, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)					{	CreateInvItems (slf, ItFoMuttonRaw		, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SPINT)					{	CreateInvItems (slf, ItFoMuttonRaw		, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_KEILER)					{	CreateInvItems (slf, ItFoMuttonRaw		, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SCAVENGER)				{	CreateInvItems (slf, ItFo_MeatBadRaw	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_JACKAL)					{	CreateInvItems (slf, ItFo_MeatBadRaw	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)					{	CreateInvItems (slf, ItFo_MeatBadRaw	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)				{	CreateInvItems (slf, ItFo_MeatBadRaw	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)					{	CreateInvItems (slf, ItFo_MeatBadRaw	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)					{	CreateInvItems (slf, ItFo_MeatBadRaw	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItFo_MeatBadRaw	, 1);	};
	
	/// ------ Plates ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Plates])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)		{	CreateInvItems (slf, ItAt_CrawlerPlate	, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)		{	CreateInvItems (slf, ItAt_CrawlerPlate	, 2);	};
	};
	
	/// ------ Scales ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Scales])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_DrgSnapperScale, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)					{	CreateInvItems (slf, ItAt_DragonScale	, 12);	};
	};
	
	/// ------ Skins ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Skins])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)					{	CreateInvItems (slf, ItAt_WaranSkin		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)				{	CreateInvItems (slf, ItAt_SnapperSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)					{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ALLIGATOR)				{	CreateInvItems (slf, ItAt_AlligatorSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)					{	CreateInvItems (slf, ItAt_RazorSkin		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)				{	CreateInvItems (slf, ItAt_FireWaranSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)				{	CreateInvItems (slf, ItAt_SharkSkin		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANTSNAPPER)			{	CreateInvItems (slf, ItAt_GiantSnapperSkin, 1);	};
	};
	
	/// ------ Stings ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Stings])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)				{	CreateInvItems (slf, ItAt_Sting			, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)				{	CreateInvItems (slf, ItAt_Poison		, 1);	};
	};
	
	/// ------ Teeth ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Teeth])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANTSNAPPER)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_KEILER)					{	CreateInvItems (slf, ItAt_KeilerTusk	, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)				{	CreateInvItems (slf, ItAt_SharkTeeth	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)					{	CreateInvItems (slf, ItAt_TrollTooth	, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)			{	CreateInvItems (slf, ItAt_TrollTooth	, 4);	};
	};
	
	/// ------ Tongues ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Tongues])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)				{	CreateInvItems (slf, ItAt_FirewaranTongue, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)					{	CreateInvItems (slf, ItAt_DragonTongue	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_SWAMP)			{	CreateInvItems (slf, ItAt_DragonTongue	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ROCK)			{	CreateInvItems (slf, ItAt_DragonTongue	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_FIRE)			{	CreateInvItems (slf, ItAt_DragonTongue	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_ICE)				{	CreateInvItems (slf, ItAt_DragonTongue	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_GOLD)			{	CreateInvItems (slf, ItAt_DragonTongue	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON_BLACK)			{	CreateInvItems (slf, ItAt_DragonTongue	, 1);	};
	};
	
	/// ------ Wings ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Wings])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)				{	CreateInvItems (slf, ItAt_Wing			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)				{	CreateInvItems (slf, ItAt_SwampdroneWing, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)					{	CreateInvItems (slf, ItAt_DemonWing		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD)				{	CreateInvItems (slf, ItAt_DemonWing		, 1);	};
	};
	
	slf.aivar[AIV_DeathInvGiven] = true;
};
