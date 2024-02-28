///////////////////////////////////////////////////////////////////////
//	Info EXIT 
///////////////////////////////////////////////////////////////////////
INSTANCE DIA_Lee_DI_EXIT   (C_INFO)
{
	npc         = SLD_800_Lee_DI;
	nr          = 999;
	condition   = DIA_Lee_DI_EXIT_Condition;
	information = DIA_Lee_DI_EXIT_Info;
	permanent   = TRUE;
	description = DIALOG_END;
};

FUNC INT DIA_Lee_DI_EXIT_Condition()
{
	return TRUE;
};

FUNC VOID DIA_Lee_DI_EXIT_Info()
{
	AI_StopProcessInfos (self);
};

///////////////////////////////////////////////////////////////////////
//	Info Hallo
///////////////////////////////////////////////////////////////////////
instance DIA_Lee_DI_Hallo		(C_INFO)
{
	npc			 = 	SLD_800_Lee_DI;
	nr			 = 	2;
	condition	 = 	DIA_Lee_DI_Hallo_Condition;
	information	 = 	DIA_Lee_DI_Hallo_Info;

	description	 = 	"Czym chcesz siê zaj¹æ?";
};
func int DIA_Lee_DI_Hallo_Condition ()
{	
	if  (Npc_IsDead(UndeadDragon) == FALSE)
		{
				return TRUE;
		};
};

func void DIA_Lee_DI_Hallo_Info ()
{
	AI_Output			(other, self, "DIA_Lee_DI_Hallo_15_00"); //Czym chcesz siê zaj¹æ?
	AI_Output			(self, other, "DIA_Lee_DI_Hallo_04_01"); //Ktoœ musi pilnowaæ statku. Zostanê tutaj i dopilnujê, ¿ebyœ mia³ do czego wracaæ.
	
};

///////////////////////////////////////////////////////////////////////
//	Info PERM6
///////////////////////////////////////////////////////////////////////

instance DIA_Lee_DI_PERM6		(C_INFO)
{
	npc			 = 	SLD_800_Lee_DI;
	nr			 = 	2;
	condition	 = 	DIA_Lee_DI_PERM6_Condition;
	information	 = 	DIA_Lee_DI_PERM6_Info;
	permanent	 = 	TRUE;

	description	 = 	"Co s³ychaæ na statku?";
};

func int DIA_Lee_DI_PERM6_Condition ()
{	
	if (Npc_KnowsInfo(other, DIA_Lee_DI_Hallo))
	&& (Npc_IsDead(UndeadDragon) == FALSE)
		{
				return TRUE;
		};
};

func void DIA_Lee_DI_PERM6_Info ()
{
	AI_Output			(other, self, "DIA_Lee_DI_PERM6_15_00"); //Co s³ychaæ na statku?

	if (ORkSturmDI == FALSE)
	{
		AI_Output			(self, other, "DIA_Lee_DI_PERM6_04_01"); //Bez obaw. Wszystko jest pod kontrol¹.
	}
	else
	{
		AI_Output			(self, other, "DIA_Lee_DI_PERM6_04_02"); //Wszystko w porz¹dku. Nie mogê siê ju¿ doczekaæ powrotu tych têpych orków. Chêtnie spuszczê im kolejne lanie.
	};
	
	AI_StopProcessInfos (self);
};
 
//**************************************
//			Ich will trainieren
//**************************************

INSTANCE DIA_Lee_DI_Teach(C_INFO)
{
	npc			= SLD_800_Lee_DI;
	nr			= 10;
	condition	= DIA_Lee_DI_Teach_Condition;
	information	= DIA_Lee_DI_Teach_Info;
	permanent	= FALSE;
	description = "Szukam dobrego nauczyciela.";
};                       

FUNC INT DIA_Lee_DI_Teach_Condition()
{
	if  (Npc_IsDead(UndeadDragon) == FALSE)
		{
				return TRUE;
		};
};
 
FUNC VOID DIA_Lee_DI_Teach_Info()
{	
	AI_Output (other,self ,"DIA_Lee_DI_Teach_15_00"); //Szukam dobrego nauczyciela.
	AI_Output (self,other ,"DIA_Lee_DI_Teach_04_01"); //A czego dok³adnie chcia³byœ siê nauczyæ?
	self.aivar[AIV_CanOffer] = self.aivar[AIV_CanOffer] | OFFER_Teaching;
};

///////////////////////////////////////////////////////////////////////
//	Info UndeadDragonDead
///////////////////////////////////////////////////////////////////////
instance DIA_Lee_DI_UndeadDragonDead		(C_INFO)
{
	npc			 = 	SLD_800_Lee_DI;
	nr			 = 	2;
	condition	 = 	DIA_Lee_DI_UndeadDragonDead_Condition;
	information	 = 	DIA_Lee_DI_UndeadDragonDead_Info;
	permanent	 = 	TRUE;
	
	description = 	"Mo¿emy ruszaæ w drogê.";
};

func int DIA_Lee_DI_UndeadDragonDead_Condition ()
{	
	if (Npc_IsDead(UndeadDragon))
	{
		return TRUE;
	};
};

var int DIA_Lee_DI_UndeadDragonDead_OneTime;
func void DIA_Lee_DI_UndeadDragonDead_Info ()
{
	AI_Output			(other ,self, "DIA_Lee_DI_UndeadDragonDead_15_00"); //Mo¿emy ruszaæ. Nieprzyjaciel zosta³ pokonany.
	AI_Output			(self ,other, "DIA_Lee_DI_UndeadDragonDead_04_01"); //Œwietnie! W takim razie ka¿ kapitanowi podnosiæ kotwicê.

	if (DIA_Lee_DI_UndeadDragonDead_OneTime == FALSE)
	&& (hero.guild == GIL_DJG)
		{
			AI_Output			(self ,other, "DIA_Lee_DI_UndeadDragonDead_04_02"); //Ale zabierzesz mnie na kontynent, prawda?
			AI_Output			(other ,self, "DIA_Lee_DI_UndeadDragonDead_15_03"); //Oczywiœcie. Khorinis jakoœ sobie poradzi bez ciebie.
			AI_Output (self ,other, "DIA_Lee_Add_04_26"); //A potem mogê z³o¿yæ niezapowiedzian¹ wizytê naszemu Królowi.
			AI_Output (self ,other, "DIA_Lee_Add_04_27"); //D³ugo czeka³em na tak¹ okazjê...
			AI_Output			(self ,other, "DIA_Lee_DI_UndeadDragonDead_04_05"); //Jak myœlisz? Cierpliwoœæ chyba zas³uguje na nagrodê.
			AI_Output			(other ,self, "DIA_Lee_DI_UndeadDragonDead_15_06"); //Cierpliwoœæ i odpowiednio mocne... argumenty.
			AI_Output			(self ,other, "DIA_Lee_DI_UndeadDragonDead_04_07"); //No w³aœnie! Tym razem nie obejdzie siê bez rozróby. Walka u twojego boku to prawdziwy zaszczyt.
			DIA_Lee_DI_UndeadDragonDead_OneTime = TRUE;
		};

	AI_Output			(self ,other, "DIA_Lee_DI_UndeadDragonDead_04_08"); //Mam nadziejê, ¿e nasze drogi jeszcze siê kiedyœ skrzy¿uj¹.
	AI_StopProcessInfos (self);
	Npc_ExchangeRoutine	(self,"Start");
};
