///******************************************************************************************
/// B_PiratesGoHome
///******************************************************************************************
func void B_Addon_PiratesGoHome()
{
	Skip.aivar[AIV_PARTYMEMBER] = false;
	Matt.aivar[AIV_PARTYMEMBER] = false;
	Brandon.aivar[AIV_PARTYMEMBER] = false;
	RoastPirate.aivar[AIV_PARTYMEMBER] = false;
	BenchPirate.aivar[AIV_PARTYMEMBER] = false;
	AlligatorJack.aivar[AIV_PARTYMEMBER] = false;
	
	B_StartOtherRoutine (Skip, "START");
	B_StartOtherRoutine (Matt, "START");
	B_StartOtherRoutine (Brandon, "START");
	B_StartOtherRoutine (RoastPirate, "START");
	B_StartOtherRoutine (BenchPirate, "START");
	B_StartOtherRoutine (AlligatorJack, "START");
};

///******************************************************************************************
func int C_GregsPiratesTooFar()
{
	if (Npc_GetDistToWP(hero, "ADW_CANYON_MINE1_09") < 3000)
	|| (Npc_GetDistToWP(hero, "ADW_CANYON_MINE2_04") < 2000)
	|| (Npc_GetDistToWP(hero, "ADW_CANYON_LIBRARY_04") < 2000)
	|| (Npc_GetDistToWP(hero, "ADW_CANYON_PATH_TO_BANDITS_25") < 6000)
	|| (Npc_GetDistToWP(hero, "ADW_PIRATECAMP_WAY_16") < 8000)
	{
		return true;
	};
	
	return false;
};

///******************************************************************************************
func int C_HowManyPiratesInParty()
{
	return
	(
		Skip.aivar[AIV_PARTYMEMBER]
		+ Matt.aivar[AIV_PARTYMEMBER]
		+ Brandon.aivar[AIV_PARTYMEMBER]
		+ RoastPirate.aivar[AIV_PARTYMEMBER]
		+ BenchPirate.aivar[AIV_PARTYMEMBER]
		+ AlligatorJack.aivar[AIV_PARTYMEMBER]
	);
};

///******************************************************************************************
func void B_Addon_PiratesFollowAgain()
{
	if (Npc_GetDistToWP(hero, "STRAND") < 4000)
	{
		return;
	};
	if (C_HowManyPiratesInParty() != 0)
	{
		return;
	};
	
	/// FUNC
	if (Npc_GetDistToNpc(hero, Skip) <= 2000)
	&& (!Npc_IsDead(Skip))
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Skip))
	{
		Skip.aivar[AIV_PARTYMEMBER] = true;
		Npc_ClearAIQueue(Skip);
		B_StartOtherRoutine (Skip, "FOLLOW");
	};
	
	if (Npc_GetDistToNpc(hero, Matt) <= 2000)
	&& (!Npc_IsDead(Matt))
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Matt))
	{
		Matt.aivar[AIV_PARTYMEMBER] = true;
		Npc_ClearAIQueue(Matt);
		B_StartOtherRoutine (Matt, "FOLLOW");
	};
	
	if (Npc_GetDistToNpc(hero, Brandon) <= 2000)
	&& (!Npc_IsDead(Brandon))
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(Brandon))
	{
		Brandon.aivar[AIV_PARTYMEMBER] = true;
		Npc_ClearAIQueue(Brandon);
		B_StartOtherRoutine (Brandon, "FOLLOW");
	};
	
	if (Npc_GetDistToNpc(hero, RoastPirate) <= 2000)
	&& (!Npc_IsDead(RoastPirate))
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(RoastPirate))
	{
		RoastPirate.aivar[AIV_PARTYMEMBER] = true;
		Npc_ClearAIQueue(RoastPirate);
		B_StartOtherRoutine (RoastPirate, "FOLLOW");
	};
	
	if (Npc_GetDistToNpc(hero, BenchPirate) <= 2000)
	&& (!Npc_IsDead(BenchPirate))
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(BenchPirate))
	{
		BenchPirate.aivar[AIV_PARTYMEMBER] = true;
		Npc_ClearAIQueue(BenchPirate);
		B_StartOtherRoutine (BenchPirate, "FOLLOW");
	};
	
	if (Npc_GetDistToNpc(hero, AlligatorJack) <= 2000)
	&& (!Npc_IsDead(AlligatorJack))
	&& (Hlp_GetInstanceID(self) != Hlp_GetInstanceID(AlligatorJack))
	{
		AlligatorJack.aivar[AIV_PARTYMEMBER] = true;
		Npc_ClearAIQueue(AlligatorJack);
		B_StartOtherRoutine (AlligatorJack, "FOLLOW");
	};
};

///******************************************************************************************
func int C_TowerBanditsDead()
{
	var C_Npc TowerBandit1; Towerbandit1 = Hlp_GetNpc(BDT_10100_Addon_Towerbandit);
	var C_Npc TowerBandit2; Towerbandit2 = Hlp_GetNpc(BDT_10101_Addon_Towerbandit);
	var C_Npc TowerBandit3; Towerbandit3 = Hlp_GetNpc(BDT_10102_Addon_Towerbandit);
	
	if (Npc_IsDead(TowerBandit1))
	&& (Npc_IsDead(TowerBandit2))
	&& (Npc_IsDead(TowerBandit3))
	{
		TowerBanditsDead = true;
		return true;
	}
	else
	{
		return false;
	};
};
