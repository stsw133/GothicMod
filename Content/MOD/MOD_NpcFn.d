///******************************************************************************************
///	MOD_NpcFn
///******************************************************************************************

/// ------ Energy ------
func void Npc_EnergyMaxRefresh (var C_NPC slf)
{
	sattribute[ATR_ENERGY_MAX] = 100 + slf.level + slf.attribute[ATR_STRENGTH]/10 + slf.attribute[ATR_DEXTERITY]/10 + slf.attribute[ATR_HITPOINTS_MAX]/10/HP_PER_LP + sattribute[ATR_ENERGY_BONUS];
};
func void Npc_EnergyRefresh()
{
	if (sattribute[ATR_ENERGY] < 0)
	{
		sattribute[ATR_ENERGY] = 0;
	}
	else if (sattribute[ATR_ENERGY] > sattribute[ATR_ENERGY_MAX])
	{
		sattribute[ATR_ENERGY] = sattribute[ATR_ENERGY_MAX];
	};
};

/// ------ Power ------
func void Npc_SetPowerPoints(var C_NPC slf, var int points)
{
	slf.damage[DAM_INDEX_MAGIC] = points;
	Npc_SetTalentValue (slf, NPC_TALENT_MAGIC, slf.damage[DAM_INDEX_MAGIC]);
};
func void Npc_AddPowerPoints(var C_NPC slf, var int points)
{
	Npc_SetPowerPoints (slf, slf.damage[DAM_INDEX_MAGIC] + points);
};

///******************************************************************************************
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
	if (Npc_IsPlayer(self))
	{
		Npc_EnergyMaxRefresh(self);
	};
	//Npc_AddPowerPoints(self, 0);
};

///******************************************************************************************
///	MOD_PotionRegenerate
///******************************************************************************************

var int hppottime;		/// HP potion duration
var int mppottime;		/// MP potion duration
var int enepottime;		/// ENE potion duration

///******************************************************************************************
func void PotionRG_ADD (var int attribute, var int points)
{
	if (attribute == ATR_HITPOINTS)
	{
		if (hppottime == 0)
		{
			Wld_PlayEffect ("SPELLFX_HEALTHPOTION", hero, hero, 0, 0, 0, false);
		};
		if (hppottime < points)
		{
			hppottime = points;
		};
	}
	else if (attribute == ATR_MANA)
	{
		if (mppottime == 0)
		{
			Wld_PlayEffect ("SPELLFX_MANAPOTION", hero, hero, 0, 0, 0, false);
		};
		if (mppottime < points)
		{
			mppottime = points;
		};
	}
	else if (attribute == ATR_ENERGY_MAX)
	{
		if (enepottime == 0)
		{
			Wld_PlayEffect ("SPELLFX_YELLOWPOTION", hero, hero, 0, 0, 0, false);
		};
		if (enepottime < points)
		{
			enepottime = points;
		};
	};
};
///******************************************************************************************
func void Potions_Process()
{
	if (hppottime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_HITPOINTS, hero.attribute[ATR_HITPOINTS_MAX] / 10);
		hppottime -= 1;
		if (hppottime == 0)
		{
			Wld_StopEffect("SPELLFX_HEALTHPOTION");
		};
	};
	if (mppottime > 0)
	{
		Npc_ChangeAttribute (hero, ATR_MANA, hero.attribute[ATR_MANA_MAX] / 10);
		mppottime -= 1;
		if (mppottime == 0)
		{
			Wld_StopEffect("SPELLFX_MANAPOTION");
		};
	};
	if (enepottime > 0)
	{
		sattribute[ATR_ENERGY] += sattribute[ATR_ENERGY_MAX] / 10;
		enepottime -= 1;
		if (enepottime == 0)
		{
			Wld_StopEffect("SPELLFX_YELLOWPOTION");
		};
	};
};
