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
		AI_Output (self, other, "DIA_Kati_SLDNOCHDA_16_00"); //Te rzezimieszki gro¿¹ mojemu mê¿owi! Jesteœmy obywatelami miasta, lojalnymi wobec naszego Króla! A oni chc¹ nas obrabowaæ!
		KatiHilfe = true;
	};
	AI_Output (self, other, "DIA_Kati_SLDNOCHDA_16_01"); //Nie stój tak, zrób coœ! Pomo¿esz nam?
	Akils_SLDStillthere = true;
	
	QuestStep_AkilNeedHelp = SetQuestStatus (Quest_AkilNeedHelp, LOG_RUNNING, QuestStep_AkilNeedHelp);
	SetNoteEntry (Quest_AkilNeedHelp, LOG_MISSION, "Farmie Akila zagra¿aj¹ najemnicy.");
	
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
	description							=	"Wszystko w porz¹dku?";
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
	AI_Output (other, self, "DIA_Kati_HALLO_15_00"); //Wszystko w porz¹dku?
	
	if (Npc_IsDead(Akil))
	{
		AI_Output (self, other, "DIA_Kati_HALLO_16_01"); //Mój ukochany m¹¿ nie ¿yje! Innosie! Za jakie grzechy tak mnie pokara³eœ?
		
		Npc_ExchangeRoutine	(self, "Start");
		B_StartOtherRoutine	(Randolph, "Start");
		
		B_GivePlayerXP(XP_BONUS_0);
	}
	else
	{
		AI_Output (self, other, "DIA_Kati_HALLO_16_02"); //Tak, wszystko w porz¹dku, dziêkujê.
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
	description							=	"Akil mówi, ¿e masz dla mnie jedzenie.";
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
	AI_Output (other, self, "DIA_Kati_ESSEN_15_00"); //Akil mówi, ¿e masz dla mnie jedzenie.
	AI_Output (self, other, "DIA_Kati_ESSEN_16_01"); //Od czasu kiedy upad³a Bariera, zrobi³o siê tutaj bardzo niebezpiecznie. To dla nas ciê¿kie czasy.
	AI_Output (self, other, "DIA_Kati_ESSEN_16_02"); //Proszê, masz tu kawa³ek chleba, odrobinê miêsa i parê ³yków wody. Obawiam siê, ¿e nie mogê sobie pozwoliæ na poczêstowanie ciê czymœ innym.
	
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
	description							=	"Baltram mnie przys³a³...";
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
	AI_Output (other, self, "DIA_Kati_Baltram_15_00"); //Przysy³a mnie Baltram. Mam odebraæ dla niego dostawê.
	AI_Output (self, other, "DIA_Kati_Baltram_16_01"); //Ale¿ oczywiœcie. Proszê, wszystko zapakowa³am.
	
	CreateInvItems (self, ItMi_BaltramPaket, 1);
	B_GiveInvItems (self, other, ItMi_BaltramPaket, 1);
	Lieferung_Geholt = true;
	
	QuestStep_BaltramPacket = SetQuestStatus (Quest_BaltramPacket, LOG_PROGRESS, QuestStep_BaltramPacket);
	SetNoteEntry (Quest_BaltramPacket, LOG_MISSION, "Mam przesy³kê. Mogê j¹ teraz zabraæ do Baltrama...");
	SetNoteEntry (Quest_NagurPacket, LOG_MISSION, "Mam przesy³kê. Mogê j¹ teraz zabraæ do Nagura...");
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
	description							=	"Czemu nie bronicie siê przed tyrani¹ Onara?";
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
	AI_Output (other, self, "DIA_Kati_BAUERNAUFSTAND_15_00"); //Czemu nie bronicie siê przed tyrani¹ Onara?
	AI_Output (self, other, "DIA_Kati_BAUERNAUFSTAND_16_01"); //Dla farmerów mieszkaj¹cych w pobli¿u miasta lepiej jest polegaæ na stra¿nikach ni¿ na najemnikach Onara.
	AI_Output (self, other, "DIA_Kati_BAUERNAUFSTAND_16_02"); //Z drugiej strony, Bengar i Sekob prêdzej porzuc¹ swoje farmy, ni¿ zaczn¹ pracowaæ dla Króla.
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
	description							=	"Gdzie maj¹ swoje farmy Bengar i Sekob?";
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
	AI_Output (other, self, "DIA_Kati_ANDEREHOEFE_15_00"); //Gdzie maj¹ swoje farmy Bengar i Sekob?
	AI_Output (self, other, "DIA_Kati_ANDEREHOEFE_16_01"); //Mieszkaj¹ niedaleko posiad³oœci Onara. Udaj siê st¹d na wschód, a znajdziesz ich bez trudu.
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
	description							=	"Czy kiedykolwiek myœla³aœ o tym, ¿eby siê st¹d wyprowadziæ?";
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
	AI_Output (other, self, "DIA_Kati_HIERWEG_15_00"); //Czy kiedykolwiek myœla³aœ o tym, ¿eby siê st¹d wyprowadziæ?
	AI_Output (self, other, "DIA_Kati_HIERWEG_16_01"); //Nie jest ³atwo uciec z tej czêœci kraju. Wokó³ naszych ziem roztacza siê pasmo wysokich gór.
	AI_Output (self, other, "DIA_Kati_HIERWEG_16_02"); //Istniej¹ dwie drogi, którymi mo¿na siê st¹d wydostaæ: morze i prze³êcz wiod¹ca do Górniczej Doliny.
	AI_Output (self, other, "DIA_Kati_HIERWEG_16_03"); //Poniewa¿ nie mo¿emy sobie pozwoliæ na podró¿ statkiem, a Górnicza Dolina jest miejscem, z którego nie ma powrotu, bêdziemy musieli tu zostaæ.
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
	description							=	"Co wiesz na temat prze³êczy?";
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
	AI_Output (other, self, "DIA_Kati_PASS_15_00"); //Co wiesz na temat prze³êczy?
	AI_Output (self, other, "DIA_Kati_PASS_16_01"); //Nigdy na niej nie by³am, ale wiem, ¿e znajduje siê gdzieœ w okolicy farmy Bengara.
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
	description							=	"Uwa¿aj na swojego mê¿a.";
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
	AI_Output (other, self, "DIA_Kati_PERMKAP1_15_00"); //Uwa¿aj na swojego mê¿a.
	AI_Output (self, other, "DIA_Kati_PERMKAP1_16_01"); //Zrobiê, co w mojej mocy.
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
	description							=	"Wszystko w porz¹dku?";
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
	AI_Output (other, self, "DIA_Kati_PERM_15_00"); //Wszystko w porz¹dku?
	AI_Output (self, other, "DIA_Kati_PERM_16_01"); //Jakoœ dajemy sobie radê. Zastanawiam siê, jak d³ugo jeszcze bêdziemy siê musieli opieraæ tym czarnym diab³om.
	AI_Output (self, other, "DIA_Kati_PERM_16_02"); //D³u¿ej ju¿ tego nie zniosê. Buszuj¹ po naszym domu i ca³y czas wydaj¹ z siebie te denerwuj¹ce dŸwiêki.
};
