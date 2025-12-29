///******************************************************************************************
/// SPL_PickLock
///******************************************************************************************

const int SPL_Cost_PickLock				=	10;		// Mana cost per lock tick
const int SPL_Time_PickLock				=	1500;	// MS per lock tick (not per mana!)

///******************************************************************************************
instance Spell_PickLock (C_Spell_Proto)
{
	spelltype							=	SPELL_NEUTRAL;
	canTurnDuringInvest					=	false;
	canChangeTargetDuringInvest			=	false;
	targetCollectAlgo					=	TARGET_COLLECT_FOCUS;
	targetCollectType					=	TARGET_TYPE_MOB;
	targetCollectRange					=	550;
	targetCollectAzi					=	60;
	targetCollectElev					=	60;
};

func void Spell_PickLock_ClearKeyBuffer()
{
	const int call = 0;
	if (CALL_Begin(call))
	{
		CALL__thiscall(zCInput_zinput, 5068240);
		call = CALL_End();
	};
};

func int Spell_Logic_PickLock (var int manaInvested)
{
	var oCNpc slf; slf = Hlp_GetNpc(self);
	var oCMobLockable mob;
	var int mobPtr;
	
	if (Npc_GetActiveSpellLevel(self) <= 1)
	{
		// G1 needs one level more for starting the FX
		if (!Hlp_Is_oCMobLockable(slf.focus_vob))
		{
			return SPL_SENDSTOP;
		};
		
		mob = _^(slf.focus_vob);
		
		if (!(mob.bitfield & oCMobLockable_bitfield_locked))
		{
			return SPL_SENDSTOP;
		};
		
		if (Hlp_StrCmp(mob.pickLockStr, ""))
		{
			Print(PRINT_NeverOpen);
			Spell_PickLock_ClearKeyBuffer();
			return SPL_SENDSTOP;
		};
		
		if (self.attribute[ATR_MANA] < SPL_Cost_PickLock)
		{
			return SPL_SENDSTOP;
		};
		
		// Remember verified focus
		mobPtr = slf.focus_vob;
		
		// Change in FX
		return SPL_NEXTLEVEL;
	}
	else if (!(manaInvested % SPL_Cost_PickLock))
	{
		mob = _^(slf.focus_vob);
		
		// Ensure focus was not changed
		if (slf.focus_vob != mobPtr)
		{
			return SPL_SENDSTOP;
		};
		
		//Für die Wahrnehmung so tun, als würde der Spieler das Mob benutzen
		slf.interactMob = slf.focus_vob;
		//Die anderen Npcs informieren:
		Npc_SendPassivePerc(self, PERC_ASSESSUSEMOB, self, self);
		//gegen Kamera zucken sofort wieder auf 0 setzen
		slf.interactMob = 0;
		
		//Länge des "RLRLRR"-Strings insgesamt:
		var int totalCharCount; totalCharCount = STR_Len(mob.pickLockStr);
		//davon schon aufgeschlossen:
		var int currCharCount; currCharCount = (mob.bitfield & oCMobLockable_bitfield_pickLockNr) >> 2;
		
		//jetzt einer mehr
		currCharCount += 1;
		
		//alten Wert im Bitfeld löschen, neuen reinschreiben:
		mob.bitfield = mob.bitfield & ~oCMobLockable_bitfield_pickLockNr;
		mob.bitfield = mob.bitfield | (currCharCount << 2);
		
		//Ists jetzt offen?
		if (currCharCount >= totalCharCount)
		{
			//gegebenenfalls entriegen
			mob.bitfield = mob.bitfield &~ oCMobLockable_bitfield_locked;
			Print("Zamek otwarty.");
			Snd_Play3D(self, "PICKLOCK_SUCCESS");
			
			// FX sound here, because VFX would also trigger it when aborting (releasing button prematurely)
			Snd_Play("MFX_PICKLOCK_CAST");
			
			// No handouts! SPL_SENDCAST does not decrease the mana
			self.attribute[ATR_MANA] -= 1;
			
			// Prevent the player from running forward after casting
			Spell_PickLock_ClearKeyBuffer();
			return SPL_SENDCAST;
		};
		
		//immerhin einen Schritt weiter
		Snd_Play3D(self, "PICKLOCK_SUCCESS");
		
		// Vary the timing
		var int timestep;
		timestep = SPL_Time_PickLock / SPL_Cost_PickLock; // Divide total time by mana needed
		timestep = Hlp_Random(timestep) + /*minimum*/80;        // Create oscillations
		Spell_PickLock.time_per_mana = IntToFloat(timestep); // Cast to Daedalus float
	};
	
	return SPL_RECEIVEINVEST;
	
//	return B_SpellLogic (self, default, SPL_Cost_Picklock, manaInvested);
};

func void Spell_Cast_PickLock(var int spellLevel)
{
//	B_SpellCast (self, default, SPL_Cost_Picklock);
};

///******************************************************************************************
func void Spell_PickLock_ResetFocus()
{
	var oCMag_Book mb; mb = _^(ECX);
	if (!mb.owner)
	{
		return;
	};
	
	var C_Npc slf; slf = _^(mb.owner);
	if (!Npc_IsPlayer(slf))
	{
		return;
	};
	
	// Should never happen, but safety first
	if (!_@(Focus_Magic))
	{
		return;
	};
	
	// Backup/reset Focus_Magic completely
	const int focusCopy = 0;
	if (!focusCopy)
	{
		// Create one-time backup per session
		MEM_Info("Spell_PickLock: Backing up original Focus_Magic values");
		focusCopy = MEM_Alloc(80);
		MEM_CopyBytes(_@(Focus_Magic), focusCopy, 80);
	}
	else
	{
		// Reset on every spell change
		MEM_CopyBytes(focusCopy, _@(Focus_Magic), 80);
	};
};

func void Spell_PickLock_Prio()
{
	var int caster; caster = MEM_ReadInt(ESP + 4);
	if (!caster)
	{
		return;
	};
	var C_Npc slf; slf = _^(caster);
	if (!Npc_IsPlayer(slf))
	{
		return;
	};
	
	var int spellID; spellID = MEM_ReadInt(ECX + 84);
	if (spellID == SPL_Picklock)
	{
		// Adjust the global(!) focus priorities temporarily(!) = until the active spell changes
		Focus_Magic.mob_prio = 1;
	};
};

func void Spell_PickLock_Focus()
{
	// Constructed case that will only happen for Spell_PickLock
	if (ECX == TARGET_TYPE_MOB)
	{
		var int vobPtr; vobPtr = MEM_ReadInt(ESP + 4);
		if (Hlp_Is_oCMobLockable(vobPtr))
		{
			var oCMobLockable mob; mob = _^(vobPtr);
			if (mob.bitfield & oCMobLockable_bitfield_locked)
			{
				ECX = 1;
			};
		};
	};
};

func void Spell_PickLock_Init()
{
	HookEngineF(4743108, 5, Spell_PickLock_Focus);
	HookEngineF(4737328, 7, Spell_PickLock_Prio);
	HookEngineF(4688320, 7, Spell_PickLock_ResetFocus);
	
	// Ensure that Focus_Magic is not empty (necessary for Spell_PickLock_Prio). For details see GothicFreeAim
	var int fMagicPtr; fMagicPtr = MEM_ReadIntArray(11208440, 5);
	if (fMagicPtr)
	{
		MEM_Info("Spell_PickLock: Reassigning Focus_Magic instance");
		Focus_Magic = _^(fMagicPtr);
	};
};
