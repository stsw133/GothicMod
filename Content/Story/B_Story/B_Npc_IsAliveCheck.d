///******************************************************************************************
///	B_NPC_IsAliveCheck (für NPCs die eine Levelchange vollziehen)
///******************************************************************************************
var int SLD_Bullco_is_alive;
var int SLD_Rod_is_alive;
var int SLD_Cipher_is_alive;
var int SLD_Gorn_is_alive;
var int SLD_Sylvio_is_alive;
var int GornDJG_is_alive;
var int DJG_Angar_is_alive;
var int DiegoOW_is_alive;
var int GornOw_is_alive;

var int Vino_isAlive_Kap3;
var int Malak_isAlive_Kap3;

///******************************************************************************************
FUNC VOID B_NPC_IsAliveCheck (var int Zen)
{
	if (Zen == NEWWORLD_ZEN)
	{
		if (Kapitel >= 8)
		{
		};
		
		if (Kapitel >= 9)
		{
		};
		
		if (MIS_ReadyforChapter4 == true)
		{
	   		var C_NPC SLD_Bullco_OWCheck;
			SLD_Bullco_OWCheck = Hlp_GetNpc(SLD_807_Bullco);
			
			if (Npc_IsDead(SLD_Bullco_OWCheck))
			{
				SLD_Bullco_is_alive	= false;
			}
			else
			{
				SLD_Bullco_is_alive	= true;
				B_RemoveNpc(SLD_Bullco_OWCheck);
			};	
			
			var C_NPC SLD_Rod_OWCheck;
			SLD_Rod_OWCheck = Hlp_GetNpc(SLD_804_Rod);
			
			if (Npc_IsDead(SLD_Rod_OWCheck))
			{
				SLD_Rod_is_alive = false;
			}
			else
			{
				SLD_Rod_is_alive = true;
				B_RemoveNpc(SLD_Rod_OWCheck);
			};
			
			var C_NPC Sld_821; Sld_821 = Hlp_GetNpc(Sld_821_Soeldner);
			Npc_ExchangeRoutine (Sld_821, "RODWEG");
			
			var C_NPC SLD_Cipher_OWCheck;
			SLD_Cipher_OWCheck = Hlp_GetNpc(SLD_803_Cipher);
			
			if (Npc_IsDead(SLD_Cipher_OWCheck))
			{
				SLD_Cipher_is_alive = false;
			}
			else
			{
				SLD_Cipher_is_alive = true;
				B_RemoveNpc(SLD_Cipher_OWCheck);
			};
			
			var C_NPC SLD_Gorn_OWCheck;
			SLD_Gorn_OWCheck = Hlp_GetNpc(PC_Fighter_NW_vor_DJG);
			
			if (Npc_IsDead(SLD_Gorn_OWCheck))
			{
				SLD_Gorn_is_alive = false;
			}
			else
			{
				SLD_Gorn_is_alive = true;
				B_RemoveNpc(SLD_Gorn_OWCheck);
			};
			
	   		var C_NPC SLD_Sylvio_OWCheck;
			SLD_Sylvio_OWCheck = Hlp_GetNpc(SLD_806_Sylvio);
			
			if (Npc_IsDead(SLD_Sylvio_OWCheck))
			{
				SLD_Sylvio_is_alive = false;
			}
			else
			{
				SLD_Sylvio_is_alive = true;
				B_RemoveNpc(SLD_Sylvio_OWCheck);
			};
		};
		
		if (Kapitel >= 11)
		{
		};
		
		if (Kapitel >= 12)
		{
		};
	};
	
	if (Zen == OLDWORLD_ZEN)
	{
		if (Kapitel >= 8)
		{
		};
		
		if (Kapitel >= 9)
		{
		};
		
		if (Kapitel >= 10)
		{
			var C_NPC GornDJG_NWCheck;
			GornDJG_NWCheck	= Hlp_GetNpc(GornDJG);
			
			if (Npc_IsDead(GornDJG))
			{
				GornDJG_is_alive = false;
			}
			else
			{
				GornDJG_is_alive = true;
				B_RemoveNpc(GornDJG_NWCheck);
			};
			
	   		var C_NPC DJG_Angar_NWCheck;
			DJG_Angar_NWCheck = Hlp_GetNpc(DJG_Angar);
			
			if (Npc_IsDead(DJG_Angar))
			{
				DJG_Angar_is_alive = false;
			}
			else
			{
				DJG_Angar_is_alive = true;
				B_RemoveNpc(DJG_Angar_NWCheck);
			};
		};
		
		if (Kapitel >= 11)
		{
		};
		
		if (Kapitel >= 12)
		{
		};
	};
};
