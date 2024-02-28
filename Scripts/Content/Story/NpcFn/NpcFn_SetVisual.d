///******************************************************************************************
///	NpcFn_SetVisual
///******************************************************************************************
func void NpcFn_SetVisual (var C_Npc slf, var int gender, var int bodyTex, var int skinTex, var string headMesh, var int faceTex, var int teethTex, var int armorInstance)
{
	var oCNpc npc; npc = Hlp_GetNpc(slf);
	
	slf.aivar[AIV_Gender] = gender;
	slf.aivar[AIV_BodyTex] = bodyTex;
	slf.aivar[AIV_SkinTex] = skinTex;
	npc.name_4 = headMesh;
	slf.aivar[AIV_FaceTex] = faceTex;
	slf.aivar[AIV_TeethTex] = teethTex;
	
	if (gender >= ORCMALE)
	{
		Mdl_SetVisual (slf, "ORC.MDS");
		Mdl_SetVisualBody (slf, "Orc_orc_Body", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);
	}
	else
	{
		Mdl_SetVisual (slf, "HUMANS.MDS");
		
		if (gender == FEMALE)	{	Mdl_SetVisualBody (slf,	"Hum_Body_Babe0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	}
		else					{	Mdl_SetVisualBody (slf, "Hum_Body_Naked0", bodyTex, skinTex, headMesh, faceTex, teethTex, armorInstance);	};
	};
};
///******************************************************************************************
func void NpcFn_UpdateVisual (var C_Npc slf)
{
	var oCNpc npc; npc = Hlp_GetNpc(slf);
	NpcFn_SetVisual (slf, slf.aivar[AIV_Gender], slf.aivar[AIV_BodyTex], slf.aivar[AIV_SkinTex], npc.name_4, slf.aivar[AIV_FaceTex], slf.aivar[AIV_TeethTex], -1);
};
///******************************************************************************************
func void NpcFn_SetHeroVisual (var C_Npc slf, var int selHero)
{
	selectedHero = selHero;
	
	if		(selHero == 0)	{	NpcFn_SetVisual (slf, MALE, BodyTex_Player, 0, "Hum_Head_Pony", Face_Player, Teeth_Normal, -1);					}
	else if	(selHero == 1)	{	NpcFn_SetVisual (slf, MALE, BodyTex_Player, 1, "Hum_Head_Pony", Face_Player, Teeth_Normal, -1);					}
	else if	(selHero == 2)	{	NpcFn_SetVisual (slf, MALE, BodyTex_Player, 2, "Hum_Head_Pony", Face_Player, Teeth_Normal, -1);					}
	else if	(selHero == 3)	{	NpcFn_SetVisual (slf, MALE, BodyTex_Player, 3, "Hum_Head_Bald", Face_Player, Teeth_Normal, -1);					}
	else if	(selHero == 4)	{	NpcFn_SetVisual (slf, MALE, BodyTex_Player, 4, "Hum_Head_Fighter", Face_Witcher, Teeth_Normal, -1);				}
	else if	(selHero == 5)	{	NpcFn_SetVisual (slf, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Fighter", Face_MikeKayne, Teeth_Normal, -1);	}
	else					{	NpcFn_SetVisual (slf, MALE, BodyTex_Default, BodySkin_N, "Hum_Head_Bald", Face_Player, Teeth_Normal, -1);		};
	
	//Mdl_SetModelFatness (slf, 0);
};
