///******************************************************************************************
/// GiveAll
///******************************************************************************************
func void GiveAll_Amulets (var C_Npc slf)
{
	CreateInvItem (slf, ItAm_Prot_Blunt_01);
	CreateInvItem (slf, ItAm_Prot_Edge_01);
	CreateInvItem (slf, ItAm_Prot_Point_01);
	CreateInvItem (slf, ItAm_Prot_Fire_01);
	CreateInvItem (slf, ItAm_Prot_Magic_01);
	CreateInvItem (slf, ItAm_Prot_Total_01);
	CreateInvItem (slf, ItAm_Hp_01);
	CreateInvItem (slf, ItAm_Mp_01);
	CreateInvItem (slf, ItAm_Sp_01);
	CreateInvItem (slf, ItAm_Str_01);
	CreateInvItem (slf, ItAm_Dex_01);
	CreateInvItem (slf, ItAm_Pow_01);
	CreateInvItem (slf, ItAm_Enlightment_01);
	CreateInvItem (slf, ItAm_Throw_01);
	CreateInvItem (slf, ItAm_1h_01);
	CreateInvItem (slf, ItAm_2h_01);
	CreateInvItem (slf, ItAm_Bow_01);
	CreateInvItem (slf, ItAm_Cbow_01);
	CreateInvItem (slf, ItAm_Master_01);
	CreateInvItem (slf, ItAm_CritDmg_01);
	CreateInvItem (slf, ItAm_Ls_01);
	CreateInvItem (slf, ItAm_MinDmg_01);
	
	CreateInvItem (slf, ItAm_Orc_01);
	CreateInvItem (slf, ItAm_Orc_02);
	CreateInvItem (slf, ItAm_Orc_03);
	CreateInvItem (slf, ItAm_Orc_04);
	CreateInvItem (slf, ItAm_Orc_05);
};

///******************************************************************************************
func void GiveAll_AnimalTrophies (var C_Npc slf)
{
	/// blood
	CreateInvItems (slf, ItAt_DragonBlood, 10);
	
	/// bones
	CreateInvItems (slf, ItAt_GoblinBone, 10);
	CreateInvItems (slf, ItAt_SkeletonBone, 10);
	CreateInvItems (slf, ItAt_SkeletonSkull, 10);
	
	/// claws
	CreateInvItems (slf, ItAt_Claw, 10);
	CreateInvItems (slf, ItAt_LurkerClaw, 10);
	CreateInvItems (slf, ItAt_DemonClaw, 10);
	
	/// eggs
	CreateInvItems (slf, ItAt_ScavengerEgg, 10);
	CreateInvItems (slf, ItAt_CrawlerEgg, 10);
	CreateInvItems (slf, ItAt_DragonEgg_MIS, 10);
	
	/// feathers
	CreateInvItems (slf, ItAt_HarpyFeathers, 10);
	
	/// furs
	CreateInvItems (slf, ItAt_GoatFur, 10);
	CreateInvItems (slf, ItAt_HareFur, 10);
	CreateInvItems (slf, ItAt_SheepFur, 10);
	
	CreateInvItems (slf, ItAt_GiantRatFur, 10);
	CreateInvItems (slf, ItAt_JackalFur, 10);
	CreateInvItems (slf, ItAt_KeilerFur, 10);
	CreateInvItems (slf, ItAt_WolfFur, 10);
	CreateInvItems (slf, ItAt_IceWolfFur, 10);
	CreateInvItems (slf, ItAt_WargFur, 10);
	CreateInvItems (slf, ItAt_BloodhoundFur, 10);
	CreateInvItems (slf, ItAt_TigerFur, 10);
	CreateInvItems (slf, ItAt_ShadowFur, 10);
	CreateInvItems (slf, ItAt_TrollFur, 10);
	CreateInvItems (slf, ItAt_TrollBlackFur, 10);
	
	/// hearts
	CreateInvItems (slf, ItAt_GargoyleHeart, 10);
	CreateInvItems (slf, ItAt_GolemHeart, 10);
	CreateInvItems (slf, ItAt_DemonHeart, 10);
	CreateInvItems (slf, ItAt_DragonHeart, 10);
	CreateInvItems (slf, ItAt_UndeadDragonSoulStone, 10);
	
	/// horns
	CreateInvItems (slf, ItAt_ShadowHorn, 10);
	CreateInvItems (slf, ItAt_DrgSnapperHorn, 10);
	
	/// lubric
	CreateInvItems (slf, ItAt_MoleratLubric, 10);
	
	/// mandibles
	CreateInvItems (slf, ItAt_BugMandibles, 10);
	CreateInvItems (slf, ItAt_CrawlerMandibles, 10);
	
	/// plates & scales
	CreateInvItems (slf, ItAt_CrawlerPlate, 10);
	CreateInvItems (slf, ItAt_DrgSnapperScale, 10);
	CreateInvItems (slf, ItAt_DragonScale, 10);
	
	/// skins
	CreateInvItems (slf, ItAt_WaranSkin, 10);
	CreateInvItems (slf, ItAt_LurkerSkin, 10);
	CreateInvItems (slf, ItAt_SnapperSkin, 10);
	CreateInvItems (slf, ItAt_AlligatorSkin, 10);
	CreateInvItems (slf, ItAt_RazorSkin, 10);
	CreateInvItems (slf, ItAt_FirewaranSkin, 10);
	CreateInvItems (slf, ItAt_SharkSkin, 10);
	CreateInvItems (slf, ItAt_GiantSnapperSkin, 10);
	
	/// stings & secretion
	CreateInvItems (slf, ItAt_Sting, 10);
	CreateInvItems (slf, ItAt_Ink, 10);
	CreateInvItems (slf, ItAt_Poison, 10);
	
	/// teeth
	CreateInvItems (slf, ItAt_Teeth, 10);
	CreateInvItems (slf, ItAt_KeilerTusk, 10);
	CreateInvItems (slf, ItAt_SharkTeeth, 10);
	CreateInvItems (slf, ItAt_TrollTooth, 10);
	
	/// tongues
	CreateInvItems (slf, ItAt_FirewaranTongue, 10);
	CreateInvItems (slf, ItAt_DragonTongue, 10);
	
	/// wings
	CreateInvItems (slf, ItAt_Wing, 10);
	CreateInvItems (slf, ItAt_SwampdroneWing, 10);
	CreateInvItems (slf, ItAt_DemonWing, 10);
};

