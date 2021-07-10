///******************************************************************************************
///	Ambient - NEWS
///******************************************************************************************
instance DIA_Ambient_NEWS (C_INFO)
{
	//npc		= alle;	//wird in ZS_Talk zugeordnet
	nr			= 1;
	condition	= DIA_Ambient_NEWS_Condition;
	information	= DIA_Ambient_NEWS_Info;
	permanent	= true;
	important 	= true;
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
	/// ------ CRIME ------
	if (B_GetPlayerCrime(self) == CRIME_SHEEPKILLER)
	{
		B_Say (self, other, "$SHEEPKILLER_CRIME");
	};
	
	if (B_GetPlayerCrime(self) == CRIME_ATTACK)
	{
		B_Say (self, other, "$ATTACK_CRIME");
	};
	
	if (B_GetPlayerCrime(self) == CRIME_THEFT)
	{
		B_Say (self, other, "$THEFT_CRIME");
	};
	
	/// ------ CITY ------
	if (C_NpcBelongsToCity(self))
	{
		/// ------ Player-Gilde und Petzmaster ------
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
	
	/// ------ KLOSTER ------
	if (C_NpcBelongsToMonastery(self))
	&& (Parlan_Schulden <= 0)
	{
		B_Say (self, other, "$MONA_CRIME");
	};
	
	/// ------ BAUERNHOF ------
	if (C_NpcBelongsToFarm(self))
	&& (Lee_Schulden <= 0)
	{
		B_Say (self, other, "$FARM_CRIME");
	};
	
	/// ------ OLD CAMP ------
	if (C_NpcBelongsToOldCamp(self))
	&& (Garond_Schulden <= 0)
	{
		B_Say (self, other, "$OC_CRIME");
	};
	
	/// ------ Dialog beenden ------	
	AI_StopProcessInfos(self);
};

///******************************************************************************************
func void B_AssignAmbientNEWS (var C_NPC slf)
{
	DIA_AMBIENT_NEWS.npc = Hlp_GetInstanceID(slf);
};
