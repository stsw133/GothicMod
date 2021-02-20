//******************************************************************************************
//	EXIT
//******************************************************************************************
INSTANCE DIA_Kati_EXIT (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	999;
	condition							=	atrue;
	information							=	DIA_Kati_EXIT_Info;
	permanent							=	true;
	description							=	DIALOG_ENDE;
};

FUNC VOID DIA_Kati_EXIT_Info()
{
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	SLDNOCHDA
//******************************************************************************************

var int KatiHilfe;

//******************************************************************************************
instance DIA_Kati_SLDNOCHDA (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	4;
	condition							=	DIA_Kati_SLDNOCHDA_Condition;
	information							=	DIA_Kati_SLDNOCHDA_Info;
	important							=	true;
	permanent							=	true;
};

func int DIA_Kati_SLDNOCHDA_Condition()
{
	if (!Npc_IsDead(Alvares))
	&& (!Npc_IsDead(Engardo))
	&& (Npc_IsInState(self,ZS_Talk))
	{
		return true;
	};
};

func void DIA_Kati_SLDNOCHDA_Info()
{
	if (KatiHilfe == false)
	{
		AI_Output (self, other, "DIA_Kati_SLDNOCHDA_16_00"); //Te rzezimieszki gro�� mojemu m�owi! Jeste�my obywatelami miasta, lojalnymi wobec naszego Kr�la! A oni chc� nas obrabowa�!
		KatiHilfe = true;
	};
	AI_Output (self, other, "DIA_Kati_SLDNOCHDA_16_01"); //Nie st�j tak, zr�b co�! Pomo�esz nam?
	Akils_SLDStillthere = true;
	
	QuestStep_AkilNeedHelp = SetQuestStatus (Quest_AkilNeedHelp, LOG_RUNNING, QuestStep_AkilNeedHelp);
	SetNoteEntry (Quest_AkilNeedHelp, LOG_MISSION, "Farmie Akila zagra�aj� najemnicy.");
	
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	Hallo
//******************************************************************************************
instance DIA_Kati_HALLO (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	5;
	condition							=	DIA_Kati_HALLO_Condition;
	information							=	DIA_Kati_HALLO_Info;
	description							=	"Wszystko w porz�dku?";
};

func int DIA_Kati_HALLO_Condition()
{
	if (Npc_IsDead(Alvares))
	&& (Npc_IsDead(Engardo))
	{
		return true;
	};
};

func void DIA_Kati_HALLO_Info()
{
	AI_Output (other, self, "DIA_Kati_HALLO_15_00"); //Wszystko w porz�dku?
	
	if (Npc_IsDead(Akil))
	{
		AI_Output (self, other, "DIA_Kati_HALLO_16_01"); //M�j ukochany m�� nie �yje! Innosie! Za jakie grzechy tak mnie pokara�e�?
		
		Npc_ExchangeRoutine	(self, "Start");
		B_StartOtherRoutine	(Randolph, "Start");
		
		B_GivePlayerXP(XP_BONUS_0);
	}
	else
	{
		AI_Output (self, other, "DIA_Kati_HALLO_16_02"); //Tak, wszystko w porz�dku, dzi�kuj�.
	};
};

//******************************************************************************************
//	Essen
//******************************************************************************************
instance DIA_Kati_ESSEN (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	12;
	condition							=	DIA_Kati_ESSEN_Condition;
	information							=	DIA_Kati_ESSEN_Info;
	permanent							=	false;
	description							=	"Akil m�wi, �e masz dla mnie jedzenie.";
};

func int DIA_Kati_ESSEN_Condition()
{
	if (Kati_Mahlzeit == true)
	&& (!Npc_IsDead(Akil))
	{
		return true;
	};
};

func void DIA_Kati_ESSEN_Info()
{
	AI_Output (other, self, "DIA_Kati_ESSEN_15_00"); //Akil m�wi, �e masz dla mnie jedzenie.
	AI_Output (self, other, "DIA_Kati_ESSEN_16_01"); //Od czasu kiedy upad�a Bariera, zrobi�o si� tutaj bardzo niebezpiecznie. To dla nas ci�kie czasy.
	AI_Output (self, other, "DIA_Kati_ESSEN_16_02"); //Prosz�, masz tu kawa�ek chleba, odrobin� mi�sa i par� �yk�w wody. Obawiam si�, �e nie mog� sobie pozwoli� na pocz�stowanie ci� czym� innym.
	
	B_GiveInvItems (self, other, ItFo_Bread, 1);
	B_GiveInvItems (self, other, ItFo_Water, 1);
	B_GiveInvItems (self, other, ItFoMutton, 1);
};

//******************************************************************************************
//	Baltram
//******************************************************************************************
instance DIA_Kati_Baltram (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	4;
	condition							=	DIA_Kati_Baltram_Condition;
	information							=	DIA_Kati_Baltram_Info;
	description							=	"Baltram mnie przys�a�...";
};

func int DIA_Kati_Baltram_Condition()
{
	if (Npc_IsDead(Akil))
	&& (QuestStep_BaltramPacket == LOG_RUNNING)
	&& (Lieferung_Geholt == false)
	{
		return true;
	};
};
func void DIA_Kati_Baltram_Info ()
{
	AI_Output (other, self, "DIA_Kati_Baltram_15_00"); //Przysy�a mnie Baltram. Mam odebra� dla niego dostaw�.
	AI_Output (self, other, "DIA_Kati_Baltram_16_01"); //Ale� oczywi�cie. Prosz�, wszystko zapakowa�am.
	
	CreateInvItems (self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_BaltramPaket, 1);
	Lieferung_Geholt = true;
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_PROGRESS, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Mam przesy�k�. Mog� j� teraz zabra� do Baltrama...");
	SetNoteEntry (Quest_NagurPacket, LOG_MISSION, "Mam przesy�k�. Mog� j� teraz zabra� do Nagura...");
};
	
//******************************************************************************************
//	BauerNaufStand
//******************************************************************************************
instance DIA_Kati_BAUERNAUFSTAND (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	6;
	condition							=	DIA_Kati_BAUERNAUFSTAND_Condition;
	information							=	DIA_Kati_BAUERNAUFSTAND_Info;
	description							=	"Czemu nie bronicie si� przed tyrani� Onara?";
};

func int DIA_Kati_BAUERNAUFSTAND_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Kati_HALLO))
	{
		return true;
	};
};

