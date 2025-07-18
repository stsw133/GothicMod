///******************************************************************************************

var int EnterNW_Kapitel;

///******************************************************************************************
/// B_ENTER_NEWWORLD
///******************************************************************************************
func void B_ENTER_NEWWORLD_Kapitel_7()
{
	if (RavenIsDead)
	&& (Npc_IsDead(KDW_140300_Addon_Myxir_CITY))
	{
		Wld_InsertNpc (KDW_140300_Addon_Myxir_CITY, "CITY1");
	};
	
	if (ENTERED_ADDONWORLD)
	{
		B_RemoveNpc (KDW_1400_Addon_Saturas_NW);
		B_RemoveNpc (KDW_1401_Addon_Cronos_NW);
		B_RemoveNpc (KDW_1402_Addon_Nefarius_NW);
		B_RemoveNpc (KDW_1403_Addon_Myxir_NW);
		B_RemoveNpc (KDW_1404_Addon_Riordian_NW);
		B_RemoveNpc (KDW_1405_Addon_Merdarion_NW);
		B_RemoveNpc (PIR_1301_Addon_Skip_NW);
		
		if (!SC_GotPORTALTEMPELWALKTHROUGHKey)
		{
			Wld_InsertNpc (Stoneguardian_MerdarionsSchluessel, "NW_TROLLAREA_PORTALTEMPEL_22");
			SC_GotPORTALTEMPELWALKTHROUGHKey = true;
		};
	};
	
	if (Sklaven_Flucht)
	&& (!Sklaven_weg)
	{
		Wld_InsertNpc (STRF_1123_Addon_Patrick_NW, "NW_BIGFARM_PATRICK");
		Wld_InsertNpc (STRF_1124_Addon_Monty_NW, "NW_CITY_HABOUR_WERFT_IN_01");
		Wld_InsertNpc (STRF_1125_Addon_Tonak_NW, "NW_FARM2_FIELD_TANOK");
		Wld_InsertNpc (STRF_1126_Addon_Telbor_NW, "NW_FARM2_FIELD_TELBOR");
		Wld_InsertNpc (STRF_1127_Addon_Pardos_NW, "NW_FARM3_BENGAR");
		
		Sklaven_weg = true;
		MissingPeopleReturnedHome = true;
	};
};

