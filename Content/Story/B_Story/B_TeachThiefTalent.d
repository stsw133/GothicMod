// ***************************************
// B_TeachThiefTalent
// ------------------
// Picklock, Pickpocket, Sneak und Acrobat
// ***************************************

func int B_TeachThiefTalent (var C_NPC slf, var C_NPC oth, var int talent)
{
	// ------ Kosten festlegen ------
	var int kosten;
	kosten = B_GetLearnCostTalent(oth, talent, 1);
	
	
	//EXIT IF...
	
	// ------ falscher Parameter ------
	if (talent!=NPC_TALENT_PICKLOCK) 
	&& (talent!=NPC_TALENT_SNEAK) 
	&& (talent!=NPC_TALENT_ACROBATIC) 
	&& (talent!=NPC_TALENT_PICKPOCKET)
	{
		Print ("*** B��d: Z�y parametr ***");
		return FALSE;
	};
	
	// ------ Player hat zu wenig Lernpunkte ------
	if (oth.lp < kosten)
	{
		PrintScreen	("Za ma�o Punkt�w Nauki!", -1,-1, FONT_ScreenSmall, 2);
		B_Say (slf, oth, "$NOLEARNNOPOINTS");
		
		return FALSE;
	};
	
		
	// FUNC
				
	// ------ Lernpunkte abziehen ------			
	oth.lp = oth.lp - kosten;
	
	// ------ Talent vergeben ------
	if (talent == NPC_TALENT_PICKLOCK)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_PICKLOCK, 1);
		PrintScreen			(PRINT_LearnPicklock, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
	
	if (talent == NPC_TALENT_SNEAK)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_SNEAK, 1);
		PrintScreen			(PRINT_LearnSneak, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
	
	if (talent == NPC_TALENT_ACROBATIC)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_ACROBATIC, 1);
		PrintScreen	(PRINT_LearnAcrobat, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
	
	if (talent == NPC_TALENT_PICKPOCKET)
	{
		Npc_SetTalentSkill 	(oth, NPC_TALENT_PICKPOCKET, 1);	
		PrintScreen	(PRINT_LearnPickpocket, -1, -1, FONT_Screen, 2);
		return TRUE;
	};
};
	
	
	
	
	




	
	
	
	
	
	
	
	
	
	



	
	
	


		
	
	
	

	
	
	
	
	

	
	
	

