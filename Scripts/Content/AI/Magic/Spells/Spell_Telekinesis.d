///******************************************************************************************
/// SPL_Telekinesis
///******************************************************************************************

const int SPL_Cost_Telekinesis			=	10;

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
	o_item = MEM_PtrToInst(o_hero.focus_vob);
	if (!Hlp_IsValidItem(o_item))
	{
		return SPL_SENDSTOP;
	};
	
	return B_SpellLogic (self, default, SPL_Cost_Telekinesis, manaInvested);
};

func void Spell_Cast_Telekinesis()
{
	o_item = MEM_PtrToInst(o_hero.focus_vob);
	if (!Hlp_IsValidItem(o_item))
	{
		return;
	};
	if (Npc_GetDistToItem(self, o_item) < NPC_ATTACK_FINISH_DISTANCE)
	{
		return;
	};
	
	B_SpellCast (self, default, SPL_Cost_Telekinesis);
	
	Wld_PlayEffect ("spellFX_Telekinesis_ITEM", o_item, o_item, 0, 0, 0, false);
	
	var int dist; dist = Npc_GetDistToItem(self, o_item);
	var int step_x; step_x = divf(mulf(subf(o_hero._zCVob_trafoObjToWorld[3], o_item._zCVob_trafoObjToWorld[3]), dist-NPC_ATTACK_FINISH_DISTANCE), dist);
	var int step_y; step_y = subf(o_hero._zCVob_trafoObjToWorld[7], o_item._zCVob_trafoObjToWorld[7]);
	var int step_z; step_z = divf(mulf(subf(o_hero._zCVob_trafoObjToWorld[11], o_item._zCVob_trafoObjToWorld[11]), dist-NPC_ATTACK_FINISH_DISTANCE), dist);

	var int start_z; start_z = subf(o_item._zCVob_bbox3D_maxs[1], o_item._zCVob_bbox3D_mins[1]);
	o_item._zCVob_trafoObjToWorld[7] = addf(o_item._zCVob_trafoObjToWorld[7], start_z);
	o_item._zCVob_bbox3D_mins[1] = addf(o_item._zCVob_bbox3D_mins[1], start_z);
	o_item._zCVob_bbox3D_maxs[1] = addf(o_item._zCVob_bbox3D_maxs[1], start_z);

	Wld_PlayEffect ("spellFX_Telekinesis_ITEM", o_item, o_item, 0, 0, 0, false);

	o_item._zCVob_trafoObjToWorld[3]=addf(o_item._zCVob_trafoObjToWorld[3], step_x);
	o_item._zCVob_trafoObjToWorld[7]=addf(o_item._zCVob_trafoObjToWorld[7], step_y);
	o_item._zCVob_trafoObjToWorld[11]=addf(o_item._zCVob_trafoObjToWorld[11], step_z);
	o_item._zCVob_bbox3D_mins[0]=addf(o_item._zCVob_bbox3D_mins[0], step_x);
	o_item._zCVob_bbox3D_mins[1]=addf(o_item._zCVob_bbox3D_mins[1], step_y);
	o_item._zCVob_bbox3D_mins[2]=addf(o_item._zCVob_bbox3D_mins[2], step_z);
	o_item._zCVob_bbox3D_maxs[0]=addf(o_item._zCVob_bbox3D_maxs[0], step_x);
	o_item._zCVob_bbox3D_maxs[1]=addf(o_item._zCVob_bbox3D_maxs[1], step_y);
	o_item._zCVob_bbox3D_maxs[2]=addf(o_item._zCVob_bbox3D_maxs[2], step_z);
	
	MEM_InitGlobalInst();
	o_item._zCVob_bitfield[0] = o_item._zCVob_bitfield[0] | zCVob_bitfield0_physicsEnabled;
	o_item._zCVob_bitfield[2] = o_item._zCVob_bitfield[2] | zCVob_bitfield2_sleepingMode;
	MEM_WriteInt(MEM_World.activeVobList_array + 4*(MEM_World.activeVobList_numInArray), o_hero.focus_vob);
	MEM_World.activeVobList_numInArray += 1;
};