///******************************************************************************************
func void B_ENTER_NEWWORLD_Kapitel_8()
{
	if (GregIsBack)
	{
		B_RemoveNpc(PIR_1300_Addon_Greg_NW);
	};
	
	if (EnterNW_Kapitel < 8)
	{
	 	Wld_InsertNpc (Gobbo_Skeleton, "FP_ROAM_MEDIUMFOREST_KAP2_24");
		Wld_InsertNpc (Skeleton_Warrior, "FP_ROAM_MEDIUMFOREST_KAP2_22");
		Wld_InsertNpc (Skeleton, "FP_ROAM_MEDIUMFOREST_KAP2_23");
		Wld_InsertNpc (Wolf, "FP_ROAM_MEDIUMFOREST_KAP2_25");
		Wld_InsertNpc (Wolf, "FP_ROAM_MEDIUMFOREST_KAP2_26");
		Wld_InsertNpc (Bloodfly, "FP_ROAM_CITY_TO_FOREST_50");
		Wld_InsertNpc (Bloodfly, "FP_ROAM_CITY_TO_FOREST_49");
		Wld_InsertNpc (Wolf, "NW_CITY_TO_FOREST_10");
		Wld_InsertNpc (Wolf, "NW_CITY_TO_FOREST_05");
		Wld_InsertNpc (Sheep, "NW_FARM3_MOUNTAINLAKE_05");
 		Wld_InsertNpc (Sheep, "NW_FARM3_MOUNTAINLAKE_05");
 		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_05");
		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_05");
		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_06");
		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_04");
		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_04");
		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_11");
 		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_11");
 		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_11");
		Wld_InsertNpc (Lurker, "NW_TROLLAREA_PATH_72");
		Wld_InsertNpc (Lurker, "NW_TROLLAREA_PATH_72");
		Wld_InsertNpc (Lurker, "NW_TROLLAREA_PATH_75");
		Wld_InsertNpc (Waran, "NW_TROLLAREA_PATH_22_MONSTER");
		Wld_InsertNpc (Waran, "NW_TROLLAREA_PATH_22_MONSTER");
 		Wld_InsertNpc (Molerat, "NW_FOREST_PATH_62_02");
 	 	Wld_InsertNpc (Molerat, "NW_FOREST_PATH_62_02");
 		Wld_InsertNpc (Molerat, "FP_ROAM_CITY_TO_FOREST_41");
		Wld_InsertNpc (Scavenger, "NW_FOREST_CONNECT_MONSTER2");
		Wld_InsertNpc (Scavenger, "NW_FOREST_CONNECT_MONSTER2");
		Wld_InsertNpc (Wolf, "NW_SHRINE_MONSTER");
		Wld_InsertNpc (Wolf, "NW_SHRINE_MONSTER");
		Wld_InsertNpc (Giant_Bug, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc (Giant_Bug, "NW_PATH_TO_MONASTER_AREA_01");
		Wld_InsertNpc (Scavenger, "NW_PATH_TO_MONASTER_AREA_11");
		Wld_InsertNpc (Scavenger, "NW_PATH_TO_MONASTER_MONSTER22");
		Wld_InsertNpc (Giant_Bug, "NW_FARM1_CITYWALL_RIGHT_02");
		Wld_InsertNpc (Wolf, "NW_FARM1_PATH_CITY_10_B");
		Wld_InsertNpc (Wolf, "NW_FARM1_PATH_CITY_SHEEP_04");
		
		Wld_InsertNpc (Giant_Bug, "NW_FARM1_PATH_SPAWN_07");
		Wld_InsertNpc (Bloodfly, "FP_ROAM_CITY_TO_FOREST_34");
		Wld_InsertNpc (Bloodfly, "FP_ROAM_CITY_TO_FOREST_36");
		
 		Wld_InsertNpc (Scavenger, "NW_TAVERNE_BIGFARM_MONSTER_01");
		Wld_InsertNpc (Scavenger, "NW_TAVERNE_BIGFARM_MONSTER_01");
		
 		Wld_InsertNpc (Lurker, "NW_BIGFARM_LAKE_MONSTER_02_01");
		
 		Wld_InsertNpc (Gobbo_Black, "NW_BIGFARM_LAKE_03_MOVEMENT");
		Wld_InsertNpc (Gobbo_Black, "NW_BIGFARM_LAKE_03_MOVEMENT");
		
 		Wld_InsertNpc (Gobbo_Black, "NW_TAVERNE_TROLLAREA_MONSTER_05_01");
		
  		Wld_InsertNpc (Gobbo, "NW_BIGFARM_LAKE_MONSTER_05_01");
  		Wld_InsertNpc (Gobbo, "NW_BIGFARM_LAKE_MONSTER_05_01");
  		Wld_InsertNpc (Gobbo, "NW_BIGFARM_LAKE_MONSTER_05_01");
		
		if (hero.guild == GIL_MIL || hero.guild == GIL_PAL)
		{
			Wld_InsertItem (ItAm_Dex_01, "FP_ROAM_XARDAS_SECRET_26");
		}
		else if (hero.guild == GIL_SLD || hero.guild == GIL_DJG)
		{
			Wld_InsertItem (ItAm_Hp_01, "FP_ROAM_XARDAS_SECRET_26");
		}
		else
		{
			Wld_InsertItem (ItAm_Sp_01, "FP_ROAM_XARDAS_SECRET_26");
		};
		
		if (hero.guild == GIL_KDF)
		{
			B_StartOtherRoutine (Agon, "StillAlive");
		};
		
 		EnterNW_Kapitel = 8;
	};
};

///******************************************************************************************
func void B_ENTER_NEWWORLD_Kapitel_9()
{
	if (EnterNW_Kapitel < 9)
	{
		if (!Npc_IsDead(Salandril))
		{
			Salandril.aivar[AIV_ToughGuy] = true;
		};
		
		Cornelius.Flags = 0;
		
		if (!Npc_IsDead(Hodges))
		{
			B_StartOtherRoutine (Hodges, "BENNETWEG");
		};
		
		if (Npc_IsDead(DiegoNW))
		{
			Wld_InsertNpc (PC_THIEF_NW, "NW_CITY_ENTRANCE_01");
			B_StartOtherRoutine (DiegoNW, "START");
		};
		if (Npc_IsDead(GornNW_vor_DJG))
		{
			Wld_InsertNpc (PC_Fighter_NW_vor_DJG, "BIGFARM");
			B_StartOtherRoutine (GornNW_vor_DJG,"START");
		};
		
		if (!Npc_IsDead(Lares))
		{
			B_StartOtherRoutine (Lares, "START");
		};
		
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "NW_PASS_GATE_02");
		B_KillNpc (PAL_297_Ritter);
		B_KillNpc (PAL_298_Ritter);
		
		if (hero.guild == GIL_KDF)
		{
			B_KillNpc(Ulf);
		};
		
		Wld_InsertNpc (Giant_Bug, "FP_ROAM_MEDIUMFOREST_KAP2_01");
		Wld_InsertNpc (Giant_Bug, "FP_ROAM_MEDIUMFOREST_KAP2_02");
		Wld_InsertNpc (Giant_Bug, "FP_ROAM_MEDIUMFOREST_KAP2_05");
		//Joly:Wld_InsertNpc (Giant_Bug, "FP_ROAM_MEDIUMFOREST_KAP2_09");
		//Joly:Wld_InsertNpc (Giant_Bug, "FP_ROAM_MEDIUMFOREST_KAP2_07");
		
		if (!Npc_IsDead(Sekob))
		{
			B_StartOtherRoutine (Sekob, "FleeDMT");
			B_StartOtherRoutine (Rosi, "FleeDMT");
			B_StartOtherRoutine (Till, "FleeDMT");
			B_StartOtherRoutine (Balthasar, "FleeDMT");
			B_StartOtherRoutine (BAU_933_Rega, "FleeDMT");
			B_StartOtherRoutine (BAU_934_Babera, "FleeDMT");
			B_StartOtherRoutine (BAU_937_BAUER, "FleeDMT");
			B_StartOtherRoutine (BAU_938_BAUER, "FleeDMT");
			Wld_InsertNpc (DMT_DementorAmbientSekob1, "NW_FARM4_IN_06");
			Wld_InsertNpc (DMT_DementorAmbientSekob2, "NW_FARM4_IN_02");
			Wld_InsertNpc (DMT_DementorAmbientSekob3, "NW_FARM4_IN_03");
			Wld_InsertNpc (DMT_DementorAmbientSekob4, "NW_FARM4_IN_04");
			Sekob.flags = NPC_FLAG_IMPORTANT;
		};
		
		B_StartOtherRoutine (Lester, "WAITFORPLAYER");
		B_StartOtherRoutine (Bennet, "PRISON");
		B_StartOtherRoutine (Sergio, "WAIT");
		B_StartOtherRoutine (Peck, "STORAGE");
		
		B_RemoveNpc (PAL_203_Lothar);
		
		Wld_InsertNpc (Giant_Bug, "NW_FARM4_WOOD_MONSTER_N_1_MONSTER");
		Wld_InsertNpc (Giant_Bug, "NW_FARM4_WOOD_MONSTER_N_1_MONSTER");
		Wld_InsertNpc (Bloodfly, "NW_TROLLAREA_RIVERSIDE_09");
		Wld_InsertNpc (Bloodfly, "NW_TROLLAREA_RIVERSIDE_09");
		Wld_InsertNpc (Giant_Bug, "NW_TAVERNE_TROLLAREA_MONSTER_05_01M1");
		Wld_InsertNpc (Giant_Bug, "NW_TAVERNE_TROLLAREA_MONSTER_05_01M1");
		Wld_InsertNpc (Lurker, "NW_TROLLAREA_RIVERSIDE_05");
		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_05");
		Wld_InsertNpc (Scavenger, "NW_TROLLAREA_PLANE_06");
		Wld_InsertNpc (Snapper, "NW_TROLLAREA_RUINS_36");
		Wld_InsertNpc (Snapper, "NW_TROLLAREA_RUINS_36");
		
		Wld_InsertNpc (Wolf, "NW_PATH_TO_MONASTER_AREA_10");
		Wld_InsertNpc (Warg, "NW_XARDAS_GOBBO_01");
		Wld_InsertNpc (Warg, "NW_XARDAS_GOBBO_01");
		Wld_InsertNpc (Zombie, "NW_FARM4_WOOD_MONSTER_MORE_02");
		Wld_InsertNpc (Zombie, "NW_FARM4_WOOD_MONSTER_MORE_02");
 		Wld_InsertNpc (Zombie, "NW_BIGFARM_LAKE_03_MOVEMENT5");
		
		Wld_InsertNpc (Skeleton_Warrior, "NW_FARM4_WOOD_MONSTER_MORE_01");
		Wld_InsertNpc (Skeleton_Warrior, "NW_FARM4_WOOD_MONSTER_MORE_01");
		Wld_InsertNpc (Giant_Bug, "NW_FARM4_WOOD_MONSTER_N_1_MONSTER");
		Wld_InsertNpc (Giant_Bug, "NW_FARM4_WOOD_MONSTER_N_3");
		
		Wld_InsertNpc (Shadowbeast, "NW_FARM4_WOOD_MONSTER_05");
		
		Wld_InsertNpc (Dragonsnapper, "NW_FARM4_WOOD_MONSTER_05");
		Wld_InsertNpc (Dragonsnapper, "NW_FARM4_WOOD_MONSTER_05");
		
		Wld_InsertNpc (Dragonsnapper, "NW_CASTLEMINE_TROLL_02");
		Wld_InsertNpc (Dragonsnapper, "NW_CASTLEMINE_TROLL_02");
		
		Wld_InsertNpc (Dragonsnapper, "NW_FARM3_PATH_11_SMALLRIVER_10");
		Wld_InsertNpc (Dragonsnapper, "NW_FARM3_PATH_11_SMALLRIVER_10");
		
		Wld_InsertNpc (Dragonsnapper, "NW_FARM3_MOUNTAINLAKE_03");
		
		Wld_InsertNpc (Dragonsnapper, "NW_FARM3_BIGWOOD_03_C");
		Wld_InsertNpc (Dragonsnapper, "NW_FARM3_BIGWOOD_03_C");
		
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "NW_CITY_TO_FARM2_03");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_ROAM_NW_BIGFARM_FELDREUBER11");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_02");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_03");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_04");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_05");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_06");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_ROAM_CITY_TO_FOREST_01");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_ROAM_CITY_TO_FOREST_15");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_07");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_08");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_09");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_10");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_11");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_12");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_13");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_14");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_15");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_16");
		Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_17");
		Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_18");
		
		Wld_InsertNpc (DMT_DementorAmbientWalker11, "CITY1");
		Wld_InsertNpc (DMT_DementorAmbientWalker9, "CITY1");
		Wld_InsertNpc (DMT_DementorAmbientWalker6, "CITY1");
		Wld_InsertNpc (DMT_DementorAmbientWalker3, "CITY1");
		Wld_InsertNpc (DMT_DementorAmbientWalker1, "CITY1");
		
		Wld_InsertNpc (BDT_1025_Bandit_H, "NW_FOREST_CAVE1_02");
		Wld_InsertNpc (BDT_1026_Bandit_H, "NW_FOREST_CAVE1_03");
		Wld_InsertNpc (BDT_1027_Bandit_H, "NW_FOREST_CAVE1_04");
		Wld_InsertNpc (Follow_Sheep_AKIL, "NW_FOREST_CAVE1_IN_02");
		
		if (!Npc_IsDead(Malak))
		{
			B_StartOtherRoutine (Malak, "FleeFromPass");
			Malak_isAlive_Kap3 = true;
			B_StartOtherRoutine (BAU_962_Bauer, "FleeFromPass");
			B_StartOtherRoutine (BAU_964_Bauer, "FleeFromPass");
			B_StartOtherRoutine (BAU_965_Bauer, "FleeFromPass");
			B_StartOtherRoutine (BAU_966_Bauer, "FleeFromPass");
			B_StartOtherRoutine (BAU_967_Bauer, "FleeFromPass");
			B_StartOtherRoutine (BAU_968_Bauer, "FleeFromPass");
			B_StartOtherRoutine (BAU_969_Bauer, "FleeFromPass");
			if (hero.guild == GIL_KDF)
			{
				CreateInvItems (Malak, ITWR_DementorObsessionBook_MIS, 1);
			};
		};
		
		if (hero.guild == GIL_MIL || hero.guild == GIL_PAL)
		{
			B_StartOtherRoutine (Hilda, "Krank");
		};
		
		if (hero.guild == GIL_SLD || hero.guild == GIL_DJG)
		{
			Wld_InsertItem (ItMw_MalethsGehstock_MIS, "FP_ITEM_FARM1_01");
			Wld_InsertNpc (Shadowbeast, "NW_LITTLESTONEHENDGE");
			Wld_InsertNpc (BDT_1024_MalethsBandit, "NW_FARM1_BANDITS_CAVE_08");
			Wld_InsertNpc (BDT_1006_Bandit_H, "FP_STAND_DEMENTOR_KDF_29");
			Wld_InsertNpc (BDT_1007_Bandit_H, "FP_STAND_DEMENTOR_KDF_30");
			Wld_InsertNpc (BDT_1008_Bandit_H, "NW_FARM1_BANDITS_CAVE_03");
			Wld_InsertNpc (BDT_1004_Bandit_M, "NW_FARM1_BANDITS_CAVE_02");
			Wld_InsertNpc (BDT_1005_Bandit_M, "NW_FARM1_BANDITS_CAVE_04");
		};
		
		if (hero.guild == GIL_KDF)
		{
			Wld_InsertItem (ItMi_KarrasBlessedStone_MIS, "FP_ITEM_FARM1_03");
			Wld_InsertItem (ItMi_KarrasBlessedStone_MIS, "FP_NW_ITEM_TROLL_10");
			B_StartOtherRoutine (Hilda, "KRANK");
			
			if (!Npc_IsDead(Vino))
			{
				B_StartOtherRoutine (Vino, "OBESESSIONRITUAL");
				CreateInvItems (Vino, ITWR_DementorObsessionBook_MIS, 1);
				Vino_isAlive_Kap3 = true;
				B_StartOtherRoutine (Lobart, "OBESESSIONRITUAL");
				Wld_InsertNpc (DMT_DementorSpeakerVino1, "FP_STAND_DEMENTOR_KDF_31");
				Wld_InsertNpc (DMT_DementorSpeakerVino2, "FP_STAND_DEMENTOR_KDF_32");
				Wld_InsertNpc (DMT_DementorSpeakerVino3, "FP_STAND_DEMENTOR_KDF_33");
				Wld_InsertNpc (DMT_DementorSpeakerVino4, "NW_LITTLESTONEHENDGE_02");
				B_KillNpc (Giant_Bug_VinoRitual1);
				B_KillNpc (Giant_Bug_VinoRitual2);
			};
			
			if (!Npc_IsDead(Bromor))
			{
				CreateInvItems (Bromor, ITWR_DementorObsessionBook_MIS, 1);
			};
		};
		
		if (MIS_Canthars_KomproBrief != LOG_SUCCESS)
		&& (MIS_Canthars_KomproBrief != 0)
		&& (!Canthar_Pay)
		&& (!Npc_IsDead(Canthar))
		{
			B_RemoveNpc(Sarah);
			B_StartOtherRoutine (Canthar, "MARKTSTAND");
			AI_Teleport (Canthar, "NW_CITY_SARAH");
			
			Canthar_Sperre = true;
			Canthar_WiederRaus = true;
		};
		
		CreateInvItems (Lester, ItMw_1h_Bau_Axe, 1);
		CreateInvItems (Ehnim, ItAt_MoleratLubric, 1);
		
		ShrineIsObsessed_NW_TROLLAREA_PATH_37 			= true;
		ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS 		= true;
		ShrineIsObsessed_NW_TROLLAREA_PATH_66 			= true;
		ShrineIsObsessed_NW_TROLLAREA_PATH_04 			= true;
		ShrineIsObsessed_SAGITTA 						= true;
		ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 	= true;
		ShrineIsObsessed_NW_FARM3_BIGWOOD_02 			= true;
		
		//B_ChangeChapter (9, NEWWORLD_ZEN);
		EnterNW_Kapitel = 9;
	};
};

