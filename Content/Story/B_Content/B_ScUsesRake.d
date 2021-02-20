//******************************************************************************************

var int   RAKEPLACE[50]; 
const int Greg_FirstSecret	= 1 ;
const int RAKE_BUDDEL_DIST_MAX = 300;
const int RAKE_BUDDEL_DIST_MIN = 200;

//******************************************************************************************
func void RakeTreasureSuccess (var C_ITEM itm)
{
	Wld_PlayEffect ("spellFX_ItemAusbuddeln", itm, itm, 0, 0, 0, false);
	B_Say_Overlay (self, self, "$FOUNDTREASURE");
	B_GivePlayerXP(XP_Ambient);
};

FUNC VOID B_SCUsesRake (var C_NPC slf)
{
};

FUNC VOID B_SCGetTreasure_S1()
{
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
	{
		//NEWWORLD_ZEN
		if ((Npc_GetDistToWP(hero,"NW_BIGFARM_LAKE_CAVE_07") < RAKE_BUDDEL_DIST_MIN) && (RAKEPLACE[Greg_FirstSecret] == false))
		{
			Wld_InsertItem (ItSe_GoldPocket25, "NW_BIGFARM_LAKE_CAVE_07");
			RAKEPLACE[Greg_FirstSecret] = true;
			RakeTreasureSuccess(ItSe_GoldPocket25);
			var C_ITEM GregsArmor;
			GregsArmor = Npc_GetEquippedArmor(Greg_NW);

			if (Hlp_IsItem(GregsArmor,ITAR_PIR_H) == false)
			{
				AI_EquipArmor (Greg_NW, ITAR_PIR_H);
			};
		}
		////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
		else if ((Npc_GetDistToWP(hero,"NW_LAKE_GREG_TREASURE_01") < RAKE_BUDDEL_DIST_MIN) && (RAKEPLACE[2] == false))
		{
			Wld_InsertItem (ItSe_GoldPocket100, "NW_LAKE_GREG_TREASURE_01");
			RAKEPLACE[2] = true;
			RakeTreasureSuccess(ItSe_GoldPocket100);
		}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,				"NW_FARM3_GREGTREASURE_01"	)< RAKE_BUDDEL_DIST_MIN) 		&&  (RAKEPLACE[3]==false)){
				Wld_InsertItem 		(ItMi_GoldCup, 			"NW_FARM3_GREGTREASURE_01"	); 									 RAKEPLACE[3]=true;
				RakeTreasureSuccess (ItMi_GoldCup);}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,				"NW_FARM3_MOUNTAINLAKE_MONSTER_01"	)< RAKE_BUDDEL_DIST_MIN) && (RAKEPLACE[4]==false)){	
				Wld_InsertItem 		(ItMi_SilverChalice, 	"NW_FARM3_MOUNTAINLAKE_MONSTER_01"	); 							 RAKEPLACE[4]=true;
				RakeTreasureSuccess (ItMi_SilverChalice);}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,				"NW_BIGMILL_FARM3_01"	)< RAKE_BUDDEL_DIST_MIN) 			&& 	(RAKEPLACE[5]==false)){
				Wld_InsertItem 		(ItAm_Splendor_01, 		"NW_BIGMILL_FARM3_01"	); 						 				 RAKEPLACE[5]=true;
				RakeTreasureSuccess (ItAm_Splendor_01);}
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	//ADDONWORLD_ZEN
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//			ENTRANCE
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"ADW_ENTRANCE_RAKEPLACE_01"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[12]==false)){
				Wld_InsertItem 		(ItWr_StonePlateCommon_Addon,	"ADW_ENTRANCE_RAKEPLACE_01"	); 							 			 RAKEPLACE[12]=true;
				Wld_InsertItem 		(ItMi_SilverChalice, 			"ADW_ENTRANCE_RAKEPLACE_01"	); 							 			 
				RakeTreasureSuccess (ItMi_SilverChalice);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_ENTRANCE_RAKEPLACE_02"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[13]==false)){
//				Wld_InsertItem 		(ItWr_DexStonePlate1_Addon,	"ADW_ENTRANCE_RAKEPLACE_02"	); 							 			 RAKEPLACE[13]=true;
				Wld_InsertItem 		(ItMi_GoldCup, 				"ADW_ENTRANCE_RAKEPLACE_02"	); 							 			 
				RakeTreasureSuccess (ItMi_GoldCup);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_ENTRANCE_RAKEPLACE_03"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[14]==false)){
				Wld_InsertItem 		(ItPo_Perm_Health, 			"ADW_ENTRANCE_RAKEPLACE_03"	); 							 			 RAKEPLACE[14]=true;
				Wld_InsertItem 		(ItSe_GoldPocket100, 		"ADW_ENTRANCE_RAKEPLACE_03"	); 							 			
				RakeTreasureSuccess (ItSe_GoldPocket100);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_ENTRANCE_RAKEPLACE_04"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[15]==false)){
				Wld_InsertItem 		(ItMi_SilverRing, 			"ADW_ENTRANCE_RAKEPLACE_04"	); 							 			 RAKEPLACE[15]=true;
				Wld_InsertItem 		(ItMw_Schwert4, 			"ADW_ENTRANCE_RAKEPLACE_04"	); 							 			
				RakeTreasureSuccess (ItMw_Schwert4);}
		
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//			VALLEY
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_VALLEY_GREGTREASURE_01"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[16]==false)){
				Wld_InsertItem 		(ItSe_GoldPocket100, 		"ADW_VALLEY_GREGTREASURE_01"	); 							 			 RAKEPLACE[16]=true;
				Wld_InsertItem 		(ItPo_Health_02, 			"ADW_VALLEY_GREGTREASURE_01"	); 							 			 
				Wld_InsertItem 		(ItPo_Mana_03, 				"ADW_VALLEY_GREGTREASURE_01"	); 							 			 
				RakeTreasureSuccess (ItPo_Mana_03);
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_VALLEY_RAKEPLACE_01"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[17]==false)){
				Wld_InsertItem 		(ItPo_Mana_03, 			"ADW_VALLEY_RAKEPLACE_01"	); 							 			 RAKEPLACE[17]=true;
				Wld_InsertItem 		(ItPo_Speed, 				"ADW_VALLEY_RAKEPLACE_01"	); 							 			
				Wld_InsertItem 		(ItPo_Mana_02, 				"ADW_VALLEY_RAKEPLACE_01"	); 							 			
				RakeTreasureSuccess (ItPo_Mana_02);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"ADW_VALLEY_RAKEPLACE_02"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[18]==false)){
				Wld_InsertItem 		(ItPo_Health_03, 				"ADW_VALLEY_RAKEPLACE_02"	); 							 			 RAKEPLACE[18]=true;
				Wld_InsertItem 		(ItWr_StonePlateCommon_Addon, 	"ADW_VALLEY_RAKEPLACE_02"	); 							 			
				Wld_InsertItem 		(ItSe_GoldPocket50, 			"ADW_VALLEY_RAKEPLACE_02"	); 							 			
				RakeTreasureSuccess (ItSe_GoldPocket50);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"ADW_VALLEY_RAKEPLACE_03"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[19]==false)){
//				Wld_InsertItem 		(ItSc_Firerain, 				"ADW_VALLEY_RAKEPLACE_03"	); 							 			 RAKEPLACE[19]=true;
				Wld_InsertItem 		(ItSe_GoldPocket50, 			"ADW_VALLEY_RAKEPLACE_03"	); 							 			 	
				Wld_InsertItem 		(ItWr_StonePlateCommon_Addon, 	"ADW_VALLEY_RAKEPLACE_03"	); 							 			 	
				RakeTreasureSuccess (ItSe_GoldPocket50);}
	
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//			BANDITSCAMP
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"ADW_BANDITSCAMP_RAKEPLACE_01"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[20]==false)){
				Wld_InsertItem 		(ItMi_HoneyTabak, 				"ADW_BANDITSCAMP_RAKEPLACE_01"	); 							 			 RAKEPLACE[20]=true;
				Wld_InsertItem 		(ItWr_StonePlateCommon_Addon, 	"ADW_BANDITSCAMP_RAKEPLACE_01"	); 							 			 
				//Wld_InsertItem 		(ItAm_Addon_MANA, 				"ADW_BANDITSCAMP_RAKEPLACE_01"	); 							 			 
				//RakeTreasureSuccess (ItAm_Addon_MANA);
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_BANDITSCAMP_RAKEPLACE_02"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[21]==false)){
//				Wld_InsertItem 		(ItRu_SumGobSkel, 			"ADW_BANDITSCAMP_RAKEPLACE_02"	); 							 			 RAKEPLACE[21]=true;
				Wld_InsertItem 		(ItPo_Mana_03,	 			"ADW_BANDITSCAMP_RAKEPLACE_02"	); 							 			
				RakeTreasureSuccess (ItPo_Mana_03);
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_BANDITSCAMP_RAKEPLACE_03"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[22]==false)){
//				Wld_InsertItem 		(ItSc_TrfShadowbeast, 		"ADW_BANDITSCAMP_RAKEPLACE_03"	); 							 			 RAKEPLACE[22]=true;
				Wld_InsertItem 		(ItSc_LightHeal, 			"ADW_BANDITSCAMP_RAKEPLACE_03"	); 							 			
				RakeTreasureSuccess (ItSc_LightHeal);
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,						"ADW_BANDITSCAMP_RAKEPLACE_04"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[23]==false)){
				Wld_InsertItem 		(ItWr_StonePlateCommon_Addon,	"ADW_BANDITSCAMP_RAKEPLACE_04"	); 							 			 RAKEPLACE[23]=true;
				Wld_InsertItem 		(ItRi_HP_01, 					"ADW_BANDITSCAMP_RAKEPLACE_04"	); 							 			
				RakeTreasureSuccess (ItRi_HP_01);}


			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//			CANYON
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_CANYON_MINE1_11"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[24]==false)){
				Wld_InsertItem 		(ItSE_Addon_FrancisChest, 	"ADW_CANYON_MINE1_11"	); 							 			 RAKEPLACE[24]=true;
				RakeTreasureSuccess (ItSE_Addon_FrancisChest);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_CANYON_RAKEPLACE_01"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[25]==false)){
				Wld_InsertItem 		(ItMi_RuneBlank, 			"ADW_CANYON_RAKEPLACE_01"	); 							 			 RAKEPLACE[25]=true;
				Wld_InsertItem 		(ItSe_GoldPocket25, 		"ADW_CANYON_RAKEPLACE_01"	); 							 			 
				RakeTreasureSuccess (ItSe_GoldPocket25);}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_CANYON_RAKEPLACE_02"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[26]==false)){
				Wld_InsertItem 		(ItMi_Nugget, 				"ADW_CANYON_RAKEPLACE_02"	); 							 			 RAKEPLACE[26]=true;
