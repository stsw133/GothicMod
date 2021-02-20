//******************************************************************************************
//	Info EXIT
//******************************************************************************************
INSTANCE DIA_Valentino_EXIT (C_INFO)
{
	npc									=	VLK_421_Valentino;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Valentino_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Valentino_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Info Hallo
//******************************************************************************************
instance DIA_Valentino_HALLO (C_INFO)
{
	npc									=	VLK_421_Valentino;
	nr									=	1;
	condition							=	atrue;
	information							=	DIA_Valentino_HALLO_Info;
	permanent							=	false;
	description							=	"No prosz�, co my tu mamy?";
};

func void DIA_Valentino_HALLO_Info()
{
	AI_Output (other, self, "DIA_Valentino_HALLO_15_00"); //No prosz�, co my tu mamy?
	
	if (hero.guild == GIL_KDF)
	|| (hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Valentino_HALLO_03_01"); //Nazywam si� Valentino. Staram si� nie splami� prac� kolejnego dnia ofiarowanego mi przez Innosa.
		AI_Output (other, self, "DIA_Valentino_HALLO_15_02"); //Uwa�aj na s�owa.
		AI_Output (self, other, "DIA_Valentino_HALLO_03_03"); //Wybacz, Panie, nie mia�em nic z�ego na my�li.
	}
	else
	{
		AI_Output (self, other, "DIA_Valentino_HALLO_03_04"); //Czy nikt nie nauczy� ci� manier? To oburzaj�ce!
		AI_Output (self, other, "DIA_Valentino_HALLO_03_05"); //Ci�gle tylko ta paplanina. Nie powiniene� by� teraz w pracy?
		AI_Output (self, other, "DIA_Valentino_HALLO_03_06"); //Ale, z drugiej strony, kt�by t�skni� za takim �mieciem, co?
		AI_Output (self, other, "DIA_Valentino_HALLO_03_07"); //Gdyby� mia� tyle z�ota co ja, te� nie musia�by� pracowa�. Ty jednak nigdy nie b�dziesz tak bogaty.
		AI_Output (other, self, "DIA_Valentino_HALLO_15_08"); //Widz�, �e czeka mnie z tob� du�o dobrej zabawy.
	};
};

//******************************************************************************************
//	WhoAgain
//******************************************************************************************
instance DIA_Valentino_WhoAgain (C_INFO)
{
	npc									=	VLK_421_Valentino;
	nr									=	2;
	condition							=	DIA_Valentino_WhoAgain_Condition;
	information							=	DIA_Valentino_WhoAgain_Info;
	permanent							=	false;
	description							=	"Pyta�em, kim jeste�!";
};

func int DIA_Valentino_WhoAgain_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Valentino_HALLO))
	&& (other.guild != GIL_KDF)
	&& (other.guild != GIL_PAL)
	{
		return true;
	};
};

func void DIA_Valentino_WhoAgain_Info()
{
	AI_Output (other, self, "DIA_Valentino_Add_15_01"); //Pyta�em, kim jeste�!
	AI_Output (self, other, "DIA_Valentino_HALLO_wasmachstdu_03_01"); //Jestem Valentino Przystojniak. Lekkoduch i bawidamek.
	AI_Output (self, other, "DIA_Valentino_HALLO_wasmachstdu_03_02"); //Te wszystkie beztroskie, bogate kobiety wr�cz si� na mnie rzucaj�.
	AI_Output (self, other, "DIA_Valentino_HALLO_wasmachstdu_03_03"); //Swoje k�opoty zachowaj dla siebie, mnie one nie interesuj�.
};

//******************************************************************************************
//	Manieren
//******************************************************************************************
instance DIA_Valentino_Manieren (C_INFO)
{
	npc									=	VLK_421_Valentino;
	nr									=	3;
	condition							=	DIA_Valentino_Manieren_Condition;
	information							=	DIA_Valentino_Manieren_Info;
	permanent							=	false;
	description							=	"Wygl�da na to, �e to ciebie nale�a�oby nauczy� dobrych manier!";
};

func int DIA_Valentino_Manieren_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Valentino_HALLO))
	&& (other.guild != GIL_PAL)
	&& (other.guild != GIL_KDF)
	{
		return true;
	};
};

func void DIA_Valentino_Manieren_Info()
{
	AI_Output (other, self, "DIA_Valentino_Add_15_02"); //Wygl�da na to, �e to ciebie nale�a�oby nauczy� dobrych manier!
	AI_Output (self, other, "DIA_Valentino_HALLO_klappe_03_01"); //Nic mnie to nie obchodzi! Mo�esz mi nawet da� w pysk, jutro wstan� �wie�y jak skowronek.
	AI_Output (self, other, "DIA_Valentino_HALLO_klappe_03_02"); //Ty za� b�dziesz si� w��czy� z t� szpetn� g�b� po kres swych dni.
};

//******************************************************************************************
//	Info Wasnuetzliches
//******************************************************************************************

var int Valentino_Lo_Perm;
var int Valentino_Hi_Perm;

//******************************************************************************************
instance DIA_Valentino_WASNUETZLICHES (C_INFO)
{
	npc									=	VLK_421_Valentino;
	nr									=	4;
	condition							=	DIA_Valentino_WASNUETZLICHES_Condition;
	information							=	DIA_Valentino_WASNUETZLICHES_Info;
	permanent							=	true;
	description							=	"Masz jeszcze co� ciekawego do powiedzenia?";
};

func int DIA_Valentino_WASNUETZLICHES_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Valentino_HALLO))
	{
		return true;
	};
};

func void DIA_Valentino_WASNUETZLICHES_Info()
{
	AI_Output (other, self, "DIA_Valentino_Add_15_03"); //Masz jeszcze co� ciekawego do powiedzenia?
	
	if (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
	{
		B_Say (self, other, "$NOTNOW");
	}
	else if (Valentino_Lo_Perm == false)
	&& (other.guild != GIL_PAL)
	&& (other.guild != GIL_KDF)
	{
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_01"); //Dbaj o popularno��, nigdy nic nikomu nie obiecuj, bierz, co daj� i uwa�aj, by nie popa�� w konflikt ze stra��.
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_02"); //No... i z zazdrosnymi m�ami. Ci s� najgorsi, m�wi� ci.
		Valentino_Lo_Perm = true;
	}
	else if (Valentino_Hi_Perm == false)
	&& ((other.guild == GIL_PAL) || (other.guild == GIL_KDF))
	{
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_03"); //W przypadku kogo� takiego jak ty, mo�liwo�ci s� nieograniczone. Musisz umie� rozpozna� sytuacj� i wiedzie�, kiedy zacz�� dzia�a�.
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_04"); //Nie marnuj wi�c mojego czasu, bierz si� do roboty!
		Valentino_Hi_Perm = true;
	}
	else
	{
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_05"); //Powiedzia�em ci ju� wszystko, co powiniene� wiedzie� - reszta nale�y do ciebie.
	};
};
