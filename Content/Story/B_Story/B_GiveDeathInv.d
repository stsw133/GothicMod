///******************************************************************************************
///	B_GiveDeathInv
///******************************************************************************************
func void B_GiveDeathInv (var C_NPC slf)
{
	if (slf.aivar[AIV_DeathInvGiven])
	{
		return;
	};
	
	if (Npc_GetTalentSkill(hero, NPC_TALENT_HUNTING) >= 1)
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHEEP)			{	CreateInvItems (slf, ItAt_SheepFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOAT)			{	CreateInvItems (slf, ItAt_GoatFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_HARE)			{	CreateInvItems (slf, ItAt_HareFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)			{	CreateInvItems (slf, ItAt_WolfFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)		{	CreateInvItems (slf, ItAt_WolfFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_JACKAL)			{	CreateInvItems (slf, ItAt_JackalFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_Keiler)			{	CreateInvItems (slf, ItAt_KeilerFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)			{	CreateInvItems (slf, ItAt_WargFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)			{	CreateInvItems (slf, ItAt_TigerFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)	{	CreateInvItems (slf, ItAt_ShadowFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)			{	CreateInvItems (slf, ItAt_TrollFur	, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)	{	CreateInvItems (slf, ItAt_TrollBlackFur, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)			{	CreateInvItems (slf, ItAt_LurkerSkin, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)		{	CreateInvItems (slf, ItAt_LurkerSkin, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)			{	CreateInvItems (slf, ItAt_LurkerSkin, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)	{	CreateInvItems (slf, ItAt_LurkerSkin, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)			{	CreateInvItems (slf, ItAt_LurkerSkin, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)		{	CreateInvItems (slf, ItAt_LurkerSkin, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)		{	CreateInvItems (slf, ItAt_SharkSkin	, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WOLF)			{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_ICEWOLF)		{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARG)			{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TIGER)			{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)		{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)	{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)			{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)	{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)		{	CreateInvItems (slf, ItAt_Teeth		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SWAMPSHARK)		{	CreateInvItems (slf, ItAt_SharkTeeth, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL)			{	CreateInvItems (slf, ItAt_TrollTooth, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_TROLL_BLACK)	{	CreateInvItems (slf, ItAt_TrollTooth, 4);	};
	};
	if (Npc_GetTalentSkill(hero, NPC_TALENT_HUNTING) >= 2)
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_WARAN)			{	CreateInvItems (slf, ItAt_Claw		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)		{	CreateInvItems (slf, ItAt_Claw		, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SNAPPER)		{	CreateInvItems (slf, ItAt_Claw		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_RAZOR)			{	CreateInvItems (slf, ItAt_Claw		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)	{	CreateInvItems (slf, ItAt_Claw		, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)	{	CreateInvItems (slf, ItAt_Claw		, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODHOUND)		{	CreateInvItems (slf, ItAt_Claw		, 4);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_LURKER)			{	CreateInvItems (slf, ItAt_LurkerClaw, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)		{	CreateInvItems (slf, ItAt_Wing		, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_BLOODFLY)		{	CreateInvItems (slf, ItAt_Sting		, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GIANT_BUG)		{	CreateInvItems (slf, ItAt_BugMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)	{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)	{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)	{	CreateInvItems (slf, ItAt_CrawlerMandibles, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLER)	{	CreateInvItems (slf, ItAt_CrawlerPlate, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERWARRIOR)	{	CreateInvItems (slf, ItAt_CrawlerPlate, 2);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)	{	CreateInvItems (slf, ItAt_CrawlerPlate, 2);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_SHADOWBEAST)	{	CreateInvItems (slf, ItAt_ShadowHorn, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGONSNAPPER)	{	CreateInvItems (slf, ItAt_DrgSnapperHorn, 2);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_FIREWARAN)		{	CreateInvItems (slf, ItAt_WaranFiretongue, 1);	};
	};
	if (Npc_GetTalentSkill(hero, NPC_TALENT_HUNTING) >= 3)
	{
		if (slf.aivar[AIV_MM_REAL_ID] == ID_GOLEM)			{	CreateInvItems (slf, ItAt_GolemHeart, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_AVATAR)			{	CreateInvItems (slf, ItAt_GolemHeart, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON)			{	CreateInvItems (slf, ItAt_DemonHeart, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DEMON_LORD)		{	CreateInvItems (slf, ItAt_DemonHeart, 1);	};
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)			{	CreateInvItems (slf, ItAt_DragonHeart, 1);	};
		
		if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)			{	CreateInvItems (slf, ItAt_DragonScale, 12);	};
	};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_SKELETON)		{	CreateInvItems (slf, ItAt_SkeletonBone, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)			{	CreateInvItems (slf, ItAt_SkeletonBone, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_SKELETON)			{	CreateInvItems (slf, ItAt_Skull		, 1);	};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)				{	CreateInvItems (slf, ItMi_Wood		, 2);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_TREANT)				{	CreateInvItems (slf, ItPl_Mushroom_03, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_MINECRAWLERQUEEN)	{	CreateInvItems (slf, ItAt_CrawlerEgg, 1);	};
	if (slf.aivar[AIV_MM_REAL_ID] == ID_DRAGON)				{	CreateInvItems (slf, ItAt_DragonBlood, 2);	};
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BANDIT)
	|| (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_WARRIOR)
	{
		if (Hlp_Random(25) == 0)		{	CreateInvItem (slf, ItMi_SilverRing);							};
		if (Hlp_Random(20) == 0)		{	CreateInvItem (slf, ItMi_FortuneCoin);							};
		if (Hlp_Random(15) == 0)		{	CreateInvItem (slf, ItPl_Mushroom_01);							};
		if (Hlp_Random(10) == 0)		{	CreateInvItem (slf, ItFo_Fish);									};
		if (Hlp_Random(5) == 0)		{	CreateInvItems (slf, ItMi_Gold, Hlp_RandomRange(1, slf.level));	};
	};
	/*
	var int GoblinGreen_Randomizer; GoblinGreen_Randomizer = Hlp_Random(100);
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)	
	&& (GoblinGreen_Randomizer == 0) 					{	CreateInvItems (slf, ItMi_SilverRing	, 1);	}

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)		
	&& (GoblinGreen_Randomizer <= 5) 					{	CreateInvItems (slf, ItPl_Mushroom_01	, 1);	}

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)		
	&& (GoblinGreen_Randomizer <= 15) 					{	CreateInvItems (slf, Itmi_Gold	, 5);	}

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)		
	&& (GoblinGreen_Randomizer <= 30) 					{	CreateInvItems (slf, ItFo_Fish	, 1);	}

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO)		
	&& (GoblinGreen_Randomizer <= 50)					{	CreateInvItems (slf, ItMi_Gold	, 2);	};
	
	
	// ------ Gobbo Black Inventory ------
	var int GoblinBlack_Randomizer; GoblinBlack_Randomizer = Hlp_Random(100);
	
	if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)	
	&& (GoblinBlack_Randomizer == 0) 					{	CreateInvItems (slf, ItMi_GoldRing	, 1);	}

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)		
	&& (GoblinBlack_Randomizer <= 5) 					{	CreateInvItems (slf, ItFo_Fish	, 1);	}	//CreateInvItems (slf, ItPl_Dex_Herb_01	, 1);

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)		
	&& (GoblinBlack_Randomizer <= 15) 					{	CreateInvItems (slf, Itmi_Gold	, 10);	}

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)		
	&& (GoblinBlack_Randomizer <= 30) 					{	CreateInvItems (slf, ItPl_Mushroom_02	, 1);	}

	else if (slf.aivar[AIV_MM_REAL_ID] == ID_GOBBO_BLACK)		
	&& (GoblinBlack_Randomizer <= 50)					{	CreateInvItems (slf, ItMi_Gold	, 5);	};
	*/
	
	// ------ Orc Inventory -----
	var int Orc_Randomizer; Orc_Randomizer = Hlp_Random(10);
	
	//------ Orcwarrior -----
	
	if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCWARRIOR)
	&& (Orc_Randomizer == 0)		
	{	
		CreateInvItems (slf, ItPo_Health_02	, 1);
		CreateInvItems (slf, ItMI_Gold	, 2);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCWARRIOR)
	&& (Orc_Randomizer == 1)
	{	
		CreateInvItems (slf, ItPo_Health_01	, 1);
		CreateInvItems (slf, ItFoMuttonRaw	, 1);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCWARRIOR)
	&& (Orc_Randomizer == 2)
	{	
		CreateInvItems (slf, ItPo_Health_01	, 2);
		CreateInvItems (slf, ItMI_Gold	, 18);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCWARRIOR)
	&& (Orc_Randomizer == 3)
	{	
		CreateInvItems (slf, ItFo_Booze	, 1);
		CreateInvItems (slf, ItMi_SilverRing	, 1);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCWARRIOR)
	&& (Orc_Randomizer == 4)
	{	
		CreateInvItems (slf, ItPl_Health_Herb_01	, 1);
		CreateInvItems (slf, ItMI_Gold	, 4);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCWARRIOR)
	&& (Orc_Randomizer <= 7)
	{	
		CreateInvItems (slf, ItMI_Gold	, 9);	
	};
	//----- OrcShamane -----

	if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCSHAMAN)
	&& (Orc_Randomizer == 0)
	{
		CreateInvItems (slf, ItPo_Mana_03	, 1);
		CreateInvItems (slf, ItMI_Gold	, 5);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCSHAMAN)
	&& (Orc_Randomizer == 1)
	{
		CreateInvItems (slf, ItPo_Mana_02	, 2);
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCSHAMAN)
	&& (Orc_Randomizer == 2)
	{
		CreateInvItems (slf, ItPo_Mana_02	, 1);
		CreateInvItems (slf, ItMi_Coal,1); 
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCSHAMAN)
	&& (Orc_Randomizer == 3)
	{
		CreateInvItems (slf, ItPo_Mana_01	, 2);
		CreateInvItems (slf, ItMI_Gold	, 12);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCSHAMAN)
	&& (Orc_Randomizer == 4)
	{
		CreateInvItems (slf, ItPo_Mana_01	, 1);
		CreateInvItems (slf, ItMi_Sulfur,1); 
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCSHAMAN)
	&& (Orc_Randomizer <= 8)
	{
		CreateInvItems (slf,ItPl_Mana_Herb_02,2);
		CreateInvItems (slf, ItMI_Gold	, 8);	
	};
	//----- OrcElite -----

	if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCELITE )
	&& (Orc_Randomizer == 0)
	{
		CreateInvItems (slf,ItAt_WolfFur,1);
		CreateInvItems (slf,ItPo_Health_03,1);
		CreateInvItems (slf,ItFoMutton,2);
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCELITE)
	&& (Orc_Randomizer == 1)
	{
		CreateInvItems (slf,ItMi_GoldRing,1);
		CreateInvItems (slf,ItPo_Health_01,1);
		CreateInvItems (slf,ItMi_Gold,26);
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCELITE)
	&& (Orc_Randomizer == 2)
	{
		CreateInvItems (slf,ItSc_LightHeal,1);
		CreateInvItems (slf,ItLSTorch,2);
		CreateInvItems (slf,ItAt_Teeth,1); 
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCELITE)
	&& (Orc_Randomizer <= 5)
	{
		CreateInvItems (slf,ItMi_Gold,19);
		CreateInvItems (slf,ItPo_Health_02,1);
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCELITE)
	&& (Orc_Randomizer == 6)
	{
		CreateInvItems (slf,ItAt_WargFur,1);
		//CreateInvItems (slf,ItPl_Strength_Herb_01,1);
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_ORCELITE)
	&& (Orc_Randomizer <= 9)
	{
		CreateInvItems (slf,ItMi_Gold ,22);
		CreateInvItems (slf,ItPo_Health_01,1);
	};
	
	//-------- Dämonen -----
	if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_DEMON)
	&& (Orc_Randomizer == 0)
	{
		CreateInvItems (slf, ItPo_Mana_03	, 2);
		CreateInvItems (slf, ItMi_GoldRing	, 1);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_DEMON)
	&& (Orc_Randomizer <= 2)
	{
		CreateInvItems (slf, ItPo_Mana_03	, 1);
		CreateInvItems (slf, ItPo_Health_02	, 1);
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_DEMON)
	&& (Orc_Randomizer <= 6)
	{
		CreateInvItems (slf, ItPo_Mana_02	, 2);
		CreateInvItems (slf, ItMi_Pitch,1); 
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_DEMON)
	{
		CreateInvItems (slf, ItPo_Mana_02	, 1);
		CreateInvItems (slf, ItPo_Health_02	, 1);	
	};
	
	//-------- Dämonen Lord-----
	if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_DEMON_LORD)
	&& (Orc_Randomizer <= 1)
	{
		CreateInvItems (slf, ItPo_Mana_03	, 2);
		CreateInvItems (slf, ItPo_Health_03	, 2);
		CreateInvItems (slf, ItSc_SumDemon	, 1);	
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_DEMON_LORD)
	&& (Orc_Randomizer <= 5)
	{
		CreateInvItems (slf, ItPo_Mana_03	, 2);
		CreateInvItems (slf, ItPo_Health_03	, 2);
	}
	else if (slf.aivar[AIV_MM_REAL_ID]			== 	ID_DEMON_LORD)
	{
		CreateInvItems (slf, ItPo_Mana_03	, 1);
		CreateInvItems (slf, ItPo_Health_03	, 1);	
	};
	
	slf.aivar[AIV_DeathInvGiven] = true;
};