//				Wld_InsertItem 		(ItSc_LightningFlash, 		"ADW_CANYON_RAKEPLACE_02"	); 							 			
//				Wld_InsertItem 		(ItSc_ChargeFireBall,		"ADW_CANYON_RAKEPLACE_02"	); 							 			
//				RakeTreasureSuccess (ItSc_ChargeFireBall);
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_CANYON_RAKEPLACE_03"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[27]==false)){
				Wld_InsertItem 		(ItSe_GoldPocket25, 		"ADW_CANYON_RAKEPLACE_03"	); 							 			 RAKEPLACE[27]=true;
//				Wld_InsertItem 		(ItWr_ManaStonePlate1_Addon,"ADW_CANYON_RAKEPLACE_03"	); 							 			 
//				Wld_InsertItem 		(ItMi_Pitch, 				"ADW_CANYON_RAKEPLACE_03"	); 							 			 
//				RakeTreasureSuccess (ItMi_Pitch);
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_CANYON_RAKEPLACE_04"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[28]==false)){
				Wld_InsertItem 		(ItMi_SilverRing, 			"ADW_CANYON_RAKEPLACE_04"	); 							 			 RAKEPLACE[28]=true;
				Wld_InsertItem 		(ItMi_Sulfur, 				"ADW_CANYON_RAKEPLACE_04"	); 							 			