///******************************************************************************************
func void GiveAll_Armors (var C_Npc slf)
{
	/// old camp
	CreateInvItem (slf, ITAR_STT_L);
	CreateInvItem (slf, ITAR_STT_H);
	CreateInvItem (slf, ITAR_GRD_L);
	CreateInvItem (slf, ITAR_GRD_M);
	CreateInvItem (slf, ITAR_GRD_H);
	CreateInvItem (slf, ITAR_EBR_M);
	CreateInvItem (slf, ITAR_EBR_G);
	/// old camp (BABE)
	CreateInvItem (slf, ITAR_Babe_STT_L);
	CreateInvItem (slf, ITAR_Babe_STT_H);
	CreateInvItem (slf, ITAR_Babe_GRD_L);
	CreateInvItem (slf, ITAR_Babe_GRD_M);
	CreateInvItem (slf, ITAR_Babe_GRD_H);
	
	///	new camp
	CreateInvItem (slf, ITAR_ORG_L);
	CreateInvItem (slf, ITAR_ORG_H);
	///	new camp (BABE)
	CreateInvItem (slf, ITAR_Babe_ORG_L);
	CreateInvItem (slf, ITAR_Babe_ORG_H);
	
	///	psi camp
	CreateInvItem (slf, ITAR_SLN_L);
	CreateInvItem (slf, ITAR_SLN_M);
	CreateInvItem (slf, ITAR_SLN_H);
	CreateInvItem (slf, ITAR_SLT_L);
	CreateInvItem (slf, ITAR_SLT_M);
	CreateInvItem (slf, ITAR_SLT_H);
	CreateInvItem (slf, ITAR_SLG_L);
	CreateInvItem (slf, ITAR_SLG_H);
	///	psi camp (BABE)
	CreateInvItem (slf, ITAR_Babe_SLN_L);
	CreateInvItem (slf, ITAR_Babe_SLN_M);
	CreateInvItem (slf, ITAR_Babe_SLN_H);
	CreateInvItem (slf, ITAR_Babe_SLT_L);
	CreateInvItem (slf, ITAR_Babe_SLT_M);
	CreateInvItem (slf, ITAR_Babe_SLT_H);
	CreateInvItem (slf, ITAR_Babe_SLG_L);
	CreateInvItem (slf, ITAR_Babe_SLG_H);
	
	///	magic armors
	CreateInvItem (slf, ITAR_ORE_M);
	CreateInvItem (slf, ITAR_ORE_H);
	
	///	farmer armors: BAU
	CreateInvItem (slf, ITAR_BAU_L_00); CreateInvItem (slf, ITAR_BAU_H_00);
	CreateInvItem (slf, ITAR_BAU_L_01); CreateInvItem (slf, ITAR_BAU_H_01);
	CreateInvItem (slf, ITAR_BAU_L_02); CreateInvItem (slf, ITAR_BAU_H_02);
	CreateInvItem (slf, ITAR_BAU_L_03); CreateInvItem (slf, ITAR_BAU_H_03);
	///	farmer armors: BAU (BABE)
	CreateInvItem (slf, ITAR_Babe_BAU_L_00); CreateInvItem (slf, ITAR_Babe_BAU_H_00);
	CreateInvItem (slf, ITAR_Babe_BAU_L_01); CreateInvItem (slf, ITAR_Babe_BAU_H_01);
	
	///	citizen armors: VLK
	CreateInvItem (slf, ITAR_VLK_L_00); CreateInvItem (slf, ITAR_VLK_H_00);
	CreateInvItem (slf, ITAR_VLK_L_01); CreateInvItem (slf, ITAR_VLK_H_01);
	CreateInvItem (slf, ITAR_VLK_L_02); CreateInvItem (slf, ITAR_VLK_H_02);
	CreateInvItem (slf, ITAR_VLK_L_03); CreateInvItem (slf, ITAR_VLK_H_03);
	CreateInvItem (slf, ITAR_VLK_L_04); CreateInvItem (slf, ITAR_VLK_H_04);
	CreateInvItem (slf, ITAR_VLK_L_05); CreateInvItem (slf, ITAR_VLK_H_05);
	CreateInvItem (slf, ITAR_VLK_L_06); CreateInvItem (slf, ITAR_VLK_H_06);
	CreateInvItem (slf, ITAR_VLK_L_07); CreateInvItem (slf, ITAR_VLK_H_07);
	CreateInvItem (slf, ITAR_VLK_L_08); CreateInvItem (slf, ITAR_VLK_H_08);
	CreateInvItem (slf, ITAR_VLK_L_09); CreateInvItem (slf, ITAR_VLK_H_09);
	CreateInvItem (slf, ITAR_VLK_L_10); CreateInvItem (slf, ITAR_VLK_H_10);
	CreateInvItem (slf, ITAR_VLK_L_11); CreateInvItem (slf, ITAR_VLK_H_11);
	CreateInvItem (slf, ITAR_VLK_L_12); CreateInvItem (slf, ITAR_VLK_H_12);
	CreateInvItem (slf, ITAR_VLK_L_13); CreateInvItem (slf, ITAR_VLK_H_13);
	CreateInvItem (slf, ITAR_VLK_L_14); CreateInvItem (slf, ITAR_VLK_H_14);
	CreateInvItem (slf, ITAR_VLK_L_15); CreateInvItem (slf, ITAR_VLK_H_15);
	///	citizen armors: VLK (BABE)
	CreateInvItem (slf, ITAR_Babe_VLK_L_00); CreateInvItem (slf, ITAR_Babe_VLK_X_00); CreateInvItem (slf, ITAR_Babe_VLK_H_00);
	CreateInvItem (slf, ITAR_Babe_VLK_L_01); CreateInvItem (slf, ITAR_Babe_VLK_X_01); CreateInvItem (slf, ITAR_Babe_VLK_H_01);
	CreateInvItem (slf, ITAR_Babe_VLK_L_02); CreateInvItem (slf, ITAR_Babe_VLK_X_02); CreateInvItem (slf, ITAR_Babe_VLK_H_02);
	CreateInvItem (slf, ITAR_Babe_VLK_L_03); CreateInvItem (slf, ITAR_Babe_VLK_X_03); CreateInvItem (slf, ITAR_Babe_VLK_H_03);
	CreateInvItem (slf, ITAR_Babe_VLK_L_04); CreateInvItem (slf, ITAR_Babe_VLK_X_04);
	CreateInvItem (slf, ITAR_Babe_VLK_L_05); CreateInvItem (slf, ITAR_Babe_VLK_X_05);
	CreateInvItem (slf, ITAR_Babe_VLK_L_06); CreateInvItem (slf, ITAR_Babe_VLK_X_06);
	CreateInvItem (slf, ITAR_Babe_VLK_L_07); CreateInvItem (slf, ITAR_Babe_VLK_X_07);
	
	///	worker armors
	CreateInvItem (slf, ITAR_Alchemist);
	CreateInvItem (slf, ITAR_Barkeeper);
	CreateInvItem (slf, ITAR_Butcher);
	CreateInvItem (slf, ITAR_Cook);
	CreateInvItem (slf, ITAR_Hunter);
	CreateInvItem (slf, ITAR_Judge);
	CreateInvItem (slf, ITAR_Smith);
	///	worker armors (BABE)
	CreateInvItem (slf, ITAR_Babe_Nurse);
	
	///	leather armors
	CreateInvItem (slf, ITAR_Leather_L);
	CreateInvItem (slf, ITAR_Leather_M);
	CreateInvItem (slf, ITAR_Leather_T);
	CreateInvItem (slf, ITAR_Leather_S);
	CreateInvItem (slf, ITAR_Leather_H);
	CreateInvItem (slf, ITAR_Leather_B);
	CreateInvItem (slf, ITAR_Crawler);
	CreateInvItem (slf, ITAR_DragonSnapper);
	///	leather armors (BABE)
	CreateInvItem (slf, ITAR_Babe_Leather);
	CreateInvItem (slf, ITAR_Babe_Crawler);
	
	///	guard armors: MIL & ROY
	CreateInvItem (slf, ITAR_MIL_N);
	CreateInvItem (slf, ITAR_MIL_L);
	CreateInvItem (slf, ITAR_MIL_M);
	CreateInvItem (slf, ITAR_MIL_H);
	CreateInvItem (slf, ITAR_ROY_L);
	CreateInvItem (slf, ITAR_ROY_M);
	CreateInvItem (slf, ITAR_ROY_H);
	///	guard armors: MIL & ROY (BABE)
	CreateInvItem (slf, ITAR_Babe_MIL_N);
	CreateInvItem (slf, ITAR_Babe_MIL_L);
	CreateInvItem (slf, ITAR_Babe_MIL_M);
	CreateInvItem (slf, ITAR_Babe_MIL_H);
	
	///	dragon hunter armors: SLD & DJG
	CreateInvItem (slf, ITAR_SLD_N);
	CreateInvItem (slf, ITAR_SLD_L);
	CreateInvItem (slf, ITAR_SLD_M);
	CreateInvItem (slf, ITAR_SLD_H);
	CreateInvItem (slf, ITAR_DJG_L);
	CreateInvItem (slf, ITAR_DJG_M);
	CreateInvItem (slf, ITAR_DJG_H);
	///	dragon hunter armors: SLD & DJG (BABE)
	CreateInvItem (slf, ITAR_Babe_SLD_L);
	CreateInvItem (slf, ITAR_Babe_SLD_M);
	CreateInvItem (slf, ITAR_Babe_SLD_H);
	CreateInvItem (slf, ITAR_Babe_DJG_L);
	CreateInvItem (slf, ITAR_Babe_DJG_H);
	
	///	orc mercenary armors
	CreateInvItem (slf, ITAR_ORM_L);
	CreateInvItem (slf, ITAR_ORM_M);
	CreateInvItem (slf, ITAR_ORM_H);
	CreateInvItem (slf, ITAR_ORW_L);
	CreateInvItem (slf, ITAR_ORW_M);
	CreateInvItem (slf, ITAR_ORW_H);
	
	///	mage armors: NOV
	CreateInvItem (slf, ITAR_NOV_L);
	CreateInvItem (slf, ITAR_NOV_H);
	CreateInvItem (slf, ITAR_NOV_A);
	
	///	mage armors: MAG & AMG
	CreateInvItem (slf, ITAR_MAG_L);
	CreateInvItem (slf, ITAR_MAG_M);
	CreateInvItem (slf, ITAR_MAG_H);
	CreateInvItem (slf, ITAR_AMG_L);
	CreateInvItem (slf, ITAR_AMG_M);
	CreateInvItem (slf, ITAR_AMG_H);
	CreateInvItem (slf, ITAR_MAG_A);
	CreateInvItem (slf, ITAR_MAG_B);
	///	mage armors: MAG & AMG (BABE)
	CreateInvItem (slf, ITAR_Babe_Mage);
	
	///	paladin armors: PAL
	CreateInvItem (slf, ITAR_PAL_L);
	CreateInvItem (slf, ITAR_PAL_M);
	CreateInvItem (slf, ITAR_PAL_H);
	CreateInvItem (slf, ITAR_PAL_D);
	CreateInvItem (slf, ITAR_PAL_T);
	CreateInvItem (slf, ITAR_PAL_U);
	CreateInvItem (slf, ITAR_PAL_G);
	
	///	assassin armors: AKO & PRI
	CreateInvItem (slf, ITAR_AKO_L);
	CreateInvItem (slf, ITAR_AKO_M);
	CreateInvItem (slf, ITAR_AKO_H);
	CreateInvItem (slf, ITAR_PRI_L);
	CreateInvItem (slf, ITAR_PRI_M);
	CreateInvItem (slf, ITAR_PRI_H);
	
	///	prisoner armors: STRF
	CreateInvItem (slf, ITAR_Prisoner_L);
	CreateInvItem (slf, ITAR_Prisoner_S);
	CreateInvItem (slf, ITAR_Prisoner_H);
	///	prisoner armors: STRF (BABE)
	CreateInvItem (slf, ITAR_Babe_Prisoner_L);
	CreateInvItem (slf, ITAR_Babe_Prisoner_S);
	CreateInvItem (slf, ITAR_Babe_Prisoner_H);
	
	///	bandit armors: BDT & RVN
	CreateInvItem (slf, ITAR_BDT_L);
	CreateInvItem (slf, ITAR_BDT_M);
	CreateInvItem (slf, ITAR_BDT_H);
	CreateInvItem (slf, ITAR_RVN_L);
	CreateInvItem (slf, ITAR_RVN_M);
	CreateInvItem (slf, ITAR_RVN_H);
	CreateInvItem (slf, ITAR_Raven);
	
	///	pirate armors: PIR
	CreateInvItem (slf, ITAR_PIR_L);
	CreateInvItem (slf, ITAR_PIR_M);
	CreateInvItem (slf, ITAR_PIR_H);
	
	///	ranger armors
	CreateInvItem (slf, ITAR_Ranger_L);
	CreateInvItem (slf, ITAR_Ranger_H);
	
	///	dementor armors: DMT
	CreateInvItem (slf, ITAR_Dementor);
	CreateInvItem (slf, ITAR_Demaster);
	
	///	forest armors
	CreateInvItem (slf, ITAR_WoodRunner);
	CreateInvItem (slf, ITAR_Druid);
	
	///	desert armors
	CreateInvItem (slf, ITAR_Nomad);
	
	/// special armors
	CreateInvItem (slf, ITAR_Jarkhendar);
	CreateInvItem (slf, ITAR_Skeleton);
	CreateInvItem (slf, ITAR_SteamKnight);
	
	///	WzA: farmer armors
	CreateInvItem (slf, ITAR_ACRONA_BAU_00);
	CreateInvItem (slf, ITAR_ACRONA_BAU_01);
	CreateInvItem (slf, ITAR_ACRONA_WORKER);
	
	///	WzA: pirate armors
	CreateInvItem (slf, ITAR_ACRONA_PIR_L);
	CreateInvItem (slf, ITAR_ACRONA_PIR_M);
	
	///	WzA: soldier armors
	CreateInvItem (slf, ITAR_ACRONA_SOLDIER_M);
	CreateInvItem (slf, ITAR_ACRONA_SOLDIER_H);
	CreateInvItem (slf, ITAR_ACRONA_KNIGHT);
	
	///	WzA: templer armors
	CreateInvItem (slf, ITAR_ACRONA_TEMPLER_M);
	CreateInvItem (slf, ITAR_ACRONA_TEMPLER_H);
	CreateInvItem (slf, ITAR_ACRONA_MAGE);
	
	///	WzA: baron armors
	CreateInvItem (slf, ITAR_ACRONA_EBR_M);
	CreateInvItem (slf, ITAR_ACRONA_EBR_H);
	CreateInvItem (slf, ITAR_ACRONA_EBR_K);
	CreateInvItem (slf, ITAR_ACRONA_LORD);
	CreateInvItem (slf, ITAR_ACRONA_KING);
	
	///	WzA: NewAge armors
	CreateInvItem (slf, ITAR_NA_JaJ);
	CreateInvItem (slf, ITAR_NA_JP);
	CreateInvItem (slf, ITAR_NA_Vest);
	CreateInvItem (slf, ITAR_NA_SaT);
	
	///	WzA: hero armors
	CreateInvItem (slf, ITAR_NA_SuperHero);
	CreateInvItem (slf, ITAR_NA_IronHero);
	
	///	WzA: StarWars armors
	CreateInvItem (slf, ITAR_SW_Jedi_L);
	CreateInvItem (slf, ITAR_SW_Jedi_M);
	CreateInvItem (slf, ITAR_SW_Jedi_H);
	CreateInvItem (slf, ITAR_SW_Sith);
	CreateInvItem (slf, ITAR_SW_Vader);
	
	///	WzA: chaos armors
	CreateInvItem (slf, ITAR_iChaos_Blue);		CreateInvItem (slf, ITAR_aChaos_Blue);
	CreateInvItem (slf, ITAR_iChaos_Red);		CreateInvItem (slf, ITAR_aChaos_Red);
	CreateInvItem (slf, ITAR_iChaos_Green);		CreateInvItem (slf, ITAR_aChaos_Green);
	CreateInvItem (slf, ITAR_iChaos_Yellow);	CreateInvItem (slf, ITAR_aChaos_Yellow);
	CreateInvItem (slf, ITAR_iChaos_Magenta);	CreateInvItem (slf, ITAR_aChaos_Magenta);
	CreateInvItem (slf, ITAR_iChaos_Cyan);		CreateInvItem (slf, ITAR_aChaos_Cyan);
												CreateInvItem (slf, ITAR_aChaos_Pink);
	
	///	WzA: polish armors
	CreateInvItem (slf, ITAR_Polish);
	
	///	WzA: red bandit armors
	CreateInvItem (slf, ITAR_ORG_Red_P);
	CreateInvItem (slf, ITAR_ORG_Red_L);
	CreateInvItem (slf, ITAR_ORG_Red_M);
	CreateInvItem (slf, ITAR_ORG_Red_H);
};

///******************************************************************************************
func void GiveAll_Belts (var C_Npc slf)
{
	CreateInvItem (slf, ItBe_Addon_Leather_01);
	CreateInvItem (slf, ItBe_Addon_Plates_01);
	CreateInvItem (slf, ItBe_Addon_MIL_01);
	CreateInvItem (slf, ItBe_Addon_SLD_01);
	CreateInvItem (slf, ItBe_Addon_NOV_01);
	CreateInvItem (slf, ItBe_Addon_MAG_01);
	CreateInvItem (slf, ItBe_Addon_Prot_Blunt_01);
	CreateInvItem (slf, ItBe_Addon_Prot_Edge_01);
	CreateInvItem (slf, ItBe_Addon_Prot_Point_01);
	CreateInvItem (slf, ItBe_Addon_Prot_Fire_01);
	CreateInvItem (slf, ItBe_Addon_Prot_Magic_01);
	CreateInvItem (slf, ItBe_Addon_Hp_01);
	CreateInvItem (slf, ItBe_Addon_Mp_01);
	CreateInvItem (slf, ItBe_Addon_Str_01);
	CreateInvItem (slf, ItBe_Addon_Dex_01);
	CreateInvItem (slf, ItBe_Addon_Pow_01);
};

