///******************************************************************************************
/// SPL_Telekinesis
///******************************************************************************************

const int SPL_Cost_Telekinesis			=	10;
instance oCItem_Telekinesis(oCItem);

///******************************************************************************************
instance Spell_Telekinesis (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	canChangeTargetDuringInvest			=	false;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectType					=	TARGET_TYPE_ITEMS;
	targetCollectRange					=	5000;
	targetCollectAzi					=	30;
	targetCollectElev					=	30;
};

func int Spell_Logic_Telekinesis (var int manaInvested)
{
	var oCNpc Npc; Npc = Hlp_GetNpc(self);
	var int temp; temp = oCItem_Telekinesis;
	MEM_AssignInst(temp, Npc.focus_vob);
	
	if (!Hlp_IsValidItem(oCItem_Telekinesis))
	{
		return SPL_SENDSTOP;
	};
	
	return B_SpellLogic (self, default, SPL_Cost_Telekinesis, manaInvested);
};

func void Spell_Cast_Telekinesis()
{
	B_SpellCast (self, default, SPL_Cost_Telekinesis);
	
	var oCNpc Npc; Npc = Hlp_GetNpc(self);
	var int temp; temp = oCItem_Telekinesis;
	MEM_AssignInst(temp, Npc.focus_vob);
	
//	Snd_Play("MFX_Telekinesis_StartInvest");
	Wld_PlayEffect ("spellFX_Telekinesis_KEY_CAST", oCItem_Telekinesis, oCItem_Telekinesis, 0, 0, 0, false);
	
	if (!Hlp_IsValidItem(oCItem_Telekinesis))
	{
		return;
	};
	if (Npc_GetDistToItem(self, oCItem_Telekinesis) < NPC_ATTACK_FINISH_DISTANCE)
	{
		return;
	};
	
	var int dist; dist = Npc_GetDistToItem(self, oCItem_Telekinesis);
	var int step_x; step_x = divf(mulf(subf(Npc._zCVob_trafoObjToWorld[3], oCItem_Telekinesis._zCVob_trafoObjToWorld[3]), dist-NPC_ATTACK_FINISH_DISTANCE), dist);
	var int step_y; step_y = subf(Npc._zCVob_trafoObjToWorld[7], oCItem_Telekinesis._zCVob_trafoObjToWorld[7]);
	var int step_z; step_z = divf(mulf(subf(Npc._zCVob_trafoObjToWorld[11], oCItem_Telekinesis._zCVob_trafoObjToWorld[11]), dist-NPC_ATTACK_FINISH_DISTANCE), dist);
	
	var int start_z; start_z = subf(oCItem_Telekinesis._zCVob_bbox3D_maxs[1], oCItem_Telekinesis._zCVob_bbox3D_mins[1]);
	oCItem_Telekinesis._zCVob_trafoObjToWorld[7] = addf(oCItem_Telekinesis._zCVob_trafoObjToWorld[7], start_z);
	oCItem_Telekinesis._zCVob_bbox3D_mins[1] = addf(oCItem_Telekinesis._zCVob_bbox3D_mins[1], start_z);
	oCItem_Telekinesis._zCVob_bbox3D_maxs[1] = addf(oCItem_Telekinesis._zCVob_bbox3D_maxs[1], start_z);
	
	//Wld_PlayEffect ("spellFX_ItemAusbuddeln", oCItem_Telekinesis, oCItem_Telekinesis, 0, 0, 0, false);
	Wld_PlayEffect ("spellFX_Telekinesis_KEY_CAST", oCItem_Telekinesis, oCItem_Telekinesis, 0, 0, 0, false);
	
	oCItem_Telekinesis._zCVob_trafoObjToWorld[3]=addf(oCItem_Telekinesis._zCVob_trafoObjToWorld[3], step_x);   
	oCItem_Telekinesis._zCVob_trafoObjToWorld[7]=addf(oCItem_Telekinesis._zCVob_trafoObjToWorld[7], step_y);   
	oCItem_Telekinesis._zCVob_trafoObjToWorld[11]=addf(oCItem_Telekinesis._zCVob_trafoObjToWorld[11], step_z);
	oCItem_Telekinesis._zCVob_bbox3D_mins[0]=addf(oCItem_Telekinesis._zCVob_bbox3D_mins[0], step_x);
	oCItem_Telekinesis._zCVob_bbox3D_mins[1]=addf(oCItem_Telekinesis._zCVob_bbox3D_mins[1], step_y);
	oCItem_Telekinesis._zCVob_bbox3D_mins[2]=addf(oCItem_Telekinesis._zCVob_bbox3D_mins[2], step_z);
	oCItem_Telekinesis._zCVob_bbox3D_maxs[0]=addf(oCItem_Telekinesis._zCVob_bbox3D_maxs[0], step_x);
	oCItem_Telekinesis._zCVob_bbox3D_maxs[1]=addf(oCItem_Telekinesis._zCVob_bbox3D_maxs[1], step_y);
	oCItem_Telekinesis._zCVob_bbox3D_maxs[2]=addf(oCItem_Telekinesis._zCVob_bbox3D_maxs[2], step_z);
	
	MEM_InitGlobalInst();
	oCItem_Telekinesis._zCVob_bitfield[0] = oCItem_Telekinesis._zCVob_bitfield[0] | zCVob_bitfield0_physicsEnabled;
	oCItem_Telekinesis._zCVob_bitfield[2] = oCItem_Telekinesis._zCVob_bitfield[2] | zCVob_bitfield2_sleepingMode;
	MEM_WriteInt(MEM_World.activeVobList_array + 4*(MEM_World.activeVobList_numInArray), Npc.focus_vob);
	MEM_World.activeVobList_numInArray += 1;
};