///******************************************************************************************
func void B_ENTER_NEWWORLD_Kapitel_10()
{
	if (EnterNW_Kapitel < 10)
	{
		if (Npc_GetDistToWP(Salandril, "ALTAR") < 10000)
		{
			B_StartOtherRoutine	(Salandril, "Start");
		};
		
		B_StartOtherRoutine	(Jorgen, "Kloster");
		B_KillNpc (BDT_1050_Landstreicher);
		
		Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_ITEM_XARDAS_01");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDASCAVE_DJG_01");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDASCAVE_DJG_02");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDASCAVE_DJG_03");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_CAVE_12");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_CAVE_10");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_CAVE_09");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_TOWER_VALLEY_03");
		Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_TOWER_VALLEY_01");
		
		Wld_InsertNpc (OrcElite_AntiPaladin, "NW_TROLLAREA_PLANE_05");
		Wld_InsertNpc (OrcWarrior_Roam, "NW_TROLLAREA_PATH_44");
		Wld_InsertNpc (OrcWarrior_Roam, "NW_TROLLAREA_PLANE_06");
 		Wld_InsertNpc (DragonSnapper, "NW_FARM3_BIGWOOD_04");
 		Wld_InsertNpc (DragonSnapper, "NW_FARM3_BIGWOOD_04");
		Wld_InsertNpc (Maya_Troll, "NW_TROLLAREA_RUINS_41");
		
		if (hero.guild == GIL_PAL)
		{
			Wld_InsertNpc (OrcElite_AntiPaladin1, "NW_FARM3_PATH_BRIDGE");
			Wld_InsertNpc (OrcElite_AntiPaladin2, "NW_FARM1_PATH_CITY_13");
			Wld_InsertNpc (OrcElite_AntiPaladin3, "NW_CITY_TO_FOREST_11");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_FARM3_PATH_12_MONSTER_03");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_FARM3_PATH_12_MONSTER_03");
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_FARM3_PATH_10");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_BIGFARM_LAKE_06");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_NW_BIGFARM_LAKE_MONSTER_01_04");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_NW_BIGFARM_LAKE_MONSTER_01_02");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_TAVERNE_TROLLAREA_08");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "FP_ROAM_TAVERNE_TROLLAREA_03_02");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_TAVERNE_TROLLAREA_03_01");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_TAVERNE_TROLLAREA_03_03");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_TAVERNE_TROLLAREA_03_04");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_TAVERNE_TROLLAREA_03_05");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_TROLLAREA_PATH_62");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_TROLLAREA_PATH_62");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_TROLLAREA_RIVERSIDE_07");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_TROLLAREA_RITUAL_01");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_TROLLAREA_RITUAL_02");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_TROLLAREA_RITUAL_03");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_TROLLAREA_RITUAL_04");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_FOREST_PATH_32");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_FARM2_TO_TAVERN_10");
			
			Wld_InsertNpc (OrcWarrior_Roam, "NW_FARM3_PATH_12_MONSTER_01");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_FARM3_PATH_12_MONSTER_02");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "FP_ROAM_XARDAS_GOBBO_01");
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_XARDAS_GOBBO_02");
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_XARDAS_GOBBO_03");
			
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_FARM1_GOBBO_02");
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_FARM1_GOBBO_03");
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_FARM1_GOBBO_04");
			
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_FARM1_Wolf_01");
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_FARM1_Wolf_02");
			Wld_InsertNpc (OrcWarrior_Rest, "FP_ROAM_FARM1_Wolf_03");
			
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_CITY_TO_FOREST_39");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_CITY_TO_FOREST_42");
			
			Wld_InsertNpc (OrcWarrior_Roam, "FP_ROAM_CITY_TO_FOREST_41");
			Wld_InsertNpc (OrcElite_AntiPaladin, "XARDAS");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_BIGFARM_FARM4_PATH_04");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_PICK_NW_FARM4_FIELD_01");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_PICK_NW_FARM4_FIELD_04");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_PICK_NW_FARM4_FIELD_05");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_PICK_NW_FARM4_FIELD_02");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_PICK_NW_FARM4_FIELD_06");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_FARM4_BRONKO");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_PATH_TO_MONASTERY_06");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_PATH_TO_MONASTER_AREA_03");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_PATH_TO_MONASTERY_05");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_PATH_TO_MONASTER_AREA_09");
			Wld_InsertNpc (OrcWarrior_Roam, "NW_PATH_TO_MONASTER_AREA_05");
			Wld_InsertNpc (OrcElite_AntiPaladin, "BIGCROSS");
			
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_FARM2_TO_TAVERN_05");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_CAMPFIRE_CITY_TO_FOREST_43");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_CAMPFIRE_CITY_TO_FOREST_46");
			Wld_InsertNpc (OrcWarrior_Roam, "FP_CAMPFIRE_CITY_TO_FOREST_44");
			
			Wld_InsertNpc (OrkElite_AntiPaladinOrkOberst, "NW_FARM1_BANDITS_CAVE_08");
			Wld_InsertNpc (OrcElite_AntiPaladin, "FP_STAND_DEMENTOR_KDF_29");
			Wld_InsertNpc (OrcElite_AntiPaladin, "FP_STAND_DEMENTOR_KDF_30");
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_FARM1_BANDITS_CAVE_03");
			Wld_InsertNpc (OrcElite_AntiPaladin, "NW_FARM1_BANDITS_CAVE_07");
		};
		
		if (hero.guild == GIL_DJG || hero.guild == GIL_PAL)
		{
			Wld_InsertNpc (OrcWarrior_Lobart1, "NW_FARM1_PATH_CITY_SHEEP_04");
			Wld_InsertNpc (OrcWarrior_Lobart2, "NW_FARM1_PATH_CITY_SHEEP_04");
			Wld_InsertNpc (OrcWarrior_Lobart3, "NW_FARM1_PATH_CITY_SHEEP_04");
			Wld_InsertNpc (OrcWarrior_Lobart4, "NW_FARM1_PATH_CITY_SHEEP_01");
			Wld_InsertNpc (OrcWarrior_Lobart5, "NW_FARM1_PATH_CITY_SHEEP_01");
			Wld_InsertNpc (OrcWarrior_Lobart6, "NW_FARM1_PATH_CITY_SHEEP_01");
			
			B_StartOtherRoutine	(Vino, "BugsThere");
			B_StartOtherRoutine	(LobartsBauer1, "BugsThere");
			B_StartOtherRoutine	(LobartsBauer2, "BugsThere");
		};
		
		if (hero.guild == GIL_KDF || hero.guild == GIL_DJG)
		{
		 	ShrineIsObsessed_NW_TROLLAREA_PATH_37 			= false;
			ShrineIsObsessed_NW_FARM1_CONNECT_XARDAS 		= false;
			ShrineIsObsessed_NW_TROLLAREA_PATH_66 			= false;
			ShrineIsObsessed_NW_TROLLAREA_PATH_04 			= false;
			ShrineIsObsessed_SAGITTA 						= false;
			ShrineIsObsessed_NW_BIGMILL_MALAKSVERSTECK_02 	= false;
			ShrineIsObsessed_NW_FARM3_BIGWOOD_02 			= false;
		};
		
		if (hero.guild == GIL_DJG)
		{
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_NW_ITEM_RIVERSIDE_EGG");
			Wld_InsertNpc (Draconian, "FP_ROAM_TROLLAREA_06");
			Wld_InsertNpc (Draconian, "NW_TROLLAREA_RIVERSIDE_05");
			Wld_InsertNpc (Draconian, "NW_TROLLAREA_RIVERSIDE_04");
			Wld_InsertNpc (Draconian, "FP_ROAM_TROLLAREA_07");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_NW_ITEM_MAGECAVE_EGG");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_16");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_19");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_19");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_19");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_11");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_06");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_07");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_08");
			
			Wld_InsertNpc (Draconian, "NW_TROLLAREA_PATH_01_01");
			Wld_InsertNpc (Draconian, "NW_TROLLAREA_PATH_01");
			Wld_InsertNpc (Draconian, "NW_TROLLAREA_PATH_01_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_MAGECAVE_08");
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_NW_ITEM_RITUALFOREST_CAVE_EGG");
			Wld_InsertNpc (Draconian, "NW_RITUALFOREST_CAVE_06");
			Wld_InsertNpc (Draconian, "FP_ROAM_RITUALFOREST_CAVE_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_RITUALFOREST_CAVE_02");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_ROAM_NW_CITY_SMFOREST_09_04");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_CITY_SMFOREST_09_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_CITY_SMFOREST_09_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_CITY_SMFOREST_09_01");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_ROAM_NW_CITY_SMFOREST_05_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_CITY_SMFOREST_05_04");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_CITY_SMFOREST_05_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_CITY_SMFOREST_05_01");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_ROAM_CITYFOREST_KAP3_07");
			Wld_InsertNpc (Draconian, "FP_ROAM_CITYFOREST_KAP3_06");
			Wld_InsertNpc (Draconian, "FP_ROAM_CITYFOREST_KAP3_08");
			Wld_InsertNpc (Draconian, "FP_ROAM_CITYFOREST_KAP3_05");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_ROAM_CITYFOREST_KAP3_07");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_BIGFARMFORESTCAVE_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_BIGFARMFORESTCAVE_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_NW_BIGFARMFORESTCAVE_03");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_NW_ITEM_CASTLEMINE_EGG");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE_03");
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_NW_ITEM_CASTLEMINE_EGG2");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE_04");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE_05");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_NW_ITEM_BIGFARMLAKECAVE_EGG");
			Wld_InsertNpc (Draconian, "FP_ROAM_BIGFARM_LAKE_CAVE_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_BIGFARM_LAKE_CAVE_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_BIGFARM_LAKE_CAVE_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_BIGFARM_LAKE_CAVE_04");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_NW_ITEM_CASTLEMINE2_EGG");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE2_16");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE2_15");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE2_14");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE2_13");
			
			Wld_InsertItem (ItAt_DragonEgg_MIS, "FP_ITEM_FARM1_02");
			Wld_InsertNpc (Draconian, "NW_FARM1_BANDITS_CAVE_08");
			Wld_InsertNpc (Draconian, "FP_STAND_DEMENTOR_KDF_29");
			Wld_InsertNpc (Draconian, "FP_STAND_DEMENTOR_KDF_30");
			Wld_InsertNpc (Draconian, "NW_FARM1_BANDITS_CAVE_03");
			Wld_InsertNpc (Draconian, "NW_FARM1_BANDITS_CAVE_02");
			Wld_InsertNpc (Draconian, "NW_FARM1_BANDITS_CAVE_04");
			Wld_InsertNpc (Draconian, "NW_FARM1_BANDITS_CAVE_07");
			
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE2_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE2_04");
			Wld_InsertNpc (Draconian, "FP_ROAM_CASTLEMINE2_05");
			
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_VALLEY_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_VALLEY_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_VALLEY_04");
			
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_MONSTER_02_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_MONSTER_02_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_MONSTER_02_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_MONSTER_02_04");
			
			Wld_InsertNpc (Draconian, "NW_XARDAS_GOBBO_01");
			Wld_InsertNpc (Draconian, "NW_XARDAS_GOBBO_01");
			Wld_InsertNpc (Draconian, "NW_XARDAS_GOBBO_02");
			
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_TOWER_4_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_TOWER_4_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_TOWER_4_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_TOWER_4_04");
			
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_CAVE_01");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_CAVE_02");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_CAVE_03");
			Wld_InsertNpc (Draconian, "FP_ROAM_XARDAS_CAVE_04");
			
			Wld_InsertNpc (Draconian, "FP_ROAM_TROLLAREA_11");
			Wld_InsertNpc (Draconian, "FP_ROAM_TROLLAREA_09");
			Wld_InsertNpc (Draconian, "FP_ROAM_TROLLAREA_10");
			Wld_InsertNpc (Draconian, "FP_ROAM_TROLLAREA_08");
		};
		
		if (hero.guild == GIL_KDF)
		{
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "NW_TROLLAREA_PATH_80");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_ROAM_TROLLAREA_19");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "NW_FARM2_TO_TAVERN_08");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_ROAM_MEDIUMFOREST_KAP2_13");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_ROAM_XARDAS_TOWER_3_02");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_ROAM_XARDAS_TOWER_3_02");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_04");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_05");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_06");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_07");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_08");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_KDF_09");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_10");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_11");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_13");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_KDF_14");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_22");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_23");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_24");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_25");
			
			Wld_InsertNpc (DMT_DementorAmbientWalker10, "CITY1");
			Wld_InsertNpc (DMT_DementorAmbientWalker8, "CITY1");
			Wld_InsertNpc (DMT_DementorAmbientWalker7, "CITY1");
			
			CreateInvItems (Randolph, ITWR_DementorObsessionBook_MIS, 1);
			B_StartOtherRoutine (Randolph, "Obsessed");
		};
		
		EnterNW_Kapitel = 10;
	};
	
	if (Talbin_FollowsThroughPass == LOG_RUNNING)
	{
		Wld_InsertNpc (VLK_4132_Talbin_NW, "LEVELCHANGE");
		Talbin_FollowsThroughPass = LOG_SUCCESS;
	};
};