//				Wld_InsertItem 		(ItWr_TwoHStonePlate1_Addon,"ADW_CANYON_RAKEPLACE_04"	); 							 			
//				RakeTreasureSuccess (ItWr_TwoHStonePlate1_Addon);
				}
				////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_CANYON_RAKEPLACE_05"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[29]==false)){
				Wld_InsertItem 		(ItMi_GoldRing, 			"ADW_CANYON_RAKEPLACE_05"	); 							 			 RAKEPLACE[29]=true;
//				Wld_InsertItem 		(ItAt_DragonBlood, 			"ADW_CANYON_RAKEPLACE_05"	); 							 			 
//				RakeTreasureSuccess (ItAt_DragonBlood);
				}

			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
			//			PIRATECAMP
			////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
				else if ((Npc_GetDistToWP(hero,					"ADW_PIRATECAMP_GREGTREASURE_KOMPASS"	)< RAKE_BUDDEL_DIST_MIN) 			&&  (RAKEPLACE[30]==false)){
				Wld_InsertItem 		(ItMi_GoldCompass, 			"ADW_PIRATECAMP_GREGTREASURE_KOMPASS"	); 							 			 RAKEPLACE[30]=true;
				RakeTreasureSuccess (ItMi_GoldCompass);};

	};	
};
