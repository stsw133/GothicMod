///******************************************************************************************
///	B_DeletePetzCrime
///******************************************************************************************
func void B_DeletePetzCrime (var C_NPC slf)
{
	/// ------ OldCamp ------
	if (C_NpcBelongsToOldCamp(slf))
	{
		if (B_GetPlayerCrime(slf) == CRIME_MURDER)		{	PETZCOUNTER_OldCamp_Murder -= 1;		};
		if (B_GetPlayerCrime(slf) == CRIME_THEFT)		{	PETZCOUNTER_OldCamp_Theft -= 1;			};
		if (B_GetPlayerCrime(slf) == CRIME_ATTACK)		{	PETZCOUNTER_OldCamp_Attack -= 1;		};
		if (B_GetPlayerCrime(slf) == CRIME_SHEEPKILLER)	{	PETZCOUNTER_OldCamp_Sheepkiller -= 1;	};
	};
	
	/// ------ City ------
	if (C_NpcBelongsToCity(slf))
	{
		if (B_GetPlayerCrime(slf) == CRIME_MURDER)		{	PETZCOUNTER_City_Murder -= 1;			};
		if (B_GetPlayerCrime(slf) == CRIME_THEFT)		{	PETZCOUNTER_City_Theft -= 1;			};
		if (B_GetPlayerCrime(slf) == CRIME_ATTACK)		{	PETZCOUNTER_City_Attack -= 1;			};
		if (B_GetPlayerCrime(slf) == CRIME_SHEEPKILLER)	{	PETZCOUNTER_City_Sheepkiller -= 1;		};
	};
	
	/// ------ Monastery ------
	if (C_NpcBelongsToMonastery(slf))
	{
		if (B_GetPlayerCrime(slf) == CRIME_MURDER)		{	PETZCOUNTER_Monastery_Murder -= 1;		};
		if (B_GetPlayerCrime(slf) == CRIME_THEFT)		{	PETZCOUNTER_Monastery_Theft -= 1;		};
		if (B_GetPlayerCrime(slf) == CRIME_ATTACK)		{	PETZCOUNTER_Monastery_Attack -= 1;		};
		if (B_GetPlayerCrime(slf) == CRIME_SHEEPKILLER)	{	PETZCOUNTER_Monastery_Sheepkiller -= 1;	};
	};
	
	/// ------ Farm ------
	if (C_NpcBelongsToFarm(slf))
	{
		if (B_GetPlayerCrime(slf) == CRIME_MURDER)		{	PETZCOUNTER_Farm_Murder -= 1;			};
		if (B_GetPlayerCrime(slf) == CRIME_THEFT)		{	PETZCOUNTER_Farm_Theft -= 1;			};
		if (B_GetPlayerCrime(slf) == CRIME_ATTACK)		{	PETZCOUNTER_Farm_Attack -= 1;			};
		if (B_GetPlayerCrime(slf) == CRIME_SHEEPKILLER)	{	PETZCOUNTER_Farm_Sheepkiller -= 1;		};
	};
	
	/// ------ Banditenlager ------
	if (C_NpcBelongsToBL(slf))
	{
		if (B_GetPlayerCrime(slf) == CRIME_MURDER)		{	PETZCOUNTER_BL_Murder -= 1;				};
		if (B_GetPlayerCrime(slf) == CRIME_THEFT)		{	PETZCOUNTER_BL_Theft -= 1;				};
		if (B_GetPlayerCrime(slf) == CRIME_ATTACK)		{	PETZCOUNTER_BL_Attack -= 1;				};
	};
};

///******************************************************************************************
///	B_AddPetzCrime
///******************************************************************************************
func void B_AddPetzCrime (var C_NPC slf, var int crime)
{
	/// ------ OldCamp ------
	if (C_NpcBelongsToOldCamp(slf))
	{
		if (crime == CRIME_MURDER)			{	PETZCOUNTER_OldCamp_Murder += 1;		};
		if (crime == CRIME_THEFT)			{	PETZCOUNTER_OldCamp_Theft += 1;			};
		if (crime == CRIME_ATTACK)			{	PETZCOUNTER_OldCamp_Attack += 1;		};
		if (crime == CRIME_SHEEPKILLER)		{	PETZCOUNTER_OldCamp_Sheepkiller += 1;	};
	};
	
	/// ------ City ------
	if (C_NpcBelongsToCity(slf))
	{
		if (crime == CRIME_MURDER)			{	PETZCOUNTER_City_Murder += 1;			};
		if (crime == CRIME_THEFT)			{	PETZCOUNTER_City_Theft += 1;			};
		if (crime == CRIME_ATTACK)			{	PETZCOUNTER_City_Attack += 1;			};
		if (crime == CRIME_SHEEPKILLER)		{	PETZCOUNTER_City_Sheepkiller += 1;		};
	};
	
	/// ------ Monastery ------
	if (C_NpcBelongsToMonastery(slf))
	{
		if (crime == CRIME_MURDER)			{	PETZCOUNTER_Monastery_Murder += 1;		};
		if (crime == CRIME_THEFT)			{	PETZCOUNTER_Monastery_Theft += 1;		};
		if (crime == CRIME_ATTACK)			{	PETZCOUNTER_Monastery_Attack += 1;		};
		if (crime == CRIME_SHEEPKILLER)		{	PETZCOUNTER_Monastery_Sheepkiller += 1;	};
	};
	
	/// ------ Farm ------
	if (C_NpcBelongsToFarm(slf))
	{
		if (crime == CRIME_MURDER)			{	PETZCOUNTER_Farm_Murder += 1;			};
		if (crime == CRIME_THEFT)			{	PETZCOUNTER_Farm_Theft += 1;			};
		if (crime == CRIME_ATTACK)			{	PETZCOUNTER_Farm_Attack += 1;			};
		if (crime == CRIME_SHEEPKILLER)		{	PETZCOUNTER_Farm_Sheepkiller += 1;		};
	};
	
	/// ------ Banditenlager Addon ------
	if (C_NpcBelongsToBL(slf))
	{
		if (crime == CRIME_MURDER)			{	PETZCOUNTER_BL_Murder += 1;				};
		if (crime == CRIME_THEFT)			{	PETZCOUNTER_BL_Theft += 1;				};
		if (crime == CRIME_ATTACK)			{	PETZCOUNTER_BL_Attack += 1;				};
	};
};
