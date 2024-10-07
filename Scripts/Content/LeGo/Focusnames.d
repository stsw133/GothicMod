///******************************************************************************************
/// FocusNames
///******************************************************************************************
func void _Focusnames()
{
	var int col; col = COL_White;
	o_hero = Hlp_GetNpc(hero);
	
	/// npc
	if (Hlp_Is_oCNpc(o_hero.focus_vob))
	{
		o_other = MEM_PtrToInst(o_hero.focus_vob);
		var int att; att = Npc_GetPermAttitude(hero, o_other);
		
		if		(o_other.aivar[AIV_PartyMember])		{	col = RGBA ( 63,  63, 255, 255);	}
		else if (o_other.npctype == NPCTYPE_LOVE)		{	col = RGBA (255, 127, 223, 255);	}
		else if (att == ATT_FRIENDLY)					{	col = RGBA ( 63, 255,  63, 255);	}
		else if (att == ATT_ANGRY)						{	col = RGBA (255, 159,  63, 255);	}
		else if (att == ATT_HOSTILE)					{	col = RGBA (255,  63,  63, 255);	}
		else if (o_other.npctype == NPCTYPE_AMBIENT)	{	col = RGBA (159, 159, 159, 255);	};
	}
	/// item
	else if (Hlp_Is_oCItem(o_hero.focus_vob))
	{
		o_item = MEM_PtrToInst(o_hero.focus_vob);
		
		if		(o_item.flags & ITEM_MISSION)								{	col = RGBA (128, 192, 255, 255);	}
		else if (o_item.mainflag == ITEM_KAT_NONE && o_item.value >= 100)	{	col = RGBA (255, 224, 128, 255);	};
	};
	
	var int ptr; ptr = MEM_Alloc(4);
	MEM_WriteInt(ptr, col);
	CALL_IntParam(ptr);
	CALL__thiscall(MEM_ReadInt(screen_offset), zCView__SetFontColor);
	MEM_Free(ptr);
};
