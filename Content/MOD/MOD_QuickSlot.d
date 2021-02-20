///******************************************************************************************
///	MOD_QuickSlot_Externals
///******************************************************************************************

func int GetModel (var int npc)
{
	CALL__thiscall(MEM_InstToPtr(npc), 7571232);
	return CALL_RetValAsInt();
};

func int AniIsActive (var c_npc slf, var string aniname)
{
	var int ptr; ptr = GetModel(slf);
	const int zCModel_AniIsActive = 5727888;
	
	CALL_zStringPtrParam(Str_Upper(aniname));
	CALL__thiscall(ptr, zCModel_AniIsActive);
	return CALL_RetValAsInt();    
};

func int MEM_KeyHold (var int key1, var int key2)
{
	if ((MEM_KeyState(key1) == KEY_HOLD && key1)
	|| (MEM_KeyState(key2) == KEY_HOLD && key2))
	{
		return true;
	};
	return false;
};

func oCItem Hlp_GetItem (var int ID)
{
	var zCPar_Symbol symb; symb = _^(MEM_GetSymbolByIndex(ID));
	MEM_PtrToInst(symb.offset);
};

func int oCNpc_GetSlotItem (var c_npc slf, var string slot)
{
	CALL_zStringPtrParam(STR_Upper(slot));
	CALL__thiscall(_@(slf), 7544720);
	return CALL_RetValAsPtr();
};

func void Equip_FarWeapon (var C_NPC slf, var int ItemInst)
{
	if (!Npc_HasItems(slf,ItemInst))
	{
		CreateInvItems (slf, ItemInst, 1);
	};
	
	if (!Npc_GetInvItem(slf,ItemInst))
	{
		MEM_AssertFail("Unexpected behaviour in EquipWeapon.");
		return;
	};
	
	if (item.mainflag == ITEM_KAT_NF && Npc_HasReadiedMeleeWeapon(slf))
	|| (item.mainflag == ITEM_KAT_FF && Npc_HasReadiedRangedWeapon(slf))
	{
		MEM_Warn("EquipWeapon: Caller wants to equip a weapon while weapon of the same type is readied. Ignoring request.");
		return;
	};
	
	if (item.flags & ITEM_ACTIVE)
	&& (!EquipWeapon_TogglesEquip)
	{
		MEM_Info("EquipWeapon: This weapon is already equipped. Ignoring request.");
		return;
	};
	
	const int oCNpc__EquipFarWeapon = 7578384;
	CALL_PtrParam(_@(item));
	CALL__thiscall(_@(slf), oCNpc__EquipFarWeapon);
};

func void oCNpc_UseItem (var c_npc slf, var int ItemInst)
{
	if (!Npc_HasItems(slf,ItemInst))
	{
		CreateInvItems (slf, ItemInst, 1);
	};
	
	if (!Npc_GetInvItem(slf,ItemInst))
	{
		return;
	};
	
	CALL_PtrParam(_@(item));
	CALL__thiscall(_@(slf), oCNpc__UseItem); 
};

///******************************************************************************************
///	MOD_QuickSlot
///******************************************************************************************

var int QS_Data[10];
var int QS_Background;
var int QS_VRender;

const int QS_SlotBackX			=	512;
const int QS_SlotBackY			=	128;
const int QS_SlotBackMargin		=	60;
const string QS_Texture			=	"QUICKSLOTS.tga";

const int QS_Category_Weapon	=	1;
const int QS_Category_Item		=	2;
const int QS_Category_Potion	=	3;
const int QS_Category_Shield	=	4;
const int QS_Category_Ranged	=	5;
const int QS_Category_Torch		=	6;
const int QS_Category_Magic		=	7;

var int QS_InvOpen;

class CQuickSlot
{
	var int ItemID;
	var int pRender;
	var int Category;
};

instance QuickSlot(CQuickSlot);

