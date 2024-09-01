///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_OCPAL_4_EXIT (C_Info)
{
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// PEOPLE
///******************************************************************************************
instance DIA_OCPAL_4_PEOPLE (C_Info)
{
	nr									=	3;
	condition							=	aTrue;
	information							=	DIA_OCPAL_4_PEOPLE_Info;
	permanent							=	true;
	description							=	"Kto tu dowodzi?";
};
func void DIA_OCPAL_4_PEOPLE_Info()
{
	AI_Output (other, self, "DIA_OCPAL_4_PEOPLE_15_00"); //Kto tu dowodzi?
	AI_Output (self, other, "DIA_OCPAL_4_PEOPLE_04_01"); //Kapitan Garond. Znajdziesz go w najwi�kszym budynku kompleksu zamkowego.
};

///******************************************************************************************
/// LOCATION
///******************************************************************************************
instance DIA_OCPAL_4_LOCATION (C_Info)
{
	nr									=	2;
	condition							=	aTrue;
	information							=	DIA_OCPAL_4_LOCATION_Info;
	permanent							=	true;
	description							=	"Mo�esz mi co� powiedzie� o G�rniczej Dolinie?";
};
func void DIA_OCPAL_4_LOCATION_Info()
{
	AI_Output (other, self, "DIA_OCPAL_4_LOCATION_15_00"); //Mo�esz mi co� powiedzie� o G�rniczej Dolinie?
	AI_Output (self, other, "DIA_OCPAL_4_LOCATION_04_01"); //Z tego, co mi wiadomo, znajduje si� tam kilka kopalni. O ile nie zosta�y spl�drowane przez ork�w.
	AI_Output (self, other, "DIA_OCPAL_4_LOCATION_04_02"); //Oddzia�y tam przebywaj�ce sk�adaj� si� w g��wnej mierze z wi�ni�w, jest te� w�r�d nich kilku paladyn�w.
};

///******************************************************************************************
/// NEWS
///******************************************************************************************
instance DIA_OCPAL_4_STANDARD (C_Info)
{
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_OCPAL_4_STANDARD_Info;
	permanent							=	true;
	description							=	"Jak leci?";
};
func void DIA_OCPAL_4_STANDARD_Info()
{
	AI_Output (other, self, "DIA_OCPAL_4_STANDARD_15_00"); //Jak si� maj� sprawy?
	
	if (Kapitel <= 9)
	{
		AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_01"); //Jeste�my otoczeni przez ork�w! B�dziemy si� jednak broni� do ostatniego cz�owieka! Za� Innos wspomo�e nas sw� pot�g� w walce ze smokami!
	};
	if (Kapitel == 10)
	{
		if (MIS_KilledDragons < 4)
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_02"); //Tylko patrze�, jak orkowie zaatakuj�. Gdzie s� te cholerne posi�ki?
			if (other.guild == GIL_DJG)
			{
				AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_03"); //Nie wierzysz chyba, �e �owcy smok�w poradz� sobie z WSZYSTKIMI bestiami?
			}
			else
			{
				AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_04"); //Ci, tak zwani �owcy smok�w, sami niewiele zdzia�aj�.
			};
		}
		else
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_05"); //Innosowi niech b�d� dzi�ki! Te cholerne bestie w ko�cu zosta�y pokonane.
		};
	};
	if (Kapitel >= 11)
	{
		if (!MIS_OCGateOpen)
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_06"); //�mier� smok�w nie zniech�ci�a specjalnie ork�w. Dlaczego, na Innosa, po prostu nie odejd�? Czuj� w tym dzia�anie z�ych mocy.
		}
		else
		{
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_07"); //Przekl�ta brama, kto� j� zablokowa�! Orkowie wlewaj� si� do zamku, nic ich ju� nie powstrzyma.
			AI_Output (self, other, "DIA_OCPAL_4_STANDARD_04_08"); //Kto� musi powiadomi� Lorda Hagena. Potrzebujemy go TUTAJ!
		};
	};
};

///******************************************************************************************
func void B_AssignAmbientInfos_OCPAL_4 (var C_Npc slf)
{
	DIA_OCPAL_4_EXIT.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCPAL_4_PEOPLE.npc				=	Hlp_GetinstanceID(slf);
	DIA_OCPAL_4_LOCATION.npc			=	Hlp_GetinstanceID(slf);
	DIA_OCPAL_4_STANDARD.npc			=	Hlp_GetinstanceID(slf);
};