///******************************************************************************************
func void GiveAll_Food (var C_Npc slf)
{
	/// base components
	CreateInvItem (slf, ItFo_Flour);
	CreateInvItem (slf, ItFo_Herbs);
	CreateInvItem (slf, ItFo_Oil);
	CreateInvItem (slf, ItFo_Salt);
	CreateInvItem (slf, ItFo_Spices);
	
	/// raw food
	CreateInvItems (slf, ItFo_Coconut, 10);
	//CreateInvItems (slf, ItFo_Egg, 10);
	CreateInvItems (slf, ItFo_Fish, 10);
	CreateInvItems (slf, ItFo_BadMeatRaw, 10);
	CreateInvItems (slf, ItFo_FatMeatRaw, 10);
	CreateInvItems (slf, ItFoMuttonRaw, 10);
	CreateInvItems (slf, ItFo_Potato, 10);
	CreateInvItems (slf, ItFo_Seeds, 10);
	
	/// fruits
	CreateInvItems (slf, ItFo_Apple, 10);
	CreateInvItems (slf, ItFo_Banana, 10);
	CreateInvItems (slf, ItFo_Grapes, 10);
	CreateInvItems (slf, ItFo_Pear, 10);
	
	/// vegetables
	CreateInvItems (slf, ItFo_Cabbage, 10);
	CreateInvItems (slf, ItFo_Carrot, 10);
	CreateInvItems (slf, ItFo_Chili, 10);
	CreateInvItems (slf, ItFo_Leek, 10);
	CreateInvItems (slf, ItFo_Onion, 10);
	CreateInvItems (slf, ItFo_Parsley, 10);
	
	/// standard food
	CreateInvItems (slf, ItFo_Bread, 10);
	CreateInvItems (slf, ItFo_Cheese, 10);
	CreateInvItems (slf, ItFo_MeatbugFlesh, 10);
	CreateInvItems (slf, ItFo_Rice, 10);
	
	/// meat
	CreateInvItems (slf, ItFo_BadMeat, 10);
	CreateInvItems (slf, ItFo_FatMeat, 10);
	CreateInvItems (slf, ItFoMutton, 10);
	
	CreateInvItems (slf, ItFo_Bacon, 10);
	CreateInvItems (slf, ItFo_Sausage, 10);
	
	/// sea food
	CreateInvItems (slf, ItFo_Oyster, 10);
	
	/// sweets
	CreateInvItems (slf, ItFo_Cake, 10);
	CreateInvItems (slf, ItFo_Chocolate, 10);
	CreateInvItems (slf, ItFo_Honey, 10);
	CreateInvItems (slf, ItFo_Jam, 10);
	
	/// dishes
	CreateInvItems (slf, ItFo_BugPulp, 10);
	CreateInvItems (slf, ItFo_ForestStew, 10);
	CreateInvItems (slf, ItFo_FriedPasta, 10);
	CreateInvItems (slf, ItFo_HoneyOatmeal, 10);
	CreateInvItems (slf, ItFo_JamPaste, 10);
	CreateInvItems (slf, ItFo_MeatCauldron, 10);
	CreateInvItems (slf, ItFo_MeatStew, 10);
	CreateInvItems (slf, ItFo_Pilaf, 10);
	CreateInvItems (slf, ItFo_Puree, 10);
	CreateInvItems (slf, ItFo_Salad, 10);
	CreateInvItems (slf, ItFo_ScrambledEggs, 10);
	CreateInvItems (slf, ItFo_Spaghetti, 10);
	CreateInvItems (slf, ItFo_SpicyStew, 10);
	CreateInvItems (slf, ItFo_Stew, 10);
	CreateInvItems (slf, ItFo_StewedVegetables, 10);
	CreateInvItems (slf, ItFo_WineStew, 10);
	
	/// soups
	CreateInvItems (slf, ItFo_BerrySoup, 10);
	CreateInvItems (slf, ItFo_CabbageSoup, 10);
	CreateInvItems (slf, ItFo_CheeseSoup, 10);
	CreateInvItems (slf, ItFo_FishSoup, 10);
	CreateInvItems (slf, ItFo_GreenSoup, 10);
	CreateInvItems (slf, ItFo_HoneySoup, 10);
	CreateInvItems (slf, ItFo_MilkSoup, 10);
	CreateInvItems (slf, ItFo_MushroomSoup, 10);
	CreateInvItems (slf, ItFo_OnionSoup, 10);
	CreateInvItems (slf, ItFo_OysterSoup, 10);
	CreateInvItems (slf, ItFo_SausageSoup, 10);
	CreateInvItems (slf, ItFo_SpicySoup, 10);
	
	/// compotes & decotions
	CreateInvItems (slf, ItFo_AppleCompote, 10);
	CreateInvItems (slf, ItFo_BerryCompote, 10);
	CreateInvItems (slf, ItFo_BlueDecoction, 10);
	
	/// water & milk & juice
	CreateInvItems (slf, ItFo_Water, 10);
	CreateInvItems (slf, ItFo_Milk, 10);
	CreateInvItems (slf, ItFo_BananaJuice, 10);
	CreateInvItems (slf, ItFo_BerryJuice, 10);
	
	/// beer
	CreateInvItems (slf, ItFo_Beer, 10);
	
	/// light alcohol
	CreateInvItems (slf, ItFo_Booze, 10);
	CreateInvItems (slf, ItFo_DarkBeer, 10);
	CreateInvItems (slf, ItFo_Mead, 10);
	CreateInvItems (slf, ItFo_Sake, 10);
	CreateInvItems (slf, ItFo_SourWine, 10);
	CreateInvItems (slf, ItFo_Wine, 10);
	
	/// heavy alcohol
	CreateInvItem (slf, ItFo_Addon_Grog);
	CreateInvItem (slf, ItFo_Addon_Hooch);
	CreateInvItem (slf, ItFo_Addon_Rum);
	CreateInvItem (slf, ItFo_Addon_LousHammer);
	CreateInvItem (slf, ItFo_Addon_SchnellerHering);
	CreateInvItem (slf, ItFo_Addon_SchlafHammer);
};

///******************************************************************************************
func void GiveAll_Hairs (var C_Npc slf)
{
	/// male hairs
	CreateInvItem (slf, ItHa_Geralt);
	CreateInvItem (slf, ItHa_Harad);
	CreateInvItem (slf, ItHa_Mohawk);
	CreateInvItem (slf, ItHa_Rhobar);
	
	/// female hairs
	CreateInvItem (slf, ItHa_Curly_Blonde);
	CreateInvItem (slf, ItHa_Noctis_Blonde);
	CreateInvItem (slf, ItHa_Sonja_Black);
	CreateInvItem (slf, ItHa_Sonja_Brown);
};

///******************************************************************************************
func void GiveAll_Helms (var C_Npc slf)
{
	/// citizen helms: VLK
	CreateInvItem (slf, ItHe_Cap);
	CreateInvItem (slf, ItHe_Hat);
	CreateInvItem (slf, ItHe_Spectacles);
	
	/// leather helms
	CreateInvItem (slf, ItHe_Leather);
	
	/// standard helms
	CreateInvItem (slf, ItHe_Bascinet);
	CreateInvItem (slf, ItHe_FlatTopped);
	CreateInvItem (slf, ItHe_Footman);
	CreateInvItem (slf, ItHe_Nordic);
	CreateInvItem (slf, ItHe_Spiked);
	CreateInvItem (slf, ItHe_WingedGreat);
	
	/// guard helms: MIL & ROY
	CreateInvItem (slf, ItHe_ROY_H);
	
	/// dragon hunter helms: SLD & DJG
	CreateInvItem (slf, ItHe_DJG_M);
	CreateInvItem (slf, ItHe_DJG_H);
	
	/// orc mercenary helms
	CreateInvItem (slf, ItHe_ORW_H);
	
	/// paladin helms: PAL
	CreateInvItem (slf, ItHe_PAL_H);
	CreateInvItem (slf, ItHe_PAL_D);
	CreateInvItem (slf, ItHe_PAL_T);
	CreateInvItem (slf, ItHe_PAL_U);
	
	CreateInvItem (slf, ItHe_Innos);
	
	/// prisoner helms: STRF
	CreateInvItem (slf, ItHe_Slave);
	
	/// dementor helms: DMT
	CreateInvItem (slf, ItHe_Sleeper);
	
	/// special helms
	CreateInvItem (slf, ItHe_ChristmasCap);
	CreateInvItem (slf, ItHe_OrcHead);
};

