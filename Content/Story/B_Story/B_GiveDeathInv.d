///******************************************************************************************
///	B_GiveDeathInv
///******************************************************************************************
func void B_GiveDeathInv (var C_NPC slf)
{
	if (slf.aivar[AIV_DeathInvGiven] == true)
	{
		return;
	};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)				{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)				{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)				{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SCAVENGER)			{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_RAT)			{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)			{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)				{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)				{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)				{	CreateInvItems (slf, ItFoMuttonRaw, 1);			};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SPINT)				{	CreateInvItems (slf, ItFoMuttonRaw, 2);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_KEILER)				{	CreateInvItems (slf, ItFoMuttonRaw, 2);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MOLERAT)			{	CreateInvItems (slf, ItFoMuttonRaw, 2);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItFoMuttonRaw, 2);			};
	
	if (Npc_GetTalentSkill(hero,NPC_TALENT_HUNTING) >= 1)
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)				{	CreateInvItems (slf, ItAt_SheepFur, 1);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)				{	CreateInvItems (slf, ItAt_GoatFur, 1);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)				{	CreateInvItems (slf, ItAt_HareFur, 1);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)				{	CreateInvItems (slf, ItAt_WolfFur, 1);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_JACKAL)				{	CreateInvItems (slf, ItAt_JackalFur, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_KEILER)				{	CreateInvItems (slf, ItAt_KeilerFur, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)				{	CreateInvItems (slf, ItAt_TigerFur, 1);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)				{	CreateInvItems (slf, ItAt_WargFur, 1);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_ShadowFur, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)				{	CreateInvItems (slf, ItAt_TrollFur, 1);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)		{	CreateInvItems (slf, ItAt_TrollBlackFur, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)				{	CreateInvItems (slf, ItAt_Claw, 2);				};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)			{	CreateInvItems (slf, ItAt_Claw, 2);				};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)				{	CreateInvItems (slf, ItAt_Claw, 2);				};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)				{	CreateInvItems (slf, ItAt_Claw, 4);				};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_Claw, 4);				};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)		{	CreateInvItems (slf, ItAt_Claw, 4);				};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)				{	CreateInvItems (slf, ItAt_Teeth, 2);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)			{	CreateInvItems (slf, ItAt_Teeth, 2);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)				{	CreateInvItems (slf, ItAt_Teeth, 2);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)				{	CreateInvItems (slf, ItAt_Teeth, 2);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)				{	CreateInvItems (slf, ItAt_Teeth, 2);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_Teeth, 2);			};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)		{	CreateInvItems (slf, ItAt_Teeth, 2);			};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_BUG)			{	CreateInvItems (slf, ItAt_BugMandibles, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)		{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)	{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)				{	CreateInvItems (slf, ItAt_WaranTongue, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)				{	CreateInvItems (slf, ItAt_LurkerClaw, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)			{	CreateInvItems (slf, ItAt_Sting, 1);			};
	};
	if (Npc_GetTalentSkill(hero,NPC_TALENT_HUNTING) >= 2)
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)	{	CreateInvItems (slf, ItAt_CrawlerPlate, 2);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)	{	CreateInvItems (slf, ItAt_CrawlerPlate, 4);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)				{	CreateInvItems (slf, ItAt_DragonScale, 12);		};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)		{	CreateInvItems (slf, ItAt_ShadowHorn, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)		{	CreateInvItems (slf, ItAt_DrgSnapperHorn, 2); 	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOLEM)				{	CreateInvItems (slf, ItAt_GolemHeart, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_AVATAR)				{	CreateInvItems (slf, ItAt_GolemHeart, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)				{	CreateInvItems (slf, ItAt_DemonHeart, 1);		};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)				{	CreateInvItems (slf, ItAt_DragonHeart, 1);		};
	};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)			{	CreateInvItems (slf, ItAt_Skull, 1);			};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)				{	CreateInvItems (slf, ItMi_Wood, 2);				};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)				{	CreateInvItems (slf, ItPl_Mushroom_03, 1);		};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)	{	CreateInvItems (slf, ItAt_CrawlerEgg, 1);		};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)				{	CreateInvItems (slf, ItAt_DragonBlood, 2);		};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BANDIT)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_WARRIOR)
	{
		if (Hlp_Random(25) == 0)	{	CreateInvItem (slf, ItMi_SilverRing);	};
		if (Hlp_Random(20) == 0)	{	CreateInvItem (slf, ItMi_FortuneCoin);	};
		if (Hlp_Random(15) == 0)	{	CreateInvItem (slf, ItPl_Mushroom_03);	};
		if (Hlp_Random(10) == 0)	{	CreateInvItem (slf, ItFo_Fish);			};
		if (Hlp_Random(5) == 0)		{	CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(1,slf.level));	};
	};
	
	slf.aivar[AIV_DeathInvGiven] = true;
};
