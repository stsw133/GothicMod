///******************************************************************************************
prototype ItemPR_Misc (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	TEXT[5]						=	NAME_Value;
};

///******************************************************************************************
/// Alchemy
///******************************************************************************************
instance ItMi_Flask (ItemPR_Misc)
{
	name						=	"Menzurka";
	value						=	5;
	visual						=	"ItMi_Flask.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[0]						=	"Baza do tworzenia";
	TEXT[1]						=	"mikstur alchemicznych.";
	COUNT[5]					=	value;
};

instance ItMi_HolyWater (ItemPR_Misc)
{
	name						=	"Woda œwiêcona";
	value						=	15;
	visual						=	"ItMi_HolyWater.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik uleczenia z opêtania";
	TEXT[1]						=	"oraz bazowy sk³adnik";
	TEXT[2]						=	"run i zwojów paladynów.";
	COUNT[5]					=	value;
};

instance ItMi_Quicksilver (ItemPR_Misc)
{
	name						=	"Rtêæ";
	value						=	50;
	visual						=	"ItMi_Quicksilver.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik mikstur transformacji,";
	TEXT[1]						=	"run i zwojów emanuj¹cych aury.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Enchanting
///******************************************************************************************
instance ItMi_Ink (ItemPR_Misc)
{
	name						=	"Magiczny atrament";
	value						=	30;
	visual						=	"ItMi_Ink.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[0]						=	"Baza do tworzenia";
	TEXT[1]						=	"magicznych zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_MagicPowder (ItemPR_Misc)
{
	name						=	"Magiczny proszek";
	value						=	20;
	visual						=	"ItMi_Pocket_Blue.3ds";
	material					=	MAT_LEATHER;
	
	effect						=	"SPELLFX_MANAPOTION";
	
	description					=	name;
	TEXT[0]						=	"Z magicznej rudy.";
	TEXT[1]						=	"Sk³adnik przy tworzeniu";
	TEXT[2]						=	"magicznych przedmiotów.";
	COUNT[5]					=	value;
};

instance ItMi_RuneBlank (ItemPR_Misc)
{
	name						=	"Kamieñ runiczny";
	value						=	50;
	visual						=	"ItMi_RuneBlank.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[0]						=	"Baza do tworzenia";
	TEXT[1]						=	"magicznych run.";
	COUNT[5]					=	value;
};

instance ItMi_Scrolls (ItemPR_Misc)
{
	name						=	"Zestaw pergaminów";
	value						=	20;
	visual						=	"ADDON_DUNGEON_SCROLLS_01.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	TEXT[0]						=	"Baza do tworzenia";
	TEXT[1]						=	"magicznych zwojów.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Fletchery
///******************************************************************************************
instance ItMi_Arrowhead (ItemPR_Misc)
{
	name						=	"Grot";
	value						=	3;
	visual						=	"ItMi_Arrowhead.3ds";
	
	description					=	name;
	TEXT[0]						=	"Baza do tworzenia amunicji.";
	COUNT[5]					=	value;
};

instance ItMi_BlackPowder (ItemPR_Misc)
{
	name						=	"Czarny proch";
	value						=	20;
	visual						=	"ItMi_Pocket_Black.3ds";
	material					=	MAT_LEATHER;
	
	description					=	name;
	TEXT[0]						=	"Z wêgla, siarki i 2 saletr.";
	TEXT[1]						=	"Sk³adnik wybuchowej amunicji,";
	TEXT[2]						=	"artefaktów, run i zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_Wood (ItemPR_Misc)
{
	name						=	"Drewno";
	value						=	10;
	visual						=	"ItMi_Wood.3ds";
	
	description					=	name;
	TEXT[0]						=	"U¿ywane do tworzenia amunicji.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Resources
///******************************************************************************************
prototype ItemPR_Nugget (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	material					=	MAT_STONE;
	
	TEXT[5]						=	NAME_Value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

///******************************************************************************************
instance ItMi_Calcium (ItemPR_Nugget)
{
	name						=	"Wapno";
	value						=	10;
	visual						=	"ItMi_Calcium.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik pergaminów,";
	TEXT[1]						=	"niektórych run i zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_Coal (ItemPR_Nugget)
{
	name						=	"Wêgiel";
	value						=	8;
	visual						=	"ItMi_Coal.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik atramentu, stali, prochu,";
	TEXT[1]						=	"niektórych run i zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_Iron (ItemPR_Nugget)
{
	name						=	"Bry³a ¿elaza";
	value						=	18;
	visual						=	"ItMi_Iron.3ds";
	
	description					=	name;
	TEXT[0]						=	"Sk³adnik surowej stali, wytrychów";
	TEXT[1]						=	"oraz ¿elaznych grotów.";
	COUNT[5]					=	value;
};

instance ItMi_Quartz (ItemPR_Nugget)
{
	name						=	"Kwarcyt";
	value						=	15;
	visual						=	"ItMi_Quartz.3ds";
	
	description					=	name;
	TEXT[0]						=	"Bazowy sk³adnik";
	TEXT[1]						=	"run i zwojów geomancji";
	TEXT[2]						=	"oraz kwarcytowych strza³.";
	COUNT[5]					=	value;
	//INV_ZBIAS					=	INVCAM_ENTF_RING_STANDARD;
};

instance ItMi_RockCrystal (ItemPR_Nugget)
{
	name						=	"Kryszta³";
	value						=	15;
	visual						=	"ItMi_ShiningCrystal.3ds";
	
	effect						=	"SPELLFX_CRYSTALGLOW";
	
	description					=	name;
	TEXT[0]						=	"Bazowy sk³adnik";
	TEXT[1]						=	"run i zwojów elementaryzmu.";
	COUNT[5]					=	value;
};

instance ItMi_Saltpeter (ItemPR_Nugget)
{
	name						=	"Saletra";
	value						=	40;
	visual						=	"ItMi_Saltpeter.3ds";
	
	description					=	name;
	TEXT[0]						=	"U¿ywana jako sk³adnik";
	TEXT[1]						=	"w pirotechnice.";
	COUNT[5]					=	value;
};

instance ItMi_Sulfur (ItemPR_Nugget)
{
	name						=	"Siarka";
	value						=	10;
	visual						=	"ItMi_Sulfur.3ds";
	
	description					=	name;
	TEXT[0]						=	"U¿ywana jako sk³adnik";
	TEXT[1]						=	"w pirotechnice.";
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMi_Nugget (ItemPR_Nugget)
{
	name						=	"Magiczna bry³ka";
	value						=	100;
	visual						=	"ItMi_Nugget.3ds";
	
	effect						=	"SPELLFX_MANAPOTION";
	
	description					=	"Niebieska magiczna ruda";
	TEXT[0]						=	"U¿ywana jako sk³adnik";
	TEXT[1]						=	"tworzenia magicznych broni.";
	COUNT[5]					=	value;
};

instance ItMi_RedNugget (ItemPR_Nugget)
{
	name						=	"Magiczna bry³ka";
	value						=	100;
	visual						=	"ItMi_RedNugget.3ds";
	
	effect						=	"SPELLFX_HEALTHPOTION";
	
	description					=	"Czerwona magiczna ruda";
	TEXT[0]						=	"U¿ywana jako sk³adnik";
	TEXT[1]						=	"tworzenia ognistych broni.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Smith
///******************************************************************************************
prototype ItemPR_Swordraw (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	20;
	material					=	MAT_METAL;
	
	TEXT[0]						=	"Baza do tworzenia";
	TEXT[1]						=	"broni do walki wrêcz.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItMiSwordblade	(ItemPR_Swordraw)
{
	name						=	"Ostrze";
	visual						=	"ItMiSwordblade.3ds";
	description					=	name;
};

instance ItMiSwordbladehot (ItemPR_Swordraw)
{
	name						=	"Gor¹ce ostrze";
	visual						=	"ItMiSwordbladehot.3ds";
	description					=	name;
};

instance ItMiSwordraw (ItemPR_Swordraw)
{
	name						=	"Surowa stal";
	visual						=	"ItMiSwordraw.3ds";
	description					=	name;
};

instance ItMiSwordrawhot (ItemPR_Swordraw)
{
	name						=	"Gor¹ca stal";
	visual						=	"ItMiSwordrawhot.3ds";
	description					=	name;
};

///******************************************************************************************
/// Tools
///******************************************************************************************
instance ItMi_Alarmhorn (ItemPR_Misc)
{
	name						=	"Róg orkowego herszta";
	value						=	20;
	visual						=	"ItMi_Alarmhorn.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"HORN";
	on_state[0]					=	Use_ItMi_Alarmhorn;
	
	description					=	name;
	TEXT[0]						=	"U¿ycie zwabia orków.";
	COUNT[5]					=	value;
};
func void Use_ItMi_Alarmhorn_Effect(var C_Npc oth, var C_Npc slf)
{
	if (Npc_IsPlayer(oth))
	{
		return;
	};
	
	if ((oth.senses & SENSE_HEAR) && (Npc_GetDistToNpc(slf, oth) < oth.senses_range*5))
	{
		AI_Wait		(oth, 2);
		B_ResetAll	(oth);
		AI_StandUp	(oth);
		
		if (oth.guild > GIL_SEPERATOR_ORC)
		{
			AI_SetWalkmode (oth, NPC_RUN);
			AI_GotoNpc (oth, slf);
		}
		else
		{
			B_TurnToNpc (oth, slf);
			B_LookAtNpc (oth, slf);
		};
	};
};
func void Use_ItMi_Alarmhorn()
{
	MOD_Broadcast (self, Use_ItMi_Alarmhorn_Effect);
};

instance ItMi_Broom (ItemPR_Misc)
{
	name						=	"Miot³a";
	value						=	10;
	visual						=	"ItMi_Broom.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"BROOM";
	on_state[0]					=	Use_ItMi_Broom;
	
	description					=	name;
	COUNT[5]					=	value;
};
func void Use_ItMi_Broom()
{
	if (Npc_IsPlayer(self))
	&& (Wld_GetPlayerPortalGuild() == GIL_NOV)
	&& (MIS_ParlanFegen == LOG_RUNNING)
	{
		B_Say (self, self, "$NOSWEEPING");
		Print ("Posprz¹tanie wszystkich komnat zajmie ca³e wieki!");
	};
};

instance ItMi_Brush (ItemPR_Misc)
{
	name						=	"Szczotka";
	value						=	5;
	visual						=	"ItMi_Brush.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"BRUSH";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_Dice (ItemPR_Misc)
{
	name						=	"Koœci do gry";
	value						=	5;
	visual						=	"ItMi_Dice.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[0]						=	"U¿ywane do gier hazardowych.";
	COUNT[5]					=	value;
};

instance ItMi_FishingRod (ItemPR_Misc)
{
	name						=	"Wêdka";
	value						=	15;
	visual						=	"ItMi_FishingRod.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[0]						=	"U¿ywana do ³owienia ryb.";
	COUNT[5]					=	value;
};

instance ItMi_Hammer (ItemPR_Misc)
{
	name						=	"M³otek";
	value						=	10;
	visual						=	"ItMi_Hammer.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_InkPen (ItemPR_Misc)
{
	name						=	"Pióro atramentowe";
	value						=	10;
	visual						=	"ItMi_InkPen.3ds";
	material					=	MAT_LEATHER;
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_MakeScroll_S1;
	
	description					=	name;
	TEXT[0]						=	"U¿ywane do tworzenia";
	TEXT[1]						=	"magicznych zwojów.";
	COUNT[5]					=	value;
};

instance ItMi_Knife (ItemPR_Misc)
{
	name						=	"Nó¿";
	value						=	10;
	visual						=	"ItMi_Knife.3ds";
	material					=	MAT_METAL;
	
	scemeName					=	"FASTUSE";
	on_state[0]					=	MOBSI_UseKnife_S1;
	
	description					=	name;
	TEXT[0]						=	"U¿ywane do tworzenia";
	TEXT[1]						=	"broni dystansowych, amunicji,";
	TEXT[2]						=	"pergaminów, pochodni.";
	COUNT[5]					=	value;
};

instance ItMi_Lute (ItemPR_Misc)
{
	name						=	"Lutnia";
	value						=	15;
	visual						=	"ItMi_Lute.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"LUTE";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_Pan (ItemPR_MeleeWeaponM)
{
	name						=	"Patelnia";
	visual						=	"ItMi_Pan.3ds";
	SetItMwAttributes (self, ITEM_AXE, 20,DAM_BLUNT, 15,ATR_STRENGTH, 60, 10, WEAPON_Default);
	
	value						=	20;
	TEXT[0]						=	"U¿ywana do sma¿enia miêsa i ryb.";
	COUNT[5]					=	value;
};

instance ItMi_PanFull (ItemPR_Misc)
{
	name						=	"Patelnia";
	value						=	20;
	visual						=	"ItMi_PanFull.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[0]						=	"U¿ywana do sma¿enia miêsa i ryb.";
	COUNT[5]					=	value;
};

instance ItMi_Pliers (ItemPR_Misc)
{
	name						=	"¯uwaczka";
	value						=	10;
	visual						=	"ItMi_Pliers.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[0]						=	"U¿ywana do tworzenia";
	TEXT[1]						=	"magicznych run.";
	COUNT[5]					=	value;
};

instance ItMi_Rake (ItemPR_Misc)
{
	name						=	"Motyka";
	value						=	10;
	visual						=	"ItMi_Rake.3ds";
	material					=	MAT_WOOD;
	
	scemeName					=	"RAKE";
	
	description					=	name;
	COUNT[5]					=	value;
};

instance ItMi_Saw (ItemPR_Misc)
{
	name						=	"Pi³a";
	value						=	20;
	visual						=	"ItMi_Saw.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[0]						=	"U¿ywana do pozyskiwania";
	TEXT[1]						=	"drewna z k³ód.";
	COUNT[5]					=	value;
};

instance ItMi_Scoop (ItemPR_Misc)
{
	name						=	"Chochla";
	value						=	5;
	visual						=	"ItMi_Scoop.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[0]						=	"U¿ywana do gotowania";
	TEXT[1]						=	"gulaszy i zup.";
	COUNT[5]					=	value;
};

instance ItMi_Sextant (ItemPR_Misc)
{
	name						=	"Sekstant";
	value						=	1000;
	visual						=	"ItMi_Sextant.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[0]						=	"U¿ywany w astronomii";
	TEXT[1]						=	"i nawigacji morskiej.";
	COUNT[5]					=	value;
};

instance ItMi_Spade (ItemPR_MeleeWeaponM)
{
	name						=	"£opata";
	visual						=	"ItMi_Spade.3ds";
	SetItMwAttributes (self, ITEM_2HD_AXE, 20,DAM_BLUNT, 15,ATR_STRENGTH, 130, 10, WEAPON_Default);
	
	value						=	20;
	TEXT[0]						=	"U¿ywana do kopania w ziemi.";
	COUNT[5]					=	value;
};

instance ItMi_Stomper (ItemPR_Misc)
{
	name						=	"Rozdrabniacz";
	value						=	5;
	visual						=	"ItMi_Stomper.3ds";
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[0]						=	"U¿ywany do tworzenia";
	TEXT[1]						=	"zio³owych mieszanek.";
	COUNT[5]					=	value;
};

instance ItMi_Woodaxe (ItemPR_Misc)
{
	name						=	"Topór";
	value						=	10;
	visual						=	"ItMi_Woodaxe.3ds";
	material					=	MAT_METAL;
	
//	scemeName					=	"FASTUSE";
//	on_state[0]					=	MOBSI_UseWoodaxe_S1;
	
	description					=	name;
	TEXT[0]						=	"U¿ywany do pozyskiwania";
	TEXT[1]						=	"drewna ze œciêtych drzew.";
	COUNT[5]					=	value;
};

///******************************************************************************************
/// Torches
///******************************************************************************************
prototype ItemPR_Torch (C_Item)
{
	name						=	"Pochodnia";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_TORCH | ITEM_MULTI;
	
	value						=	5;
	material					=	MAT_WOOD;
	
	description					=	name;
	TEXT[0]						=	"U¿ywana jako Ÿród³o œwiat³a.";
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
};

///******************************************************************************************
instance ItLsTorch (ItemPR_Torch)
{
	visual = "ItLs_Torch_01.3ds";
};

instance ItLsTorchburning (ItemPR_Torch)
{
	visual = "ItLsTorchBurning.zen";
};

instance ItLsTorchburned (ItemPR_Torch)
{
	visual = "ItLs_TorchBurned_01.3ds";
};

///******************************************************************************************
instance ItMi_Pitch (ItemPR_Misc)
{
	name						=	"Smo³a";
	value						=	15;
	visual						=	"ItMi_Pitch.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[0]						=	"Bazowy sk³adnik";
	TEXT[1]						=	"run i zwojów pyromancji";
	TEXT[2]						=	"oraz pochodni.";
	COUNT[5]					=	value;
	INV_ROTX					=	-35;
};

instance ItMi_Resin (ItemPR_Misc)
{
	name						=	"¯ywica";
	value						=	15;
	visual						=	"ItMi_Resin.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[0]						=	"Bazowy sk³adnik";
	TEXT[1]						=	"run i zwojów mistycyzmu";
	TEXT[2]						=	"oraz niektórych mikstur.";
	COUNT[5]					=	value;
	INV_ROTX					=	-35;
};

///******************************************************************************************
/// Uncategorized
///******************************************************************************************
instance ItMi_EmptyBottle (ItemPR_Misc)
{
	name						=	"Butelka";
	value						=	3;
	visual						=	"ItMi_EmptyBottle.3ds";
	material					=	MAT_GLAS;
	
	description					=	name;
	TEXT[0]						=	"Baza do nape³niania wody,";
	TEXT[1]						=	"mleka oraz lekkich alkoholi.";
	COUNT[5]					=	value;
};

instance ItKe_LockPick (ItemPR_Misc)
{
	name						=	"Wytrych";
	value						=	10;
	visual						=	"ItKe_Lockpick.3ds";
	material					=	MAT_METAL;
	
	description					=	name;
	TEXT[0]						=	"U¿ywany do otwierania";
	TEXT[1]						=	"zamkniêtych skrzyñ.";
	COUNT[5]					=	value;
};
