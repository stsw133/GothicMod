///******************************************************************************************
///	MOD_Masteries
///******************************************************************************************
/*
var int masType;		/// określa typ specjalizacji bojowej głównego bohatera
var int masFight;		/// czas trwania walki, liczone od uderzenia w przeciwnika

const int masType_FGT	=	1;	/// wojownik
								/// zwiększające się w czasie nieuchronne obrażenia
const int masType_RNG	=	2;	/// strzelec
								/// dodatkowe obrażenia zależne od odległości od przeciwnika
const int masType_ASA	=	3;	/// zabójca
								/// przeciwnik ginie gdy jest poniżej pewnego poziomu zdrowia
const int masType_BER	=	4;	/// berserker
								/// co trzeci atak przywraca zdrowie
const int masType_CON	=	5;	/// kontroler
								/// zadanie obrażeń przyzywa insekty w pobliżu wroga
const int masType_ENC	=	6;	/// zaklinacz
								/// mikstury trwają dłużej a pancerze dają lepszą ochronę
const int masType_ILU	=	7;	/// iluzjonista
								/// zaatakowanie wroga tworzy jego duchową kopię atakującą go
const int masType_DST	=	8;	/// destruktor
								/// dodatkowe obrażenia zależne od brakującego zdrowia przeciwnika
const int masType_JUG	=	9;	/// moloch
								/// dodatkowe obrażenia zależne od dodatkowego maksymalnego zdrowia
const int masType_COL	=	10;	/// kolos
								/// zyskujesz dodatkowe zdrowie co poziom
const int masType_TRP	=	11;	/// szturmowiec
								/// regeneracja brakującego zdrowia w trakcie walki
const int masType_GRD	=	12;	/// strażnik
								/// sojusznicy otrzymują zdrowie na bazie zdrowia gracza podczas ataków

///******************************************************************************************
func void MASTERYDAMAGE_CHECK()
{
	hero.aivar[AIV_ComboHit] += 1;

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_FGT)
	&& (Npc_IsInFightMode(hero,FMODE_MELEE))
	&& (hero.damage[DAM_INDEX_EDGE] < hero.attribute[ATR_STRENGTH]/10)
	{
		hero.damage[DAM_INDEX_EDGE] += 1;	hero.damage[DAM_INDEX_BLUNT] += 1;	//10% ATR_STRENGTH
		Print(IntToString(hero.damage[DAM_INDEX_EDGE]));
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_RNG)
	&& (Npc_IsInFightMode(hero,FMODE_FAR))
	{
		var int distDamage;	distDamage = (hero.attribute[ATR_DEXTERITY]*(Npc_GetDistToNpc(hero,self)))/5000;
		Print(IntToString(distDamage));
		B_MagicHurtNpc (hero, self, distDamage);	//1% range per 50 ATR_DEXTERITY
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_ASA)
	{
		if ((Npc_IsInFightMode(hero,FMODE_MELEE)) && (self.attribute[ATR_HITPOINTS] <= hero.attribute[ATR_STRENGTH]/2))
		|| ((Npc_IsInFightMode(hero,FMODE_FAR)) && (self.attribute[ATR_HITPOINTS] <= hero.attribute[ATR_DEXTERITY]/2))
		{
			Print(IntToString(self.attribute[ATR_HITPOINTS]));
			B_MagicHurtNpc (hero, self, self.attribute[ATR_HITPOINTS]);	//50% ATR_
		};
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_BER)
	&& (hero.aivar[AIV_ComboHit]%3 == 0)
	{
		if (Npc_IsInFightMode(hero,FMODE_MELEE))
		{
			Print(IntToString(hero.attribute[ATR_STRENGTH]/5));
			Npc_ChangeAttribute (hero, ATR_HITPOINTS, hero.attribute[ATR_STRENGTH]/5);	//20% ATR_
		}
		else if (Npc_IsInFightMode(hero,FMODE_FAR))
		{
			Print(IntToString(hero.attribute[ATR_DEXTERITY]/5));
			Npc_ChangeAttribute (hero, ATR_HITPOINTS, hero.attribute[ATR_DEXTERITY]/5);	//20% ATR_
		};
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_CON)
	{
		var int swarmCount;	swarmCount = (hero.attribute[ATR_HITPOINTS_MAX]-hero.attribute[ATR_HITPOINTS])/(50*HP_PER_LP);	//every 200 lost HP
		Print(IntToString(swarmCount));
		Wld_SpawnNpcRange (hero, Swarm, swarmCount, 300);	//max. 100 swarm's ATR_STRENGTH
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_ENC)
	{
		Print(IntToString((sattribute[ATR_ENERGY_MAX]-sattribute[ATR_ENERGY])/5));
		sattribute[ATR_ENERGY] += (sattribute[ATR_ENERGY_MAX]-sattribute[ATR_ENERGY])/5;	//20% lost ENE
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_ILU)
	{
		if (hero.attribute[ATR_MANA] >= hero.attribute[ATR_MANA_MAX]/2)
		{
			Print(IntToString(hero.attribute[ATR_MANA]/10));
			B_MagicHurtNpc (hero, self, hero.attribute[ATR_MANA]/10);	//10 + 10% ATR_MANA
			hero.attribute[ATR_MANA] -= hero.attribute[ATR_MANA]/5;
		}
		else
		{
			Npc_ChangeAttribute (hero, ATR_MANA, hero.level);	//max. 50
		};
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_DST)
	{
		Print(IntToString(hero.attribute[ATR_MANA_MAX]/20));
		if (Npc_IsInFightMode(hero,FMODE_MAGIC))
		{
			B_MagicHurtNpc (hero, self, hero.attribute[ATR_MANA_MAX]/20);	//5% ATR_MANA_MAX
		};
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_JUG)
	{
		Print(IntToString((hero.attribute[ATR_HITPOINTS_MAX]-(100*HP_PER_LP))/20));
		B_MagicHurtNpc (hero, self, (hero.attribute[ATR_HITPOINTS_MAX]-(100*HP_PER_LP))/20);	//5% bonus ATR_HITPOINTS_MAX
	};

	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_TRP)
	{
		var int lostHP;	lostHP = (self.attribute[ATR_HITPOINTS_MAX]-self.attribute[ATR_HITPOINTS])/25;
		Print(IntToString(lostHP));
		B_MagicHurtNpc (hero, self, lostHP);	//max. 4% lost HP
	};
};

///******************************************************************************************
func void MASTERYTIME_CHECK()
{
	if (masFight > 0)
	{
		if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_FGT)
		&& (Npc_IsInFightMode(hero,FMODE_MELEE))
		&& (hero.damage[DAM_INDEX_EDGE] < hero.attribute[ATR_STRENGTH]/10)
		{
			hero.damage[DAM_INDEX_EDGE] += 1;	hero.damage[DAM_INDEX_BLUNT] += 1;	//10% ATR_STRENGTH
			Print(IntToString(hero.damage[DAM_INDEX_EDGE]));
		};

		if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_COL)
		{
			var int lostHP;	lostHP = (hero.attribute[ATR_HITPOINTS_MAX]-hero.attribute[ATR_HITPOINTS])/50;
			Npc_ChangeAttribute (hero, ATR_HITPOINTS, lostHP);	//max. 2% lost HP
			Print(IntToString(lostHP));
		};

		masFight -= 1;
		if (masFight == 0)
		{
			if (hero.damage[DAM_INDEX_EDGE] > 0)
			{
				hero.damage[DAM_INDEX_BLUNT] = 0;
				hero.damage[DAM_INDEX_EDGE] = 0;
			};
			hero.aivar[AIV_ComboHit] = 0;
		};
	};
};

///******************************************************************************************
func void MASTERYALLIES_CHECK()
{
	if (Npc_GetTalentSkill(hero,NPC_TALENT_MAINMASTERY) == masType_GRD)
	{
		Print(IntToString(hero.attribute[ATR_HITPOINTS_MAX]/100));
		Npc_ChangeAttribute (other, ATR_HITPOINTS, hero.attribute[ATR_HITPOINTS_MAX]/100);	//max. 1%
	};
};
*/
///******************************************************************************************
func void SPECIALWEAPONDAMAGE_CHECK()
{
//	if (PenetratingWeapon != FMODE_NONE)
//	&& (Npc_IsInFightMode(other,PenetratingWeapon))
//	if (self.aivar[AIV_Penetrated] < other.attribute[ATR_STRENGTH]/10)
//	&& ((self.protection[PROT_BLUNT] >= 1) && (self.protection[PROT_EDGE] >= 1) && (self.protection[PROT_POINT] >= 1))
//	{
//		self.protection[PROT_BLUNT] -= 1;
//		self.protection[PROT_EDGE] -= 1;
//		self.protection[PROT_POINT] -= 1;
//		self.aivar[AIV_Penetrated] += 1;
//	};
	
	var int dmg;
	
	if (other.aivar[AIV_LifeSteal] > 0)
	{
		if (other.guild > GIL_SEPERATOR_HUM)
		{
			dmg = other.attribute[ATR_STRENGTH] - self.protection[PROT_EDGE];
			if (dmg > 0)
			{
				Npc_ChangeAttribute (other, ATR_HITPOINTS, (other.aivar[AIV_LifeSteal] * dmg)/100);
			};
		}
		else if (Npc_IsInFightMode(other, FMODE_MELEE))
		{
			dmg = other.attribute[ATR_STRENGTH] /*+ Npc_GetEquippedMeleeWeapon(other).damageTotal*/ - self.protection[PROT_EDGE];
			if (dmg > 0)
			{
				Npc_ChangeAttribute (other, ATR_HITPOINTS, other.aivar[AIV_LifeSteal]/2 + (other.aivar[AIV_LifeSteal]*dmg/200));
			};
		};
	};
};
