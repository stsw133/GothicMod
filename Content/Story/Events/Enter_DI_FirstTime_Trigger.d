//****************************
// 	ENTER_DI_FIRSTTIME_TRIGGER 
//****************************
var int EnterDI_Kapitel12;

func void ENTER_DI_FIRSTTIME_TRIGGER ()
{
	//----- Levelchange verbarrikadieren --------
	if (Npc_HasItems (hero,ITKE_SHIP_LEVELCHANGE_MIS))
	{
		Npc_RemoveInvItems	(hero,	ITKE_SHIP_LEVELCHANGE_MIS,1);	//Joly: denn SHIP zen wird bei DRAGONISLAND UND NEWWORLD benutzt. Beim betreten der Insel ist die T�r wieder zu!!!!
	};
	
	
	if (hero.attribute[ATR_DEXTERITY] < 15)//Joly:wegen Br�ckenevent
	{
		Wld_InsertItem	(ItPo_Perm_DEX, "FP_ITEM_DI_ENTER_05");
	};

//###############################################
//##
//##	B_ENTER_DRAGONISLAND			
//##	//Joly: Steht hier, denn hier bin ich sicher, 
//##	dass alle am start sind und k�nnen bef�llt werden!
//##
//###############################################

	if (EnterDI_Kapitel12 == FALSE)
		{
		
			if (hero.guild == GIL_PAL)
			{
				CreateInvItems (Archol,ItRu_PalDestroyEvil,1);
			};
		
		Wld_InsertItem	(ItMi_Flask, "FP_ITEM_SHIP_12");
			
		//##############################################################################################################
		//##	"Auge-Innos-zu-Hause-vergessen"-NotfallPlan
		//##############################################################################################################
			if (!Npc_HasItems (hero,ItAm_InnosEye))
				{
					Wld_InsertItem	(ItSe_XardasNotfallBeutel_MIS, "FP_ITEM_SHIP_12");
					SC_InnosEyeVergessen_DI = TRUE;
					B_LogEntry (TOPIC_HallenVonIrdorath,"Ostatniej nocy mia�em dziwny sen. Widzia�em Xardasa, kt�ry kaza� mi przynie�� co� ze sto�u alchemicznego na statku. Bardzo dziwne. Zw�aszcza �e nic nie pi�em przed snem."); 
					
					Wld_InsertItem	(ItMi_Flask, "FP_ITEM_SHIP_06");
					
					if (!(Npc_HasItems (hero, ItAt_DragonHeart) >= 1))
					{
						CreateInvItems	(OrkElite_AntiPaladinOrkOberst_DI,	ItAt_DragonHeart ,1);
					};	
				};
		//##############################################################################################################
	//Lehrer Logs
	
			Log_CreateTopic (TOPIC_MyCrew, LOG_MISSION);
			Log_SetTopicStatus(TOPIC_MyCrew, LOG_RUNNING);

			//----- Die Kapit�ne -----
	
				if ( JorgenIsCaptain == TRUE)	//Jorgen
				{
					Log_AddEntry (TOPIC_MyCrew,"M�j kapitan, Jorgen, poczeka na mnie na statku."); 
				};
			
				if ( TorlofIsCaptain == TRUE)	//Torlof
				{
					Log_AddEntry (TOPIC_MyCrew,"M�j kapitan, Torlof, b�dzie broni� statku tak d�ugo, a� nie wr�c� z wyspy. Dzi�ki niemu stan� si� silniejszy i zr�czniejszy."); 
				};
			
				if ( JackIsCaptain == TRUE)		//Jack
				{
					Log_AddEntry (TOPIC_MyCrew,"M�j kapitan, Jack, poczeka na mnie na statku. Wygl�da na przestraszonego i mam nadziej�, �e poradzi sobie. Potrzebuj� jego pomocy!"); 
				};
				
			//----- Die Crew -----
				
				if ( Lee_IsOnBoard == LOG_SUCCESS) //Lee
				{
					Log_AddEntry (TOPIC_MyCrew,"W czasie mojej nieobecno�ci Lee obejmie dow�dztwo na statku. Dzi�ki niemu b�d� si� lepiej pos�ugiwa� broni� jedno- i dwur�czn�."); 
				};
			
				if ( MiltenNW_IsOnBoard == LOG_SUCCESS) //Milten
				{
					Log_AddEntry (TOPIC_MyCrew,"Dzi�ki Miltenowi mog� zwi�kszy� moj� magiczn� moc."); 
					if (hero.guild == GIL_KDF)
					{
						Log_AddEntry (TOPIC_MyCrew,"Milten poka�e mi tak�e, jak tworzy� runy."); 
					};
				};
			
				if ( Lester_IsOnBoard == LOG_SUCCESS)	//Lester
				{
					Log_AddEntry (TOPIC_MyCrew,"Niestety, wydaje mi si�, �e stan Lestera znacznie si� pogorszy� na tej tajemniczej wyspie."); 
				};
			
				if ( Mario_IsOnBoard == LOG_SUCCESS) //Mario
				{
					Log_AddEntry (TOPIC_MyCrew,"Mario dziwnie si� zachowuje. Od jakiego� czasu w og�le si� nie odzywa."); 
				};
			
				if ( Wolf_IsOnBoard== LOG_SUCCESS) //Wolf
				{
						Log_AddEntry (TOPIC_MyCrew,"Wilk mo�e mnie nauczy�, jak strzela� z �uku i kuszy."); 
				};
			
			
				if ( Vatras_IsOnBoard == LOG_SUCCESS)	//Vatras
				{
					Log_AddEntry (TOPIC_MyCrew,"Vatras, Mag Wody, nie tylko mo�e mnie uleczy�, ale tak�e sporo nauczy� o warzeniu mikstur."); 
					if (hero.guild == GIL_KDF)
					{
						Log_AddEntry (TOPIC_MyCrew,"Vatras mo�e mi tak�e pom�c pozna� nowe kr�gi magii."); 
					};
				};	
				
				if ( Bennet_IsOnBoard == LOG_SUCCESS)	//Bennet
				{
					Log_AddEntry (TOPIC_MyCrew,"Bennet mo�e mi pokaza�, jak wyku� bro�."); 
				};	
			
				if ( Diego_IsOnBoard == LOG_SUCCESS)	//Diego 
				{
					Log_AddEntry (TOPIC_MyCrew,"Diego s�u�y mi rad� i amunicj�. Nauczy mnie tak�e, jak otwiera� zamki i strzela� z kuszy oraz �uku."); 
				};
			
				if ( Gorn_IsOnBoard == LOG_SUCCESS)	//Gorn
				{
					Log_AddEntry (TOPIC_MyCrew,"W czasie naszej podr�y Gorn nie zmru�y� oka. Pilnuje naszego statku. Wiem, �e mog� mu zaufa�."); 
					Log_AddEntry (TOPIC_MyCrew,"Dzi�ki Gornowi b�d� si� lepiej pos�ugiwa� broni� dwur�czn�."); 
				};	
			
				if ( Lares_IsOnBoard == LOG_SUCCESS)	//Lares
				{
					Log_AddEntry (TOPIC_MyCrew,"Lares obieca� nauczy� mnie skradania i walki broni� jednor�czn�. Pomo�e mi tak�e sta� si� zr�czniejszym."); 
				};	
			
				if ( Biff_IsOnBoard == LOG_SUCCESS)	//Biff
				{
					Log_AddEntry (TOPIC_MyCrew,"Jedyne, na czym tak naprawd� zale�y Biffowi, to pieni�dze. Musz� na niego uwa�a�."); 
				};	
			
				if ( Angar_IsOnBoard == LOG_SUCCESS)	//Angar
				{
					Log_AddEntry (TOPIC_MyCrew,"Angar jest bardzo niecierpliwy. Nie wiem, czy nie wyruszy sam do walki."); 
				};	
			
				if ( Girion_IsOnBoard == LOG_SUCCESS)	//Girion
				{
					Log_AddEntry (TOPIC_MyCrew,"Girion jest niezmiernie cierpliwy. Dobra cecha u nauczyciela pos�ugiwania si� broni�."); 
				};	
	
		B_ChangeChapter (12, DRAGONISLAND_ZEN);
		EnterDI_Kapitel12 = TRUE;
	};
};
