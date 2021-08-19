///******************************************************************************************
///	B_AddFightSkill
///******************************************************************************************

const int FightTalent_Weak			=	10;
const int FightTalent_Initiate		=	30;
const int FightTalent_Medium		=	50;
const int FightTalent_Strong		=	70;
const int FightTalent_Master		=	90;

///******************************************************************************************
func void B_AddFightSkill (var C_Npc slf, var int talent, var int percent)
{
	var string concatText;
	
	/// 1h
	if (talent == NPC_TALENT_1H)
	{
		slf.HitChance[NPC_TALENT_1H] += percent;
		concatText = ConcatStrings(PRINT_Learn1h, IntToString(percent));
		
		if (slf.HitChance[NPC_TALENT_1H] >= FightTalent_Strong)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_1H, 2);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_1hst1.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_1hST2.mds");
			};
		}
		else if (slf.HitChance[NPC_TALENT_1H] >= FightTalent_Initiate)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_1H, 1);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_1hst2.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_1hST1.mds");
			};
		}
		else
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_1H, 0);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_1hst1.MDS");
				Mdl_RemoveOverlayMds (slf, "HUMANS_1hst2.MDS");
			};
		};
	};
	
	/// 2h
	if (talent == NPC_TALENT_2H)
	{
		slf.HitChance[NPC_TALENT_2H] += percent;
		concatText = ConcatStrings(PRINT_Learn2h, IntToString(percent));
		
		if (slf.HitChance[NPC_TALENT_2H] >= FightTalent_Strong)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_2H, 2);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_2hst1.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_2hST2.mds");
			};
		}
		else if (slf.HitChance[NPC_TALENT_2H] >= FightTalent_Initiate)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_2H, 1);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_2hst2.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_2hST1.mds");
			};
		}
		else
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_2H, 0);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_2hst1.MDS");
				Mdl_RemoveOverlayMds (slf, "HUMANS_2hst2.MDS");
			};
		};
	};
	
	/// bow
	if (talent == NPC_TALENT_BOW)
	{
		slf.HitChance[NPC_TALENT_BOW] += percent;
		concatText = ConcatStrings(PRINT_LearnBow, IntToString(percent));
		
		if (slf.HitChance[NPC_TALENT_BOW] >= FightTalent_Strong)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_BOW, 2);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_BowT1.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_BowT2.mds");
			};
		}
		else if (slf.HitChance[NPC_TALENT_BOW] >= FightTalent_Initiate)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_BOW, 1);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_BowT2.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_BowT1.mds");
			};
		}
		else
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_BOW, 0);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_BowT1.MDS");
				Mdl_RemoveOverlayMds (slf, "HUMANS_BowT2.MDS");
			};
		};
	};
	
	/// cbow
	if (talent == NPC_TALENT_CROSSBOW)
	{
		slf.HitChance[NPC_TALENT_CROSSBOW] += percent;
		concatText = ConcatStrings(PRINT_LearnCBow, IntToString(percent));
		
		if (slf.HitChance[NPC_TALENT_CROSSBOW] >= FightTalent_Strong)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW, 2);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_CBowT1.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_CBowT2.mds");
			};
		}
		else if (slf.HitChance[NPC_TALENT_CROSSBOW] >= FightTalent_Initiate)
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW, 1);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_CBowT2.MDS");
				Mdl_ApplyOverlayMds (slf, "humans_CBowT1.mds");
			};
		}
		else
		{
			if (slf.aivar[AIV_Race] == RACE_Human)
			{
				Npc_SetTalentSkill (slf, NPC_TALENT_CROSSBOW, 0);
				
				Mdl_RemoveOverlayMds (slf, "HUMANS_CBowT1.MDS");
				Mdl_RemoveOverlayMds (slf, "HUMANS_CBowT2.MDS");
			};
		};
	};
	
	/// PrintScreen
	if (Npc_IsPlayer(slf))
	{
		PrintScreen	(concatText, -1, -1, FONT_SCREEN, 2);
	};
};
