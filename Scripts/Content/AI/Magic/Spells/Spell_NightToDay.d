///******************************************************************************************
///	SPL_NightToDay
///******************************************************************************************

const int SPL_Cost_NightToDay			=	50;

///******************************************************************************************
instance Spell_NightToDay (C_Spell_Proto)
{
	time_per_mana						=	0;
	spelltype 							=	SPELL_NEUTRAL;
	targetCollectAlgo					=	TARGET_COLLECT_NONE;
};

func int Spell_Logic_NightToDay (var int manaInvested)
{
	if (Npc_GetActiveSpellIsScroll(self) && self.attribute[ATR_MANA] >= SPL_Cost_NightToDay/SPL_Cost_Scroll)
	|| (self.attribute[ATR_MANA] >= SPL_Cost_NightToDay)
	{
		if (Wld_IsTime(20,00, 08,00))
		{
			return SPL_SENDCAST;
		}
		else
		{
			Print("U¿ycie dozwolone w godzinach od 20:00 do 8:00");
		};
	};
	
	return SPL_SENDSTOP;
};

func void Spell_Cast_NightToDay()
{
	if (Npc_GetActiveSpellIsScroll(self))
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NightToDay/SPL_Cost_Scroll;
	}
	else
	{
		self.attribute[ATR_MANA] -= SPL_Cost_NightToDay;
	};
	
	Snd_Play("MFX_Transform_Cast");
	var int world_timer; world_timer = MEM_Timer.frameTimeFloat;
	var int acceleration; acceleration = fracf(11750000, 100);
	world_timer = mulf(world_timer, subf(acceleration, mkf(1)));
	MEM_WorldTimer.worldTime = world_timer;
	
	self.aivar[AIV_SelectSpell] += 1;
};