func void QS_MoveTo (var int hndl, var int x, var int y) 
{
    var zCView v; v = View_Get(hndl);
    var int w; w = v.psizex;
    var int h; h = v.psizey;
    
    ViewPtr_MoveToPxl(getPtr(hndl), x-(w>>1), y-(h>>1));
};

func int QS_SlotIsEmpty (var int Slot)
{
	var int QS_Ptr; QS_Ptr = MEM_ReadStatArr(QS_Data, slot);
	if (QS_Ptr)
	{
		return false;
	};
	return true;
};

func void QS_CreateSlot (var int slot, var int InstID)
{
	var int QS_Ptr; QS_Ptr = new(QuickSlot);
	var CQuickSlot QS; QS = get(QS_Ptr);
	QS.ItemID = InstID;
	
	if (!Hlp_IsValidHandle(QS_Background))
	{
		var int QS_X; QS_X = Print_Screen[PS_X]/2;
		var int QS_Y; QS_Y = QS_SlotBackMargin;
		
		QS_Background = View_CreateCenterPxl(QS_X, QS_Y, QS_SlotBackX, QS_SlotBackY);
		View_SetTexture(QS_Background, QS_Texture);
		QS_VRender = Render_AddView(QS_Background);
	};
	
	if (!Hlp_IsValidHandle(QS_Background))
	{
		return;
	};
	
	var zCView v; v = View_Get(QS_Background);
	
	var int hlp; hlp = slot; if (slot == 0) { hlp = 10; };
	var int x; x = v.pposx + (160 + 50*(hlp - 4));
	
	if (slot == 1)
	{
		x = v.pposx + 51;
	}
	else if (slot == 2)
	{
		x = v.pposx + 100;
	};
	
	var int rPtr; rPtr = Render_AddItemCenterPxl(InstID, x, v.pposy+64, 64, 52);
	Render_OpenView(rPtr);
	QS.pRender = rPtr;
	
	MEM_WriteStatArr(QS_Data, slot, QS_Ptr);
	rPtr = 0;
};

func void QS_RefreshRender (var int slot)
{
	var int QS_Ptr; QS_Ptr = MEM_ReadStatArr(QS_Data, slot);
	if (!QS_Ptr || !Hlp_IsValidHandle(QS_Background))
	{
		return;
	};
	
	var CQuickSlot QS; QS = get(QS_Ptr);
	
	if (Hlp_IsValidHandle(QS.pRender))
	{
		Render_Remove(QS.pRender);
		Render_CloseView(QS.pRender);
		QS.pRender = 0;
	};
	
	var zCView v; v = View_Get(QS_Background);
	var int hlp; hlp = slot;
	if (slot == 0) { hlp = 10; };
	var int x; x = v.pposx + (160 + 50*(hlp - 4));
	if (slot == 1)
	{
		x = v.pposx + 51;
	}
	else if (slot == 2)
	{
		x = v.pposx + 100;
	};
	
	var int rPtr; rPtr = Render_AddItemCenterPxl(QS.ItemID, x, v.pposy+64, 64, 52);
	Render_OpenView(rPtr);
	QS.pRender = rPtr;
	rPtr = 0;
};

func void QS_RemoveBackGround()
{
	var int i; i = 0;
	var int c; c = 0;
	repeat(i, 10);
		if (QS_SlotIsEmpty(i))
		{
			c += 1;
		};
	end;
	
	if (c == 10)
	{
		if (Hlp_IsValidHandle(QS_Background))
		{
			Render_CloseView(QS_VRender);
			View_Delete(QS_Background);
			QS_Background = 0;
			QS_VRender = 0;
		};
	};
};

func void QS_ClearSlot(var int slot)
{
	var int QS_Ptr; QS_Ptr = MEM_ReadStatArr(QS_Data, slot);
	
	if (!QS_Ptr)
	{
		return;
	};
	
	var CQuickSlot QS; QS = get(QS_Ptr);
	
	if (Hlp_IsValidHandle(QS.pRender))
	{
		Render_Remove(QS.pRender);
	};
	
	QS.ItemID = 0;
	QS.Category = 0;
	QS.pRender = 0;
	delete(QS_Ptr);
	
	QS_Ptr = 0;
	MEM_WriteStatArr(QS_Data, slot, QS_Ptr);
	
	QS_RemoveBackGround();
};

