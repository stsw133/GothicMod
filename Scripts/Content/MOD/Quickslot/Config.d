// Config
const string 	QS_BackgroundTexture 		= "QuickSlots_G3.TGA";
const string 	QS_SlotFrameInInvTexture 	= "QS_ActiveSlotInv.TGA";
const int 		QS_posY_OpenInv				= 0;	//128
const int 		QS_SizeX					= 600;
const int 		QS_SizeY					= 150;
const int 		QS_SlotPosY					= 72;
const int 		QS_SlotSize					= 64;

// Debugging
var int QS_DebugLevel;	
const int QS_Debug_Off 			= 0;
const int QS_Debug_Only_zSpy 	= 1;
const int QS_Debug_All 			= 2;

func int QS_RenderOnScreen()
{
	var oCNpc her; her = Hlp_GetNpc(hero);
	
	if (MEM_Game.singleStep
	|| !MEM_Game.game_drawall
	|| !Hlp_IsValidHandle(QS_BackgroundView)
	|| !InfoManager_hasFinished()
	|| !MEM_Game.showPlayerStatus
	|| hero.guild > GIL_SEPERATOR_HUM
	|| Npc_IsInState(hero, ZS_Dead)
	|| her.interactMob)	{
		return false;
	};
	
	return true;
};

func int QS_CanUseItem(var oCNpc her)
{
	if(!QS_RenderOnScreen()
	|| !(C_BodyStateContains(hero, BS_STAND) 
		|| C_BodyStateContains(hero, BS_WALK)
		|| C_BodyStateContains(hero, BS_SNEAK) 
		|| C_BodyStateContains(hero, BS_RUN) 
		|| C_BodyStateContains(hero, BS_SPRINT))	
	|| QS_IsInvOpen()
	|| MEM_ReadInt(zCConsole__cur_console)
	|| Npc_IsInState(hero, ZS_Unconscious))
	{
		return false;
	};
	return true;
};	

// Get position for render item
func int QS_GetPosX(var int nr)
{
	if(nr == 1)	{ return 52; };
	if(nr == 2)	{ return 107; };
	if(nr == 3)	{ return 162; };
	if(nr == 4)	{ return 217; };
	if(nr == 5)	{ return 272; };
	if(nr == 6)	{ return 327; };
	if(nr == 7)	{ return 382; };
	if(nr == 8)	{ return 438; };
	if(nr == 9)	{ return 493; };
	if(nr == 0)	{ return 548; };
};

func int QS_CanEquipItem(var C_NPC npc, var int itemPtr)
{
	var c_npc slf; slf = Hlp_GetNpc(npc);
	
	CALL_PtrParam	(itemPtr);
	CALL__thiscall	(_@(slf), oCNpc__CanUseItem);
	return CALL_RetValAsInt();
};

// Funkcja sprawdza, czy NPC jest w stanie wyciągnąć broń.
func int QS_CanDrawWeapon()
{
	var int canDrawWeapon; 
	CALL__thiscall(_@(hero), oCNpc__CanDrawWeapon);
	canDrawWeapon = CALL_RetValAsInt();
	
	var int checkAnis; checkAnis = 	QS_IsAniActive("T_MAG_2_MAGRUN") 	|| 
									QS_IsAniActive("T_MAGMOVE_2_MOVE") 	||
									QS_IsAniActive("T_MOVE_2_MAGMOVE");
																
	if(canDrawWeapon && !checkAnis) {
		return true;
	};
	
	return false;
};

// Set color of slot number (inventory)
func int QS_GetSlotColor()	{
	return RGBA(255, 180, 0, 255);
};