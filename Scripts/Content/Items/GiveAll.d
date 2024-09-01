///******************************************************************************************
/// GiveAll
///******************************************************************************************
func void Func_All_Items_AnimalTrophy (var C_Npc slf)
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
	
	/// plates
	CreateInvItems (slf, ItAt_CrawlerPlate, 10);
	
	/// scales
	CreateInvItems (slf, ItAt_DrgSnapperScale, 10);
	CreateInvItems (slf, ItAt_DragonScale, 10);
	
	/// skins
	CreateInvItems (slf, ItAt_WaranSkin, 10);
	CreateInvItems (slf, ItAt_SnapperSkin, 10);
	CreateInvItems (slf, ItAt_LurkerSkin, 10);
	CreateInvItems (slf, ItAt_AlligatorSkin, 10);
	CreateInvItems (slf, ItAt_RazorSkin, 10);
	CreateInvItems (slf, ItAt_FirewaranSkin, 10);
	CreateInvItems (slf, ItAt_SharkSkin, 10);
	CreateInvItems (slf, ItAt_GiantSnapperSkin, 10);
	
	/// stings & secretion
	CreateInvItems (slf, ItAt_Sting, 10);
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
func void Func_All_Items_Armor (var C_Npc slf)
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
func void Func_All_Items_Artifacts (var C_Npc slf)
{
	/// amulets
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
	
	/// belts
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
	
	/// rings
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
func void Func_All_Items_Food (var C_Npc slf)
{
	/// base components
	CreateInvItems (slf, ItFo_Flour, 10);
	CreateInvItems (slf, ItFo_Salt, 10);
	CreateInvItems (slf, ItFo_Seeds, 10);
	CreateInvItems (slf, ItFo_Spices, 10);
	CreateInvItems (slf, ItFo_Sugar, 10);
	
	/// raw food
	//CreateInvItems (slf, ItFo_Egg, 10);
	CreateInvItems (slf, ItFo_Fish, 10);
	CreateInvItems (slf, ItFoMuttonRaw, 10);
	CreateInvItems (slf, ItFo_Potato, 10);
	CreateInvItems (slf, ItFo_TastyMeatRaw, 10);
	CreateInvItems (slf, ItFo_TenderMeatRaw, 10);
	
	/// light food
	CreateInvItems (slf, ItFo_Apple, 10);
	CreateInvItems (slf, ItFo_Banana, 10);
	CreateInvItems (slf, ItFo_Coconut, 10);
	CreateInvItems (slf, ItFo_Grapes, 10);
	CreateInvItems (slf, ItFo_Pear, 10);
	CreateInvItems (slf, ItFo_Pineapple, 10);
	
	CreateInvItems (slf, ItFo_BakedPotato, 10);
	CreateInvItems (slf, ItFo_Cabbage, 10);
	CreateInvItems (slf, ItFo_Carrot, 10);
	CreateInvItems (slf, ItFo_Chili, 10);
	CreateInvItems (slf, ItFo_Leek, 10);
	CreateInvItems (slf, ItFo_Onion, 10);
	
	CreateInvItems (slf, ItFo_MeatbugFlesh, 10);
	
	/// standard food
	CreateInvItems (slf, ItFo_Bread, 10);
	CreateInvItems (slf, ItFo_Cheese, 10);
	CreateInvItems (slf, ItFo_FriedFish, 10);
	CreateInvItems (slf, ItFo_Rice, 10);
	
	/// meat
	CreateInvItems (slf, ItFoMutton, 10);
	CreateInvItems (slf, ItFo_TastyMeat, 10);
	CreateInvItems (slf, ItFo_TenderMeat, 10);
	
	CreateInvItems (slf, ItFo_Sausage, 10);
	
	/// luxury food
	CreateInvItems (slf, ItFo_Bacon, 10);
	CreateInvItems (slf, ItFo_Oyster, 10);
	
	/// sweets
	CreateInvItems (slf, ItFo_Cake, 10);
	CreateInvItems (slf, ItFo_Chocolate, 10);
	CreateInvItems (slf, ItFo_Honey, 10);
	CreateInvItems (slf, ItFo_Jam, 10);
	
	/// stews
	CreateInvItems (slf, ItFo_Stew, 10);
	
	/// soups
	CreateInvItems (slf, ItFo_FishSoup, 10);
	CreateInvItems (slf, ItFo_MushroomSoup, 10);
	CreateInvItems (slf, ItFo_RiceSoup, 10);
	
	/// water & milk
	CreateInvItems (slf, ItFo_Water, 10);
	CreateInvItems (slf, ItFo_Milk, 10);
	
	/// light alcohol
	CreateInvItems (slf, ItFo_Beer, 10);
	
	CreateInvItems (slf, ItFo_Booze, 10);
	CreateInvItems (slf, ItFo_Tequila, 10);
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
func void Func_All_Items_Helms (var C_Npc slf)
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
func void Func_All_Items_MeleeWeapons (var C_Npc slf)
{
	/// junk
	CreateInvItem (slf, ItMw_1h_Bau_Mace);
	CreateInvItem (slf, ItMw_1h_MISC_Sword);
	CreateInvItem (slf, ItMw_Addon_Hacker_1h_02);
	CreateInvItem (slf, ItMw_1h_Misc_Axe);
	CreateInvItem (slf, ItMw_2h_Sword_M_01);
	CreateInvItem (slf, ItMw_Addon_Hacker_2h_02);
	CreateInvItem (slf, ItMw_2h_OldScythe);
	
	/// npc
	CreateInvItem (slf, ItMw_1h_Mace_L_01);
	CreateInvItem (slf, ItMw_1h_Mace_L_03);
	CreateInvItem (slf, ItMw_1h_Mil_Sword);
	CreateInvItem (slf, ItMw_1h_Pal_Sword);
	CreateInvItem (slf, ItMw_2h_Pal_Sword);
	CreateInvItem (slf, ItMw_1h_Vlk_Mace);
	CreateInvItem (slf, ItMw_1h_Vlk_Dagger);
	CreateInvItem (slf, ItMw_1h_Mace_L_04);
	CreateInvItem (slf, ItMw_1h_Vlk_Axe);
	CreateInvItem (slf, ItMw_1h_Vlk_Sword);
	CreateInvItem (slf, ItMw_1h_Nov_Mace);
	CreateInvItem (slf, ItMw_RangerStaff_Addon);
	CreateInvItem (slf, ItMw_1h_Sld_Axe);
	CreateInvItem (slf, ItMw_1h_Sld_Sword);
	CreateInvItem (slf, ItMw_2h_Sld_Axe);
	CreateInvItem (slf, ItMw_2h_Sld_Sword);
	CreateInvItem (slf, ItMw_1h_Bau_Axe);
	CreateInvItem (slf, ItMw_Sense);
	CreateInvItem (slf, ItMw_2h_Scythe);
	CreateInvItem (slf, ItMw_Nagelknueppel);
	CreateInvItem (slf, ItMw_Addon_BanditTrader);
	CreateInvItem (slf, ItMw_2h_Axe_L_01);
	CreateInvItem (slf, ItMw_Addon_PIR1hAxe);
	CreateInvItem (slf, ItMw_Addon_PIR1hSword);
	CreateInvItem (slf, ItMw_Addon_PIR2hAxe);
	CreateInvItem (slf, ItMw_Addon_PIR2hSword);
	CreateInvItem (slf, ItMw_1h_NordmarSword);
	CreateInvItem (slf, ItMw_Addon_Nomad);
	
	/// goblin
	CreateInvItem (slf, ItMw_1h_Goblin_01);
	CreateInvItem (slf, ItMw_1h_Goblin_02);
	CreateInvItem (slf, ItMw_1h_Goblin_03);
	CreateInvItem (slf, ItMw_1h_Goblin_04);
	
	/// orc
	CreateInvItem (slf, ItMw_2h_OrcDagger_01);
	CreateInvItem (slf, ItMw_2h_OrcAxe_01);
	CreateInvItem (slf, ItMw_2h_OrcAxe_02);
	CreateInvItem (slf, ItMw_2h_OrcAxe_03);
	CreateInvItem (slf, ItMw_2h_OrcAxe_04);
	CreateInvItem (slf, ItMw_2h_OrcMace_01);
	CreateInvItem (slf, ItMw_2h_OrcMace_02);
	CreateInvItem (slf, ItMw_2h_OrcStaff_01);
	CreateInvItem (slf, ItMw_2h_OrcSword_01);
	CreateInvItem (slf, ItMw_2h_OrcSword_02);
	CreateInvItem (slf, ItMw_2h_OrcElite_01);
	
	/// chapter 1
	CreateInvItem (slf, ItMw_1h_Sword_L_03);
	CreateInvItem (slf, ItMw_ShortSword1);
	CreateInvItem (slf, ItMw_ShortSword2);
	CreateInvItem (slf, ItMw_1h_Dyaebl);
	CreateInvItem (slf, ItMw_ShortSword3);
	CreateInvItem (slf, ItMw_2h_Bau_Axe);
	CreateInvItem (slf, ItMw_Nagelkeule);
	CreateInvItem (slf, ItMw_ShortSword4);
	CreateInvItem (slf, ItMw_ShortSword5);
	CreateInvItem (slf, ItMw_Kriegskeule);
	CreateInvItem (slf, ItMw_Richtstab);
	CreateInvItem (slf, ItMw_Kriegshammer1);
	CreateInvItem (slf, ItMw_Hellebarde);
	CreateInvItem (slf, ItMw_Nagelkeule2);
	CreateInvItem (slf, ItMw_Schiffsaxt);
	
	CreateInvItem (slf, ItMw_1h_Common_01);
	CreateInvItem (slf, ItMw_Schwert1);
	
	/// chapter 2
	CreateInvItem (slf, ItMw_Schwert);
	CreateInvItem (slf, ItMw_2h_WarScythe);
	CreateInvItem (slf, ItMw_Piratensaebel);
	CreateInvItem (slf, ItMw_Stabkeule);
	CreateInvItem (slf, ItMw_FaustSchwert);
	CreateInvItem (slf, ItMw_Steinbrecher);
	CreateInvItem (slf, ItMw_Addon_Hacker_1h_01);
	CreateInvItem (slf, ItMw_Zweihaender1);
	CreateInvItem (slf, ItMw_Spicker);
	CreateInvItem (slf, ItMw_Streitaxt1);
	CreateInvItem (slf, ItMw_GoldenSabre);
	CreateInvItem (slf, ItMw_KriegsSense);
	CreateInvItem (slf, ItMw_Schwert2);
	CreateInvItem (slf, ItMw_Doppelaxt);
	CreateInvItem (slf, ItMw_Bartaxt);
	
	CreateInvItem (slf, ItMw_Schwert4);
	CreateInvItem (slf, ItMw_1H_Special_01);
	CreateInvItem (slf, ItMw_2H_Special_01);
	CreateInvItem (slf, ItMw_1H_Ignite_01);
	CreateInvItem (slf, ItMw_2H_Ignite_01);
	
	/// chapter 3
	CreateInvItem (slf, ItMw_Morgenstern);
	CreateInvItem (slf, ItMw_Zweihaender2);
	CreateInvItem (slf, ItMw_Schwert3);
	CreateInvItem (slf, ItMw_Streitkolben);
	CreateInvItem (slf, ItMw_Rapier);
	CreateInvItem (slf, ItMw_Addon_Hacker_2h_01);
	CreateInvItem (slf, ItMw_Rabenschnabel);
	CreateInvItem (slf, ItMw_Runenschwert);
	CreateInvItem (slf, ItMw_Inquisitor);
	CreateInvItem (slf, ItMw_Schwert5);
	CreateInvItem (slf, ItMw_Streitaxt2);
	CreateInvItem (slf, ItMw_Zweihaender3);
	CreateInvItem (slf, ItMw_Kriegshammer2);
	CreateInvItem (slf, ItMw_Meisterdegen);
	
	CreateInvItem (slf, ItMw_Rubinklinge);
	CreateInvItem (slf, ItMw_ElBastardo);
	CreateInvItem (slf, ItMw_1H_Special_02);
	CreateInvItem (slf, ItMw_2H_Special_02);
	CreateInvItem (slf, ItMw_1H_Ignite_02);
	CreateInvItem (slf, ItMw_2H_Ignite_02);
	
	/// chapter 4
	CreateInvItem (slf, ItMw_Folteraxt);
	CreateInvItem (slf, ItMw_Orkschlaechter);
	CreateInvItem (slf, ItMw_Zweihaender4);
	CreateInvItem (slf, ItMw_Schlachtaxt);
	CreateInvItem (slf, ItMw_Barbarenstreitaxt);
	CreateInvItem (slf, ItMw_Krummschwert);
	
	CreateInvItem (slf, ItMw_Avalon);
	CreateInvItem (slf, ItMw_1H_Special_03);
	CreateInvItem (slf, ItMw_2H_Special_03);
	CreateInvItem (slf, ItMw_1H_Ignite_03);
	CreateInvItem (slf, ItMw_2H_Ignite_03);
	
	/// chapter 5
	CreateInvItem (slf, ItMw_Sturmbringer);
	CreateInvItem (slf, ItMw_Drachenschneide);
	CreateInvItem (slf, ItMw_Berserkeraxt);
	
	CreateInvItem (slf, ItMw_1H_Special_04);
	CreateInvItem (slf, ItMw_2H_Special_04);
	CreateInvItem (slf, ItMw_1H_Ignite_04);
	CreateInvItem (slf, ItMw_2H_Ignite_04);
	
	/// other
	CreateInvItem (slf, ItMw_1h_Keule);
	CreateInvItem (slf, ItMw_2h_Keule);
	CreateInvItem (slf, ItMw_Addon_Betty);
	
	/// DJG
	CreateInvItem (slf, ItMw_1H_Special_05);
	CreateInvItem (slf, ItMw_2H_Special_05);
	CreateInvItem (slf, ItMw_1H_Ignite_05);
	CreateInvItem (slf, ItMw_2H_Ignite_05);
	
	/// MAG
	CreateInvItem (slf, ItMw_Stab_L_01);
	CreateInvItem (slf, ItMw_Stab_M_01);
	CreateInvItem (slf, ItMw_Stab_M_02);
	CreateInvItem (slf, ItMw_Stab_H_01);
	CreateInvItem (slf, ItMw_Stab_H_02);
	
	/// PAL
	CreateInvItem (slf, ItMw_1H_Blessed_01);
	CreateInvItem (slf, ItMw_2H_Blessed_01);
	CreateInvItem (slf, ItMw_1H_Blessed_02);
	CreateInvItem (slf, ItMw_2H_Blessed_02);
	CreateInvItem (slf, ItMw_1H_Blessed_03);
	CreateInvItem (slf, ItMw_2H_Blessed_03);
	
	CreateInvItem (slf, ItMw_1H_Innos);
	CreateInvItem (slf, ItMw_2H_Innos);
	
	/// ASA
	CreateInvItem (slf, ItMw_Assassin_01);
	CreateInvItem (slf, ItMw_Assassin_02);
	CreateInvItem (slf, ItMw_Assassin_03);
	CreateInvItem (slf, ItMw_Assassin_04);
	CreateInvItem (slf, ItMw_Assassin_05);
	
	/// mission
	CreateInvItem (slf, ItMw_AlriksSword_Mis);
	CreateInvItem (slf, ItMw_2h_Rod);
	CreateInvItem (slf, Holy_Hammer_MIS);
	CreateInvItem (slf, ItMw_1H_FerrosSword_Mis);
	CreateInvItem (slf, ItMw_BeliarWeapon);
	
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
	CreateInvItem (slf, ItMw_Pan);
	CreateInvItem (slf, ItMw_1H_Club_01);
	CreateInvItem (slf, ItMw_Spade);
	CreateInvItem (slf, ItMw_MegaPan);
	CreateInvItem (slf, ItMw_FireSword);
	CreateInvItem (slf, ItMw_BusterSword);
	CreateInvItem (slf, ItMw_Chainsaw);
	CreateInvItem (slf, ItMw_LightSaber);
};
///******************************************************************************************
func void Func_All_Items_Misc (var C_Npc slf)
{
	/// nuggets
	CreateInvItems (slf, ItMi_Iron, 10);
	CreateInvItems (slf, ItMi_IronBar, 10);
	
	CreateInvItems (slf, ItMi_Nugget, 10);
	CreateInvItems (slf, ItMi_RedNugget, 10);
	
	/// resources
	CreateInvItems (slf, ItMi_Coal, 10);
	CreateInvItems (slf, ItMi_Quartz, 10);
	CreateInvItems (slf, ItMi_Calcium, 10);
	CreateInvItems (slf, ItMi_Sulfur, 10);
	CreateInvItems (slf, ItMi_Saltpeter, 10);
	
	/// crystals
	CreateInvItems (slf, ItMi_RockCrystal, 10);
	CreateInvItems (slf, ItMi_FireCrystal, 10);
	
	/// alchemy
	CreateInvItems (slf, ItMi_HolyWater, 10);
	CreateInvItems (slf, ItMi_Pitch, 10);
	CreateInvItems (slf, ItMi_Resin, 10);
	CreateInvItems (slf, ItMi_Quicksilver, 10);
	
	/// smith
	CreateInvItems (slf, ItMiSwordraw, 10);
	CreateInvItems (slf, ItMiSwordrawhot, 10);
	CreateInvItems (slf, ItMiSwordbladehot, 10);
	CreateInvItems (slf, ItMiSwordblade, 10);
	
	/// joints
	CreateInvItems (slf, ItMi_Joint, 10);
	CreateInvItems (slf, ItMi_SleJoint, 10);
	CreateInvItems (slf, ItMi_DesertJoint, 10);
	
	/// tabak
	CreateInvItems (slf, ItMi_Tabak, 10);
	CreateInvItems (slf, ItMi_ChocolateTabak, 10);
	CreateInvItems (slf, ItMi_CoconutTabak, 10);
	CreateInvItems (slf, ItMi_FruitTabak, 10);
	CreateInvItems (slf, ItMi_HoneyTabak, 10);
	CreateInvItems (slf, ItMi_MushroomTabak, 10);
	CreateInvItems (slf, ItMi_SwampTabak, 10);
	
	/// torches
	CreateInvItems (slf, ItLsTorch, 10);
	
	/// production
	CreateInvItems (slf, ItMi_EmptyBottle, 10);
	CreateInvItems (slf, ItMi_Flask, 10);
	CreateInvItems (slf, ItMi_Ink, 10);
	CreateInvItems (slf, ItMi_InkPen, 10);
	CreateInvItems (slf, ItMi_InnosStatue, 10);
	CreateInvItems (slf, ItKe_Lockpick, 10);
	CreateInvItems (slf, ItMi_Scrolls, 10);
	CreateInvItems (slf, ItMi_RuneBlank, 10);
	CreateInvItems (slf, ItMi_Wood, 10);
	
	/// tools
	CreateInvItem (slf, ItMi_Alarmhorn);
	CreateInvItem (slf, ItMi_Broom);
	CreateInvItem (slf, ItMi_Brush);
	CreateInvItem (slf, ItMi_FishingRod);
	CreateInvItem (slf, ItMi_Hammer);
	CreateInvItem (slf, ItMi_Lute);
	CreateInvItem (slf, ItMi_Pan);
	CreateInvItem (slf, ItMi_PanFull);
	CreateInvItem (slf, ItMi_Pliers);
	CreateInvItem (slf, ItMi_Rake);
	CreateInvItem (slf, ItMi_Saw);
	CreateInvItem (slf, ItMi_Sextant);
	CreateInvItem (slf, ItMi_Scoop);
	CreateInvItem (slf, ItMi_Stomper);
	
	/// coins
	CreateInvItems (slf, ItMi_Gold, 1000);
	CreateInvItems (slf, ItMi_FortuneCoin, 10);
	CreateInvItems (slf, ItMi_AncientCoin, 10);
	CreateInvItems (slf, ItMi_OrcCoin, 10);
	
	/// gold pockets
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
	CreateInvItem (slf, ItMi_GoldCup);
	CreateInvItem (slf, ItMi_GoldNecklace);
	CreateInvItem (slf, ItMi_GoldPlate);
	CreateInvItem (slf, ItMi_GoldRing);
	
	/// chests
	CreateInvItem (slf, ItMi_GoldChest);
	CreateInvItem (slf, ItMi_JeweleryChest);
	
	/// gems
	CreateInvItem (slf, ItMi_Aquamarine);
	CreateInvItem (slf, ItMi_Emerald);
	CreateInvItem (slf, ItMi_Ruby);
	CreateInvItem (slf, ItMi_Diamond);
	
	/// pearls
	CreateInvItems (slf, ItMi_WhitePearl, 10);
	CreateInvItems (slf, ItMi_DarkPearl, 10);
	
	/// shells
	CreateInvItems (slf, ItMi_Shell, 10);
	
	/// secret fish
	CreateInvItems (slf, ItSe_BigFish, 10);
};
///******************************************************************************************
func void Func_All_Items_Plants (var C_Npc slf)
{
	/// componenets
	CreateInvItems (slf, ItPl_Temp_Herb, 10);
	CreateInvItems (slf, ItPl_Perm_Herb, 10);
	
	CreateInvItems (slf, ItPl_GraveMoss, 10);
	CreateInvItems (slf, ItPl_MountainMoss, 10);
	
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
	CreateInvItems (slf, ItPl_Prot_Herb_01, 10);
	
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
	CreateInvItems (slf, ItPl_Cactus, 10);
	CreateInvItems (slf, ItPl_Forestberry, 10);
	CreateInvItems (slf, ItPl_Planeberry, 10);
	CreateInvItems (slf, ItPl_Blueplant, 10);
	
	/// other
	CreateInvItems (slf, ItPl_Beet, 10);
	CreateInvItems (slf, ItPl_Weed, 10);
};
///******************************************************************************************
func void Func_All_Items_Potions (var C_Npc slf)
{
	/// health
	CreateInvItems (slf, ItPo_Health_01, 10);
	CreateInvItems (slf, ItPo_Health_02, 10);
	CreateInvItems (slf, ItPo_Health_03, 10);
	CreateInvItems (slf, ItPo_Health_Addon_04, 10);
	
	/// mana
	CreateInvItems (slf, ItPo_Mana_01, 10);
	CreateInvItems (slf, ItPo_Mana_02, 10);
	CreateInvItems (slf, ItPo_Mana_03, 10);
	CreateInvItems (slf, ItPo_Mana_Addon_04, 10);
	
	/// stamina
	CreateInvItems (slf, ItPo_Stamina, 10);
	
	/// mixed
	CreateInvItems (slf, ItPo_Blueplant, 10);
	
	/// time
	CreateInvItems (slf, ItPo_Time_Health, 10);
	CreateInvItems (slf, ItPo_Time_Mana, 10);
	CreateInvItems (slf, ItPo_Time_Str, 10);
	CreateInvItems (slf, ItPo_Time_Dex, 10);
	CreateInvItems (slf, ItPo_Time_Pow, 10);
	CreateInvItems (slf, ItPo_Time_Prot, 10);
	
	/// weak
	CreateInvItems (slf, ItPo_Weak_Health, 10);
	CreateInvItems (slf, ItPo_Weak_Mana, 10);
	CreateInvItems (slf, ItPo_Weak_Str, 10);
	CreateInvItems (slf, ItPo_Weak_Dex, 10);
	CreateInvItems (slf, ItPo_Weak_Pow, 10);
	
	/// perm
	CreateInvItems (slf, ItPo_Perm_Health, 10);
	CreateInvItems (slf, ItPo_Perm_Mana, 10);
	CreateInvItems (slf, ItPo_Perm_Str, 10);
	CreateInvItems (slf, ItPo_Perm_Dex, 10);
	CreateInvItems (slf, ItPo_Perm_Pow, 10);
	CreateInvItems (slf, ItPo_Perm_Prot, 10);
	
	/// speed
	CreateInvItems (slf, ItPo_Lightness, 10);
	CreateInvItems (slf, ItPo_Speed, 10);
	
	/// other
	CreateInvItems (slf, ItPo_Geist, 10);
	CreateInvItems (slf, ItPo_HealObsession, 10);
	CreateInvItems (slf, ItPo_NightVision, 10);
	CreateInvItems (slf, ItPo_Poison, 10);
	
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
	CreateInvItem (slf, ItPo_MegaDrink);
	CreateInvItem (slf, ItPo_InnosTears);
};
///******************************************************************************************
func void Func_All_Items_RangedWeapons (var C_Npc slf)
{
	/// bows
	CreateInvItem (slf, ItRw_Bow_L_01);
	CreateInvItem (slf, ItRw_Bow_L_02);
	CreateInvItem (slf, ItRw_Sld_Bow);
	CreateInvItem (slf, ItRw_Bow_L_03);
	CreateInvItem (slf, ItRw_Bow_L_04);
	CreateInvItem (slf, ItRw_Ske_Bow);
	CreateInvItem (slf, ItRw_Bow_M_01);
	CreateInvItem (slf, ItRw_Bow_M_02);
	CreateInvItem (slf, ItRw_Bow_M_03);
	CreateInvItem (slf, ItRw_Bow_M_04);
	CreateInvItem (slf, ItRw_Bow_H_01);
	CreateInvItem (slf, ItRw_Bow_H_02);
	CreateInvItem (slf, ItRw_Bow_H_03);
	CreateInvItem (slf, ItRw_Bow_H_04);
	
	/// crossbows
	CreateInvItem (slf, ItRw_Crossbow_L_01);
	CreateInvItem (slf, ItRw_Mil_Crossbow);
	CreateInvItem (slf, ItRw_Crossbow_L_02);
	CreateInvItem (slf, ItRw_Orc_Crossbow);
	CreateInvItem (slf, ItRw_Crossbow_M_01);
	CreateInvItem (slf, ItRw_Crossbow_M_02);
	CreateInvItem (slf, ItRw_Crossbow_H_01);
	CreateInvItem (slf, ItRw_Crossbow_H_02);
	
	/// guns
	CreateInvItem (slf, ItRw_Gun1);
//	CreateInvItem (slf, ItRw_NWO_Gun);
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
	
	/// arrows
	CreateInvItems (slf, ItRw_Arrow, 1000);
	CreateInvItems (slf, ItRw_sArrow, 100);
	CreateInvItems (slf, ItRw_fArrow, 100);
	CreateInvItems (slf, ItRw_pArrow, 100);
	
	/// bolts
	CreateInvItems (slf, ItRw_Bolt, 1000);
	CreateInvItems (slf, ItRw_sBolt, 100);
	
	/// ammo
	CreateInvItems (slf, ItRw_Ammo, 1000);
	
	/// heavy ammo
	CreateInvItems (slf, ItRw_HAmmo, 10);
	CreateInvItems (slf, ItRw_BAmmo, 10);
	
	/// ammo boxes
	CreateInvItem (slf, ItSe_AmmoBox);
	CreateInvItem (slf, ItSe_HAmmoBox);
};
///******************************************************************************************
func void Func_All_Items_Spells (var C_Npc slf)
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
func void Func_All_Items_Written (var C_Npc slf)
{
	/// maps
	CreateInvItem (slf, ItWr_Map_NewWorld);
	CreateInvItem (slf, ItWr_Map_NewWorld_City);
	CreateInvItem (slf, ItWr_Map_OldWorld);
	CreateInvItem (slf, ItWr_Map_AddonWorld);
	
	/// books
	CreateInvItem (slf, ItWr_Book_Fight1H);
	CreateInvItem (slf, ItWr_Book_Fight2H);
	CreateInvItem (slf, ItWr_Book_StarPower);
	CreateInvItem (slf, ItWr_Book_GodsGift);
	CreateInvItem (slf, ItWr_Book_SecretsOfMagic);
	CreateInvItem (slf, ItWr_Book_PowerfulArt);
	CreateInvItem (slf, ItWr_Book_Elementare);
	CreateInvItem (slf, ItWr_Book_RealPower);
	CreateInvItem (slf, ItWr_Book_MagicOre);
	CreateInvItem (slf, ItWr_Book_Varant1);
	CreateInvItem (slf, ItWr_Book_Varant2);
	CreateInvItem (slf, ItWr_Book_MyrthanianPoetry);
	CreateInvItem (slf, ItWr_Book_GodsWisdom1);
	CreateInvItem (slf, ItWr_Book_GodsWisdom2);
	CreateInvItem (slf, ItWr_Book_GodsWisdom3);
	CreateInvItem (slf, ItWr_Book_Hunting);
	CreateInvItem (slf, ItWr_Book_Fight);
	CreateInvItem (slf, ItWr_Book_Astronomy);
	CreateInvItem (slf, ItWr_Book_Focus);
	CreateInvItem (slf, ItWr_Book_Golem);
	
	/// stoneplates
	CreateInvItems (slf, ItWr_StonePlate, 10);
	//CreateInvItem (slf, ItWr_StonePlate_HP);
	//CreateInvItem (slf, ItWr_StonePlate_MP);
	//CreateInvItem (slf, ItWr_StonePlate_STR);
	//CreateInvItem (slf, ItWr_StonePlate_DEX);
	//CreateInvItem (slf, ItWr_StonePlate_POW);
	
	/// recipes
	
};
///******************************************************************************************
func void Func_All_Items_Meshes (var C_Npc slf)
{
	CreateInvItem (slf, ItMe_Crystal_01);
	CreateInvItem (slf, ItMe_Crystal_02);
	CreateInvItem (slf, ItMe_Crystal_03);
	CreateInvItem (slf, ItMe_Crystal_04);
	CreateInvItem (slf, ItMe_Rope);
	CreateInvItem (slf, ItMe_Gallows);
	CreateInvItem (slf, ItMe_Altar);
	CreateInvItem (slf, ItMe_Anvil);
	CreateInvItem (slf, ItMe_Lab);
	CreateInvItem (slf, ItMe_RuneMaker);
	CreateInvItem (slf, ItMe_Sharp);
	CreateInvItem (slf, ItMe_WaterBucket);
	CreateInvItem (slf, ItMe_WaterPipe);
	CreateInvItem (slf, ItMe_Cauldron);
	CreateInvItem (slf, ItMe_Furnace);
	CreateInvItem (slf, ItMe_Stove);
	CreateInvItem (slf, ItMe_Ship_01);
	CreateInvItem (slf, ItMe_Boat_01);
	CreateInvItem (slf, ItMe_Boat_02);
	CreateInvItem (slf, ItMe_Boat_03);
	CreateInvItem (slf, ItMe_Treasure);
	CreateInvItem (slf, ItMe_GoldHeap);
	CreateInvItem (slf, ItMe_OreHeap);
	CreateInvItem (slf, ItMe_Car);
	CreateInvItem (slf, ItMe_PalArmor);
	CreateInvItem (slf, ItMe_PalStatue);
	CreateInvItem (slf, ItMe_OrcStatue);
	CreateInvItem (slf, ItMe_StoneGuardian);
	CreateInvItem (slf, ItMe_Cannon);
	CreateInvItem (slf, ItMe_CannonBalls);
	CreateInvItem (slf, ItMe_Platform_01);
	CreateInvItem (slf, ItMe_Platform_02);
	CreateInvItem (slf, ItMe_Platform_03);
	CreateInvItem (slf, ItMe_Coffin);
	CreateInvItem (slf, ItMe_BookStand_01);
	CreateInvItem (slf, ItMe_BookStand_02);
	CreateInvItem (slf, ItMe_BookStand_03);
	CreateInvItem (slf, ItMe_BookShelf_01);
	CreateInvItem (slf, ItMe_Cupboard_01);
	CreateInvItem (slf, ItMe_Cupboard_02);
	CreateInvItem (slf, ItMe_Cupboard_03);
	CreateInvItem (slf, ItMe_Cupboard_04);
	CreateInvItem (slf, ItMe_Cart_01);
	CreateInvItem (slf, ItMe_Grave_01);
	CreateInvItem (slf, ItMe_Grave_02);
	CreateInvItem (slf, ItMe_Grave_03);
	CreateInvItem (slf, ItMe_InnosStatue_01);
	CreateInvItem (slf, ItMe_BeliarStatue_01);
	CreateInvItem (slf, ItMe_ShipWreck_01);
	CreateInvItem (slf, ItMe_ShipWreck_02);
	CreateInvItem (slf, ItMe_FishingNet_01);
	CreateInvItem (slf, ItMe_FishingNet_02);
	CreateInvItem (slf, ItMe_FishingNet_03);
	CreateInvItem (slf, ItMe_Hut_01);
	CreateInvItem (slf, ItMe_Hut_02);
	CreateInvItem (slf, ItMe_Hut_03);
	CreateInvItem (slf, ItMe_Tent_01);
	CreateInvItem (slf, ItMe_Tent_02);
	CreateInvItem (slf, ItMe_Tent_03);
	CreateInvItem (slf, ItMe_Tent_04);
	CreateInvItem (slf, ItMe_Tower);
	CreateInvItem (slf, ItMe_Palissade);
	CreateInvItem (slf, ItMe_Bed_01);
	CreateInvItem (slf, ItMe_Bed_02);
	CreateInvItem (slf, ItMe_Bed_03);
	CreateInvItem (slf, ItMe_Bed_04);
	CreateInvItem (slf, ItMe_Crate_01);
	CreateInvItem (slf, ItMe_Crate_02);
	CreateInvItem (slf, ItMe_Crate_03);
	CreateInvItem (slf, ItMe_Chest_01);
	CreateInvItem (slf, ItMe_Chest_02);
	CreateInvItem (slf, ItMe_Chest_03);
	CreateInvItem (slf, ItMe_Chest_04);
	CreateInvItem (slf, ItMe_FirePlace_01);
	CreateInvItem (slf, ItMe_FirePlace_02);
	CreateInvItem (slf, ItMe_Table_01);
	CreateInvItem (slf, ItMe_Table_02);
	CreateInvItem (slf, ItMe_Table_03);
	CreateInvItem (slf, ItMe_Table_04);
	CreateInvItem (slf, ItMe_Table_05);
	CreateInvItem (slf, ItMe_Market_01);
	CreateInvItem (slf, ItMe_Market_02);
	CreateInvItem (slf, ItMe_Market_03);
	CreateInvItem (slf, ItMe_Market_04);
	CreateInvItem (slf, ItMe_Chair_01);
	CreateInvItem (slf, ItMe_Chair_02);
	CreateInvItem (slf, ItMe_Bench_01);
	CreateInvItem (slf, ItMe_Bench_02);
	CreateInvItem (slf, ItMe_Bench_03);
	CreateInvItem (slf, ItMe_Throne_01);
	CreateInvItem (slf, ItMe_Throne_02);
	CreateInvItem (slf, ItMe_Torture_01);
	CreateInvItem (slf, ItMe_Torture_02);
	CreateInvItem (slf, ItMe_Torture_03);
	CreateInvItem (slf, ItMe_Torture_04);
	CreateInvItem (slf, ItMe_Torture_05);
	CreateInvItem (slf, ItMe_Skeleton_01);
	CreateInvItem (slf, ItMe_Skeleton_02);
	CreateInvItem (slf, ItMe_Skeleton_03);
	CreateInvItem (slf, ItMe_Skeleton_04);
	CreateInvItem (slf, ItMe_Barrel_01);
	CreateInvItem (slf, ItMe_Barrel_02);
	CreateInvItem (slf, ItMe_Barrel_03);
	CreateInvItem (slf, ItMe_Barrel_Weapon);
	CreateInvItem (slf, ItMe_OldTree_01);
	CreateInvItem (slf, ItMe_OldTree_02);
	CreateInvItem (slf, ItMe_Bush_01);
	CreateInvItem (slf, ItMe_Bush_02);
	CreateInvItem (slf, ItMe_Tree_01);
	CreateInvItem (slf, ItMe_Tree_02);
	CreateInvItem (slf, ItMe_Tree_03);
	CreateInvItem (slf, ItMe_Straw_01);
	CreateInvItem (slf, ItMe_Straw_02);
	CreateInvItem (slf, ItMe_Straw_03);
	CreateInvItem (slf, ItMe_Map_01);
	CreateInvItem (slf, ItMe_Map_02);
	CreateInvItem (slf, ItMe_Scrolls_01);
	CreateInvItem (slf, ItMe_Scrolls_02);
	CreateInvItem (slf, ItMe_Books_01);
	CreateInvItem (slf, ItMe_Penta);
};
