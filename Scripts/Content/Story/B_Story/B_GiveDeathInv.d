///******************************************************************************************
///	B_GiveDeathInv
///******************************************************************************************
func void B_GiveDeathInv (var C_NPC slf)
{
	if (slf.aivar[AIV_DeathInvGiven])
	{
		return;
	};
	
	/// ------ Furs ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Furs])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)					{	CreateInvItems (slf, ItAt_SheepFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)					{	CreateInvItems (slf, ItAt_GoatFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)					{	CreateInvItems (slf, ItAt_HareFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_JACKAL)					{	CreateInvItems (slf, ItAt_JackalFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_Keiler)					{	CreateInvItems (slf, ItAt_KeilerFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)					{	CreateInvItems (slf, ItAt_WolfFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)				{	CreateInvItems (slf, ItAt_IceWolfFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)					{	CreateInvItems (slf, ItAt_WargFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)					{	CreateInvItems (slf, ItAt_TigerFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_ShadowFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)					{	CreateInvItems (slf, ItAt_TrollFur		, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)			{	CreateInvItems (slf, ItAt_TrollBlackFur	, 1);	};
	};
	/// ------ Skins ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Skins])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)					{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)				{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)					{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)					{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)				{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ALLIGATOR)				{	CreateInvItems (slf, ItAt_LurkerSkin	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)				{	CreateInvItems (slf, ItAt_SharkSkin		, 1);	};
	};
	/// ------ Teeth ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Teeth])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)					{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MONSTERSNAPPER)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)				{	CreateInvItems (slf, ItAt_Teeth			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)				{	CreateInvItems (slf, ItAt_SharkTeeth	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)					{	CreateInvItems (slf, ItAt_TrollTooth	, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)			{	CreateInvItems (slf, ItAt_TrollTooth	, 4);	};
	};
	/// ------ Claws ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Claws])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)					{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)				{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)				{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)					{	CreateInvItems (slf, ItAt_Claw			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MONSTERSNAPPER)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)				{	CreateInvItems (slf, ItAt_Claw			, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)					{	CreateInvItems (slf, ItAt_LurkerClaw	, 1);	};
	};
	/// ------ Wings ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Wings])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)				{	CreateInvItems (slf, ItAt_Wing			, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPDRONE)				{	CreateInvItems (slf, ItAt_Wing			, 2);	};
	};
	/// ------ Stings ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Stings])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)				{	CreateInvItems (slf, ItAt_Sting			, 1);	};
	};
	/// ------ Mandibles ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Mandibles])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_BUG)				{	CreateInvItems (slf, ItAt_BugMandibles	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)			{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)		{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)		{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
	};
	/// ------ Horns ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Horns])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)			{	CreateInvItems (slf, ItAt_ShadowHorn	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)			{	CreateInvItems (slf, ItAt_DrgSnapperHorn, 2);	};
	};
	/// ------ Tongues ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Tongues])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)				{	CreateInvItems (slf, ItAt_WaranFiretongue, 1);	};
	};
	/// ------ Plates ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Plates])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)		{	CreateInvItems (slf, ItAt_CrawlerPlate	, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)		{	CreateInvItems (slf, ItAt_CrawlerPlate	, 2);	};
	};
	/// ------ Scales ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Scales])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)					{	CreateInvItems (slf, ItAt_DragonScale	, 12);	};
	};
	/// ------ Hearts ------
	if (PLAYER_TALENT_HUNTING[HUNTING_Hearts])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GARGOYLE)				{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOLEM)					{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_AVATAR)					{	CreateInvItems (slf, ItAt_GolemHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)					{	CreateInvItems (slf, ItAt_DemonHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD)				{	CreateInvItems (slf, ItAt_DemonHeart	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)					{	CreateInvItems (slf, ItAt_DragonHeart	, 1);	};
	};
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
	if (PLAYER_TALENT_HUNTING[HUNTING_Bones])
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SKELETON)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF_SKELETON)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)				{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_MAGE)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON_DARK)			{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST_SKELETON)	{	CreateInvItems (slf, ItAt_SkeletonBone	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)				{	CreateInvItems (slf, ItAt_SkeletonSkull	, 1);	};
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
	
	/// ------ Goblin ------
	if (slf.guild == GIL_GOBBO)
	{
		/// ------ Green ------
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Fish);				}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Potato);			};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_ForestBerry);		}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_PlaneBerry);		};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);		};
		}
		/// ------ Yellow ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_YELLOW)
		{
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Fish);				}
			else if (Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Rice);				};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_ForestBerry);		}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_PlaneBerry);		};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);		};
		}
		/// ------ Black ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)
		{
			if		(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_SilverRing);		}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_SilverNecklace);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Fish);				}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Banana);			};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_ForestBerry);		}
			else if (Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_PlaneBerry);		};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);		};
		}
		/// ------ Bandit ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BANDIT)
		{
			if		(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_GoldRing);			}
			else if	(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItMi_GoldNecklace);		};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Fish);				}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Chocolate);		};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Booze);			}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_Joint);			}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItPl_Cactus);			};
			
			if		(Hlp_Random(3) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);		};
		}
		/// ------ Warrior ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_WARRIOR)
		{
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_IronNugget);		}
			else if	(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItMi_GoldNugget_Addon);	};
			
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Fish);				}
			else if (Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItFo_Jam);				};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPo_Health_01);		};
			
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);		};
		}
		/// ------ Shaman ------
		else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SHAMAN)
		{
			if		(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItSc_LightHeal);		}
			else if	(Hlp_Random(5) == 0)	{	CreateInvItem (slf, ItSc_FireBolt);			};
			
			if		(Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItFo_Fish);				}
			else if (Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItFo_Honey);			};
			
			if		(Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Mana_Herb_01);		}
			else if (Hlp_Random(4) == 0)	{	CreateInvItem (slf, ItPl_Health_Herb_01);	};
			
			if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);		};
		};
		
		if		(Hlp_Random(50) < slf.level)	{	CreateInvItem (slf, ItPl_Mushroom_01);	}
		else if (Hlp_Random(50) < slf.level)	{	CreateInvItem (slf, ItPl_Mushroom_02);	}
		else if (Hlp_Random(50) < slf.level)	{	CreateInvItem (slf, ItPl_Mushroom_03);	}
		else if (Hlp_Random(50) < slf.level)	{	CreateInvItem (slf, ItPl_Mushroom_04);	};
		
		CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(0, slf.level+0));
	};
	/// ------ Orc ------
	if (slf.guild == GIL_ORC)
	{
		if		(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Health_01);	}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Booze);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItPo_Mana_01);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItAt_WolfFur);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItLSTorch);			}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItAt_Teeth);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Chocolate);	}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Jam);			}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItFo_Honey);		}
		else if	(Hlp_Random(2) == 0)	{	CreateInvItem (slf, ItMi_Alarmhorn);	};
		
		CreateInvItems (slf, ItMi_OrcCoin, Hlp_RandomRange(5, slf.level+10));
	};
	
	slf.aivar[AIV_DeathInvGiven] = true;
};
