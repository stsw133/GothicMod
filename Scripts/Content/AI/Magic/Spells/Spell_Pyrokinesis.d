///******************************************************************************************
///	SPL_Pyrokinesis
///******************************************************************************************

const int SPL_Cost_Pyrokinesis			=	200;
const int STEP_Pyrokinesis				=	50;
const int SPL_Damage_Pyrokinesis 		=	75;

///******************************************************************************************
instance Spell_Pyrokinesis (C_Spell_Proto)
{
	time_per_mana						=	30;
	damage_per_level					=	SPL_Damage_Pyrokinesis;
	damageType							=	DAM_MAGIC;
	canTurnDuringInvest					=	true;
};

func int Spell_Logic_Pyrokinesis (var int manaInvested)
{
	if (self.attribute[ATR_MANA] < STEP_Pyrokinesis)
	{
		return SPL_DONTINVEST;
	};
	
	if (manaInvested <= STEP_Pyrokinesis*1)
	{
		self.aivar[AIV_SpellLevel] = 1;
		return SPL_STATUS_CANINVEST_NO_MANADEC;
	}
	else if (manaInvested > (STEP_Pyrokinesis*1))
	&& (self.aivar[AIV_SpellLevel] <= 1)
	{
		self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - STEP_Pyrokinesis);
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 2;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_Pyrokinesis*2))
	&& (self.aivar[AIV_SpellLevel] <= 2)
	{
		self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - STEP_Pyrokinesis);
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 3;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_Pyrokinesis*3))
	&& (self.aivar[AIV_SpellLevel] <= 3)
	{
		self.attribute[ATR_MANA] = (self.attribute[ATR_MANA] - STEP_Pyrokinesis);
		
		if (self.attribute[ATR_MANA] < 0)
		{
	   		self.attribute[ATR_MANA] = 0;
		};
		
		self.aivar[AIV_SpellLevel] = 4;
		return SPL_NEXTLEVEL;
	}
	else if (manaInvested > (STEP_Pyrokinesis*3))
	&& (self.aivar[AIV_SpellLevel] == 4)
	{
		return SPL_DONTINVEST;
	};
	
	return SPL_STATUS_CANINVEST_NO_MANADEC;
};

func void Spell_Cast_Pyrokinesis (var int spellLevel)
{
	self.attribute[ATR_MANA] -= STEP_Pyrokinesis;
	
	if (self.attribute[ATR_MANA] < 0)
	{
	   self.attribute[ATR_MANA] = 0;
	};
	
	self.aivar[AIV_SelectSpell] += 1;
};