func int QS_GetSlotItem(var int Slot)
{
	var int QS_Ptr; QS_Ptr = MEM_ReadStatArr(QS_Data, slot);
	if(!QS_Ptr){ return 0; };
	var CQuickSlot QS; QS = get(QS_Ptr);
	return QS.ItemID;
};

func void QS_CheckItem(var c_item it, var int slot)
{
	var int QS_Ptr; QS_Ptr = MEM_ReadStatArr(QS_Data, slot);
	
	if (!QS_Ptr)
	{
		return;
	};
	
	var CQuickSlot QS; QS = get(QS_Ptr);
	
	if (it.mainflag == ITEM_KAT_NF)									{	QS.Category = QS_Category_Weapon;	};
	if (STR_Len(it.scemeName))										{	QS.Category = QS_Category_Item;		};
	if (it.flags & ITEM_SHIELD)										{	QS.Category = QS_Category_Shield;	};
	if (it.flags & (ITEM_BOW | ITEM_CROSSBOW))						{	QS.Category = QS_Category_Ranged;	};
	if (it.flags & ITEM_TORCH)										{	QS.Category = QS_Category_Torch;	};
	if (it.mainflag == ITEM_KAT_RUNE)								{	QS.Category = QS_Category_Magic;	};
	if (it.mainflag == ITEM_KAT_POTIONS && STR_Len(it.scemeName))	{	QS.category = QS_Category_Potion;	};
};

func void QS_CompareSlots(var int InstID)
{
	var int i; i = 0;
	repeat(i, 10);
		if (InstID == QS_GetSlotItem(i))
		{
			QS_ClearSlot(i);
		};
	end;
};

func void QS_Do(var c_item it, var int slot)
{
	var int InstID; InstID = Hlp_GetInstanceID(it);
	if (QS_SlotIsEmpty(slot))
	{
		QS_CompareSlots(InstID);
		QS_CreateSlot(slot, InstID);
		QS_CheckItem(it, slot);
	}
	else
	{
		var int Old; Old = QS_GetSlotItem(slot);
		QS_ClearSlot(slot);
		if (InstID != Old)
		{
			QS_CompareSlots(InstID);
			QS_CreateSlot(slot, InstID);
			QS_CheckItem(it, slot);
		};
		Old = 0;
	};
};

func void QS_Magic(var int slot, var int key)
{
	var oCNpc her; her = Hlp_GetNpc(hero);
	
	var int spell;
	CALL_PtrParam(key);
	CALL__thiscall(her.mag_book, 4693088);        //oCSpell * __thiscall oCMag_Book::GetSpellByKey(int)       0x00479C60
	spell = CALL_RetValAsPtr();
	
	if (!spell)
	{
		if (QS_GetSlotItem(slot))
		{
			var c_item i; i = Hlp_GetItem(QS_GetSlotItem(slot));
			if (i.mainflag == ITEM_KAT_RUNE)
			{
				QS_ClearSlot(slot);
			};
		};        
		return; 
	};
	
	var int ID;
	CALL_PtrParam(spell);
	CALL__thiscall(her.mag_book, 4692992);        //oCItem * __thiscall oCMag_Book::GetSpellItem(oCSpell *)      0x00479C00    
	ID = CALL_RetValAsPtr();
	
	if (!ID)
	{
		return;
	};
	
	var c_item it; it = _^(ID);
	if (QS_GetSlotItem(slot) != Hlp_GetInstanceID(it))
	{
		QS_Do(it, slot);
	};
};

func int CanInsertThis(var c_item it)
{
	if (it.mainflag == ITEM_KAT_NF)				{	return true;	};
	if (STR_Len(it.scemeName))					{	return true;	};
	if (it.flags & ITEM_SHIELD)					{	return true;	};
	if (it.flags & (ITEM_BOW | ITEM_CROSSBOW))	{	return true;	};
	if (it.flags & ITEM_TORCH)					{	return true;	};
	if (it.mainflag == ITEM_KAT_RUNE)			{	return true;	};
	return false;
};

