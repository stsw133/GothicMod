///******************************************************************************************

var int NpcObsessedByDMT;

var int NpcObsessedByDMT_Brutus;	/// chapter 11
var int NpcObsessedByDMT_Engrom;	/// chapter 10
var int NpcObsessedByDMT_Vino;		/// chapter 9
var int NpcObsessedByDMT_Malak;		/// chapter 9
var int NpcObsessedByDMT_Fernando;	/// chapter 9
var int NpcObsessedByDMT_Bromor;	/// chapter 9
var int NpcObsessedByDMT_Sekob;		/// chapter 11
var int NpcObsessedByDMT_Randolph;	/// chapter 10

///******************************************************************************************
/// B_NpcClearObsessionByDMT
///******************************************************************************************
func void B_NpcClearObsessionByDMT (var C_Npc medium)
{
	AI_StopProcessInfos(medium);
	
	if (NpcObsessedByDMT)
	{
		Npc_RemoveInvItems	(medium, ITAR_Dementor, 1);
		AI_EquipBestArmor	(medium);
		
		NpcObsessedByDMT = false;
		medium.flags = 0;
		B_Attack (medium, other, AR_NONE, 1);
		
		Wld_StopEffect	("DEMENTOR_FX");
		Snd_Play		("MFX_FEAR_CAST");
		B_SetScObsessed	(medium);
		
		if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Malak))
		{
			Npc_SetTarget (BAU_962_Bauer, other);	AI_StartState (BAU_962_Bauer, ZS_Flee, 0, "");
			Npc_SetTarget (BAU_964_Bauer, other);	AI_StartState (BAU_964_Bauer, ZS_Flee, 0, "");
			Npc_SetTarget (BAU_965_Bauer, other);	AI_StartState (BAU_965_Bauer, ZS_Flee, 0, "");
			Npc_SetTarget (BAU_966_Bauer, other);	AI_StartState (BAU_966_Bauer, ZS_Flee, 0, "");
			Npc_SetTarget (BAU_967_Bauer, other);	AI_StartState (BAU_967_Bauer, ZS_Flee, 0, "");
			Npc_SetTarget (BAU_968_Bauer, other);	AI_StartState (BAU_968_Bauer, ZS_Flee, 0, "");
			Npc_SetTarget (BAU_969_Bauer, other);	AI_StartState (BAU_969_Bauer, ZS_Flee, 0, "");
		};
	};
};

///******************************************************************************************
/// B_NpcObsessedByDMT
///******************************************************************************************
func void B_NpcObsessedByDMT (var C_Npc medium)
{
	if (!NpcObsessedByDMT)
	{
		Wld_PlayEffect	("DEMENTOR_FX", hero, hero, 0, 0, 0, false);
		CreateInvItems	(medium, ITAR_Dementor, 1);
		AI_UnequipArmor	(medium);
		AI_EquipArmor	(medium, ITAR_Dementor);
		AI_PlayAni		(medium, "T_PRACTICEMAGIC5");
		Wld_PlayEffect	("spellFX_Fear", medium, medium, 0, 0, 0, false);
		
		NpcObsessedByDMT = true;
		
		if (!Npc_HasItems(medium, ITWR_DementorObsessionBook_MIS)) 
		{
			CreateInvItems (medium, ITWR_DementorObsessionBook_MIS, 1);
		};
		
		/// Brutus
		if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Brutus))
		{
			if (MIS_OCGateOpen)
			{
				AI_Output (self, other, "DIA_Brutus_ObsessedByDMT_19_00"); //Otwarcie wr�t to wielka przys�uga dla naszego Mistrza, marny �miertelniku. Na twym grobie postawimy kaplic� ku jego chwale.
			}
			else
			{
				AI_Output (self, other, "DIA_NoName_ObsessedByDMT_19_00"); //Widzimy ci�, robaku. Nie uciekniesz nam.
			};
			
			NpcObsessedByDMT_Brutus = true;
		}
		/// Engrom
		else if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Engrom))
		{
			AI_Output (self, other, "DIA_Engrom_ObsessedByDMT_19_00"); //Zawr��. P�ki jeszcze mo�esz.
			NpcObsessedByDMT_Engrom = true;
		}
		/// Vino
		else if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Vino))
		{
			AI_Output (self, other, "DIA_Vino_ObsessedByDMT_19_00"); //Wkr�tce wszyscy b�d� naszymi s�ugami. Twoje magiczne sztuczki na nic si� nie zdadz�.
			NpcObsessedByDMT_Vino = true;
		}
		/// Malak
		else if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Malak))
		{
			AI_Output (self, other, "DIA_Malak_ObsessedByDMT_19_00"); //Nigdy nie zdo�asz ocali� tej duszy, magu.
			NpcObsessedByDMT_Malak = true;
		}
		/// Sekob
		else if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Sekob))
		{
			AI_Output (self, other, "DIA_Sekob_ObsessedByDMT_19_00"); //Poddaj si�, magu, nie mo�esz nas pokona�.
			NpcObsessedByDMT_Sekob = true;
		}
		/// Randolph
		else if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Randolph))
		{
			AI_Output (self, other, "DIA_Randolph_ObsessedByDMT_19_00"); //Nie zawracaj sobie g�owy s�abeuszami. Zniewolimy ich wszystkich.
			NpcObsessedByDMT_Randolph = true;
		}
		else
		{
			AI_Output (self, other, "DIA_NoName_ObsessedByDMT_19_00"); //Widzimy ci�, robaku. Nie uciekniesz nam.
			
			if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Bromor))
			{
				NpcObsessedByDMT_Bromor = true;
			};
			if (Hlp_GetInstanceID(medium) == Hlp_GetInstanceID(Fernando))
			{
				NpcObsessedByDMT_Fernando = true;
			};
		};
		
		B_GivePlayerExp(400);
	}
	else
	{
		B_NpcClearObsessionByDMT(medium);
	};
};