///******************************************************************************************
func void GiveAll_MeleeWeapons (var C_Npc slf)
{
	/// junk
	CreateInvItem (slf, ItMw_1h_Woodsword);
	CreateInvItem (slf, ItMw_2h_Woodsword);
	
	CreateInvItem (slf, ItMw_1h_Misc_Sword);
	CreateInvItem (slf, ItMw_1h_Machete_01);
	CreateInvItem (slf, ItMw_2h_Scythe_01);
	CreateInvItem (slf, ItMw_1h_Misc_Axe);
	CreateInvItem (slf, ItMw_2h_Sword_M_01);
	CreateInvItem (slf, ItMw_2h_Machete_01);
	
	/// goblin & orc
	CreateInvItem (slf, ItMw_1h_GobboMace_01);
	CreateInvItem (slf, ItMw_1h_GobboMace_02);
	CreateInvItem (slf, ItMw_1h_GobboMace_03);
	CreateInvItem (slf, ItMw_1h_GobboMace_04);
	
	CreateInvItem (slf, ItMw_2h_OrcAxe_01);
	CreateInvItem (slf, ItMw_2h_OrcAxe_02);
	CreateInvItem (slf, ItMw_2h_OrcAxe_03);
	CreateInvItem (slf, ItMw_2h_OrcAxe_04);
	
	CreateInvItem (slf, ItMw_2h_OrcDagger_01);
	CreateInvItem (slf, ItMw_2h_OrcSword_01);
	CreateInvItem (slf, ItMw_2h_OrcSword_02);
	CreateInvItem (slf, ItMw_2h_OrcElite_01);
	
	CreateInvItem (slf, ItMw_2h_OrcStaff_01);
	CreateInvItem (slf, ItMw_2h_OrcMace_01);
	CreateInvItem (slf, ItMw_2h_OrcMace_02);
	
	/// chapter 1
	CreateInvItem (slf, ItMw_1h_Bau_Mace);
	CreateInvItem (slf, ItMw_1h_Mace_L_01);
	CreateInvItem (slf, ItMw_1h_Bau_Axe);
	CreateInvItem (slf, ItMw_1h_Vlk_Mace);
	CreateInvItem (slf, ItMw_1h_Mace_L_03);
	CreateInvItem (slf, ItMw_1h_Vlk_Dagger);
	CreateInvItem (slf, ItMw_1h_Dagger_01);
	CreateInvItem (slf, ItMw_Sense);
	CreateInvItem (slf, ItMw_MudClub);
	CreateInvItem (slf, ItMw_Zwirbelschwert);
	CreateInvItem (slf, ItMw_Nagelknueppel);
	CreateInvItem (slf, ItMw_ShortSword1);
	CreateInvItem (slf, ItMw_1h_Mace_L_04);
	CreateInvItem (slf, ItMw_2h_Axe_L_01);
	CreateInvItem (slf, ItMw_2h_Bau_Axe);
	CreateInvItem (slf, ItMw_1h_Sword_L_03);
	CreateInvItem (slf, ItMw_1h_Vlk_Axe);
	CreateInvItem (slf, ItMw_1h_Vlk_Sword);
	CreateInvItem (slf, ItMw_LongSpear1);
	CreateInvItem (slf, ItMw_ShortSword2);
	CreateInvItem (slf, ItMw_BanditTrader);
	CreateInvItem (slf, ItMw_1h_Sld_Axe);
	CreateInvItem (slf, ItMw_1h_Sld_Sword);
	CreateInvItem (slf, ItMw_1h_Nov_Mace);
	CreateInvItem (slf, ItMw_ShortSword3);
	CreateInvItem (slf, ItMw_LongSpear2);
	CreateInvItem (slf, ItMw_Dyaebl);
	CreateInvItem (slf, ItMw_ShortSword4);
	CreateInvItem (slf, ItMw_Nagelkeule);
	CreateInvItem (slf, ItMw_1h_Mil_Sword);
	CreateInvItem (slf, ItMw_2h_Scythe_02);
	CreateInvItem (slf, ItMw_1h_Common_01);
	CreateInvItem (slf, ItMw_Kriegssichel);
	CreateInvItem (slf, ItMw_ShortSword5);
	CreateInvItem (slf, ItMw_1h_Keule);
	CreateInvItem (slf, ItMw_Richtstab);
	CreateInvItem (slf, ItMw_Kriegskeule);
	CreateInvItem (slf, ItMw_1h_Sword_01);
	CreateInvItem (slf, ItMw_2h_Sld_Axe);
	CreateInvItem (slf, ItMw_2h_Sld_Sword);
	CreateInvItem (slf, ItMw_Blutpfanne);
	CreateInvItem (slf, ItMw_Kriegshammer1);
	CreateInvItem (slf, ItMw_1h_Machete_02);
	CreateInvItem (slf, ItMw_Hellebarde);
	CreateInvItem (slf, ItMw_FaustSchwert);
	CreateInvItem (slf, ItMw_Nagelkeule2);
	CreateInvItem (slf, ItMw_Schiffsaxt);
	CreateInvItem (slf, ItMw_1h_Pal_Sword);
	CreateInvItem (slf, ItMw_2h_Scythe_03);
	CreateInvItem (slf, ItMw_Schwert1);
	CreateInvItem (slf, ItMw_Rubindolch);
	
	/// chapter 2
	CreateInvItem (slf, ItMw_Schwert);
	CreateInvItem (slf, ItMw_LongGlaive1);
	CreateInvItem (slf, ItMw_Piratensaebel);
	CreateInvItem (slf, ItMw_Breitschwert1);
	CreateInvItem (slf, ItMw_Schwarzeaxt1);
	CreateInvItem (slf, ItMw_Schwarzeaxt2);
	CreateInvItem (slf, ItMw_Stabkeule);
	CreateInvItem (slf, ItMw_Breitschwert2);
	CreateInvItem (slf, ItMw_Steinbrecher);
	CreateInvItem (slf, ItMw_1h_LongSword_01);
	CreateInvItem (slf, ItMw_Bastardschwert1);
	CreateInvItem (slf, ItMw_Zweihaender1);
	CreateInvItem (slf, ItMw_Schlaeferfluch);
	CreateInvItem (slf, ItMw_Spicker);
	CreateInvItem (slf, ItMw_Streitaxt1);
	CreateInvItem (slf, ItMw_Ritterschwert);
	CreateInvItem (slf, ItMw_Nordmarschwert);
	CreateInvItem (slf, ItMw_Kriegssense);
	CreateInvItem (slf, ItMw_Schwert4);
	CreateInvItem (slf, ItMw_Rabenschnabel);
	CreateInvItem (slf, ItMw_Nomadensaebel);
	CreateInvItem (slf, ItMw_Adelsschwert);
	CreateInvItem (slf, ItMw_Schwert2);
	CreateInvItem (slf, ItMw_Doppelaxt);
	CreateInvItem (slf, ItMw_Bartaxt);
	CreateInvItem (slf, ItMw_Rapier);
	
	CreateInvItem (slf, ItMw_1h_Special_01);
	CreateInvItem (slf, ItMw_2h_Special_01);
	CreateInvItem (slf, ItMw_1h_Ignite_01);
	CreateInvItem (slf, ItMw_2h_Ignite_01);
	
	/// chapter 3
	CreateInvItem (slf, ItMw_Zweihandaxt);
	CreateInvItem (slf, ItMw_Zweihandhammer);
	CreateInvItem (slf, ItMw_Bastardschwert2);
	CreateInvItem (slf, ItMw_Breitschwert3);
	CreateInvItem (slf, ItMw_Streitkolben);
	CreateInvItem (slf, ItMw_2h_Common_01);
	CreateInvItem (slf, ItMw_2h_Machete_02);
	CreateInvItem (slf, ItMw_2h_Pal_Sword);
	CreateInvItem (slf, ItMw_Rubinklinge);
	CreateInvItem (slf, ItMw_Nachtbann);
	CreateInvItem (slf, ItMw_2h_Keule);
	CreateInvItem (slf, ItMw_Morgenstern);
	CreateInvItem (slf, ItMw_Zweihaender2);
	CreateInvItem (slf, ItMw_Schatzsaebel);
	CreateInvItem (slf, ItMw_Schwert3);
	CreateInvItem (slf, ItMw_Runenschwert);
	CreateInvItem (slf, ItMw_Inquisitor);
	CreateInvItem (slf, ItMw_Schwert5);
	CreateInvItem (slf, ItMw_Florett);
	CreateInvItem (slf, ItMw_Hausordnung);
	CreateInvItem (slf, ItMw_Stachelkeule);
	CreateInvItem (slf, ItMw_Streitaxt2);
	CreateInvItem (slf, ItMw_Bastardschwert3);
	CreateInvItem (slf, ItMw_Zweihaender3);
	CreateInvItem (slf, ItMw_Kriegshammer2);
	CreateInvItem (slf, ItMw_Runenschwert2);
	CreateInvItem (slf, ItMw_ElBastardo);
	CreateInvItem (slf, ItMw_Meisterdegen);
	
	CreateInvItem (slf, ItMw_1h_Special_02);
	CreateInvItem (slf, ItMw_2h_Special_02);
	CreateInvItem (slf, ItMw_1h_Ignite_02);
	CreateInvItem (slf, ItMw_2h_Ignite_02);
	
	/// chapter 4
	CreateInvItem (slf, ItMw_Folteraxt);
	CreateInvItem (slf, ItMw_Krummsaebel);
	CreateInvItem (slf, ItMw_Orkschlaechter);
	CreateInvItem (slf, ItMw_Ahnenschwert);
	CreateInvItem (slf, ItMw_Zweihaender4);
	CreateInvItem (slf, ItMw_Schlachtaxt);
	CreateInvItem (slf, ItMw_Wargskralle);
	CreateInvItem (slf, ItMw_Avalis);
	CreateInvItem (slf, ItMw_Barbarenstreitaxt);
	CreateInvItem (slf, ItMw_Krummschwert);
	
	CreateInvItem (slf, ItMw_1h_Special_03);
	CreateInvItem (slf, ItMw_2h_Special_03);
	CreateInvItem (slf, ItMw_1h_Ignite_03);
	CreateInvItem (slf, ItMw_2h_Ignite_03);
	
	/// chapter 5
	CreateInvItem (slf, ItMw_Sturmbringer);
	CreateInvItem (slf, ItMw_Avalon);
	CreateInvItem (slf, ItMw_Drachenschneide);
	CreateInvItem (slf, ItMw_Berserkeraxt);
	CreateInvItem (slf, ItMw_Seelenernter);
	
	CreateInvItem (slf, ItMw_1h_Special_04);
	CreateInvItem (slf, ItMw_2h_Special_04);
	CreateInvItem (slf, ItMw_1h_Ignite_04);
	CreateInvItem (slf, ItMw_2h_Ignite_04);
	
	/// ROY
	
	
	/// DJG
	CreateInvItem (slf, ItMw_1h_Special_05);
	CreateInvItem (slf, ItMw_2h_Special_05);
	CreateInvItem (slf, ItMw_1h_Ignite_05);
	CreateInvItem (slf, ItMw_2h_Ignite_05);
	
	/// MAG
	CreateInvItem (slf, ItMw_Stab_L_01);
	CreateInvItem (slf, ItMw_Stab_L_02);
	CreateInvItem (slf, ItMw_Stab_L_03);
	CreateInvItem (slf, ItMw_Stab_M_01);
	CreateInvItem (slf, ItMw_Stab_M_02);
	CreateInvItem (slf, ItMw_Stab_M_03);
	CreateInvItem (slf, ItMw_Stab_H_01);
	CreateInvItem (slf, ItMw_Stab_H_02);
	CreateInvItem (slf, ItMw_Stab_H_03);
	CreateInvItem (slf, ItMw_Stab_A_01);
	CreateInvItem (slf, ItMw_Stab_A_02);
	CreateInvItem (slf, ItMw_Stab_A_03);
	
	/// PAL
	CreateInvItem (slf, ItMw_1h_Blessed_01);
	CreateInvItem (slf, ItMw_2h_Blessed_01);
	CreateInvItem (slf, ItMw_1h_Blessed_02);
	CreateInvItem (slf, ItMw_2h_Blessed_02);
	CreateInvItem (slf, ItMw_1h_Blessed_03);
	CreateInvItem (slf, ItMw_2h_Blessed_03);
	
	CreateInvItem (slf, ItMw_1h_Innos);
	CreateInvItem (slf, ItMw_2h_Innos);
	
	/// ASA
	
	
	/// iron
	CreateInvItem (slf, ItMw_Iron_Axe);
	CreateInvItem (slf, ItMw_Iron_BroadSword);
	CreateInvItem (slf, ItMw_Iron_Claymore);
	CreateInvItem (slf, ItMw_Iron_Club);
	CreateInvItem (slf, ItMw_Iron_Dagger);
	CreateInvItem (slf, ItMw_Iron_HeavyClaymore);
	CreateInvItem (slf, ItMw_Iron_LongSword);
	CreateInvItem (slf, ItMw_Iron_Mace);
	CreateInvItem (slf, ItMw_Iron_MasterSword);
	CreateInvItem (slf, ItMw_Iron_ShortSword);
	CreateInvItem (slf, ItMw_Iron_WarAxe);
	CreateInvItem (slf, ItMw_Iron_WarHammer);
	
	/// steel
	CreateInvItem (slf, ItMw_Steel_Axe);
	CreateInvItem (slf, ItMw_Steel_BroadSword);
	CreateInvItem (slf, ItMw_Steel_Claymore);
	CreateInvItem (slf, ItMw_Steel_Club);
	CreateInvItem (slf, ItMw_Steel_Dagger);
	CreateInvItem (slf, ItMw_Steel_HeavyClaymore);
	CreateInvItem (slf, ItMw_Steel_LongSword);
	CreateInvItem (slf, ItMw_Steel_Mace);
	CreateInvItem (slf, ItMw_Steel_MasterSword);
	CreateInvItem (slf, ItMw_Steel_ShortSword);
	CreateInvItem (slf, ItMw_Steel_WarAxe);
	CreateInvItem (slf, ItMw_Steel_WarHammer);
	
	/// wza
	CreateInvItem (slf, ItMw_Broom);
	CreateInvItem (slf, ItMw_BusterSword);
	CreateInvItem (slf, ItMw_Chainsaw);
	CreateInvItem (slf, ItMw_LightSaber);
	
	/// mission
	CreateInvItem (slf, ItMw_AlriksSword);
	CreateInvItem (slf, ItMw_2h_Rod);
	CreateInvItem (slf, Holy_Hammer_MIS);
	CreateInvItem (slf, ItMw_1h_FerrosSword);
	CreateInvItem (slf, ItMw_Addon_Betty);
	CreateInvItem (slf, ItMw_BeliarWeapon);
};

