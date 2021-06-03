///******************************************************************************************
///	B_DragonKillCounter
///******************************************************************************************

var int MIS_KilledDragons;
var int MIS_AllDragonsDead;

///******************************************************************************************
func int B_DragonKillCounter (var C_NPC current_dragon)
{
	var C_NPC Ravn; Ravn = Hlp_GetNpc(BDT_1090_Addon_Raven);
	if ((Hlp_GetInstanceID(current_dragon)) == (Hlp_GetInstanceID(Ravn)))
	{
		if (!RavenIsDead)
		{
			PlayVideoEx	("EXTRO_RAVEN.BIK", true, false);
			RavenIsDead = true;
			B_RemoveNpc(Myxir_ADW);
		};
	};
	
	if (current_dragon.guild == GIL_DRAGON)
	{
		MIS_KilledDragons += 1;
		if (!Npc_IsDead(SwampDragon))
		{
			B_SetMonsterAttributes (SwampDragon, 70 + (MIS_KilledDragons * 5));
		};
		if (!Npc_IsDead(RockDragon))
		{
			B_SetMonsterAttributes (RockDragon, 70 + (MIS_KilledDragons * 5));
		};
		if (!Npc_IsDead(FireDragon))
		{
			B_SetMonsterAttributes (FireDragon, 70 + (MIS_KilledDragons * 5));
		};
		if (!Npc_IsDead(IceDragon))
		{
			B_SetMonsterAttributes (IceDragon, 70 + (MIS_KilledDragons * 5));
		};
		if (!Npc_IsDead(GoldDragon))
		{
			B_SetMonsterAttributes (GoldDragon, 70 + (MIS_KilledDragons * 5));
		};
		if (!Npc_IsDead(FireDragonIsland))
		{
			B_SetMonsterAttributes (FireDragonIsland, 70 + (MIS_KilledDragons * 5));
		};
		if (!Npc_IsDead(UndeadDragon))
		{
			B_SetMonsterAttributes (UndeadDragon, 70 + (MIS_KilledDragons * 5));
		};
	};
	
	if (!MIS_AllDragonsDead)
	&& (Npc_IsDead(SwampDragon))
	&& (Npc_IsDead(RockDragon))
	&& (Npc_IsDead(FireDragon))
	&& (Npc_IsDead(IceDragon))
	{
		MIS_AllDragonsDead = true;
		if (RavenIsDead)
		{
			Wld_InsertNpc (Dragon_Gold, "ADW_ADANOSTEMPEL_RAVEN_11");
		};
	};
	
	if (current_dragon.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
	{
		UndeadDragonIsDead = true;
		
		Log_CreateTopic (TOPIC_BackToShip, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_BackToShip, LOG_RUNNING);
		B_LogEntry (TOPIC_BackToShip, "Wróg pokonany. Tym razem nie bêdê gniæ pod ska³ami, wracam na okrêt.");
		
		AI_Teleport	(hero, "UNDEAD_ENDTELEPORT");
		
		if (hero.guild == GIL_MIL || hero.guild == GIL_PAL)
		{
			PlayVideoEx	("EXTRO_PAL.BIK", true, false);
		}
		else if (hero.guild == GIL_SLD || hero.guild == GIL_DJG)
		{
			PlayVideoEx	("EXTRO_DJG.BIK", true, false);
		}
		else
		{
			PlayVideoEx	("EXTRO_KDF.BIK", true, false);
		};
	};
};
