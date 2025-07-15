///******************************************************************************************

var int GregyIsYourFollower;
var string GregyLostWP;

func void GregyRiseIfDead(var C_Npc slf)
{
	if (Npc_IsDead(slf) && Npc_GetDistToNpc(slf, hero) > 3000)
	{
		slf.attribute[ATR_HITPOINTS] = 1;
		AI_PlayAni (slf, "T_FALLEN_2_STAND");
		AI_PlayAni (slf, "R_ROAM2");
	};
	
	B_SetAttitude (slf, ATT_FRIENDLY);
	slf.aivar[AIV_PartyMember] = true;
	B_StartOtherRoutine (slf, "FOLLOW");
};

func void GregyTeleportIfTooFar()
{
	if (GregyIsYourFollower)
	{
		if (Npc_IsDead(Gregy) && Npc_GetDistToNpc(Gregy, hero) > (1 << 31) - 1)
		{
			Wld_InsertNpc (PIR_1302_Gregy, Npc_GetNearestWP(hero));
			Gregy = Hlp_GetNpc(PIR_1302_Gregy);
		};
		GregyRiseIfDead(Gregy);
		
		Gregy.attribute[ATR_HITPOINTS] = Gregy.attribute[ATR_HITPOINTS_MAX];
		AI_Teleport	(Gregy, Npc_GetNearestWP(hero));
	};
};

func void GregyRefreshStatus()
{
	if (GregyIsYourFollower)
	{
		if (Npc_IsDead(Gregy))
		{
			GregyRiseIfDead(Gregy);
		};
		if (Npc_GetDistToNpc(Gregy, hero) > 10000 && Npc_GetDistToWP(hero, GregyLostWP) > 1500)
		{
			AI_Teleport	(Gregy, GregyLostWP);
		};
		GregyLostWP = Npc_GetNearestWP(hero);
	};
};

///******************************************************************************************
/// EXIT
///******************************************************************************************
instance DIA_Gregy_EXIT (C_Info)
{
	npc									=	PIR_1302_Gregy;
	nr									=	999;
	condition							=	aTrue;
	information							=	aExit;
	permanent							=	true;
	description							=	DIALOG_END;
};

///******************************************************************************************
/// HALLO
///******************************************************************************************
instance DIA_Gregy_HALLO (C_Info)
{
	npc									=	PIR_1302_Gregy;
	nr									=	1;
	condition							=	aTrue;
	information							=	DIA_Gregy_HALLO_Info;
	important							=	true;
};
func void DIA_Gregy_HALLO_Info()
{
	AI_PlayAni (self, "R_ROAM1");
	AI_Wait (other, 1);
	AI_Output (other, self,"DIA_Constantino_MushroomsRunning_Why_15_06"); //O rany!
	
	GregyRiseIfDead(self);
	GregyIsYourFollower = true;
	
	AI_StopProcessInfos(self);
};
