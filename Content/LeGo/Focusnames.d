///******************************************************************************************
///	FocusNames
///******************************************************************************************
func void _Focusnames()
{
	var int col; col = -1;
	o_hero = Hlp_GetNpc(hero);
	
	if (Hlp_Is_oCNpc(o_hero.focus_vob))
	{
		o_other = MEM_PtrToInst(o_hero.focus_vob);
		var int att; att = Npc_GetPermAttitude(hero, o_other);
		
		if (o_other.aivar[AIV_PARTYMEMBER] == true)
		{
			col = RGBA (32, 32, 255, 255);
		}
		else if (att == ATT_FRIENDLY)
		{
			col = RGBA (32, 255, 32, 255);
		}
		else if (att == ATT_ANGRY)
		{
			col = RGBA (255, 192, 32, 255);
		}
		else if (att == ATT_HOSTILE)
		{
			col = RGBA (255, 32, 32, 255);
		}
		else if (o_other.aivar[AIV_Love] > 0)
		{
			var int colLove; colLove = o_other.aivar[AIV_Love] + (MAX_LOVE/10);
			col = RGBA (255, 255 - (((o_other.aivar[AIV_Love]*255)/colLove)/2), 255 - (((o_other.aivar[AIV_Love]*255)/colLove)/4), 255);
		}/*
		else if (o_other.npctype == NPCTYPE_VILLAIN)
		{
			col = RGBA (192, 32, 96, 255);
		}*/
		else if (o_other.npctype == NPCTYPE_AMBIENT)
		{
			col = RGBA (192, 192, 192, 255);
		}
		else
		{
			col = COL_White;
		};
	}
	else if (Hlp_Is_oCItem(o_hero.focus_vob))
	{
		o_item = MEM_PtrToInst(o_hero.focus_vob);
		if ((o_item.flags & ITEM_MISSION) == ITEM_MISSION)
		{
			col = RGBA (128, 192, 255, 255);
		}
		else
		{
			var int itemVal; itemVal = o_item.value;
			col = RGBA (255 - (((itemVal*255)/(itemVal+100))/6), 255 - (((itemVal*255)/(itemVal+100))/4), 255 - ((itemVal*255)/(itemVal+100)), 255);
		};
	}
	else
	{
		col = COL_White;
	};
	
	var int ptr; ptr = MEM_Alloc(4);
	MEM_WriteInt(ptr, col);
	CALL_IntParam(ptr);
	CALL__thiscall(MEM_ReadInt(screen_offset), zCView__SetFontColor);
	MEM_Free(ptr);
};
