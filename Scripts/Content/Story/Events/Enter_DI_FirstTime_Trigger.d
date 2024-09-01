///******************************************************************************************

var int EnterDI_Kapitel12;

///******************************************************************************************
/// ENTER_DI_FIRSTTIME_TRIGGER
///******************************************************************************************
func void ENTER_DI_FIRSTTIME_TRIGGER()
{
	if (Npc_HasItems(hero, ITKE_SHIP_LEVELCHANGE_MIS))
	{
		Npc_RemoveInvItems (hero, ITKE_SHIP_LEVELCHANGE_MIS, 1);
	};
	
	if (hero.attribute[ATR_DEXTERITY] < 15)
	{
		Wld_InsertItem (ItPo_Perm_DEX, "FP_ITEM_DI_ENTER_05");
	};
	
	if (!EnterDI_Kapitel12)
	{
		if (hero.guild == GIL_PAL)
		{
			CreateInvItems (Archol, ItRu_PalDestroyEvil, 1);
		};
		
		Wld_InsertItem (ItMi_Flask, "FP_ITEM_SHIP_12");
		/*
		if (!Npc_HasItems(hero, ItAm_InnosEye))
		&& (!Npc_HasItems(hero, ItMw_1h_Special_05))
		&& (!Npc_HasItems(hero, ItMw_2h_Special_05))
		&& (!Npc_HasItems(hero, ItMw_1h_Ignite_05))
		&& (!Npc_HasItems(hero, ItMw_2h_Ignite_05))
		{
			Wld_InsertItem (ItSe_XardasNotfallBeutel_MIS, "FP_ITEM_SHIP_12");
			SC_InnosEyeVergessen_DI = true;
			B_LogEntry (TOPIC_HallenVonIrdorath, "Ostatniej nocy mia³em dziwny sen. Widzia³em Xardasa, który kaza³ mi przynieœæ coœ ze sto³u alchemicznego na statku. Bardzo dziwne. Zw³aszcza ¿e nic nie pi³em przed snem.");
			
			Wld_InsertItem (ItMi_Flask, "FP_ITEM_SHIP_06");
			
			if (!Npc_HasItems(hero, ItAt_DragonHeart))
			{
				CreateInvItems (OrkElite_AntiPaladinOrkOberst_DI, ItAt_DragonHeart, 1);
			};
		};
		*/
		Log_CreateTopic (TOPIC_MyCrew, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_MyCrew, LOG_RUNNING);
		
		if (JorgenIsCaptain)
		{
			Log_AddEntry (TOPIC_MyCrew, "Mój kapitan, Jorgen, poczeka na mnie na statku.");
		};
		if (TorlofIsCaptain)
		{
			Log_AddEntry (TOPIC_MyCrew, "Mój kapitan, Torlof, bêdzie broni³ statku tak d³ugo, a¿ nie wrócê z wyspy. Dziêki niemu stanê siê silniejszy i zrêczniejszy.");
		};
		if (JackIsCaptain)
		{
			Log_AddEntry (TOPIC_MyCrew, "Mój kapitan, Jack, poczeka na mnie na statku. Wygl¹da na przestraszonego i mam nadziejê, ¿e poradzi sobie. Potrzebujê jego pomocy!");
		};
		
		if (Lee_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "W czasie mojej nieobecnoœci Lee obejmie dowództwo na statku. Dziêki niemu bêdê siê lepiej pos³ugiwa³ broni¹ jedno- i dwurêczn¹.");
		};
		if (MiltenNW_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Dziêki Miltenowi mogê zwiêkszyæ moj¹ magiczn¹ moc.");
			if (hero.guild == GIL_KDF)
			{
				Log_AddEntry (TOPIC_MyCrew, "Milten poka¿e mi tak¿e, jak tworzyæ runy.");
			};
		};
		if (Lester_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Niestety, wydaje mi siê, ¿e stan Lestera znacznie siê pogorszy³ na tej tajemniczej wyspie.");
		};
		if (Mario_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Mario dziwnie siê zachowuje. Od jakiegoœ czasu w ogóle siê nie odzywa.");
		};
		if (Wolf_IsOnBoard== LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Wilk mo¿e mnie nauczyæ, jak strzelaæ z ³uku i kuszy.");
		};
		if (Vatras_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Vatras, Mag Wody, nie tylko mo¿e mnie uleczyæ, ale tak¿e sporo nauczyæ o warzeniu mikstur.");
			if (hero.guild == GIL_KDF)
			{
				Log_AddEntry (TOPIC_MyCrew, "Vatras mo¿e mi tak¿e pomóc poznaæ nowe krêgi magii.");
			};
		};
		if (Bennet_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Bennet mo¿e mi pokazaæ, jak wykuæ broñ.");
		};
		if (Diego_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Diego s³u¿y mi rad¹ i amunicj¹. Nauczy mnie tak¿e, jak otwieraæ zamki i strzelaæ z kuszy oraz ³uku.");
		};
		if (Gorn_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "W czasie naszej podró¿y Gorn nie zmru¿y³ oka. Pilnuje naszego statku. Wiem, ¿e mogê mu zaufaæ.");
			Log_AddEntry (TOPIC_MyCrew, "Dziêki Gornowi bêdê siê lepiej pos³ugiwa³ broni¹ dwurêczn¹.");
		};
		if (Lares_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Lares obieca³ nauczyæ mnie skradania i walki broni¹ jednorêczn¹. Pomo¿e mi tak¿e staæ siê zrêczniejszym.");
		};
		if (Biff_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Jedyne, na czym tak naprawdê zale¿y Biffowi, to pieni¹dze. Muszê na niego uwa¿aæ.");
		};
		if (Angar_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Angar jest bardzo niecierpliwy. Nie wiem, czy nie wyruszy sam do walki.");
		};
		if (Girion_IsOnBoard == LOG_SUCCESS)
		{
			Log_AddEntry (TOPIC_MyCrew, "Girion jest niezmiernie cierpliwy. Dobra cecha u nauczyciela pos³ugiwania siê broni¹.");
		};
		
		B_ChangeChapter (12, DRAGONISLAND_ZEN);
		EnterDI_Kapitel12 = true;
	};
};
