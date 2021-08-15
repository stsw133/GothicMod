///******************************************************************************************
///	B_GiveDeathInv
///******************************************************************************************
func void B_GiveDeathInv (var C_NPC slf)
{
	if (slf.aivar[AIV_DeathInvGiven])
	{
		return;
	};
	
	if (PLAYER_TALENT_HUNTING[HUNTING_Furs])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)				{	CreateInvItems (slf, ItAt_SheepFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)				{	CreateInvItems (slf, ItAt_GoatFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)				{	CreateInvItems (slf, ItAt_HareFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)				{	CreateInvItems (slf, ItAt_WolfFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)			{	CreateInvItems (slf, ItAt_WolfFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_JACKAL)				{	CreateInvItems (slf, ItAt_JackalFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_Keiler)				{	CreateInvItems (slf, ItAt_KeilerFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)				{	CreateInvItems (slf, ItAt_WargFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)				{	CreateInvItems (slf, ItAt_TigerFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_ShadowFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)				{	CreateInvItems (slf, ItAt_TrollFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)		{	CreateInvItems (slf, ItAt_TrollBlackFur	, 1);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Skins])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)				{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)			{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)				{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)		{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)				{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)			{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ALLIGATOR)			{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)			{	CreateInvItems (slf, ItAt_SharkSkin		, 1);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Teeth])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)		{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MONSTERSNAPPER)		{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)			{	CreateInvItems (slf, ItAt_SharkTeeth	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)				{	CreateInvItems (slf, ItAt_TrollTooth	, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)		{	CreateInvItems (slf, ItAt_TrollTooth	, 4);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Claws])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)				{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)			{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)				{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)		{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MONSTERSNAPPER)		{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)				{	CreateInvItems (slf, ItAt_LurkerClaw	, 1);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Wings])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)			{	CreateInvItems (slf, ItAt_Wing			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)			{	CreateInvItems (slf, ItAt_Wing			, 2);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Stings])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)			{	CreateInvItems (slf, ItAt_Sting			, 1);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Mandibles])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_BUG)			{	CreateInvItems (slf, ItAt_BugMandibles	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)		{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)	{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)	{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Horns])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_ShadowHorn	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)		{	CreateInvItems (slf, ItAt_DrgSnapperHorn, 2);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Tongues])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)			{	CreateInvItems (slf, ItAt_WaranFiretongue, 1);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Plates])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)	{	CreateInvItems (slf, ItAt_CrawlerPlate	, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)	{	CreateInvItems (slf, ItAt_CrawlerPlate	, 2);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Scales])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)				{	CreateInvItems (slf, ItAt_DragonScale	, 12);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Hearts])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GARGOYLE)			{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOLEM)				{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_AVATAR)				{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)				{	CreateInvItems (slf, ItAt_DemonHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD)			{	CreateInvItems (slf, ItAt_DemonHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)				{	CreateInvItems (slf, ItAt_DragonHeart	, 1);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Blood])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)				{	CreateInvItems (slf, ItAt_DragonBlood	, 2);	};
	};
	if (PLAYER_TALENT_HUNTING[HUNTING_Bones])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SKELETON)		{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)			{	CreateInvItems (slf, ItAt_SkeletonSkull	, 1);	};
	};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MEATBUG)				{	CreateInvItems (slf, ItFo_MeatbugFlesh	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_INKBUG)					{	CreateInvItems (slf, ItMi_Ink			, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_HARPY)					{	CreateInvItems (slf, ItAt_HarpyFeather	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_VAMPHARPY)				{	CreateInvItems (slf, ItAt_HarpyFeather	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONHARPY)			{	CreateInvItems (slf, ItAt_HarpyFeather	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MUMMY)					{	CreateInvItems (slf, ItMi_Ruby			, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)					{	CreateInvItems (slf, ItMi_Wood			, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)					{	CreateInvItems (slf, ItPl_Mushroom_03	, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)		{	CreateInvItems (slf, ItAt_CrawlerEgg	, 1);	};
	
	slf.aivar[AIV_DeathInvGiven] = true;
};