///******************************************************************************************
func void GiveAll_Meshes (var C_Npc slf)
{
	/// bodies
	CreateInvItem (slf, ItMe_Orc);
	CreateInvItem (slf, ItMe_Sheep);
	
	/// manmade
	CreateInvItem (slf, ItMe_Altar);
	CreateInvItem (slf, ItMe_Cannon);
	CreateInvItem (slf, ItMe_CannonBalls);
	CreateInvItem (slf, ItMe_Car);
	CreateInvItem (slf, ItMe_Cart_01);
	CreateInvItem (slf, ItMe_Coffin);
	CreateInvItem (slf, ItMe_Furnace);
	CreateInvItem (slf, ItMe_Gallows);
	CreateInvItem (slf, ItMe_PalArmor);
	CreateInvItem (slf, ItMe_Rope);
	
	CreateInvItem (slf, ItMe_Barrel_01);
	CreateInvItem (slf, ItMe_Barrel_02);
	CreateInvItem (slf, ItMe_Barrel_03);
	CreateInvItem (slf, ItMe_Barrel_Weapon);
	
	CreateInvItem (slf, ItMe_Boat_01);
	CreateInvItem (slf, ItMe_Boat_02);
	CreateInvItem (slf, ItMe_Boat_03);
	CreateInvItem (slf, ItMe_Ship_01);
	CreateInvItem (slf, ItMe_ShipWreck_01);
	CreateInvItem (slf, ItMe_ShipWreck_02);
	
	CreateInvItem (slf, ItMe_BookShelf_01);
	CreateInvItem (slf, ItMe_BookStand_01);
	CreateInvItem (slf, ItMe_BookStand_02);
	CreateInvItem (slf, ItMe_BookStand_03);
	CreateInvItem (slf, ItMe_Cupboard_01);
	CreateInvItem (slf, ItMe_Cupboard_02);
	CreateInvItem (slf, ItMe_Cupboard_03);
	CreateInvItem (slf, ItMe_Cupboard_04);
	
	CreateInvItem (slf, ItMe_Crate_01);
	CreateInvItem (slf, ItMe_Crate_02);
	CreateInvItem (slf, ItMe_Crate_03);
	
	CreateInvItem (slf, ItMe_FirePlace_01);
	CreateInvItem (slf, ItMe_FirePlace_02);
	
	CreateInvItem (slf, ItMe_FishingNet_01);
	CreateInvItem (slf, ItMe_FishingNet_02);
	CreateInvItem (slf, ItMe_FishingNet_03);
	
	CreateInvItem (slf, ItMe_Grave_01);
	CreateInvItem (slf, ItMe_Grave_02);
	CreateInvItem (slf, ItMe_Grave_03);
	
	CreateInvItem (slf, ItMe_GoldHeap);
	CreateInvItem (slf, ItMe_OreHeap);
	CreateInvItem (slf, ItMe_Treasure);
	
	CreateInvItem (slf, ItMe_Hut_01);
	CreateInvItem (slf, ItMe_Hut_02);
	CreateInvItem (slf, ItMe_Hut_03);
	
	CreateInvItem (slf, ItMe_Market_01);
	CreateInvItem (slf, ItMe_Market_02);
	CreateInvItem (slf, ItMe_Market_03);
	CreateInvItem (slf, ItMe_Market_04);
	
	CreateInvItem (slf, ItMe_OrcStatue);
	CreateInvItem (slf, ItMe_PalStatue);
	CreateInvItem (slf, ItMe_StoneGuardian);
	
	CreateInvItem (slf, ItMe_Platform_01);
	CreateInvItem (slf, ItMe_Platform_02);
	CreateInvItem (slf, ItMe_Platform_03);
	
	CreateInvItem (slf, ItMe_Skeleton_01);
	CreateInvItem (slf, ItMe_Skeleton_02);
	CreateInvItem (slf, ItMe_Skeleton_03);
	CreateInvItem (slf, ItMe_Skeleton_04);
	
	CreateInvItem (slf, ItMe_Table_01);
	CreateInvItem (slf, ItMe_Table_02);
	CreateInvItem (slf, ItMe_Table_03);
	CreateInvItem (slf, ItMe_Table_04);
	CreateInvItem (slf, ItMe_Table_05);
	
	CreateInvItem (slf, ItMe_Torture_01);
	CreateInvItem (slf, ItMe_Torture_02);
	CreateInvItem (slf, ItMe_Torture_03);
	CreateInvItem (slf, ItMe_Torture_04);
	CreateInvItem (slf, ItMe_Torture_05);
	
	CreateInvItem (slf, ItMe_Books_01);
	CreateInvItem (slf, ItMe_Map_01);
	CreateInvItem (slf, ItMe_Map_02);
	CreateInvItem (slf, ItMe_Scrolls_01);
	CreateInvItem (slf, ItMe_Scrolls_02);
	
	CreateInvItem (slf, ItMe_Penta);
	
	/// mobs
	CreateInvItem (slf, ItMe_Anvil);
	CreateInvItem (slf, ItMe_Cauldron);
	CreateInvItem (slf, ItMe_Lab);
	CreateInvItem (slf, ItMe_RuneMaker);
	CreateInvItem (slf, ItMe_Sharp);
	CreateInvItem (slf, ItMe_Stove);
	CreateInvItem (slf, ItMe_WaterBucket);
	CreateInvItem (slf, ItMe_WaterPipe);
	
	CreateInvItem (slf, ItMe_AdanosStatue_01);
	CreateInvItem (slf, ItMe_BeliarStatue_01);
	CreateInvItem (slf, ItMe_InnosStatue_01);
	
	CreateInvItem (slf, ItMe_Bed_01);
	CreateInvItem (slf, ItMe_Bed_02);
	CreateInvItem (slf, ItMe_Bed_03);
	CreateInvItem (slf, ItMe_Bed_04);
	
	CreateInvItem (slf, ItMe_Bench_01);
	CreateInvItem (slf, ItMe_Bench_02);
	CreateInvItem (slf, ItMe_Bench_03);
	
	CreateInvItem (slf, ItMe_Chair_01);
	CreateInvItem (slf, ItMe_Chair_02);
	
	CreateInvItem (slf, ItMe_Chest_01);
	CreateInvItem (slf, ItMe_Chest_02);
	CreateInvItem (slf, ItMe_Chest_03);
	CreateInvItem (slf, ItMe_Chest_04);
	
	CreateInvItem (slf, ItMe_Throne_01);
	CreateInvItem (slf, ItMe_Throne_02);
	
	/// nature
	CreateInvItem (slf, ItMe_Bush_01);
	CreateInvItem (slf, ItMe_Bush_02);
	
	CreateInvItem (slf, ItMe_Crystal_01);
	CreateInvItem (slf, ItMe_Crystal_02);
	CreateInvItem (slf, ItMe_Crystal_03);
	CreateInvItem (slf, ItMe_Crystal_04);
	
	CreateInvItem (slf, ItMe_BigStone);
	
	CreateInvItem (slf, ItMe_OldTree_01);
	CreateInvItem (slf, ItMe_OldTree_02);
	
	CreateInvItem (slf, ItMe_Straw_01);
	CreateInvItem (slf, ItMe_Straw_02);
	CreateInvItem (slf, ItMe_Straw_03);
	
	CreateInvItem (slf, ItMe_Tree_01);
	CreateInvItem (slf, ItMe_Tree_02);
	CreateInvItem (slf, ItMe_Tree_03);
	
	/// orcmade
	CreateInvItem (slf, ItMe_Palissade);
	CreateInvItem (slf, ItMe_Tower);
	
	CreateInvItem (slf, ItMe_Tent_01);
	CreateInvItem (slf, ItMe_Tent_02);
	CreateInvItem (slf, ItMe_Tent_03);
	CreateInvItem (slf, ItMe_Tent_04);
};

///******************************************************************************************
func void GiveAll_Misc (var C_Npc slf)
{
	/// alchemy
	CreateInvItems (slf, ItMi_Flask, 10);
	CreateInvItems (slf, ItMi_HolyWater, 10);
	CreateInvItems (slf, ItMi_Quicksilver, 10);
	
	/// enchanting
	CreateInvItems (slf, ItMi_Ink, 10);
	CreateInvItems (slf, ItMi_MagicPowder, 10);
	CreateInvItems (slf, ItMi_RuneBlank, 10);
	CreateInvItems (slf, ItMi_Scrolls, 10);
	
	/// fletchery
	CreateInvItems (slf, ItMi_Arrowhead, 10);
	CreateInvItems (slf, ItMi_BlackPowder, 10);
	CreateInvItems (slf, ItMi_Wood, 10);
	
	/// resources
	CreateInvItems (slf, ItMi_Calcium, 10);
	CreateInvItems (slf, ItMi_Coal, 10);
	CreateInvItems (slf, ItMi_Iron, 10);
	CreateInvItems (slf, ItMi_Quartz, 10);
	CreateInvItems (slf, ItMi_RockCrystal, 10);
	CreateInvItems (slf, ItMi_Saltpeter, 10);
	CreateInvItems (slf, ItMi_Sulfur, 10);
	
	CreateInvItems (slf, ItMi_Nugget, 10);
	CreateInvItems (slf, ItMi_RedNugget, 10);
	
	/// smith
	CreateInvItems (slf, ItMiSwordraw, 10);
	CreateInvItems (slf, ItMiSwordrawhot, 10);
	CreateInvItems (slf, ItMiSwordbladehot, 10);
	CreateInvItems (slf, ItMiSwordblade, 10);
	
	/// tools
	CreateInvItem (slf, ItMi_Alarmhorn);
	CreateInvItem (slf, ItMi_Broom);
	CreateInvItem (slf, ItMi_Brush);
	CreateInvItem (slf, ItMi_Dice);
	CreateInvItem (slf, ItMi_FishingRod);
	CreateInvItem (slf, ItMi_Hammer);
	CreateInvItem (slf, ItMi_InkPen);
	CreateInvItem (slf, ItMi_Knife);
	CreateInvItem (slf, ItMi_Lute);
	CreateInvItem (slf, ItMi_Pan);
	CreateInvItem (slf, ItMi_PanFull);
	CreateInvItem (slf, ItMi_Pliers);
	CreateInvItem (slf, ItMi_Rake);
	CreateInvItem (slf, ItMi_Saw);
	CreateInvItem (slf, ItMi_Scoop);
	CreateInvItem (slf, ItMi_Sextant);
	CreateInvItem (slf, ItMi_Spade);
	CreateInvItem (slf, ItMi_Stomper);
	CreateInvItem (slf, ItMi_Woodaxe);
	
	/// torches
	CreateInvItems (slf, ItLsTorch, 10);
	
	CreateInvItems (slf, ItMi_Pitch, 10);
	CreateInvItems (slf, ItMi_Resin, 10);
	
	/// uncategorized
	CreateInvItems (slf, ItMi_EmptyBottle, 10);
	CreateInvItems (slf, ItKe_Lockpick, 10);
};

///******************************************************************************************
func void GiveAll_Munition (var C_Npc slf)
{
	/// arrows
	CreateInvItems (slf, ItRw_Arrow, 1000);
	CreateInvItems (slf, ItRw_SharpArrow, 100);
	CreateInvItems (slf, ItRw_HuntingArrow, 100);
	CreateInvItems (slf, ItRw_QuartzArrow, 100);
	CreateInvItems (slf, ItRw_BangArrow, 100);
	CreateInvItems (slf, ItRw_FireArrow, 100);
	CreateInvItems (slf, ItRw_PoisonArrow, 100);
	CreateInvItems (slf, ItRw_ExplosiveArrow, 100);
	CreateInvItems (slf, ItRw_MagicArrow, 100);
	
	/// bolts
	CreateInvItems (slf, ItRw_Bolt, 1000);
	CreateInvItems (slf, ItRw_SharpBolt, 100);
	CreateInvItems (slf, ItRw_MagicBolt, 100);
	
	/// ammo
	CreateInvItems (slf, ItRw_Ammo, 1000);
	CreateInvItems (slf, ItRw_HAmmo, 10);
	CreateInvItems (slf, ItRw_BAmmo, 10);
	
	/// ammo boxes
	CreateInvItem (slf, ItSe_AmmoBox_01);
	CreateInvItem (slf, ItSe_AmmoBox_02);
	CreateInvItem (slf, ItSe_AmmoBox_03);
};

///******************************************************************************************
func void GiveAll_Plants (var C_Npc slf)
{
	/// componenets
	CreateInvItems (slf, ItPl_Temp_Herb, 10);
	CreateInvItems (slf, ItPl_Perm_Herb, 10);
	
	/// health
	CreateInvItems (slf, ItPl_Health_Herb_01, 10);
	CreateInvItems (slf, ItPl_Health_Herb_02, 10);
	CreateInvItems (slf, ItPl_Health_Herb_03, 10);
	
	/// mana
	CreateInvItems (slf, ItPl_Mana_Herb_01, 10);
	CreateInvItems (slf, ItPl_Mana_Herb_02, 10);
	CreateInvItems (slf, ItPl_Mana_Herb_03, 10);
	
	/// stamina
	CreateInvItems (slf, ItPl_Speed_Herb_01, 10);
	
	/// perception
	CreateInvItems (slf, ItPl_SwampHerb, 10);
	CreateInvItems (slf, ItPl_DesertHerb, 10);
	
	/// perm
	CreateInvItems (slf, ItPl_Health_Herb_04, 10);
	CreateInvItems (slf, ItPl_Mana_Herb_04, 10);
	CreateInvItems (slf, ItPl_Strength_Herb_01, 10);
	CreateInvItems (slf, ItPl_Dex_Herb_01, 10);
	CreateInvItems (slf, ItPl_Power_Herb_01, 10);
	
	/// other
	CreateInvItems (slf, ItPl_Blueplant, 10);
	CreateInvItems (slf, ItPl_GraveMoss, 10);
	CreateInvItems (slf, ItPl_MountainMoss, 10);
	CreateInvItems (slf, ItPl_Purpleplant, 10);
	CreateInvItems (slf, ItPl_Seaweed, 10);
	CreateInvItems (slf, ItPl_Stonereed, 10);
	
	/// mushrooms
	CreateInvItems (slf, ItPl_Mushroom_01, 10);
	CreateInvItems (slf, ItPl_Mushroom_02, 10);
	CreateInvItems (slf, ItPl_Mushroom_03, 10);
	CreateInvItems (slf, ItPl_Mushroom_04, 10);
	CreateInvItems (slf, ItPl_Mushroom_05, 10);
	CreateInvItems (slf, ItPl_Mushroom_06, 10);
	CreateInvItems (slf, ItPl_Mushroom_07, 10);
	CreateInvItems (slf, ItPl_Mushroom_08, 10);
	
	/// common
	CreateInvItems (slf, ItPl_Beet, 10);
	CreateInvItems (slf, ItPl_Forestberry, 10);
	CreateInvItems (slf, ItPl_Planeberry, 10);
	CreateInvItems (slf, ItPl_Weed, 10);
	
	/// joints
	CreateInvItems (slf, ItMi_DesertJoint, 10);
	CreateInvItems (slf, ItMi_Joint, 10);
	CreateInvItems (slf, ItMi_SleJoint, 10);
	
	/// tabak
	CreateInvItems (slf, ItMi_Tabak, 10);
	CreateInvItems (slf, ItMi_ChocolateTabak, 10);
	CreateInvItems (slf, ItMi_CoconutTabak, 10);
	CreateInvItems (slf, ItMi_FruitTabak, 10);
	CreateInvItems (slf, ItMi_HoneyTabak, 10);
	CreateInvItems (slf, ItMi_MushroomTabak, 10);
	CreateInvItems (slf, ItMi_SwampTabak, 10);
};

