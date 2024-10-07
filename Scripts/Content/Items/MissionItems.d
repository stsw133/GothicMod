///******************************************************************************************
prototype ItemPR_Mission (C_Item)
{
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI | ITEM_MISSION;
};

///******************************************************************************************
/// Artifacts
///******************************************************************************************
instance ItAm_InnosEye_Broken (ItemPR_Mission)
{
	name						=	"Oko Innosa";
	visual						=	"ItMi_InnosEye_MIS.3ds";
	
	description					=	name;
	TEXT[0]						=	TEXT_Innoseye_Setting;
	TEXT[1]						=	"Klejnot jest martwy i pozbawiony mocy.";
	INV_ZBIAS					=	INVCAM_ENTF_AMULET_STANDARD;
};

instance ItAm_Mana_Angar_MIS (ItemPR_Mission)
{
	name						=	"Amulet Angara";
	visual						=	"ItAm_Benkenob.3ds";
	description					=	name;
};

///******************************************************************************************
instance ItRi_Addon_BanditTrader (ItemPR_Mission)
{
	name						=	"Pierœcieñ gildii";
	visual						=	"ItRi_Prot_Point_02.3ds";
	
	description					=	"RzeŸbiony pierœcieñ";
	TEXT[2]						=	"zamorskiej gildii Araxos";
};

instance ItRi_Addon_MorgansRing_Mission (ItemPR_Mission)
{
	name						=	"Pierœcieñ Morgana";
	visual						=	"ItRi_Prot_Total_02.3ds";
	description					=	name;
};

instance ItRi_OrcEliteRing (ItemPR_Mission)
{
	name						=	"Pierœcieñ orkowych przywódców";
	visual						=	"ItRi_Str_02.3ds";
	
	description					=	name;
	TEXT[0]						=	"Pierœcieñ jest szorstki i";
	TEXT[1]						=	"dziwnie zimny w dotyku.";
};

instance ItRi_Prot_Point_01_MIS (ItemPR_Mission)
{
	name						=	"Pierœcieñ Constantina";
	visual						=	"ItRi_Prot_Point_01.3ds";
	description					=	name;
};

prototype Rangerring_prototype (C_Item)
{
	name						=	"Pierœcieñ Wodnego Krêgu";
	mainflag					=	ITEM_KAT_MAGIC;
	flags						=	ITEM_RING | ITEM_MISSION;
	
	visual						=	"ItRi_Hp_Mana_01.3ds";
	material					=	MAT_METAL;
	on_equip					=	Equip_ItRi_Ranger;
	on_unequip					=	UnEquip_ItRi_Ranger;
	
	description					=	name;
	INV_ZBIAS					=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ					=	INVCAM_Z_RING_STANDARD;
	INV_ROTX					=	INVCAM_X_RING_STANDARD;
};
func void Equip_ItRi_Ranger()
{
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(hero))
	{
		if (!ENTERED_ADDONWORLD)
		&& (!Npc_HasItems(hero, ItRi_Ranger_Addon))
		{
			RangerRingIsLaresRing = true;
		};
		SCIsWearingRangerRing = true;
		Print("Nosisz teraz charakterystyczny znak Wodnego Krêgu.");
	};
};
func void UnEquip_ItRi_Ranger()
{
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(hero))
	{
		if (!SC_IsRanger)
		{
			SCIsWearingRangerRing = false;
		};
		RangerRingIsLaresRing = false;
	};
};

instance ItRi_Ranger_Lares_Addon (Rangerring_prototype)
{
	TEXT[1]						=	"Ten pierœcieñ nale¿y do Laresa.";
};

instance ItRi_Ranger_Addon (Rangerring_prototype)
{
	TEXT[1]						=	"To mój pierœcieñ.";
};

instance ItRi_Ranger_Lance (Rangerring_prototype)
{
	TEXT[1]						=	"Ten pierœcieñ nale¿a³ do Lance'a.";
};

instance ItRi_Tengron (ItemPR_Mission)
{
	name						=	"Pierœcieñ Tengrona";
	visual						=	"ItRi_Hp_01.3ds";
	description					=	name;
};