func void DIA_Kati_BAUERNAUFSTAND_Info()
{
	AI_Output (other, self, "DIA_Kati_BAUERNAUFSTAND_15_00"); //Czemu nie bronicie si� przed tyrani� Onara?
	AI_Output (self, other, "DIA_Kati_BAUERNAUFSTAND_16_01"); //Dla farmer�w mieszkaj�cych w pobli�u miasta lepiej jest polega� na stra�nikach ni� na najemnikach Onara.
	AI_Output (self, other, "DIA_Kati_BAUERNAUFSTAND_16_02"); //Z drugiej strony, Bengar i Sekob pr�dzej porzuc� swoje farmy, ni� zaczn� pracowa� dla Kr�la.
};

//******************************************************************************************
//	ANDEREHOEFE
//******************************************************************************************
instance DIA_Kati_ANDEREHOEFE (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	7;
	condition							=	DIA_Kati_ANDEREHOEFE_Condition;
	information							=	DIA_Kati_ANDEREHOEFE_Info;
	description							=	"Gdzie maj� swoje farmy Bengar i Sekob?";
};

func int DIA_Kati_ANDEREHOEFE_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Kati_BAUERNAUFSTAND))
	{
		return true;
	};
};

func void DIA_Kati_ANDEREHOEFE_Info()
{
	AI_Output (other, self, "DIA_Kati_ANDEREHOEFE_15_00"); //Gdzie maj� swoje farmy Bengar i Sekob?
	AI_Output (self, other, "DIA_Kati_ANDEREHOEFE_16_01"); //Mieszkaj� niedaleko posiad�o�ci Onara. Udaj si� st�d na wsch�d, a znajdziesz ich bez trudu.
};

//******************************************************************************************
//	HIERWEG
//******************************************************************************************
instance DIA_Kati_HIERWEG (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	9;
	condition							=	DIA_Kati_HIERWEG_Condition;
	information							=	DIA_Kati_HIERWEG_Info;
	description							=	"Czy kiedykolwiek my�la�a� o tym, �eby si� st�d wyprowadzi�?";
};

func int DIA_Kati_HIERWEG_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Kati_BAUERNAUFSTAND))
	{
		return true;
	};
};