///******************************************************************************************
func void GiveAll_Potions (var C_Npc slf)
{
	/// health
	CreateInvItems (slf, ItPo_Health_01, 10);
	CreateInvItems (slf, ItPo_Health_02, 10);
	CreateInvItems (slf, ItPo_Health_03, 10);
	CreateInvItems (slf, ItPo_Health_Addon_04, 10);
	CreateInvItems (slf, ItPo_Health_Addon_05, 10);
	CreateInvItems (slf, ItPo_Health_Addon_06, 10);
	
	/// mana
	CreateInvItems (slf, ItPo_Mana_01, 10);
	CreateInvItems (slf, ItPo_Mana_02, 10);
	CreateInvItems (slf, ItPo_Mana_03, 10);
	CreateInvItems (slf, ItPo_Mana_Addon_04, 10);
	CreateInvItems (slf, ItPo_Mana_Addon_05, 10);
	CreateInvItems (slf, ItPo_Mana_Addon_06, 10);
	
	/// stamina
	CreateInvItems (slf, ItPo_Stamina_01, 10);
	CreateInvItems (slf, ItPo_Stamina_02, 10);
	CreateInvItems (slf, ItPo_Stamina_03, 10);
	CreateInvItems (slf, ItPo_Stamina_Addon_04, 10);
	CreateInvItems (slf, ItPo_Stamina_Addon_05, 10);
	CreateInvItems (slf, ItPo_Stamina_Addon_06, 10);
	
	/// blueplant
	CreateInvItems (slf, ItPo_Blueplant_01, 10);
	CreateInvItems (slf, ItPo_Blueplant_02, 10);
	CreateInvItems (slf, ItPo_Blueplant_03, 10);
	CreateInvItems (slf, ItPo_Blueplant_Addon_04, 10);
	CreateInvItems (slf, ItPo_Blueplant_Addon_05, 10);
	CreateInvItems (slf, ItPo_Blueplant_Addon_06, 10);
	
	/// shield
	CreateInvItems (slf, ItPo_Shield_01, 10);
	CreateInvItems (slf, ItPo_Shield_02, 10);
	CreateInvItems (slf, ItPo_Shield_03, 10);
	
	/// temp
	CreateInvItems (slf, ItPo_Temp_Health, 10);
	CreateInvItems (slf, ItPo_Temp_Mana, 10);
	CreateInvItems (slf, ItPo_Temp_Stamina, 10);
	CreateInvItems (slf, ItPo_Temp_Str, 10);
	CreateInvItems (slf, ItPo_Temp_Dex, 10);
	CreateInvItems (slf, ItPo_Temp_Pow, 10);
	CreateInvItems (slf, ItPo_Temp_Prot, 10);
	
	/// perm
	CreateInvItems (slf, ItPo_Perm_Health, 10);
	CreateInvItems (slf, ItPo_Perm_Mana, 10);
	CreateInvItems (slf, ItPo_Perm_Stamina, 10);
	CreateInvItems (slf, ItPo_Perm_Str, 10);
	CreateInvItems (slf, ItPo_Perm_Dex, 10);
	CreateInvItems (slf, ItPo_Perm_Pow, 10);
	CreateInvItems (slf, ItPo_Perm_Prot, 10);
	
	/// other
	CreateInvItems (slf, ItPo_Flame, 10);
	CreateInvItems (slf, ItPo_Geist, 10);
	CreateInvItems (slf, ItPo_HealObsession, 10);
	CreateInvItems (slf, ItPo_NightVision, 10);
	CreateInvItems (slf, ItPo_Poison, 10);
	CreateInvItems (slf, ItPo_Speed, 10);
	CreateInvItems (slf, ItPo_Stealth, 10);
	CreateInvItems (slf, ItPo_Underwater, 10);
	
	/// transform
	CreateInvItem (slf, ItSc_TrfAlligator);
	CreateInvItem (slf, ItSc_TrfBiter);
	CreateInvItem (slf, ItSc_TrfBloodfly);
	CreateInvItem (slf, ItSc_TrfBloodhound);
	CreateInvItem (slf, ItSc_TrfDemon);
	CreateInvItem (slf, ItSc_TrfDragonSnapper);
	CreateInvItem (slf, ItSc_TrfFireWaran);
	CreateInvItem (slf, ItSc_TrfGiantBug);
	CreateInvItem (slf, ItSc_TrfGiantRat);
	CreateInvItem (slf, ItSc_TrfGiantSpider);
	CreateInvItem (slf, ItSc_TrfGoat);
	CreateInvItem (slf, ItSc_TrfGoblin);
	CreateInvItem (slf, ItSc_TrfGorilla);
	CreateInvItem (slf, ItSc_TrfHare);
	CreateInvItem (slf, ItSc_TrfHarpy);
	CreateInvItem (slf, ItSc_TrfKeiler);
	CreateInvItem (slf, ItSc_TrfLurker);
	CreateInvItem (slf, ItSc_TrfMinecrawler);
	CreateInvItem (slf, ItSc_TrfMolerat);
	CreateInvItem (slf, ItSc_TrfScavenger);
	CreateInvItem (slf, ItSc_TrfShadowbeast);
	CreateInvItem (slf, ItSc_TrfSheep);
	CreateInvItem (slf, ItSc_TrfSnapper);
	CreateInvItem (slf, ItSc_TrfSpint);
	CreateInvItem (slf, ItSc_TrfSwampshark);
	CreateInvItem (slf, ItSc_TrfTiger);
	CreateInvItem (slf, ItSc_TrfTroll);
	CreateInvItem (slf, ItSc_TrfWaran);
	CreateInvItem (slf, ItSc_TrfWarg);
	CreateInvItem (slf, ItSc_TrfWolf);
	
	/// special
	CreateInvItem (slf, ItPo_DragonEggDrink);
	CreateInvItem (slf, ItPo_Ghost);
	CreateInvItem (slf, ItPo_InnosTears);
	CreateInvItem (slf, ItPo_MegaDrink);
};

///******************************************************************************************
func void GiveAll_RangedWeapons (var C_Npc slf)
{
	/// bows
	CreateInvItem (slf, ItRw_Bow_L_01);
	CreateInvItem (slf, ItRw_Bow_L_02);
	CreateInvItem (slf, ItRw_Bow_L_03);
	CreateInvItem (slf, ItRw_Bow_L_04);
	CreateInvItem (slf, ItRw_Bow_M_01);
	CreateInvItem (slf, ItRw_Bow_M_02);
	CreateInvItem (slf, ItRw_Bow_M_03);
	CreateInvItem (slf, ItRw_Bow_M_04);
	CreateInvItem (slf, ItRw_Bow_M_05);
	CreateInvItem (slf, ItRw_Bow_M_06);
	CreateInvItem (slf, ItRw_Bow_M_07);
	CreateInvItem (slf, ItRw_Bow_M_08);
	CreateInvItem (slf, ItRw_Bow_H_01);
	CreateInvItem (slf, ItRw_Bow_H_02);
	CreateInvItem (slf, ItRw_Bow_H_03);
	CreateInvItem (slf, ItRw_Bow_H_04);
	
	/// crossbows
	CreateInvItem (slf, ItRw_Crossbow_L_01);
	CreateInvItem (slf, ItRw_Crossbow_L_02);
	CreateInvItem (slf, ItRw_Crossbow_M_01);
	CreateInvItem (slf, ItRw_Crossbow_M_02);
	CreateInvItem (slf, ItRw_Crossbow_H_01);
	CreateInvItem (slf, ItRw_Crossbow_H_02);
	
	/// guns
	CreateInvItem (slf, ItRw_Gun1);
	CreateInvItem (slf, ItRw_Gun2);
	CreateInvItem (slf, ItRw_Gun3);
	CreateInvItem (slf, ItRw_Gun4);
	CreateInvItem (slf, ItRw_Gun5);
	CreateInvItem (slf, ItRw_Gun6);
	CreateInvItem (slf, ItRw_Gun7);
	CreateInvItem (slf, ItRw_Gun8);
	CreateInvItem (slf, ItRw_Gun9);
	
	/// heavy guns
	CreateInvItem (slf, ItRw_HGun1);
	CreateInvItem (slf, ItRw_HGun2);
	CreateInvItem (slf, ItRw_HGun3);
	CreateInvItem (slf, ItRw_HGun4);
};

///******************************************************************************************
func void GiveAll_Recipes (var C_Npc slf)
{
	/// fletchery
	CreateInvItem (slf, ItRe_FLETCHERY_Ammo);
	
	/// cooking
	CreateInvItem (slf, ItRe_COOKING_BugPulp);
	CreateInvItem (slf, ItRe_COOKING_ForestStew);
	CreateInvItem (slf, ItRe_COOKING_FriedPasta);
	CreateInvItem (slf, ItRe_COOKING_HoneyOatmeal);
	CreateInvItem (slf, ItRe_COOKING_JamPaste);
	CreateInvItem (slf, ItRe_COOKING_MeatCauldron);
	CreateInvItem (slf, ItRe_COOKING_MeatStew);
	CreateInvItem (slf, ItRe_COOKING_Pilaf);
	CreateInvItem (slf, ItRe_COOKING_Puree);
	CreateInvItem (slf, ItRe_COOKING_Salad);
	CreateInvItem (slf, ItRe_COOKING_ScrambledEggs);
	CreateInvItem (slf, ItRe_COOKING_Spaghetti);
	CreateInvItem (slf, ItRe_COOKING_SpicyStew);
	CreateInvItem (slf, ItRe_COOKING_Stew);
	CreateInvItem (slf, ItRe_COOKING_StewedVegetables);
	CreateInvItem (slf, ItRe_COOKING_WineStew);
	
	CreateInvItem (slf, ItRe_COOKING_BerrySoup);
	CreateInvItem (slf, ItRe_COOKING_CabbageSoup);
	CreateInvItem (slf, ItRe_COOKING_CheeseSoup);
	CreateInvItem (slf, ItRe_COOKING_FishSoup);
	CreateInvItem (slf, ItRe_COOKING_GreenSoup);
	CreateInvItem (slf, ItRe_COOKING_HoneySoup);
	CreateInvItem (slf, ItRe_COOKING_MilkSoup);
	CreateInvItem (slf, ItRe_COOKING_MushroomSoup);
	CreateInvItem (slf, ItRe_COOKING_OnionSoup);
	CreateInvItem (slf, ItRe_COOKING_OysterSoup);
	CreateInvItem (slf, ItRe_COOKING_SausageSoup);
	CreateInvItem (slf, ItRe_COOKING_SpicySoup);
	CreateInvItem (slf, ItRe_COOKING_AppleCompote);
	CreateInvItem (slf, ItRe_COOKING_BerryCompote);
	CreateInvItem (slf, ItRe_COOKING_PearCompote);
	CreateInvItem (slf, ItRe_COOKING_BlueDecoction);
	
	CreateInvItem (slf, ItRe_COOKING_Booze);
	CreateInvItem (slf, ItRe_COOKING_Mead);
	CreateInvItem (slf, ItRe_COOKING_Sake);
	CreateInvItem (slf, ItRe_COOKING_SourWine);
	CreateInvItem (slf, ItRe_COOKING_Wine);
};