instance ItRi_ValentinosRing (ItemPR_Mission)
{
	name						=	"Pierœcieñ Valentina";
	visual						=	"ItRi_Prot_Edge_01.3ds";
	description					=	name;
};

///******************************************************************************************
/// Animal trophies
///******************************************************************************************
instance ItAt_ClawLeader (ItemPR_Mission)
{
	name						=	"Pazury przywódcy zêbaczy";
	visual						=	"ItAt_Claw.3ds";
	description					=	name;
};

instance ItAt_TalbinsLurkerSkin (ItemPR_Mission)
{
	name						=	"Skóra topielca";
	visual						=	"ItAt_LurkerSkin.3ds";
	description					=	name;
	TEXT[0]						=	"Na wewnêtrznej stronie wygarbowano imiê 'Talbin'.";
};

///******************************************************************************************
/// Food
///******************************************************************************************
instance ItFo_Schafswurst (ItemPR_Mission)
{
	name						=	"Barania kie³basa";
	visual						=	"ItFo_Sausage.3ds";
	description					=	name;
};

///******************************************************************************************
/// Misc
///******************************************************************************************
prototype EffectItemprototype_Addon (C_Item)
{
	name						=	"Kamieñ";
	mainflag					=	ITEM_KAT_NONE;
	flags						=	ITEM_MULTI;
	
	value						=	5;
	visual						=	"ItMi_Coal.3ds";
	material					=	MAT_STONE;
	
	description					=	name;
	TEXT[5]						=	NAME_Value;
	COUNT[5]					=	value;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_AmbossEffekt_Addon (EffectItemprototype_Addon)
{
};

instance ItMi_OrnamentEffekt_FARM_Addon (EffectItemprototype_Addon)
{
};

instance ItMi_OrnamentEffekt_FOREST_Addon (EffectItemprototype_Addon)
{
};

instance ItMi_OrnamentEffekt_BIGFARM_Addon (EffectItemprototype_Addon)
{
};

///******************************************************************************************
instance ItMi_Addon_Bloodwyn_Kopf (ItemPR_Mission)
{
	name						=	"G³owa Bloodwyna";
	visual						=	"ItMi_Head_Bloodwyn_01.3ds";
	description					=	name;
};

instance ItMi_BaltramPaket (ItemPR_Mission)
{
	name						=	"Dostawa Beltrama";
	visual						=	"ItMi_Packet.3ds";
	description					=	name;
};

instance ItMi_BloodCup_MIS (ItemPR_Mission)
{
	name						=	"Krwawy puchar";
	visual						=	"ItMi_RubyCup.3ds";
	description					=	name;
};

instance ItMi_BromorsGeld_Addon (ItemPR_Mission)
{
	name						=	"Z³ota misa Bromora";
	visual						=	"ItMi_GoldChalice.3ds";
	description					=	name;
};

instance ItMi_CoragonsSilber (ItemPR_Mission)
{
	name						=	"Srebro Coragona";
	visual						=	"ItMi_SilverCup.3ds";
	description					=	name;
};

instance ItMi_Crate (ItemPR_Mission)
{
	name						=	"Skrzynka z towarami";
	visual						=	"ItMi_Crate.3ds";
	description					=	name;
};

instance ItMi_Focus (ItemPR_Mission)
{
	name						=	"Kamieñ ogniskuj¹cy";
	visual						=	"ItMi_Focus.3ds";
	effect						=	"SPELLFX_MANAPOTION";
	description					=	name;
};

instance ItMi_HerbPaket (ItemPR_Mission)
{
	name						=	"Paczka ziela";
	visual						=	"ItMi_Packet.3ds";
	description					=	name;
};

instance ItMi_IdolOgront_01 (ItemPR_Mission)
{
	name						=	"Pos¹¿ek orków";
	visual						=	"ITMI_STUFF_IDOL_OGRONT_01.3ds";
	description					=	name;
};

instance ItMi_IdolOgront_02 (ItemPR_Mission)
{
	name						=	"Pos¹¿ek orków";
	visual						=	"ITMI_STUFF_IDOL_OGRONT_02.3ds";
	description					=	name;
};

instance ItMi_KarrasBlessedStone_MIS (ItemPR_Mission)
{
	name						=	"Kamieñ z poœwiêconej ziemi";
	visual						=	"ItMi_Rockcrystal.3ds";
	description					=	name;
};

instance ItMi_KerolothsGeldbeutelLeer_MIS (ItemPR_Mission)
{
	name						=	"Pusta torba Kerolotha";
	visual						=	"ItMi_Pocket.3ds";
	description					=	name;
};

instance ItMi_LennarPaket (ItemPR_Mission)
{
	name						=	"Brzêcz¹ca paczka";
	visual						=	"ItMi_Packet.3ds";
	description					=	name;
};

instance ItMi_LostInnosStatue_Daron (ItemPR_Mission)
{
	name						=	"Pos¹¿ek Darona";
	visual						=	"ItMi_InnosStatue.3ds";
	description					=	name;
};

instance ItMi_MariasGoldPlate (ItemPR_Mission)
{
	name						=	"Z³oty talerz Marii";
	visual						=	"ItMi_GoldPlate.3ds";
	
	description					=	name;
	TEXT[2]						=	"Ozdobiono go stylizowanymi";
	TEXT[3]						=	"imionami Onara i Marii.";
};

instance ItMi_OldCoin (ItemPR_Mission)
{
	name						=	"Stara moneta";
	visual						=	"ItMi_OldCoin.3ds";
	description					=	name;
	INV_ZBIAS					=	INVCAM_ENTF_MISC2_STANDARD;
};

instance ItMi_Ornament_Addon (ItemPR_Mission)
{
	name						=	"Ornament";
	visual						=	"ItMi_PortalRing_05.3ds";
	
	description					=	name;
	TEXT[0]						=	"Fragment du¿ego, ozdobnego pierœcienia";
	INV_ZBIAS					=	INVCAM_ENTF_MISC5_STANDARD;
};

instance ItMi_Ornament_Addon_Vatras (ItemPR_Mission)
{
	name						=	"Ornament";
	visual						=	"ItMi_PortalRing_05.3ds";
	
	description					=	name;
	TEXT[0]						=	"Fragment du¿ego, ozdobnego pierœcienia";
	INV_ZBIAS					=	INVCAM_ENTF_MISC5_STANDARD;
};

instance ItMi_PortalRing_Addon (ItemPR_Mission)
{
	name						=	"Ozdobny pierœcieñ";
	visual						=	"ItMi_PortalRing_01.3ds";
	
	description					=	name;
	TEXT[0]						=	"Ten pierœcieñ otwiera portal";
	INV_ZBIAS					=	INVCAM_ENTF_MISC3_STANDARD;
};

instance ItMi_PowerEye (ItemPR_Mission)
{
	name						=	"Oko Mocy";
	visual						=	"ItMi_DarkPearl.3ds";
	
	description					=	name;
	INV_ZBIAS					=	INVCAM_ENTF_MISC_STANDARD;
};

instance ItMi_FireCrystal (ItemPR_Mission)
{
	name						=	"Ognisty kryszta³";
	visual						=	"ItMi_FireCrystal.3ds";
	effect						=	"SPELLFX_FIRESWORD";
	description					=	name;
};

instance ItMi_SkipPaket (ItemPR_Mission)
{
	name						=	"Paczka dla Skipa";
	visual						=	"ItMi_Packet.3ds";
	description					=	name;
};

instance ItMi_SteelPaket (ItemPR_Mission)
{
	name						=	"Pakiet stali";
	visual						=	"ItMi_Packet.3ds";
	description					=	name;
};

instance ItMi_StoneOfKnowlegde_MIS (ItemPR_Mission)
{
	name						=	"Kamieñ Wiedzy";
	visual						=	"ItMi_StoneOfKnowlegde_MIS.3ds";
	description					=	name;
};

instance ItMi_TempelTorKey (ItemPR_Mission)
{
	name						=	"Kamienna tablica Quarhodrona";
	visual						=	"ItMi_StonePlate_Read_06.3ds";
	description					=	name;
	TEXT[2]						=	"Klucz do œwi¹tyni Adanosa";
};

instance ItMi_TheklasPaket (ItemPR_Mission)
{
	name						=	"Paczka Thekli";
	visual						=	"ItMi_Packet.3ds";
	description					=	name;
};

instance ItMi_WeaponBag (ItemPR_Mission)
{
	name						=	"Paczka z broni¹";
	visual						=	"NW_CITY_WEAPON_BAG_01.3ds";
	description					=	name;
};

instance ItMi_Wood (ItemPR_Mission)
{
	name						=	"Drewno opa³owe";
	visual						=	"ItMi_Wood.3ds";
	description					=	name;
};

///******************************************************************************************
/// Potions
///******************************************************************************************
instance ItPo_HealHilda_MIS (ItemPR_Mission)
{
	name						=	"Lekarstwo";
	visual						=	"ItMi_Flask.3ds";
	description					=	"Uzdrowienie czarnej gor¹czki";
};

instance ItPo_HealRandolph_MIS (ItemPR_Mission)
{
	name						=	"Lekarstwo";
	visual						=	"ItMi_Flask.3ds";
	description					=	"Leczenie z na³ogu";
};

///******************************************************************************************
/// Weapons
///******************************************************************************************
instance ItMw_MalethsGehstock_MIS (ItemPR_Mission)
{
	name						=	"Laska Maletha";
	visual						=	"ItMw_008_1h_pole_01.3ds";
	description					=	name;
};

instance ItMw_UluMulu (ItemPR_Mission)
{
	name						=	"Ulu-Mulu";
	visual						=	"ItMi_Amulet_Ulumulu_02.3ds";
	
	description					=	name;
	TEXT[1]						=	"Ulu-Mulu œwiadczy o wielkiej sile i odwadze";
	TEXT[2]						=	"posiadacza. Wojownik, który nosi ten amulet";
	TEXT[3]						=	"nie musi siê obawiaæ ataku ze strony orków!";
};

///******************************************************************************************
instance ItRw_Bow_L_03_MIS (ItemPR_Mission)
{
	name						=	"£uk myœliwski Bospera";
	visual						=	"ItRw_Bow_M_01.mms";
	description					=	name;
};

instance ItRw_DragomirsArmbrust_MIS (ItemPR_Mission)
{
	name						=	"Kusza Dragomira";
	visual						=	"ItRw_Crossbow_L_02.mms";
	description					=	name;
};

instance ItRw_SengrathsArmbrust_MIS (ItemPR_Mission)
{
	name						=	"Kusza Sengratha";
	visual						=	"ItRw_Mil_Crossbow.mms";
	description					=	name;
};

///******************************************************************************************
/// Valuables
///******************************************************************************************
instance ItFo_HalvorFish_MIS (ItemPR_Mission)
{	
	name						=	"Dziwna ryba";
	visual						=	"ItFo_Fish.3ds";
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItFo_HalvorFish;
	
	description					=	"Dziwnie wygl¹daj¹ca ryba";
	TEXT[2]						=	"Z t¹ ryb¹ jest coœ nie tak.";
	TEXT[3]						=	"Wygl¹da, jakby ktoœ j¹ pozszywa³...";
};
func void Use_ItFo_HalvorFish()
{
	CreateInvItem (self, ItWr_HalvorMessage);
	Print("W tej rybie schowano jak¹œ notatkê.");
};

instance ItMi_Addon_GregsTreasureBottle_MIS	(ItemPR_Mission)
{
	name						=	"Wiadomoœæ w butelce";
	visual						=	"ItMi_EmptyBottle.3ds";
	
	scemeName					=	"MAPSEALED";
	on_state[0]					=	Use_ItMi_GregsBottle;
	
	description					=	name;
	TEXT[2]						=	"W œrodku jest kawa³ek papieru";
};
func void Use_ItMi_GregsBottle()
{
	CreateInvItem (self, ItMi_EmptyBottle);
	B_PlayerFindItem (ItWr_Addon_TreasureMap, 1);
};

instance ItMi_GornsTreasure_MIS (ItemPR_Mission)
{
	name						=	"Skórzana sakwa Gorna";
	visual						=	"ItMi_Pocket_Yellow.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItMi_GornsTreasure;
	
	description					=	name;
};
var int	Gorns_Beutel;
func void Use_ItMi_GornsTreasure()
{
	Gorns_Beutel = true;
	B_PlayerFindItem (ItMi_Gold, 250);
	Snd_Play("Geldbeutel");
};

instance ItMi_KerolothsGeldbeutel_MIS (ItemPR_Mission)
{
	name						=	"Skórzana torba Kerolotha";
	visual						=	"ItMi_Pocket.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItMi_KerolothsGeldbeutel;
	
	description					=	name;
};
func void Use_ItMi_KerolothsGeldbeutel()
{
	CreateInvItem (self, ItMi_KerolothsGeldbeutelLeer_MIS);
	B_PlayerFindItem (ItMi_Gold, 300);
	Snd_Play("Geldbeutel");
};

instance ItMi_MalethsBanditGold (ItemPR_Mission)
{
	name						=	"Sakwa pe³na z³ota!";
	visual						=	"ItMi_Pocket_Yellow.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItMi_MalethsBanditGold;
	
	description					=	name;
};
func void Use_ItMi_MalethsBanditGold()
{
	B_PlayerFindItem (ItMi_Gold, 300);
	Snd_Play("Geldbeutel");
};

instance ItSe_Addon_FrancisChest (ItemPR_Mission)
{
	name						=	"Skrzynia ze skarbem";
	visual						=	"ItMi_GoldChest.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_FrancisChest;
	
	description					=	name;
};
func void Use_ItSe_FrancisChest()
{
	CreateInvItem (self, ItMi_GoldChest);
	CreateInvItem (self, ItMw_GoldenSabre);
	CreateInvItems (self, Itmi_Gold, 150);
	CreateInvItem (self, ItMi_GoldCup);
	CreateInvItem (self, ItMi_SilverNecklace);
	CreateInvItem (self, ITWR_Addon_FrancisAbrechnung_MIS);
	Snd_Play("Geldbeutel");
	Print("Zdoby³em stertê ró¿nych rzeczy.");
};

instance ItSe_CavalornsBeutel (ItemPR_Mission)
{
	name						=	"Skórzana torba Cavalorna";
	visual						=	"ItMi_Pocket.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_CavalornsBeutel;
	
	description					=	name;
};
func void Use_ItSe_CavalornsBeutel()
{
	B_PlayerFindItem (ItMi_Nugget, 1);
	SC_OpenedCavalornsBeutel = true;
	Log_CreateTopic (TOPIC_Addon_CavalornTheHut, LOG_MISSION);
	Log_SetTopicStatus (TOPIC_Addon_CavalornTheHut, LOG_RUNNING);
	B_LogEntry (TOPIC_Addon_CavalornTheHut, "W chacie Cavalorna w Górniczej Dolinie znalaz³em torbê z bry³k¹ rudy. Ten stary drañ na pewno o niej zapomnia³.");
};

instance ItSe_DiegosTreasure_MIS (ItemPR_Mission)
{
	name						=	"Skórzana torba Diega";
	visual						=	"ItMi_Pocket.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_DiegosTreasure;
	
	description					=	name;
};
func void Use_ItSe_DiegosTreasure()
{
	OpenedDiegosBag = true;
	B_PlayerFindItem (ItMi_Gold, 2000);
	Snd_Play("Geldbeutel");
};

instance ItSe_Golemchest_MIS (ItemPR_Mission)
{
	name						=	"Skórzany mieszek";
	visual						=	"ItMi_Pocket_Yellow.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_GolemChest;
	
	description					=	name;
};
func void Use_ItSe_GolemChest()
{
	B_PlayerFindItem (ItRi_Prot_Blunt_01, 1);
	B_PlayerFindItem (ItMi_Gold, 50);
	Snd_Play("Geldbeutel");
};

instance ItSe_HannasBeutel (ItemPR_Mission)
{
	name						=	"Skórzany mieszek Hanny";
	visual						=	"ItMi_Pocket_White.3ds";
	
	scemename					=	"MAPSEALED";
	on_state[0]					=	Use_ItSe_HannasBeutel;
	
	description					=	name;
};
func void Use_ItSe_HannasBeutel()
{
	B_PlayerFindItem (ItKe_Lockpick, 10);
	B_PlayerFindItem (ItKe_ThiefTreasure, 1);
};
