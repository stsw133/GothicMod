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
	description							=	"No proszê, co my tu mamy?";
};

func void DIA_Valentino_HALLO_Info()
{
	AI_Output (other, self, "DIA_Valentino_HALLO_15_00"); //No proszê, co my tu mamy?
	
	if (hero.guild == GIL_KDF)
	|| (hero.guild == GIL_PAL)
	{
		AI_Output (self, other, "DIA_Valentino_HALLO_03_01"); //Nazywam siê Valentino. Staram siê nie splamiæ prac¹ kolejnego dnia ofiarowanego mi przez Innosa.
		AI_Output (other, self, "DIA_Valentino_HALLO_15_02"); //Uwa¿aj na s³owa.
		AI_Output (self, other, "DIA_Valentino_HALLO_03_03"); //Wybacz, Panie, nie mia³em nic z³ego na myœli.
	}
	else
	{
		AI_Output (self, other, "DIA_Valentino_HALLO_03_04"); //Czy nikt nie nauczy³ ciê manier? To oburzaj¹ce!
		AI_Output (self, other, "DIA_Valentino_HALLO_03_05"); //Ci¹gle tylko ta paplanina. Nie powinieneœ byæ teraz w pracy?
		AI_Output (self, other, "DIA_Valentino_HALLO_03_06"); //Ale, z drugiej strony, któ¿by têskni³ za takim œmieciem, co?
		AI_Output (self, other, "DIA_Valentino_HALLO_03_07"); //Gdybyœ mia³ tyle z³ota co ja, te¿ nie musia³byœ pracowaæ. Ty jednak nigdy nie bêdziesz tak bogaty.
		AI_Output (other, self, "DIA_Valentino_HALLO_15_08"); //Widzê, ¿e czeka mnie z tob¹ du¿o dobrej zabawy.
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
	description							=	"Pyta³em, kim jesteœ!";
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
	AI_Output (other, self, "DIA_Valentino_Add_15_01"); //Pyta³em, kim jesteœ!
	AI_Output (self, other, "DIA_Valentino_HALLO_wasmachstdu_03_01"); //Jestem Valentino Przystojniak. Lekkoduch i bawidamek.
	AI_Output (self, other, "DIA_Valentino_HALLO_wasmachstdu_03_02"); //Te wszystkie beztroskie, bogate kobiety wrêcz siê na mnie rzucaj¹.
	AI_Output (self, other, "DIA_Valentino_HALLO_wasmachstdu_03_03"); //Swoje k³opoty zachowaj dla siebie, mnie one nie interesuj¹.
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
	description							=	"Wygl¹da na to, ¿e to ciebie nale¿a³oby nauczyæ dobrych manier!";
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
	AI_Output (other, self, "DIA_Valentino_Add_15_02"); //Wygl¹da na to, ¿e to ciebie nale¿a³oby nauczyæ dobrych manier!
	AI_Output (self, other, "DIA_Valentino_HALLO_klappe_03_01"); //Nic mnie to nie obchodzi! Mo¿esz mi nawet daæ w pysk, jutro wstanê œwie¿y jak skowronek.
	AI_Output (self, other, "DIA_Valentino_HALLO_klappe_03_02"); //Ty zaœ bêdziesz siê w³óczy³ z t¹ szpetn¹ gêb¹ po kres swych dni.
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
	description							=	"Masz jeszcze coœ ciekawego do powiedzenia?";
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
	AI_Output (other, self, "DIA_Valentino_Add_15_03"); //Masz jeszcze coœ ciekawego do powiedzenia?
	
	if (self.aivar[AIV_DefeatedByPlayer] == DBP_Defeated)
	{
		B_Say (self, other, "$NOTNOW");
	}
	else if (Valentino_Lo_Perm == false)
	&& (other.guild != GIL_PAL)
	&& (other.guild != GIL_KDF)
	{
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_01"); //Dbaj o popularnoœæ, nigdy nic nikomu nie obiecuj, bierz, co daj¹ i uwa¿aj, by nie popaœæ w konflikt ze stra¿¹.
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_02"); //No... i z zazdrosnymi mê¿ami. Ci s¹ najgorsi, mówiê ci.
		Valentino_Lo_Perm = true;
	}
	else if (Valentino_Hi_Perm == false)
	&& ((other.guild == GIL_PAL) || (other.guild == GIL_KDF))
	{
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_03"); //W przypadku kogoœ takiego jak ty, mo¿liwoœci s¹ nieograniczone. Musisz umieæ rozpoznaæ sytuacjê i wiedzieæ, kiedy zacz¹æ dzia³aæ.
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_04"); //Nie marnuj wiêc mojego czasu, bierz siê do roboty!
		Valentino_Hi_Perm = true;
	}
	else
	{
		AI_Output (self, other, "DIA_Valentino_WASNUETZLICHES_03_05"); //Powiedzia³em ci ju¿ wszystko, co powinieneœ wiedzieæ - reszta nale¿y do ciebie.
	};
};
