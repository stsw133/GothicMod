///******************************************************************************************
///	B_SetNpcVisual
///******************************************************************************************
func void B_SetNpcVisual (var C_NPC slf, var int race, var int gender, var int bodyTex, var int skinTex, var string headMesh, var int faceTex, var int teethTex, var int armorInstance)
{
	var oCNpc npc; npc = Hlp_GetNpc(slf);
	
	slf.aivar[AIV_Race] = race;
	slf.aivar[AIV_Gender] = gender;
	slf.aivar[AIV_BodyTex] = bodyTex;
	slf.aivar[AIV_SkinTex] = skinTex;
	npc.name_4 = headMesh;
	slf.aivar[AIV_FaceTex] = faceTex;
	slf.aivar[AIV_TeethTex] = teethTex;
	
	if (race == RACE_Human)
	{
		Mdl_SetVisual (slf, "HUMANS.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Hum_Body_Naked0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else				{	Mdl_SetVisualBody (slf,	"Hum_Body_Babe0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	}/*
	else if (race == RACE_Elf)
	{
		Mdl_SetVisual (slf, "HUMANS.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Elf_Body_Naked0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else				{	Mdl_SetVisualBody (slf, "Elf_Body_Babe0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	}
	else if (race == RACE_Dwarf)
	{
		Mdl_SetVisual (slf, "HUMANS.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Hum_Body_Naked0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else				{	Mdl_SetVisualBody (slf, "Hum_Body_Babe0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	}*/
	else if (race == RACE_Orc)
	{
		Mdl_SetVisual (slf, "ORC.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Orc_orc_Body", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);		}
		else				{	Mdl_SetVisualBody (slf, "Orc_orc_Body", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);		};
	}/*
	else if (race == RACE_Draconian)
	{
		Mdl_SetVisual (slf, "DRACONIAN.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Draconian_Body", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else				{	Mdl_SetVisualBody (slf, "Draconian_Body", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	}
	else if (race == RACE_Zombie)
	{
		Mdl_SetVisual (slf, "HUMANS.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Zom_Body_Naked0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else				{	Mdl_SetVisualBody (slf, "Zom_Body_Babe0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	}
	else if (race == RACE_Demon)
	{
		Mdl_SetVisual (slf, "HUMANS.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Hum_Body_Naked0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else				{	Mdl_SetVisualBody (slf, "Hum_Body_Babe0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	}
	else if (race == RACE_Beast)
	{
		Mdl_SetVisual (slf, "HUMANS.MDS");
		
		if (gender == MALE)	{	Mdl_SetVisualBody (slf, "Hum_Body_Naked0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else				{	Mdl_SetVisualBody (slf, "Hum_Body_Babe0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	}*/;
};
///******************************************************************************************
func void B_UpdateNpcVisual (var C_NPC slf)
{
	var oCNpc npc; npc = Hlp_GetNpc(slf);
	B_SetNpcVisual (slf, slf.aivar[AIV_Race], slf.aivar[AIV_Gender], slf.aivar[AIV_BodyTex], slf.aivar[AIV_SkinTex], npc.name_4, slf.aivar[AIV_FaceTex], slf.aivar[AIV_TeethTex], -1);
};
///******************************************************************************************
func void B_SetHeroVisual (var C_NPC slf, var int selHero)
{
	selectedHero = selHero;
	
	if (selHero < 5)	{	B_SetNpcVisual (slf, RACE_Human, MALE, BodyTex_Player, selectedHero, "Hum_Head_Bald", Face_Player, Teeth_Normal, -1);	}
	else				{	B_SetNpcVisual (slf, RACE_Human, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_MikeKayne, Teeth_Normal, -1);	};
	
	Mdl_SetModelFatness	(slf, 0);
};
