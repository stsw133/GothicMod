///******************************************************************************************
///	B_AssessMagic
///******************************************************************************************

const int COLL_DONOTHING			=	0;
const int COLL_DOEVERYTHING			=	1 << 0;
const int COLL_APPLYDAMAGE			=	1 << 1;
const int COLL_APPLYHALVEDAMAGE		=	1 << 2;
const int COLL_APPLYDOUBLEDAMAGE	=	1 << 3;
const int COLL_APPLYVICTIMSTATE		=	1 << 4;
const int COLL_DONTKILL				=	1 << 5;

///******************************************************************************************
func int C_CanNpcCollideWithSpell (var int spellType)
{
	/// ------ Paladin ------
	if (spellType == SPL_PalHolyBolt)
	{
		if (C_NpcIsEvil(self))
		{
			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};
	
	if (spellType == SPL_PalDestroyEvil)
	{
		if (C_NpcIsUndead(self))
		{
			return COLL_DOEVERYTHING;
		};
		return COLL_DONOTHING;
	};
	
	/// ------ Mage ------
	if (spellType == SPL_MysBolt)
	{
		if (self.aivar[AIV_PartyMember] == true)
		{
			Npc_ChangeAttribute (self, ATR_HITPOINTS, SPL_Heal_MysBolt + (other.damage[DAM_INDEX_MAGIC] * SPL_Heal_MysBolt/100));
			return COLL_DONOTHING;
		};
		return COLL_DOEVERYTHING;
	};
	
	if (spellType == SPL_MysRoot)
	{
		if (C_NpcIsDown(self))
		|| (C_BodyStateContains(self,BS_SWIM))
		|| (C_BodyStateContains(self,BS_DIVE))
//		|| (C_NpcIsGateGuard(self) == true)
		|| (self.guild == GIL_DEMON)
		|| (self.guild == GIL_TROLL)
		|| (self.guild == GIL_DRAGON)
		{
			return COLL_DONOTHING;
		};
		return COLL_DOEVERYTHING;
	};
	
	if (spellType == SPL_GeoStone)
	{
		if (self.attribute[ATR_HITPOINTS] > 1)
		{
			return COLL_APPLYDAMAGE | COLL_DONTKILL;
		};
		return COLL_DOEVERYTHING;
	};
	
	/// ------ Other ------
	
	/// ------ Dementor ------
	if (other.guild == GIL_DMT)
	{
		if (self.guild == GIL_DMT)
		{
			return COLL_DONOTHING;
		}
		else if (Hlp_GetInstanceID(self) == Hlp_GetInstanceID(hero))
		{
			return COLL_APPLYHALVEDAMAGE;
		};
	};
	
	/// ------ WzA ------
	if (spellType == SPL_cB_Fireball)
	{
		if (!(Hlp_GetInstanceID(self) == WzA_17010_Setron)) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_cR_Fireball)
	{
		if (!(Hlp_GetInstanceID(self) == WzA_17011_Azazel)) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_cG_Fireball)
	{
		if (!(Hlp_GetInstanceID(self) == WzA_17012_Methion)) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	}
	else if (spellType == SPL_cY_Fireball)
	{
		if (!(Hlp_GetInstanceID(self) == WzA_17013_Yataru)) { return COLL_APPLYHALVEDAMAGE; };
		return COLL_DOEVERYTHING;
	};
	
	/// ------ else ------
	return COLL_DOEVERYTHING;
};
