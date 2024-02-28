///******************************************************************************************
///	B_DragonKillCounter
///******************************************************************************************

var int MIS_KilledDragons;
var int MIS_AllDragonsDead;

///******************************************************************************************
func int B_DragonKillCounter (var C_Npc current_dragon)
{
	var C_Npc Ravn; Ravn = Hlp_GetNpc(BDT_1090_Addon_Raven);
	if (Hlp_GetInstanceID(current_dragon) == Hlp_GetInstanceID(Ravn))
	{
		if (!RavenIsDead)
		{
			PlayVideoEx	("EXTRO_RAVEN.BIK", true, false);
			RavenIsDead = true;
			B_RemoveNpc(Myxir_ADW);
		};
	}
	else if (current_dragon.aivar[AIV_MM_REAL_ID] == ID_DRAGON_UNDEAD)
	{
		UndeadDragonIsDead = true;
		
		Log_CreateTopic (TOPIC_BackToShip, LOG_MISSION);
		Log_SetTopicStatus (TOPIC_BackToShip, LOG_RUNNING);
		B_LogEntry (TOPIC_BackToShip, "Wróg pokonany. Tym razem nie bêdê gniæ pod ska³ami, wracam na okrêt.");
		
		AI_Teleport	(hero, "UNDEAD_ENDTELEPORT");
		
		if		(hero.guild == GIL_MIL)	{ PlayVideoEx ("EXTRO_PAL.BIK", true, false); }
		else if (hero.guild == GIL_DJG)	{ PlayVideoEx ("EXTRO_DJG.BIK", true, false); }
		else if (hero.guild == GIL_KDF)	{ PlayVideoEx ("EXTRO_KDF.BIK", true, false); }
		else if (hero.guild == GIL_PAL)	{ PlayVideoEx ("EXTRO_PAL.BIK", true, false); }
		else							{ PlayVideoEx ("EXTRO_DJG.BIK", true, false); };
	}
	else if (current_dragon.guild == GIL_DRAGON)
	{
		if (Hlp_GetInstanceID(current_dragon) == Hlp_GetInstanceID(SwampDragon))
		{
			PrintScreen	("Smocza zdolnoœæ: regeneracja", -1, -1, FONT_SCREEN, 2);
			hpRegenPower += 5;
			mpRegenPower += 5;
			spRegenPower += 5;
		}
		else if (Hlp_GetInstanceID(current_dragon) == Hlp_GetInstanceID(RockDragon))
		{
			PrintScreen	("Smocza zdolnoœæ: wytrzyma³oœæ", -1, -1, FONT_SCREEN, 2);
			hero.protection[PROT_BLUNT] += 5;
			hero.protection[PROT_EDGE] += 5;
			hero.protection[PROT_POINT] += 5;
			hero.protection[PROT_FIRE] += 5;
			hero.protection[PROT_MAGIC] += 5;
			hero.protection[PROT_BARRIER] += 5;
		}
		else if (Hlp_GetInstanceID(current_dragon) == Hlp_GetInstanceID(FireDragon))
		{
			PrintScreen	("Smocza zdolnoœæ: destrukcja", -1, -1, FONT_SCREEN, 2);
			mFinishPercent += 5;
		}
		else if (Hlp_GetInstanceID(current_dragon) == Hlp_GetInstanceID(IceDragon))
		{
			PrintScreen	("Smocza zdolnoœæ: nieustêpliwoœæ", -1, -1, FONT_SCREEN, 2);
			hero.aivar[AIV_Stamina_MAX] += 10*SP_PER_LP;
			Disable_HeavyArmor();
		}
		else if (Hlp_GetInstanceID(current_dragon) == Hlp_GetInstanceID(GoldDragon))
		{
			PrintScreen	("Smocza zdolnoœæ: ³up", -1, -1, FONT_SCREEN, 2);
			B_PlayerFindItem (ItMi_Gold, 1000);
		}
		else if (Hlp_GetInstanceID(current_dragon) == Hlp_GetInstanceID(FireDragonIsland))
		{
			PrintScreen	("Smocza zdolnoœæ: potêga", -1, -1, FONT_SCREEN, 2);
			hero.attribute[ATR_HITPOINTS_MAX] += 5*HP_PER_LP;
			hero.attribute[ATR_HITPOINTS] += 5*HP_PER_LP;
			hero.attribute[ATR_MANA_MAX] += 5*MP_PER_LP;
			hero.attribute[ATR_MANA] += 5*MP_PER_LP;
			hero.attribute[ATR_STRENGTH] += 5;
			hero.attribute[ATR_DEXTERITY] += 5;
			Npc_AddPowerPoints (hero, 5);
		};
		
		MIS_KilledDragons += 1;
		if (!Npc_IsDead(SwampDragon))	{ NpcFn_SetAttributesToLevel (SwampDragon, 80+(MIS_KilledDragons*2)); SwampDragon.level *= 5;	};
		if (!Npc_IsDead(RockDragon))	{ NpcFn_SetAttributesToLevel (RockDragon, 80+(MIS_KilledDragons*2)); RockDragon.level *= 5;		};
		if (!Npc_IsDead(FireDragon))	{ NpcFn_SetAttributesToLevel (FireDragon, 80+(MIS_KilledDragons*2)); FireDragon.level *= 5;		};
		if (!Npc_IsDead(IceDragon))		{ NpcFn_SetAttributesToLevel (IceDragon, 80+(MIS_KilledDragons*2)); IceDragon.level *= 5;		};
		if (!Npc_IsDead(GoldDragon))	{ NpcFn_SetAttributesToLevel (GoldDragon, 80+(MIS_KilledDragons*2)); GoldDragon.level *= 5;		};
		
		if (!MIS_AllDragonsDead)
		&& (Npc_IsDead(SwampDragon) && Npc_IsDead(RockDragon) && Npc_IsDead(FireDragon) && Npc_IsDead(IceDragon))
		{
			MIS_AllDragonsDead = true;
			if (RavenIsDead)
			{
				Wld_InsertNpc (Dragon_Gold, "ADW_ADANOSTEMPEL_RAVEN_11");
			};
		};
	};
};