///******************************************************************************************
func void GiveAll_Rings (var C_Npc slf)
{
	CreateInvItem (slf, ItRi_Prot_Blunt_01);
	CreateInvItem (slf, ItRi_Prot_Edge_01);
	CreateInvItem (slf, ItRi_Prot_Point_01);
	CreateInvItem (slf, ItRi_Prot_Fire_01);
	CreateInvItem (slf, ItRi_Prot_Magic_01);
	CreateInvItem (slf, ItRi_Prot_Total_01);
	CreateInvItem (slf, ItRi_Persistence_01);
	CreateInvItem (slf, ItRi_Tenacity_01);
	CreateInvItem (slf, ItRi_Harmony_01);
	CreateInvItem (slf, ItRi_Custody_01);
	CreateInvItem (slf, ItRi_Wisdom_01);
	CreateInvItem (slf, ItRi_Eternity_01);
	CreateInvItem (slf, ItRi_Hp_01);
	CreateInvItem (slf, ItRi_Mp_01);
	CreateInvItem (slf, ItRi_Sp_01);
	CreateInvItem (slf, ItRi_Str_01);
	CreateInvItem (slf, ItRi_Dex_01);
	CreateInvItem (slf, ItRi_Pow_01);
	CreateInvItem (slf, ItRi_Enlightment_01);
	CreateInvItem (slf, ItRi_Roy_01);
	CreateInvItem (slf, ItRi_Pal_01);
	CreateInvItem (slf, ItRi_Djg_01);
	CreateInvItem (slf, ItRi_Asa_01);
	CreateInvItem (slf, ItRi_Mag_01);
	CreateInvItem (slf, ItRi_Throw_01);
	CreateInvItem (slf, ItRi_1h_01);
	CreateInvItem (slf, ItRi_2h_01);
	CreateInvItem (slf, ItRi_Bow_01);
	CreateInvItem (slf, ItRi_Cbow_01);
	CreateInvItem (slf, ItRi_Master_01);
	CreateInvItem (slf, ItRi_Innovation_01);
	CreateInvItem (slf, ItRi_Precision_01);
	CreateInvItem (slf, ItRi_Domination_01);
	CreateInvItem (slf, ItRi_Motivation_01);
	CreateInvItem (slf, ItRi_Liberation_01);
	CreateInvItem (slf, ItRi_Destruction_01);
	CreateInvItem (slf, ItRi_CritDmg_01);
	CreateInvItem (slf, ItRi_AreaDmg_01);
	CreateInvItem (slf, ItRi_Ls_01);
	CreateInvItem (slf, ItRi_MinDmg_01);
};

///******************************************************************************************
func void GiveAll_Runes (var C_Npc slf)
{
	/// basic
	CreateInvItem (slf, ItRu_Light);
	CreateInvItem (slf, ItRu_Heal);
	CreateInvItem (slf, ItRu_Telekinesis);
	
	/// PAL
	CreateInvItem (slf, ItRu_PalBless);
	CreateInvItem (slf, ItRu_PalFaith);
	CreateInvItem (slf, ItRu_PalHolyBolt);
	CreateInvItem (slf, ItRu_PalGlory);
	CreateInvItem (slf, ItRu_PalRepelEvil);
	CreateInvItem (slf, ItRu_PalJustice);
	CreateInvItem (slf, ItRu_PalDestroyEvil);
	
	/// common
	CreateInvItem (slf, ItRu_Resurrection);
	CreateInvItem (slf, ItRu_Rage);
	CreateInvItem (slf, ItRu_Seduction);
	CreateInvItem (slf, ItRu_NightToDay);
	CreateInvItem (slf, ItRu_FireBolt);
	
	CreateInvItem (slf, ItRu_IceBolt);
	CreateInvItem (slf, ItRu_Stealth);
	CreateInvItem (slf, ItRu_SkullBolt);
	CreateInvItem (slf, ItRu_InstantFireball);
	CreateInvItem (slf, ItRu_Zap);
	CreateInvItem (slf, ItRu_Slimeball);
	CreateInvItem (slf, ItRu_WindFist);
	CreateInvItem (slf, ItRu_Sleep);
	CreateInvItem (slf, ItRu_Charm);
	CreateInvItem (slf, ItRu_LightningFlash);
	
	CreateInvItem (slf, ItRu_ChargeFireball);
	CreateInvItem (slf, ItRu_Curse);
	CreateInvItem (slf, ItRu_Fear);
	CreateInvItem (slf, ItRu_IceCube);
	CreateInvItem (slf, ItRu_ChargeZap);
	CreateInvItem (slf, ItRu_SummonGolem);
	CreateInvItem (slf, ItRu_DestroyUndead);
	CreateInvItem (slf, ItRu_Pyrokinesis);
	CreateInvItem (slf, ItRu_Firestorm);
	CreateInvItem (slf, ItRu_IceWave);
	
	CreateInvItem (slf, ItRu_SummonDemon);
	CreateInvItem (slf, ItRu_Explosion);
	CreateInvItem (slf, ItRu_Firerain);
	CreateInvItem (slf, ItRu_BreathOfDeath);
	CreateInvItem (slf, ItRu_MassDeath);
	CreateInvItem (slf, ItRu_ArmyOfDarkness);
	CreateInvItem (slf, ItRu_Shrink);
	CreateInvItem (slf, ItRu_Tame);
	CreateInvItem (slf, ItRu_RunicEchoes);
	CreateInvItem (slf, ItRu_SlowTime);
	
	CreateInvItem (slf, ItRu_HealingAura);
	CreateInvItem (slf, ItRu_StoneSkin);
	CreateInvItem (slf, ItRu_AirShield);
	CreateInvItem (slf, ItRu_FireShield);
	CreateInvItem (slf, ItRu_DarkBarrier);
	
	/// player
	CreateInvItem (slf, ItRu_MasterOfDisaster);
	CreateInvItem (slf, ItRu_BeliarRage);
	
	/// special
	//CreateInvItem (slf, ItRu_Teleport);
	//CreateInvItem (slf, ItRu_Transform);
	//CreateInvItem (slf, ItRu_Summon);
	
	/// npc
	CreateInvItem (slf, ItRu_ConcussionSpell);
	CreateInvItem (slf, ItRu_DeathSpell);
	CreateInvItem (slf, ItRu_DragonBall);
	CreateInvItem (slf, ItRu_BlackDragonBall);
	CreateInvItem (slf, ItRu_BlueFireball);
	CreateInvItem (slf, ItRu_RedFireball);
	
	/// common
	CreateInvItem (slf, ItRu_Thunderstorm);
	CreateInvItem (slf, ItRu_Whirlwind);
	CreateInvItem (slf, ItRu_WaterFist);
	CreateInvItem (slf, ItRu_IceLance);
	CreateInvItem (slf, ItRu_Inflate);
	CreateInvItem (slf, ItRu_Geyser);
	CreateInvItem (slf, ItRu_Fireburning);
	CreateInvItem (slf, ItRu_ChainLightning);
	CreateInvItem (slf, ItRu_Hurricane);
	CreateInvItem (slf, ItRu_LightFlash);
	
	CreateInvItem (slf, ItRu_Plague);
	CreateInvItem (slf, ItRu_Swarm);
	CreateInvItem (slf, ItRu_Greententacle);
	CreateInvItem (slf, ItRu_Earthquake);
	CreateInvItem (slf, ItRu_Rock);
	CreateInvItem (slf, ItRu_Mysticball);
	CreateInvItem (slf, ItRu_SuckEnergy);
	CreateInvItem (slf, ItRu_Skull);
	CreateInvItem (slf, ItRu_Elevate);
	CreateInvItem (slf, ItRu_Crush);
};

///******************************************************************************************
func void GiveAll_Stoneplates (var C_Npc slf)
{
	/// stoneplates
	CreateInvItems (slf, ItWr_Stoneplate_01, 10);
	CreateInvItems (slf, ItWr_Stoneplate_02, 10);
	CreateInvItems (slf, ItWr_Stoneplate_03, 10);
	CreateInvItems (slf, ItWr_Stoneplate_04, 10);
	CreateInvItems (slf, ItWr_Stoneplate_05, 10);
	
	/// recipes
	CreateInvItem (slf, ItRe_FLETCHERY_Ammo);
	
	CreateInvItem (slf, ItRe_COOKING_BugPulp);
	CreateInvItem (slf, ItRe_COOKING_ForestStew);
	CreateInvItem (slf, ItRe_COOKING_FriedPasta);
	CreateInvItem (slf, ItRe_COOKING_HoneyOatmeal);
	CreateInvItem (slf, ItRe_COOKING_JamPaste);
	CreateInvItem (slf, ItRe_COOKING_MeatCauldron);
	CreateInvItem (slf, ItRe_COOKING_MeatStew);
	CreateInvItem (slf, ItRe_COOKING_Pilaf);
	CreateInvItem (slf, ItRe_COOKING_Puree);
	CreateInvItem (slf, ItRe_COOKING_Salad);
	CreateInvItem (slf, ItRe_COOKING_ScrambledEggs);
	CreateInvItem (slf, ItRe_COOKING_Spaghetti);
	CreateInvItem (slf, ItRe_COOKING_SpicyStew);
	CreateInvItem (slf, ItRe_COOKING_Stew);
	CreateInvItem (slf, ItRe_COOKING_StewedVegetables);
	CreateInvItem (slf, ItRe_COOKING_WineStew);
	
	CreateInvItem (slf, ItRe_COOKING_BerrySoup);
	CreateInvItem (slf, ItRe_COOKING_CabbageSoup);
	CreateInvItem (slf, ItRe_COOKING_CheeseSoup);
	CreateInvItem (slf, ItRe_COOKING_FishSoup);
	CreateInvItem (slf, ItRe_COOKING_GreenSoup);
	CreateInvItem (slf, ItRe_COOKING_HoneySoup);
	CreateInvItem (slf, ItRe_COOKING_MilkSoup);
	CreateInvItem (slf, ItRe_COOKING_MushroomSoup);
	CreateInvItem (slf, ItRe_COOKING_OnionSoup);
	CreateInvItem (slf, ItRe_COOKING_OysterSoup);
	CreateInvItem (slf, ItRe_COOKING_SausageSoup);
	CreateInvItem (slf, ItRe_COOKING_SpicySoup);
	CreateInvItem (slf, ItRe_COOKING_AppleCompote);
	CreateInvItem (slf, ItRe_COOKING_BerryCompote);
	CreateInvItem (slf, ItRe_COOKING_PearCompote);
	CreateInvItem (slf, ItRe_COOKING_BlueDecoction);
	
	CreateInvItem (slf, ItRe_COOKING_Booze);
	CreateInvItem (slf, ItRe_COOKING_Mead);
	CreateInvItem (slf, ItRe_COOKING_Sake);
	CreateInvItem (slf, ItRe_COOKING_SourWine);
	CreateInvItem (slf, ItRe_COOKING_Wine);
};

