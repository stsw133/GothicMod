///******************************************************************************************
/// B_Announce_Herold
///******************************************************************************************
func void B_Announce_Herold()
{
	if (C_BodystateContains(self, BS_SIT))
	{
		AI_StandUp	(self);
		B_TurnToNpc	(self, hero);
	};
	
	var int rand; rand = Hlp_Random(5);
	
	AI_RemoveWeapon		(self);
	CreateInvItem		(self, Fakescroll);
	AI_UseItemToState	(self, Fakescroll, 1);
	
	AI_Output (self, self, "DIA_Herold_Announce_04_00"); //S�uchajcie, s�uchajcie, mieszka�cy Khorinis! Na rozkaz wielmo�nego Lorda Hagena, og�asza si�, co nast�puje!
	
	if (Kapitel <= 8)
	{
		if (rand == 0)
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_01"); //W zwi�zku z zaistnia�� sytuacj�, dla w�asnego bezpiecze�stwa obywatele powinni unika� las�w i bezdro�y dooko�a miasta.
			AI_Output (self, self, "DIA_Herold_Announce_04_02"); //Co wi�cej, zabrania si� wszelkich kontakt�w ze zbuntowanymi wie�niakami.
		}
		else if (rand == 1)
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_03"); //Od chwili obecnej, Lord Andre przejmuje wy��czne dow�dztwo nad nasz� stra��.
			AI_Output (self, self, "DIA_Herold_Announce_04_04"); //Wszyscy mieszka�cy, kt�rzy posiadaj� jakiekolwiek przeszkolenie w zakresie walki, niech wst�puj� w szeregi stra�y.
		}
		else if (rand == 2)
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_05"); //Wszelkie �rodki bezpiecze�stwa dotycz�ce g�rnego miasta zostan� jeszcze bardziej zaostrzone.
			AI_Output (self, self, "DIA_Herold_Announce_04_06"); //Stra�nicy, strzeg�cy bram, nie b�d� przepuszcza� nikogo, kto nie posiada zezwolenia na wej�cie do miasta.
		}
		else if (rand == 3)
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_07"); //We wszystkich miastach i regionach kr�lestwa zostaje wprowadzony stan wojenny.
			AI_Output (self, self, "DIA_Herold_Announce_04_08"); //S�dziowie cywilni zostaj� pozbawieni swych praw, a ich obowi�zki przejmuj� kr�lewscy paladyni.
			AI_Output (self, self, "DIA_Herold_Announce_04_09"); //Ka�dy, kto pope�ni przest�pstwo lub sprzeciwi si� kr�lewskiej stra�y, podlega surowej karze. Egzekucj� tego prawa zajmie si� wielmo�ny Lord Andre.
			AI_Output (self, self, "DIA_Herold_Announce_04_10"); //Ka�dy mieszkaniec Khorinis, kt�ry pope�ni� jakiekolwiek wykroczenie, ma obowi�zek zg�osi� si� natychmiast do Lorda Andre.
		}
		else
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_11"); //W zwi�zku z atakiem zagra�aj�cym naszemu miastu, ka�dy jego mieszkaniec ma obowi�zek przygotowa� si� do walki tak, jak pozwala mu na to jego stan maj�tkowy.
			AI_Output (self, self, "DIA_Herold_Announce_04_12"); //Dotyczy to zaopatrzenia si� w odpowiedni� zbroj� i or�, a tak�e natychmiastowego rozpocz�cia treningu bojowego.
		};
	}
	else if (Kapitel == 9)
	{
		if (MIS_RescueBennet != LOG_SUCCESS)
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_13"); //Najemnik Bennet, kt�ry podst�pnie zamordowa� paladyna Lothara, zosta� os�dzony w imi� Innosa.
			AI_Output (self, self, "DIA_Herold_Announce_04_14"); //Wyrok: �mier� przez powieszenie. Egzekucja odb�dzie si� za par� dni, a jej dok�adny termin zostanie wkr�tce og�oszony.
		}
		else
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_15"); //Kowal Bennet zosta� oczyszczony z wszelkich zarzut�w przez jednego z doradc�w Lorda Hagena.
		};
	}
	else if (Kapitel == 10)
	{
		AI_Output (self, self, "DIA_Herold_Announce_04_16"); //Pog�oski o pojawieniu si� smok�w w G�rniczej Dolinie s� nieprawdziwe.
		AI_Output (self, self, "DIA_Herold_Announce_04_17"); //Plotki te rozsiewane s� przez wroga, kt�ry w ten spos�b pragnie zasia� strach i trwog� w sercach dzielnego ludu Myrtany.
		AI_Output (self, self, "DIA_Herold_Announce_04_18"); //Aby oficjalnie zweryfikowa� i zdementowa� owe pog�oski, oddzia� dzielnych paladyn�w wraz z przewodnikiem zosta� wys�any do G�rniczej Doliny.
	}
	else
	{
		if (rand < 3)
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_19"); //Smoki n�kaj�ce krain� zosta�y zg�adzone przez dzielne wojsko pod wodz� Lorda Hagena.
			AI_Output (self, self, "DIA_Herold_Announce_04_20"); //Wkr�tce Kr�l Rhobar uwolni nar�d od plagi ork�w, a w kr�lestwie zn�w zapanuje dobrobyt.
		}
		else
		{
			AI_Output (self, self, "DIA_Herold_Announce_04_21"); //Lord Andre zostaje mianowany g��wnodowodz�cym miasta Khorinis.
			AI_Output (self, self, "DIA_Herold_Announce_04_22"); //Lord Hagen oznajmi�, �e osobi�cie uda si� do G�rniczej Doliny, aby kontrolowa� za�adunek magicznej rudy na sw�j statek.
		};
	};
	
	AI_UseItemToState (self, Fakescroll, -1);
};
