///******************************************************************************************
/// MOD_Attributes
///******************************************************************************************

const int ATS_HeavyArmor				=	0;
const int ATS_IsObsessed				=	1;
const int ATS_PoisonPoints				=	2;
const int ATS_RestedTime				=	3;
const int ATS_ShieldPoints				=	4;
const int ATS_SprintState				=	5;
const int ATS_StealthTime				=	6;
const int ATS_UnderwaterTime			=	7;

const int ATS_DmgDealtIncr				=	10;
const int ATS_DmgTakenDecr				=	11;
const int ATS_InFightHits				=	12;
const int ATS_InFightTime				=	13;
const int ATS_CounterDmg				=	14;
const int ATS_CounterHit				=	15;
const int ATS_RedirectDmg				=	16;
const int ATS_ReflectDmg				=	17;
const int ATS_FinishTsh					=	18;

const int ATS_AfterSpellDmg				=	20;
const int ATS_AfterSpellHit				=	21;
const int ATS_BackstabDmg				=	22;
const int ATS_ComboDmg					=	23;
const int ATS_CritDmg					=	24;
const int ATS_ForceDmg					=	25;
const int ATS_GoldDmg					=	26;
const int ATS_MinDmg					=	27;
const int ATS_OverloadDmg				=	28;
const int ATS_OverloadTime				=	29;

const int ATS_AllyEnhancement			=	30;
const int ATS_NecroRestore				=	31;
const int ATS_OrcAmuletType				=	32;

const int ATS_INDEX_MAX					=	33;

var int ATS[ATS_INDEX_MAX];

///******************************************************************************************
/// ------ HeavyArmor ------
func void Equip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (ATS[ATS_HeavyArmor] == false)
	{
		ATS[ATS_HeavyArmor] = true;
		Bar_Delete(BarLoop_spBar);
	};
};
func void UnEquip_HeavyArmor()
{
	if (Npc_IsPlayer(self))
	&& (ATS[ATS_HeavyArmor] == true)
	{
		ATS[ATS_HeavyArmor] = false;
		Bar_Delete(BarLoop_spBar);
	};
};
func void Disable_HeavyArmor()
{
	if (ATS[ATS_HeavyArmor] != IMMUNE)
	{
		ATS[ATS_HeavyArmor] = IMMUNE;
		Bar_Delete(BarLoop_spBar);
	};
};

/// ------ Obsession ------
func void MOD_SetObsession(var int value)
{
	if (ATS[ATS_IsObsessed] == IMMUNE)
	{
		return;
	};
	
	if (!ATS[ATS_IsObsessed] && value)
	|| (ATS[ATS_IsObsessed] && !value)
	{
		Bar_Delete(BarLoop_mpBar);
	};
	ATS[ATS_IsObsessed] = value;
};

/// ------ Poison ------
func void MOD_SetPoison(var int value)
{
	if /*(!Npc_IsPlayer(self))
	||*/ (ATS[ATS_PoisonPoints] == -1)
	{
		return;
	};
	
	if (ATS[ATS_PoisonPoints] == 0 && value > 0)
	|| (ATS[ATS_PoisonPoints] > 0 && value <= 0)
	{
		Bar_Delete(BarLoop_hpBar);
	};
	ATS[ATS_PoisonPoints] = value;
};

/// ------ Refresh ------
func void Npc_AttributesRefresh()
{
	if (self.attribute[ATR_HITPOINTS] > self.attribute[ATR_HITPOINTS_MAX])
	{
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];
	};
	if (self.attribute[ATR_MANA] > self.attribute[ATR_MANA_MAX])
	{
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
	};
};

/// ------ Shield ------
func void Npc_SetShieldPoints(var C_Npc slf, var int points)
{
	if (Npc_IsPlayer(slf))
	{
		if (points > slf.attribute[ATR_HITPOINTS_MAX])
		{
			points = slf.attribute[ATR_HITPOINTS_MAX];
		};
		if (points == 0 || points > ATS[ATS_ShieldPoints])
		{
			ATS[ATS_ShieldPoints] = points;
		};
	};
};

/// ------ Stamina ------
func void Npc_StaminaRefresh(var C_Npc slf)
{
	if (slf.aivar[AIV_Stamina] < 0)
	{
		slf.aivar[AIV_Stamina] = 0;
	}
	else if (slf.aivar[AIV_Stamina] > slf.aivar[AIV_Stamina_MAX])
	{
		slf.aivar[AIV_Stamina] = slf.aivar[AIV_Stamina_MAX];
	};
};

/// ------ Stealth ------
func void MOD_SetStealth(var C_Npc slf, var int time)
{
	if (!Npc_IsPlayer(slf))
	{
		return;
	};
	
	if (time > 0)
	{
		if (!slf.aivar[AIV_Invisible])
		{
			//Npc_SetVisibilityPercent (slf, 10);
			slf.flags = slf.flags | NPC_FLAG_GHOST;
			
			if (selectedHeroSkin >= 0)
			{
				NpcFn_SetHeroVisual(slf, -selectedHeroSkin-1);
			};
			
			slf.aivar[AIV_Invisible] = true;
		};
		
		ATS[ATS_StealthTime] = time;
	}
	else
	{
		//Npc_SetVisibilityPercent (slf, 100);
		slf.flags = slf.flags & ~NPC_FLAG_GHOST;
		
		if (!Npc_IsInState(slf, ZS_TALK))
		{
			slf.aivar[AIV_Invisible] = false;
		};
		
		if (selectedHeroSkin < 0)
		{
			NpcFn_SetHeroVisual(slf, -selectedHeroSkin-1);
		};
		
		ATS[ATS_StealthTime] = 0;
	};
};