///******************************************************************************************
func void GiveAll_Valuables (var C_Npc slf)
{
	/// coins
	CreateInvItems (slf, ItMi_Gold, 1000);
	CreateInvItems (slf, ItMi_FortuneCoin, 10);
	CreateInvItems (slf, ItMi_AncientCoin, 10);
	CreateInvItems (slf, ItMi_OrcCoin, 10);
	
	/// gold pockets
	CreateInvItem (slf, ItSe_GoldPocket10);
	CreateInvItem (slf, ItSe_GoldPocket25);
	CreateInvItem (slf, ItSe_GoldPocket50);
	CreateInvItem (slf, ItSe_GoldPocket100);
	CreateInvItem (slf, ItSe_GoldPocket200);
	
	/// silver
	CreateInvItems (slf, ItMi_SilverNugget, 10);
	CreateInvItem (slf, ItMi_SilverCandleHolder);
	CreateInvItem (slf, ItMi_SilverChalice);
	CreateInvItem (slf, ItMi_SilverCup);
	CreateInvItem (slf, ItMi_SilverNecklace);
	CreateInvItem (slf, ItMi_SilverPlate);
	CreateInvItem (slf, ItMi_SilverRing);
	
	/// gold
	CreateInvItems (slf, ItMi_GoldNugget_Addon, 10);
	CreateInvItem (slf, ItMi_GoldCandleHolder);
	CreateInvItem (slf, ItMi_GoldChalice);
	CreateInvItem (slf, ItMi_GoldCompass);
	CreateInvItem (slf, ItMi_GoldCup);
	CreateInvItem (slf, ItMi_GoldNecklace);
	CreateInvItem (slf, ItMi_GoldPlate);
	CreateInvItem (slf, ItMi_GoldRing);
	
	/// chests
	CreateInvItem (slf, ItMi_GoldChest);
	CreateInvItem (slf, ItMi_JeweleryChest);
	
	/// statues
	CreateInvItem (slf, ItMi_InnosStatue);
	
	/// gems
	CreateInvItem (slf, ItMi_Aquamarine);
	CreateInvItem (slf, ItMi_Emerald);
	CreateInvItem (slf, ItMi_Ruby);
	CreateInvItem (slf, ItMi_Diamond);
	
	/// pearls
	CreateInvItems (slf, ItMi_WhitePearl, 10);
	CreateInvItems (slf, ItMi_DarkPearl, 10);
	
	/// containers
	CreateInvItems (slf, ItMi_Shell, 10);
	CreateInvItems (slf, ItSe_BigFish, 10);
	CreateInvItems (slf, ItSe_OldChest, 10);
};

///******************************************************************************************
func void GiveAll_Written (var C_Npc slf)
{
	/// lp books
	CreateInvItem (slf, ItWr_BookLp_Fight1H);
	CreateInvItem (slf, ItWr_BookLp_Fight2H);
	CreateInvItem (slf, ItWr_BookLp_StarPower);
	CreateInvItem (slf, ItWr_BookLp_GodsGift);
	CreateInvItem (slf, ItWr_BookLp_SecretsOfMagic);
	CreateInvItem (slf, ItWr_BookLp_PowerfulArt);
	CreateInvItem (slf, ItWr_BookLp_Elementare);
	CreateInvItem (slf, ItWr_BookLp_RealPower);
	CreateInvItem (slf, ItWr_BookLp_MagicOre);
	CreateInvItem (slf, ItWr_BookLp_Varant1);
	CreateInvItem (slf, ItWr_BookLp_Varant2);
	CreateInvItem (slf, ItWr_BookLp_MyrthanianPoetry);
	CreateInvItem (slf, ItWr_BookLp_GodsWisdom1);
	CreateInvItem (slf, ItWr_BookLp_GodsWisdom2);
	CreateInvItem (slf, ItWr_BookLp_GodsWisdom3);
	CreateInvItem (slf, ItWr_BookLp_Hunting);
	CreateInvItem (slf, ItWr_BookLp_Fight);
	CreateInvItem (slf, ItWr_BookLp_Astronomy);
	CreateInvItem (slf, ItWr_BookLp_Focus);
	CreateInvItem (slf, ItWr_BookLp_Golem);
	
	/// xp books
	CreateInvItem (slf, ItWr_BookXp_000);
	CreateInvItem (slf, ItWr_BookXp_001);
	CreateInvItem (slf, ItWr_BookXp_002);
	CreateInvItem (slf, ItWr_BookXp_003);
	CreateInvItem (slf, ItWr_BookXp_004);
	CreateInvItem (slf, ItWr_BookXp_005);
	CreateInvItem (slf, ItWr_BookXp_006);
	CreateInvItem (slf, ItWr_BookXp_007);
	CreateInvItem (slf, ItWr_BookXp_008);
	CreateInvItem (slf, ItWr_BookXp_009);
	CreateInvItem (slf, ItWr_BookXp_010);
	CreateInvItem (slf, ItWr_BookXp_011);
	CreateInvItem (slf, ItWr_BookXp_012);
	CreateInvItem (slf, ItWr_BookXp_013);
	CreateInvItem (slf, ItWr_BookXp_014);
	CreateInvItem (slf, ItWr_BookXp_015);
	CreateInvItem (slf, ItWr_BookXp_016);
	CreateInvItem (slf, ItWr_BookXp_017);
	CreateInvItem (slf, ItWr_BookXp_018);
	CreateInvItem (slf, ItWr_BookXp_019);
	CreateInvItem (slf, ItWr_BookXp_020);
	CreateInvItem (slf, ItWr_BookXp_021);
	CreateInvItem (slf, ItWr_BookXp_022);
	CreateInvItem (slf, ItWr_BookXp_023);
	CreateInvItem (slf, ItWr_BookXp_024);
	CreateInvItem (slf, ItWr_BookXp_025);
	CreateInvItem (slf, ItWr_BookXp_026);
	CreateInvItem (slf, ItWr_BookXp_027);
	CreateInvItem (slf, ItWr_BookXp_028);
	CreateInvItem (slf, ItWr_BookXp_029);
	CreateInvItem (slf, ItWr_BookXp_030);
	CreateInvItem (slf, ItWr_BookXp_031);
	CreateInvItem (slf, ItWr_BookXp_032);
	CreateInvItem (slf, ItWr_BookXp_033);
	CreateInvItem (slf, ItWr_BookXp_034);
	CreateInvItem (slf, ItWr_BookXp_035);
	CreateInvItem (slf, ItWr_BookXp_036);
	CreateInvItem (slf, ItWr_BookXp_037);
	CreateInvItem (slf, ItWr_BookXp_038);
	CreateInvItem (slf, ItWr_BookXp_039);
	CreateInvItem (slf, ItWr_BookXp_040);
	CreateInvItem (slf, ItWr_BookXp_041);
	CreateInvItem (slf, ItWr_BookXp_042);
	CreateInvItem (slf, ItWr_BookXp_043);
	CreateInvItem (slf, ItWr_BookXp_044);
	CreateInvItem (slf, ItWr_BookXp_045);
	CreateInvItem (slf, ItWr_BookXp_046);
	CreateInvItem (slf, ItWr_BookXp_047);
	CreateInvItem (slf, ItWr_BookXp_048);
	CreateInvItem (slf, ItWr_BookXp_049);
	CreateInvItem (slf, ItWr_BookXp_050);
	CreateInvItem (slf, ItWr_BookXp_051);
	CreateInvItem (slf, ItWr_BookXp_052);
	CreateInvItem (slf, ItWr_BookXp_053);
	CreateInvItem (slf, ItWr_BookXp_054);
	CreateInvItem (slf, ItWr_BookXp_055);
	CreateInvItem (slf, ItWr_BookXp_056);
	CreateInvItem (slf, ItWr_BookXp_057);
	CreateInvItem (slf, ItWr_BookXp_058);
	CreateInvItem (slf, ItWr_BookXp_059);
	CreateInvItem (slf, ItWr_BookXp_060);
	CreateInvItem (slf, ItWr_BookXp_061);
	CreateInvItem (slf, ItWr_BookXp_062);
	CreateInvItem (slf, ItWr_BookXp_063);
	CreateInvItem (slf, ItWr_BookXp_064);
	CreateInvItem (slf, ItWr_BookXp_065);
	CreateInvItem (slf, ItWr_BookXp_066);
	CreateInvItem (slf, ItWr_BookXp_067);
	CreateInvItem (slf, ItWr_BookXp_068);
	CreateInvItem (slf, ItWr_BookXp_069);
	CreateInvItem (slf, ItWr_BookXp_070);
	CreateInvItem (slf, ItWr_BookXp_071);
	CreateInvItem (slf, ItWr_BookXp_072);
	CreateInvItem (slf, ItWr_BookXp_073);
	CreateInvItem (slf, ItWr_BookXp_074);
	CreateInvItem (slf, ItWr_BookXp_075);
	CreateInvItem (slf, ItWr_BookXp_076);
	CreateInvItem (slf, ItWr_BookXp_077);
	CreateInvItem (slf, ItWr_BookXp_078);
	CreateInvItem (slf, ItWr_BookXp_079);
	CreateInvItem (slf, ItWr_BookXp_080);
	CreateInvItem (slf, ItWr_BookXp_081);
	CreateInvItem (slf, ItWr_BookXp_082);
	CreateInvItem (slf, ItWr_BookXp_083);
	CreateInvItem (slf, ItWr_BookXp_084);
	CreateInvItem (slf, ItWr_BookXp_085);
	CreateInvItem (slf, ItWr_BookXp_086);
	CreateInvItem (slf, ItWr_BookXp_087);
	CreateInvItem (slf, ItWr_BookXp_088);
	CreateInvItem (slf, ItWr_BookXp_089);
	CreateInvItem (slf, ItWr_BookXp_090);
	CreateInvItem (slf, ItWr_BookXp_091);
	CreateInvItem (slf, ItWr_BookXp_092);
	CreateInvItem (slf, ItWr_BookXp_093);
	CreateInvItem (slf, ItWr_BookXp_094);
	CreateInvItem (slf, ItWr_BookXp_095);
	CreateInvItem (slf, ItWr_BookXp_096);
	CreateInvItem (slf, ItWr_BookXp_097);
	CreateInvItem (slf, ItWr_BookXp_098);
	CreateInvItem (slf, ItWr_BookXp_099);
	CreateInvItem (slf, ItWr_BookXp_100);
	CreateInvItem (slf, ItWr_BookXp_101);
	CreateInvItem (slf, ItWr_BookXp_102);
	CreateInvItem (slf, ItWr_BookXp_103);
	CreateInvItem (slf, ItWr_BookXp_104);
	CreateInvItem (slf, ItWr_BookXp_105);
	CreateInvItem (slf, ItWr_BookXp_106);
	CreateInvItem (slf, ItWr_BookXp_107);
	CreateInvItem (slf, ItWr_BookXp_108);
	CreateInvItem (slf, ItWr_BookXp_109);
	CreateInvItem (slf, ItWr_BookXp_110);
	CreateInvItem (slf, ItWr_BookXp_111);
	CreateInvItem (slf, ItWr_BookXp_112);
	CreateInvItem (slf, ItWr_BookXp_113);
	CreateInvItem (slf, ItWr_BookXp_114);
	CreateInvItem (slf, ItWr_BookXp_115);
	CreateInvItem (slf, ItWr_BookXp_116);
	CreateInvItem (slf, ItWr_BookXp_117);
	CreateInvItem (slf, ItWr_BookXp_118);
	CreateInvItem (slf, ItWr_BookXp_119);
	CreateInvItem (slf, ItWr_BookXp_120);
	CreateInvItem (slf, ItWr_BookXp_121);
	CreateInvItem (slf, ItWr_BookXp_122);
	CreateInvItem (slf, ItWr_BookXp_123);
	CreateInvItem (slf, ItWr_BookXp_124);
	CreateInvItem (slf, ItWr_BookXp_125);
	CreateInvItem (slf, ItWr_BookXp_126);
	CreateInvItem (slf, ItWr_BookXp_127);
	CreateInvItem (slf, ItWr_BookXp_128);
	CreateInvItem (slf, ItWr_BookXp_129);
	CreateInvItem (slf, ItWr_BookXp_130);
	CreateInvItem (slf, ItWr_BookXp_131);
	CreateInvItem (slf, ItWr_BookXp_132);
	CreateInvItem (slf, ItWr_BookXp_133);
	CreateInvItem (slf, ItWr_BookXp_134);
	CreateInvItem (slf, ItWr_BookXp_135);
	CreateInvItem (slf, ItWr_BookXp_136);
	CreateInvItem (slf, ItWr_BookXp_137);
	CreateInvItem (slf, ItWr_BookXp_138);
	CreateInvItem (slf, ItWr_BookXp_139);
	CreateInvItem (slf, ItWr_BookXp_140);
	CreateInvItem (slf, ItWr_BookXp_141);
	CreateInvItem (slf, ItWr_BookXp_142);
	CreateInvItem (slf, ItWr_BookXp_143);
	CreateInvItem (slf, ItWr_BookXp_144);
	CreateInvItem (slf, ItWr_BookXp_145);
	CreateInvItem (slf, ItWr_BookXp_146);
	CreateInvItem (slf, ItWr_BookXp_147);
	CreateInvItem (slf, ItWr_BookXp_148);
	CreateInvItem (slf, ItWr_BookXp_149);
	
	/// maps
	CreateInvItem (slf, ItWr_Map_NewWorld);
	CreateInvItem (slf, ItWr_Map_NewWorld_City);
	CreateInvItem (slf, ItWr_Map_OldWorld);
	CreateInvItem (slf, ItWr_Map_AddonWorld);
};