func void DIA_Kati_HIERWEG_Info()
{
	AI_Output (other, self, "DIA_Kati_HIERWEG_15_00"); //Czy kiedykolwiek my�la�a� o tym, �eby si� st�d wyprowadzi�?
	AI_Output (self, other, "DIA_Kati_HIERWEG_16_01"); //Nie jest �atwo uciec z tej cz�ci kraju. Wok� naszych ziem roztacza si� pasmo wysokich g�r.
	AI_Output (self, other, "DIA_Kati_HIERWEG_16_02"); //Istniej� dwie drogi, kt�rymi mo�na si� st�d wydosta�: morze i prze��cz wiod�ca do G�rniczej Doliny.
	AI_Output (self, other, "DIA_Kati_HIERWEG_16_03"); //Poniewa� nie mo�emy sobie pozwoli� na podr� statkiem, a G�rnicza Dolina jest miejscem, z kt�rego nie ma powrotu, b�dziemy musieli tu zosta�.
};

//******************************************************************************************
//	Pass
//******************************************************************************************
instance DIA_Kati_PASS (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	10;
	condition							=	DIA_Kati_PASS_Condition;
	information							=	DIA_Kati_PASS_Info;
	description							=	"Co wiesz na temat prze��czy?";
};

func int DIA_Kati_PASS_Condition()
{
	if (Npc_KnowsInfo(other,DIA_Kati_HIERWEG))
	{
		return true;
	};
};

func void DIA_Kati_PASS_Info()
{
	AI_Output (other, self, "DIA_Kati_PASS_15_00"); //Co wiesz na temat prze��czy?
	AI_Output (self, other, "DIA_Kati_PASS_16_01"); //Nigdy na niej nie by�am, ale wiem, �e znajduje si� gdzie� w okolicy farmy Bengara.
};

//******************************************************************************************
//	PERMKAP1
//******************************************************************************************
instance DIA_Kati_PERMKAP1 (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	11;
	condition							=	DIA_Kati_PERMKAP1_Condition;
	information							=	DIA_Kati_PERMKAP1_Info;
	permanent							=	true;
	description							=	"Uwa�aj na swojego m�a.";
};

func int DIA_Kati_PERMKAP1_Condition()
{
	if (!C_NpcIsDown(Akil))
	&& (Npc_KnowsInfo(other,DIA_KATI_HALLO))
	&& (Npc_KnowsInfo(other,DIA_KATI_BAUERNAUFSTAND))
	&& (Npc_KnowsInfo(other,DIA_KATI_ANDEREHOEFE))
	&& (Npc_KnowsInfo(other,DIA_KATI_HIERWEG))
	&& (Npc_KnowsInfo(other,DIA_KATI_PASS))
	&& (Kapitel < 9)
	{
		return true;
	};
};

func void DIA_Kati_PERMKAP1_Info()
{
	AI_Output (other, self, "DIA_Kati_PERMKAP1_15_00"); //Uwa�aj na swojego m�a.
	AI_Output (self, other, "DIA_Kati_PERMKAP1_16_01"); //Zrobi�, co w mojej mocy.
	AI_StopProcessInfos(self);
};

//******************************************************************************************
//	PERM
//******************************************************************************************
instance DIA_Kati_PERM (C_INFO)
{
	npc									=	BAU_941_Kati;
	nr									=	3;
	condition							=	DIA_Kati_PERM_Condition;
	information							=	DIA_Kati_PERM_Info;
	permanent							=	true;
	description							=	"Wszystko w porz�dku?";
};

func int DIA_Kati_PERM_Condition()
{
	if (Kapitel >= 9)
	&& (Npc_KnowsInfo(other,DIA_Kati_HALLO))
	{
		return true;
	};
};

func void DIA_Kati_PERM_Info()
{
	AI_Output (other, self, "DIA_Kati_PERM_15_00"); //Wszystko w porz�dku?
	AI_Output (self, other, "DIA_Kati_PERM_16_01"); //Jako� dajemy sobie rad�. Zastanawiam si�, jak d�ugo jeszcze b�dziemy si� musieli opiera� tym czarnym diab�om.
	AI_Output (self, other, "DIA_Kati_PERM_16_02"); //D�u�ej ju� tego nie znios�. Buszuj� po naszym domu i ca�y czas wydaj� z siebie te denerwuj�ce d�wi�ki.
};
