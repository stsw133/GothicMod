///******************************************************************************************
/// Ambient NEWS
///******************************************************************************************
instance DIA_Ambient_NEWS (C_Info)
{
	nr									=	1;
	condition							=	DIA_Ambient_NEWS_Condition;
	information							=	DIA_Ambient_NEWS_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_Ambient_NEWS_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (B_GetPlayerCrime(self) != CRIME_NONE)
	{
		return true;
	};
};
func void DIA_Ambient_NEWS_Info()
{
	/// ------ CRIMES ------
	if		(B_GetPlayerCrime(self) == CRIME_SHEEPKILLER)	{	B_Say (self, other, "$SHEEPKILLER_CRIME");	}
	else if	(B_GetPlayerCrime(self) == CRIME_ATTACK)		{	B_Say (self, other, "$ATTACK_CRIME");		}
	else if	(B_GetPlayerCrime(self) == CRIME_THEFT)			{	B_Say (self, other, "$THEFT_CRIME");		};
	
	/// ------ City ------
	if (C_NpcBelongsToCity(self))
	{
		if (other.guild == GIL_PAL)
		&& (Hagen_Schulden <= 0)
		{
			B_Say (self, other, "$PAL_CITY_CRIME");
		}
		else if (other.guild == GIL_MIL)
		&& (Andre_Schulden <= 0)
		{
			B_Say (self, other, "$MIL_CITY_CRIME");
		}
		else if (Andre_Schulden <= 0)
		{
			B_Say (self, other, "$CITY_CRIME");
		};
	};
	
	/// ------ Monastery ------
	if (C_NpcBelongsToMonastery(self))
	&& (Parlan_Schulden <= 0)
	{
		B_Say (self, other, "$MONA_CRIME");
	};
	
	/// ------ Farm ------
	if (C_NpcBelongsToFarm(self))
	&& (Lee_Schulden <= 0)
	{
		B_Say (self, other, "$FARM_CRIME");
	};
	
	/// ------ OldCamp ------
	if (C_NpcBelongsToOldCamp(self))
	&& (Garond_Schulden <= 0)
	{
		B_Say (self, other, "$OC_CRIME");
	};
	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientNEWS (var C_Npc slf)
{
	DIA_AMBIENT_NEWS.npc = Hlp_GetInstanceID(slf);
};

///******************************************************************************************
/// ToughGuy NEWS
///******************************************************************************************
instance DIA_ToughGuy_NEWS (C_Info)
{
	nr									=	1;
	condition							=	DIA_ToughGuy_NEWS_Condition;
	information							=	DIA_ToughGuy_NEWS_Info;
	permanent							=	true;
	important							=	true;
};
func int DIA_ToughGuy_NEWS_Condition()
{
	if (Npc_IsInState(self, ZS_Talk))
	&& (self.aivar[AIV_LastFightAgainstPlayer] != FIGHT_NONE)
	&& (!self.aivar[AIV_LastFightComment])
	{
		return true;
	};
};
func void DIA_ToughGuy_NEWS_Info()
{
	if		(self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_LOST)	{	B_Say (self, other, "$TOUGHGUY_ATTACKLOST");	}	//No już dobrze, wygrałeś. Czego ode mnie chcesz?
	else if (self.aivar[AIV_LastFightAgainstPlayer] == FIGHT_WON)	{	B_Say (self, other, "$TOUGHGUY_ATTACKWON");		}	//Mam ci jeszcze raz pokazać, kto tu rządzi?
	else															{	B_Say (self, other, "$TOUGHGUY_PLAYERATTACK");	};	//Chcesz się jeszcze raz ze mną spróbować?
	
	self.aivar[AIV_LastFightComment] = true;
	
	if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(Skinner))
	{
		AI_Output (self, other, "DIA_Addon_Skinner_ToughguyNews_08_00"); //... Nie chcę z tobą rozmawiać ...
		
		AI_StopProcessInfos(self);
		B_Attack (self, other, AR_NONE, 1);
	};
};

///******************************************************************************************
func void B_AssignToughGuyNEWS (var C_Npc slf)
{
	DIA_ToughGuy_NEWS.npc = Hlp_GetInstanceID(slf);
};
