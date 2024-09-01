///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_SLD_6_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// JOIN
///******************************************************************************************
instance DIA_SLD_6_JOIN (C_Info)
{
	nr									=	4;
	condition							=	DIA_SLD_6_JOIN_Condition;
	information							=	DIA_SLD_6_JOIN_Info;
	permanent							=	true;
	description							=	"Chc� si� do was przy��czy�!";
};
func int DIA_SLD_6_JOIN_Condition()
{
	if (other.guild == GIL_NONE)
	{
		return true;
	};
};
func void DIA_SLD_6_JOIN_Info()
{
	AI_Output (other, self, "DIA_SLD_6_JOIN_15_00"); //Chc� si� do was przy��czy�!
	
	if (MIS_Torlof_BengarMilizKlatschen == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_SLD_6_JOIN_06_01"); //S�ysza�em o sprawie ze stra��. Torlof powiada, �e zda�e� test. Mo�esz liczy� na m�j g�os.
	}
	else if (MIS_Torlof_HolPachtVonSekob == LOG_SUCCESS)
	{
		AI_Output (self, other, "DIA_SLD_6_JOIN_06_02"); //Ograbianie ch�op�w to jedno, ale potyczki z regularnymi oddzia�ami stra�y to zupe�nie inna sprawa. C�, je�li Onar uwa�a, �e si� nadajesz, to ja nie b�d� si� sprzeciwia�.
	}
	else
	{
		AI_Output (self, other, "DIA_SLD_6_JOIN_06_03"); //Pogadaj z Torlofem. On ci dopiero poka�e...
	};
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_SLD_6_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	DIA_SLD_6_PEOPLE_Condition;
	information							=	DIA_SLD_6_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func int DIA_SLD_6_PEOPLE_Condition()
{
	if (other.guild != GIL_SLD)
	&& (other.guild != GIL_DJG)
	{
		return true;
	};
};
func void DIA_SLD_6_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_SLD_6_PEOPLE_15_00"); //Kto tu rz�dzi?
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_01"); //Farma nale�y do Onara, je�li o to ci chodzi. Jednak naszym przyw�dc� jest Lee.
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_02"); //Swego czasu by� genera�em armii kr�lewskiej. Jednak chyba nie lubi� si� ju� z kr�lem.
	AI_Output (self, other, "DIA_SLD_6_PEOPLE_06_03"); //Zapami�taj jego imi�. Je�li wpadniesz w jakie� tarapaty, tylko on b�dzie m�g� uratowa� tw�j ty�ek. Ka�dy inny po prostu poder�nie ci gard�o.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_SLD_6_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	DIA_SLD_6_LOCATION_Condition;
	information							=	DIA_SLD_6_LOCATION_Info;
	permanent							=	true;
	description							=	"Czy chronicie farmer�w?";
};
func int DIA_SLD_6_LOCATION_Condition()
{
	if (other.guild != GIL_SLD)
	&& (other.guild != GIL_DJG)
	{
		return true;
	};
};
func void DIA_SLD_6_LOCATION_Info()
{
	AI_Output (other, self, "DIA_SLD_6_LOCATION_15_00"); //Czy chronicie farmer�w?
	AI_Output (self, other, "DIA_SLD_6_LOCATION_06_01"); //Chronimy nie tylko farm� Onara, ale i ca�� dolin�.
	AI_Output (self, other, "DIA_SLD_6_LOCATION_06_02"); //Onar chce, by�my zaj�li si� ka�dym, kto sprawia k�opoty. Uwa�aj wi�c na siebie.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_SLD_6_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_SLD_6_STANDARD_Info;
	permanent							=	true;
	description							=	"Co s�ycha�?";
};
func void DIA_SLD_6_STANDARD_Info()
{
	AI_Output (other, self, "DIA_SLD_6_STANDARD_15_00"); //Co s�ycha�?
	
	if (Kapitel <= 8)
	{
		if (EnterOW_Kapitel < 8)
		{
			if (other.guild == GIL_SLD)
			{
				AI_Output (self, other, "DIA_SLD_6_STANDARD_06_01"); //Teraz, dzieciaku, jeste� jednym z nas.
			}
			else
			{
				AI_Output (self, other, "DIA_SLD_6_STANDARD_06_02"); //Czego chcesz?
			};
		}
		else
		{
			if (other.guild == GIL_SLD)
			{
				AI_Output (self, other, "DIA_SLD_6_STANDARD_06_03"); //Kiedy pierwszy raz us�ysza�em o smokach, nie mog�em w to uwierzy�.
				AI_Output (self, other, "DIA_SLD_6_STANDARD_06_04"); //Smok - to dopiero przeciwnik, nie jakie� owce czy g�upkowaci stra�nicy. To prawdziwe wyzwanie.
			}
			else
			{
				AI_Output (self, other, "DIA_SLD_6_STANDARD_06_05"); //I co, jak tam ten tw�j Lord Hagen? Posra� si� ju� w gacie ze strachu przed smokami?
				AI_Output (self, other, "DIA_SLD_6_STANDARD_06_06"); //Wygl�da na to, �e w ko�cu b�dzie musia� ruszy� swoje szanowne dupsko z miasta.
			};
		};
	};
	if (Kapitel == 9)
	{
		if (MIS_RescueBennet == LOG_SUCCESS)
		{
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_07"); //Lord Hagen ma szcz�cie. Jeszcze kilka dni, a sami odbiliby�my Benneta.
		}
		else
		{
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_08"); //Je�li w ci�gu kilku dni nie wypuszcz� Benneta z wi�zienia, sami po niego p�jdziemy.
		};
	};
	if (Kapitel == 10)
	{
		if (hero.guild == GIL_DJG)
		{
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_09"); //Co tu jeszcze robisz? Nie wybiera�e� si� przypadkiem z innymi do Doliny?
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_10"); //Je�li o mnie chodzi, to nie musicie wraca�.
		}
		else
		{
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_11"); //Powiniene� i�� do G�rniczej Doliny. S�ysza�em, �e te biedne psubraty same sobie nie poradz�.
		};
	};
	if (Kapitel >= 11)
	{
		if (hero.guild == GIL_DJG)
		{
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_12"); //Kiedy tylko si� pojawi�e� - wiedzia�em, �e wywr�cisz to miejsce do g�ry nogami.
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_13"); //Ale smoki? No, to ju� co�. W najbli�szym czasie nikt nie odwa�y si� skrzy�owa� z tob� miecza.
		}
		else
		{
			AI_Output (self, other, "DIA_SLD_6_STANDARD_06_14"); //Jestem pod wra�eniem. Nie walczymy po tej samej stronie, ale zabicie smok�w to nie lada wyczyn.
		};
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_SLD_6 (var C_Npc slf)
{
	DIA_SLD_6_EXIT.npc					=	Hlp_GetinstanceID(slf);
	DIA_SLD_6_JOIN.npc					=	Hlp_GetinstanceID(slf);
	DIA_SLD_6_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_SLD_6_LOCATION.npc				=	Hlp_GetinstanceID(slf);
	DIA_SLD_6_STANDARD.npc				=	Hlp_GetinstanceID(slf);
};
