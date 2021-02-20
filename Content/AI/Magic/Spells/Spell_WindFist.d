//******************************************************************************************
//	SPL_WindFist
//******************************************************************************************

const int SPL_Cost_WindFist				=	80; //4*20
const int STEP_WindFist					=	20;
const int SPL_Damage_WindFist			=	50;

//******************************************************************************************
INSTANCE Spell_WindFist (C_Spell_Proto)
{
	time_per_mana						=	30;
	damage_per_level					=	SPL_Damage_WindFist;
	damageType							=	DAM_FLY;
	targetCollectRange					=	1000;
};

func int Spell_Logic_WindFist (var int manaInvested)
{
	if (self.attribute[ATR_MANA] < STEP_WindFist)
	{
		return SPL_DONTINVEST;
	};
	
	if (manaInvested <= STEP_WindFist*1)
	{
		self.aivar[AIV_SpellLevel] = 1;
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	}
	else if (manaInvested > (STEP_WindFist*1))
	&& (self.aivar[AIV_SpellLevel] <= 1)
	{
		self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - STEP_WindFist);
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 2;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_WindFist*2))
	&& (self.aivar[AIV_SpellLevel] <= 2)
	{
		self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - STEP_WindFist);
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 3;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_WindFist*3))
	&& (self.aivar[AIV_SpellLevel] <= 3)
	{
		self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - STEP_WindFist);
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 4;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_WindFist*3))
	&& (self.aivar[AIV_SpellLevel] == 4)
	{
		return SPL_DONTINVEST;
	};
	
	return SPL_STATUS_CANINVEST_NO_MANADEC;
};

func void Spell_Cast_WindFist (var int spellLevel)
{
	self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - STEP_WindFist);
	
	if (self.attribute[ATR_MANA] < 0)
	{
		self.attribute[ATR_MANA] = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