///******************************************************************************************
var int Pal_Schiffswache_Exchange_onetime;
var int Rosi_FleeFromSekob_Kap5;

func void B_ENTER_NEWWORLD_Kapitel_11()
{
	if (EnterNW_Kapitel < 11)
	{
		B_RemoveNpc(Xardas);
		B_StartOtherRoutine	(Lester, "XardasWeg");
		
		if (Npc_GetDistToWP(Salandril, "ALTAR") < 10000)
		{
			B_StartOtherRoutine	(Salandril, "Start");
		};
		
		if (!Npc_IsDead(Sekob))
		{
			B_StartOtherRoutine	(Rosi, "FleeFromSekob");
			B_StartOtherRoutine	(Till, "FleeFromSekob");
			Rosi_FleeFromSekob_Kap5 = true;
		};
		
		if (GornDJG_is_alive)
		{
			Wld_InsertNpc (PC_Fighter_NW_nach_DJG, "Bigfarm");
		};
		if (DJG_Angar_is_alive)
		{
			Wld_InsertNpc (DJG_705_Angar_NW, "Bigfarm");
		};
		
		Wld_InsertNpc (Xardas_DT_Demon1, "FP_ROAM_NW_XARDASTOWER_DEMON_02");
		Wld_InsertNpc (Xardas_DT_Demon2, "NW_XARDAS_TOWER_IN1_24");
		Wld_InsertNpc (Xardas_DT_Demon3, "FP_ROAM_NW_XARDASTOWER_DEMON_03");
		Wld_InsertNpc (Xardas_DT_Demon4, "FP_ROAM_NW_XARDASTOWER_DEMON_04");
		Wld_InsertNpc (Xardas_DT_Demon5, "FP_ROAM_NW_XARDASTOWER_DEMON_05");
		Wld_InsertNpc (Xardas_DT_DemonLord, "FP_ROAM_NW_XARDASTOWER_DEMONLORD_01");
		
		Wld_InsertNpc (Bloodfly, "NW_FARM3_PATH_11_SMALLRIVER_15");
		Wld_InsertNpc (Bloodfly, "NW_FARM3_PATH_11_SMALLRIVER_15");
		
		Wld_InsertNpc (Waran, "NW_FARM3_PATH_11_SMALLRIVER_11");
		Wld_InsertNpc (Waran, "NW_FARM3_PATH_11_SMALLRIVER_11");
		
		Wld_InsertNpc (Lurker, "NW_FARM3_MOUNTAINLAKE_05");
		Wld_InsertNpc (Lurker, "NW_FARM3_MOUNTAINLAKE_05");
		
		Wld_InsertNpc (NONE_101_Mario,	"NW_CITY_ENTRANCE_01");
		
		Wld_InsertItem (ItWr_HallsofIrdorath_Mis, "FP_NW_ITEM_LIBRARY_IRDORATHBOOK");
		Wld_InsertItem (ItWr_Seamap_Irdorath, "FP_NW_ITEM_LIBRARY_SEAMAP");
		Wld_InsertItem (ItWr_XardasSeamapBook_Mis, "FP_NW_ITEM_LIBRARY_SEAMAP");
		Wld_InsertItem (ItPo_InnosTears, "FP_NW_ITEM_LIBRARY_SEAMAP2");
		
		if (hero.guild == GIL_PAL)
		{
			Wld_InsertItem (ItAr_PAL_H, "FP_ITEM_PALFINALARMOR");
			Wld_InsertItem (ItMi_RuneBlank, "FP_NW_ITEM_LIBRARY_SEAMAP");
		};
		if (hero.guild == GIL_DJG)
		{
		};
		if (hero.guild == GIL_KDF)
		{
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_01");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_02");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_03");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_15");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_16");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_17");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_KDF_18");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_19");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_20");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_KDF_21");
			Wld_InsertItem (ITWR_DementorObsessionBook_MIS, "FP_ITEM_FARM1_01");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_29");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_30");
			Wld_InsertNpc (DMT_DementorAmbient, "NW_FARM1_BANDITS_CAVE_08");
			Wld_InsertNpc (DMT_DementorAmbient, "NW_FARM1_BANDITS_CAVE_03");
			Wld_InsertNpc (DMT_DementorAmbient, "NW_FARM1_BANDITS_CAVE_02");
			Wld_InsertNpc (DMT_DementorAmbient, "NW_FARM1_BANDITS_CAVE_04");
			Wld_InsertNpc (DMT_DementorAmbient, "NW_FARM1_BANDITS_CAVE_07");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_KDF_34");
			Wld_InsertNpc (DMT_DementorAmbientSpeaker, "FP_STAND_DEMENTOR_KDF_35");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_26");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_27");
			Wld_InsertNpc (DMT_DementorAmbient, "FP_STAND_DEMENTOR_KDF_28");
			
			Wld_InsertNpc (DMT_DementorAmbientWalker5, "CITY1");
			Wld_InsertNpc (DMT_DementorAmbientWalker4, "CITY1");
			Wld_InsertNpc (DMT_DementorAmbientWalker2, "CITY1");
			
			if (!Npc_IsDead(Sekob))
			{
				CreateInvItems (Sekob, ITWR_DementorObsessionBook_MIS, 1);
				B_StartOtherRoutine	(Sekob, "Obsessed");
			};
		};
		
		Wld_InsertNpc (Pal_285_Ritter, "CITY1");
		Wld_InsertNpc (Pal_286_Ritter, "CITY1");
		Wld_InsertNpc (Pal_287_Ritter, "CITY1");
		Wld_InsertNpc (Pal_288_Ritter, "CITY1");
		Wld_InsertNpc (Pal_289_Ritter, "CITY1");
		Wld_InsertNpc (Pal_290_Ritter, "CITY1");
		Wld_InsertNpc (Pal_291_Ritter, "CITY1");
		Wld_InsertNpc (Pal_292_Ritter, "CITY1");
		Wld_InsertNpc (Pal_293_Ritter, "CITY1");
		
		Schiffswache_212.flags = 0;
		Schiffswache_213.flags = 0;
		Pal_220_Schiffswache.flags = 0;
		Pal_221_Schiffswache.flags = 0;
		Pal_222_Schiffswache.flags = 0;
		Pal_223_Schiffswache.flags = 0;
		Pal_224_Schiffswache.flags = 0;
		Pal_225_Schiffswache.flags = 0;
		Pal_226_Schiffswache.flags = 0;
		Pal_227_Schiffswache.flags = 0;
		Pal_228_Schiffswache.flags = 0;
		B_StartOtherRoutine	(Pal_220_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_221_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_222_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_223_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_224_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_225_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_226_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_227_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_228_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_230_Ritter, "ShipFree");
		B_StartOtherRoutine	(Pal_231_Ritter, "ShipFree");
		B_StartOtherRoutine	(Pal_240_Ritter, "ShipFree");
		B_StartOtherRoutine	(Pal_241_Ritter, "ShipFree");
		
		//B_ChangeChapter (11, NEWWORLD_ZEN);
		EnterNW_Kapitel = 11;
	};
	
	if (MIS_OCGateOpen)
	&& (!Pal_Schiffswache_Exchange_onetime)
	{
		B_StartOtherRoutine	(Pal_212_Schiffswache, "ShipFree");
		B_StartOtherRoutine	(Pal_213_Schiffswache, "ShipFree");
		Pal_Schiffswache_Exchange_onetime = true;
		MIS_ShipIsFree = true;
	};
	if (Biff_FollowsThroughPass == LOG_RUNNING)
	{
		Wld_InsertNpc (DJG_713_Biff_NW, "LEVELCHANGE");
		Biff_FollowsThroughPass = LOG_SUCCESS;
	};
};

///******************************************************************************************
func void B_ENTER_NEWWORLD_Kapitel_12()
{
	if (EnterNW_Kapitel < 12)
	{
		EnterNW_Kapitel = 12;
	};
};

///******************************************************************************************
///	B_ENTER_NEWWORLD
///******************************************************************************************
func void B_ENTER_NEWWORLD()
{
	B_InitNpcGlobals();
	if (Kapitel >= 7)	{	B_ENTER_NEWWORLD_Kapitel_7();	};
	if (Kapitel >= 8)	{	B_ENTER_NEWWORLD_Kapitel_8();	};
	if (Kapitel >= 9)	{	B_ENTER_NEWWORLD_Kapitel_9();	};
	if (Kapitel >= 10)	{	B_ENTER_NEWWORLD_Kapitel_10();	};
	if (Kapitel >= 11)	{	B_ENTER_NEWWORLD_Kapitel_11();	};
	if (Kapitel >= 12)	{	B_ENTER_NEWWORLD_Kapitel_12();	};
	
	CurrentLevel = NEWWORLD_ZEN;
	B_InitNpcGlobals();
};
