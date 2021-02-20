
//****************************
// 	EVT_ORKOBERST 
//****************************

var int EVT_ORKOBERST_OneTime;
func void EVT_ORKOBERST ()
{
	if (EVT_ORKOBERST_OneTime == false)
	{
		OrkElite_AntiPaladinOrkOberst_DI.aivar[AIV_EnemyOverride] = false;
		OrcElite_DIOberst1_Rest.aivar[AIV_EnemyOverride] = false;
		OrcElite_DIOberst2_Rest.aivar[AIV_EnemyOverride] = false;
		OrcElite_DIOberst3_Rest.aivar[AIV_EnemyOverride] = false;

		Wld_InsertNpc 	(OrcWarrior_Roam, 	"SHIP_DECK_05");	
		Wld_InsertNpc 	(OrcWarrior_Roam, 	"SHIP_DECK_17");	
		Wld_InsertNpc 	(OrcWarrior_Roam, 	"SHIP_IN_22");	
		Wld_InsertNpc 	(OrcWarrior_Roam, 	"DI_SHIP_04");	
	
		if ( TorlofIsCaptain == true)
		{	
			Wld_InsertNpc 	(OrcWarrior_Roam, 	"DI_SHIP_04");	
		};
	
		Wld_InsertNpc 	(OrcWarrior_Roam, 	"FP_ROAM_DI_ORK_02");	
		Wld_InsertNpc 	(OrcWarrior_Roam, 	"FP_ROAM_DI_ORK_03");	
		B_StartOtherRoutine	(Biff_DI,"OrkSturmDI");
		B_StartOtherRoutine	(Jack_DI,"OrkSturmDI");
		B_StartOtherRoutine	(Torlof_DI,"OrkSturmDI");
		B_StartOtherRoutine	(Mario_DI,"OrkSturmDI");
		
		if (Npc_IsDead(Mario_DI) == false)
		{
			Wld_InsertNpc 	(Skeleton_Mario1, 	"FP_ROAM_DI_MARIOSSKELETONS_01");	
			Wld_InsertNpc 	(Skeleton_Mario2, 	"FP_ROAM_DI_MARIOSSKELETONS_02");	
			Wld_InsertNpc 	(Skeleton_Mario3, 	"FP_ROAM_DI_MARIOSSKELETONS_03");	
			Wld_InsertNpc 	(Skeleton_Mario4, 	"FP_ROAM_DI_MARIOSSKELETONS_04");	
		}
		else
		{
			Wld_InsertNpc 	(UndeadOrcWarrior, 	"FP_ROAM_DI_MARIOSSKELETONS_01");	
			Wld_InsertNpc 	(UndeadOrcWarrior, 	"FP_ROAM_DI_MARIOSSKELETONS_02");	
			Wld_InsertNpc 	(UndeadOrcWarrior, 	"FP_ROAM_DI_MARIOSSKELETONS_03");	
			Wld_InsertNpc 	(UndeadOrcWarrior, 	"FP_ROAM_DI_MARIOSSKELETONS_04");	
		};
		
		ORkSturmDI  = true;
		
		B_LogEntry (TOPIC_HallenVonIrdorath,"Orkowy pu�kownik to twardy przeciwnik. Z tego co wiem w jego sali tronowej musi by� jakie� tajemne przej�cie."); 

		EVT_ORKOBERST_OneTime = true;
	};
	

	PrintScreen ("", -1, -1, FONT_Screen, 0);

};