func void QS_Hook()
{
	var oCNpc her; her = Hlp_GetNpc(hero);
	var c_item it; it = _^(MEM_ReadInt(ESP+324+4));
	var int InstID; InstID = Hlp_GetInstanceID(it);
	
	if (!Npc_HasItems(hero, InstID)
	|| !her.inventory2_oCItemContainer_frame
	|| !CanInsertThis(it))
	{
		return;
	};
	
	if (MEM_KeyState(KEY_4) == KEY_PRESSED)	{	QS_Do(it, 4);	};
	if (MEM_KeyState(KEY_5) == KEY_PRESSED)	{	QS_Do(it, 5);	};
	if (MEM_KeyState(KEY_6) == KEY_PRESSED)	{	QS_Do(it, 6);	};
	if (MEM_KeyState(KEY_7) == KEY_PRESSED)	{	QS_Do(it, 7);	};
	if (MEM_KeyState(KEY_8) == KEY_PRESSED)	{	QS_Do(it, 8);	};
	if (MEM_KeyState(KEY_9) == KEY_PRESSED)	{	QS_Do(it, 9);	};
	if (MEM_KeyState(KEY_0) == KEY_PRESSED)	{	QS_Do(it, 0);	}; 
};

func void QS_UseItem(var int slot)
{
	var oCNpc her; her = Hlp_GetNpc(hero);
	
	var int QS_Ptr; QS_Ptr = MEM_ReadStatArr(QS_Data, slot);
	if (!QS_Ptr)
	{
		return;
	};
	var CQuickSlot QS; QS = get(QS_Ptr);
	
	if (QS.ItemID && QS.Category && QS.Category != QS_Category_Magic)
	{
		if (!QS_InvOpen)
		{
			var oCItem it; it = Hlp_GetItem(QS.ItemID);
			
			if ((QS.Category == QS_Category_Weapon
			|| QS.category == QS_Category_Shield)
			&& her.fmode == 0)
			{
				EquipWeapon(hero, QS.ItemID);
			};
			
			if (QS.Category == QS_Category_Item)
			{
				AI_RemoveWeapon(hero);
				AI_StandUpQuick(hero);
				AI_UseItem(hero, QS.ItemID);
			};
			           
			if (QS.Category == QS_Category_Potion)
			{
				AI_StandUpQuick(hero);
				AI_UseItem(hero, QS.ItemID);
			};
			        
			if (QS.Category == QS_Category_Torch
			&& her.fmode == 0
			&& !oCNpc_GetSlotItem(hero, "ZS_RIGHTHAND"))
			{
				var int islot; islot = oCNpc_GetSlotItem(hero, "ZS_LEFTHAND");
				var int DontUse; DontUse = false;
				if (islot) 
				{
					var c_item pTorch; pTorch = _^(iSlot);
					if (pTorch.flags & ITEM_TORCH) {}
					else { DontUse = true; };
				};
				
				if (!DontUse)
				{
					Mdl_RemoveOverlayMDS(hero, "HUMANS_Torch.mds");
					oCNpc_UseItem(hero, QS.ItemID);
					AI_StandUpQuick(hero);
				};
			};
			      
			if (QS.Category == QS_Category_Ranged && her.fmode == 0)
			{
				Equip_FarWeapon(hero, QS.ItemID);
			};
		};
	};
};

func void QS_Use()
{
	if (QS_InvOpen)
	{
		return;
	};
	if (MEM_KeyState(KEY_4) == KEY_PRESSED)	{	QS_UseItem(4);	};
	if (MEM_KeyState(KEY_5) == KEY_PRESSED)	{	QS_UseItem(5);	};
	if (MEM_KeyState(KEY_6) == KEY_PRESSED)	{	QS_UseItem(6);	};
	if (MEM_KeyState(KEY_7) == KEY_PRESSED)	{	QS_UseItem(7);	};
	if (MEM_KeyState(KEY_8) == KEY_PRESSED)	{	QS_UseItem(8);	};
	if (MEM_KeyState(KEY_9) == KEY_PRESSED)	{	QS_UseItem(9);	};
	if (MEM_KeyState(KEY_0) == KEY_PRESSED)	{	QS_UseItem(0);	};
};

func int InvIsOpen()
{
    var oCNpc her; her = Hlp_GetNpc(hero);
    return her.inventory2_oCItemContainer_frame;
};

func void OpenInv()
{
	if (ECX != _@(hero))
	{
		return;
	};
	QS_InvOpen = true;
	
	if (Hlp_IsValidHandle(QS_Background))
	{
		QS_MoveTo(QS_Background, Print_Screen[PS_X] / 2, QS_SlotBackMargin);
	};
	var int i; i = 0;
	repeat(i, 10);
		QS_RefreshRender(i);
	end;
};

func void CloseInv()
{
	QS_InvOpen = false;
	if (Hlp_IsValidHandle(QS_Background))
	{
		QS_MoveTo(QS_Background, Print_Screen[PS_X] / 2, Print_Screen[PS_Y] - QS_SlotBackMargin);
	};
	
	var int i; i = 0;
	repeat(i, 10);
		QS_RefreshRender(i);
	end;
};

func void QS_HasItems(var int slot)
{
	if(!Npc_HasItems(hero, QS_GetSlotItem(slot)))
	{
		QS_ClearSlot(slot);
	};
};

func void QS_PrintAmount(var int slot)
{
	var int QS_Ptr; QS_Ptr = MEM_ReadStatArr(QS_Data, slot);
	if (!QS_Ptr)
	{
		return;
	};
	var CQuickSlot QS; QS = get(QS_Ptr);
	var oCItem it; it = Hlp_GetItem(QS.itemID);
	if (QS.category == QS_Category_Item 
	|| QS.category == QS_Category_Potion
	|| QS.category == QS_Category_Torch
	|| Hlp_StrCmp(it.name, "Zwój"))
	{
		var int a; a = Npc_HasItems(hero, QS.itemID);
		if (Hlp_IsValidHandle(QS_Background))
		{
			var RenderItem r; r = get(QS.pRender);
			View_DeleteText(r.view);
			if (a > 1 && !MEM_Game.singleStep && InfoManager_HasFinished())
			{
				View_AddText(r.view, 4096, 4096, IntToString(a), PF_Font);
			};
		};
	};
};

func void QS_RenderWeapons()
{
	var c_item it;
	if (Npc_HasEquippedMeleeWeapon(hero))
	{
		it = Npc_GetEquippedMeleeWeapon(hero);
		if (QS_GetSlotItem(1) != Hlp_GetInstanceID(it))
		{
			if (!QS_SlotIsEmpty(1))
			{
				QS_ClearSlot(1);
			};
			QS_CreateSlot(1, Hlp_GetInstanceID(it));
		};
	}
	else if (Npc_HasReadiedMeleeWeapon(hero))
	{
		it = Npc_GetReadiedWeapon(hero);
		if (QS_GetSlotItem(1) != Hlp_GetInstanceID(it))
		{
			if (!QS_SlotIsEmpty(1))
			{
				QS_ClearSlot(1);
			};
			QS_CreateSlot(1, Hlp_GetInstanceID(it));
		};
	}
	else
	{
		if (!QS_SlotIsEmpty(1))
		{
			QS_ClearSlot(1);
		};
	};
	
	if (Npc_HasEquippedRangedWeapon(hero))
	{
		it = Npc_GetEquippedRangedWeapon(hero);
		if (QS_GetSlotItem(2) != Hlp_GetInstanceID(it))
		{
			if (!QS_SlotIsEmpty(2))
			{
				QS_ClearSlot(2);
			};
			QS_CreateSlot(2, Hlp_GetInstanceID(it));
		};
	}
	else if (Npc_HasReadiedRangedWeapon(hero))
	{
		it = Npc_GetReadiedWeapon(hero);
		if (QS_GetSlotItem(2) != Hlp_GetInstanceID(it))
		{
			if (!QS_SlotIsEmpty(2))
			{
				QS_ClearSlot(2);
			};
			QS_CreateSlot(2, Hlp_GetInstanceID(it));
		};
	}
	else
	{
		if (!QS_SlotIsEmpty(2))
		{
			QS_ClearSlot(2);
		};
	};
};

func void QS_AddNums()
{
	if (Hlp_IsValidHandle(QS_Background))
	{
		View_DeleteText(QS_Background);
		View_AddText(QS_Background, 35 * 16 ,40 * 64, "1", PF_Font);
		View_AddText(QS_Background, 85 * 16 ,40 * 64, "2", PF_Font);
		
		View_AddText(QS_Background, 145 * 16 ,40 * 64, "4", PF_Font);
		View_AddText(QS_Background, 195 * 16 ,40 * 64, "5", PF_Font);
		View_AddText(QS_Background, 245 * 16 ,40 * 64, "6", PF_Font);
		View_AddText(QS_Background, 295 * 16 ,40 * 64, "7", PF_Font);
		View_AddText(QS_Background, 345 * 16 ,40 * 64, "8", PF_Font);
		View_AddText(QS_Background, 395 * 16 ,40 * 64, "9", PF_Font);
		View_AddText(QS_Background, 445 * 16 ,40 * 64, "0", PF_Font);
	};
};

func void Close_InvFix()
{
	var oCNpc her; her = Hlp_GetNpc(hero);
	if (QS_InvOpen
	&& !her.inventory2_oCItemContainer_frame
	&& !her.inventory2_oCItemContainer_viewItemInfo)
	{
		QS_InvOpen = false;
		if (Hlp_IsValidHandle(QS_Background))
		{
			QS_MoveTo(QS_Background, Print_Screen[PS_X] / 2, Print_Screen[PS_Y] - QS_SlotBackMargin);
			var int i; i = 0;
			repeat(i, 10);
				QS_RefreshRender(i);
			end;
		};
	};
};

func void QS_DoFrame()
{
	if (Npc_IsInState(hero,ZS_Dead) == false) && (hero.attribute[0] > 1) && (movieMode == false)
	{
		if (Hlp_IsValidHandle(QS_Background))
		{
			QS_HasItems(4);
			QS_HasItems(5);
			QS_HasItems(6);
			QS_HasItems(7);
			QS_HasItems(8);
			QS_HasItems(9);
			QS_HasItems(0);
			
			QS_PrintAmount(4);
			QS_PrintAmount(5);
			QS_PrintAmount(6);
			QS_PrintAmount(7);
			QS_PrintAmount(8);
			QS_PrintAmount(9);
			QS_PrintAmount(0);
			
			QS_Use();
			QS_AddNums();
			
			if(MEM_Game.singleStep || !InfoManager_HasFinished())
			{
				View_DeleteText(QS_Background);
			};
		};
		QS_RenderWeapons();
		QS_Magic(4, KEY_4 - 4);
		QS_Magic(5, KEY_5 - 4);
		QS_Magic(6, KEY_6 - 4);
		QS_Magic(7, KEY_7 - 4);
		QS_Magic(8, KEY_8 - 4);
		QS_Magic(9, KEY_9 - 4);
		QS_Magic(0, KEY_0 - 4);
	};
	Close_InvFix();
};

func void QS_Init()
{
	const int INIT = 0;
	if (!INIT)
	{
		HookEngineF(oCNpc__OpenInventory, 6, OpenInv);
		HookEngineF(oCNpc__CloseInventory, 6, CloseInv);
		HookEngineF(6681344, 7, CloseInv);
		HookEngineF(7369071, 6, QS_Hook);
		INIT = 1;
	};
	
	FF_ApplyOnce(QS_DoFrame);
};
