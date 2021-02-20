///******************************************************************************************
prototype ItemPR_Mission (C_Item)
{
	mainflag 				=	ITEM_KAT_NONE;
	flags 					=	ITEM_MULTI|ITEM_MISSION;
};
///******************************************************************************************
instance ItMi_OldCoin (ItemPR_Mission)
{
	name 			=	"Stara moneta";
	visual 			=	"ItMi_OldCoin.3DS";
	description		= 	name;
	INV_ZBIAS		=	INVCAM_ENTF_MISC2_STANDARD;
};
instance ItMi_WeaponBag (ItemPR_Mission)
{
	name 			=	"Paczka z broni¹";
	visual 			=	"NW_CITY_WEAPON_BAG_01.3DS";
	description		= 	name;
};
instance ItMi_Focus (ItemPR_Mission)
{
	name 			=	"Kamieñ ogniskuj¹cy";
	visual 			=	"ItMi_Focus.3DS";
	effect			=	"SPELLFX_MANAPOTION";
	description		=	name;
};
instance ItMi_MoleratLubric_MIS (ItemPR_Mission)
{
	name 			=	"£ój kretoszczura";
	visual 			=	"ItMi_MoleratLubric.3ds";
	description		=	name;
};
instance ItWr_StonePlateCommon_Addon (ItemPR_Mission)
{
	name 			=	"Stara kamienna tablica";
	visual 			=	"ItMi_StonePlate_Read_06.3ds"; 
	description		=	name;
	inv_rotx		=	INVCAM_X_STONEPLATE_STANDARD;
};
instance ItMi_TempelTorKey (ItemPR_Mission)
{
	name 			=	"Kamienna tablica Quarhodrona";
	visual 			=	"ItMi_StonePlate_Read_06.3ds";
	description		=	name;
	TEXT[2]			=	"Klucz do œwi¹tyni Adanosa";
};
instance ItAt_ClawLeader (ItemPR_Mission)
{
	name 			=	"Pazury przywódcy zêbaczy";
	visual 			=	"ItAt_Claw.3DS";
	description		=	name;
};
instance ItAt_TalbinsLurkerSkin (ItemPR_Mission)
{
	name 			=	"Skóra topielca";
	visual 			=	"ItAt_LurkerSkin.3DS";
	description		=	name;
	TEXT[0]			= 	"Na wewnêtrznej stronie wygarbowano imiê 'Talbin'.";
};
instance ItFo_Grog (ItemPR_Mission)
{
	name			=	"Grog";
	visual 			=	"ItMi_Rum_02.3ds";
	description 	=	name;
};
instance ItFo_Schafswurst (ItemPR_Mission)
{
	name 			=	"Barania kie³basa";
	visual 			=	"ItFo_Sausage.3DS";
	description		=	name;
};
instance ItPl_Beet (ItemPR_Mission)
{
	name 			=	"Rzepa";
	visual 			=	"ItPl_Beet.3ds";
	description		=	name;
};
instance ItPo_HealHilda_MIS (ItemPR_Mission)
{
	name 			=	"Lekarstwo";
	visual 			=	"ItMi_Flask.3ds";
	description		= 	"Uzdrowienie czarnej gor¹czki";
};
instance ItPo_HealRandolph_MIS (ItemPR_Mission)
{
	name 			=	"Lekarstwo";
	visual 			=	"ItMi_Flask.3ds";
	description		= 	"Leczenie z na³ogu";
};
instance ItMw_MalethsGehstock_MIS (ItemPR_Mission)
{
	name 			=	"Laska Maletha";
	visual 			=	"Itmw_008_1h_pole_01.3ds";
	description		=	name;
};
instance ItMw_FrancisDagger_MIS (ItemPR_Mission)
{
	name 			=	"Z³oty sztylet Francisa";
	visual 			=	"Itmw_005_1h_dagger_01.3DS";
	description		=	name;
};
instance ItMw_UluMulu (ItemPR_Mission)
{
	name 			=	"Ulu-Mulu";
	visual 			=	"ItMi_Amulet_Ulumulu_02.3ds";
	description		=	name;
	TEXT[1]			=	"Ulu-Mulu œwiadczy o wielkiej sile i odwadze";
	TEXT[2]			=	"posiadacza. Wojownik, który nosi ten amulet";
	TEXT[3]			=	"nie musi siê obawiaæ ataku ze strony orków!";
};
instance ItMw_1H_FerrosSword_Mis (ItemPR_Mission) 
{
	name 			=	"Miecz Ferosa";
	visual 			=	"ItMw_060_1h_Sword_smith_03.3DS";
	description		=	name;
};
instance ItRw_Bow_L_03_MIS (ItemPR_Mission)
{
	name 			=	"£uk myœliwski Bospera";
	visual 			=	"ItRw_Bow_M_01.mms";
	description		=	name;
};
instance ItRw_DragomirsArmbrust_MIS (ItemPR_Mission)
{
	name 			=	"Kusza Dragomira";
	visual 			=	"ItRw_Crossbow_L_02.mms";
	description		=	name;
};
instance ItRw_SengrathsArmbrust_MIS (ItemPR_Mission)
{
	name 			=	"Kusza Sengratha";
	visual 			=	"ItRw_Crossbow_L_02.mms";
	description		=	name;
};
///******************************************************************************************
instance ItMi_Crate (ItemPR_Mission)
{
	name 			=	"Skrzynka z towarami";
	visual 			=	"ITMI_CRATE.3DS";
	description		= 	name;
};
///******************************************************************************************
instance ItMi_Addon_Bloodwyn_Kopf (ItemPR_Mission)
{
	name 			=	"G³owa Bloodwyna";
	visual 			=	"ItMi_Head_Bloodwyn_01.3ds";
	description		=	name;
};
instance ItMi_Ornament_Addon (ItemPR_Mission)
{
	name 			=	"Ornament";
	visual 			=	"ItMi_PortalRing_05.3DS"; 
	description		=	name;
	TEXT[0]			=	"Fragment du¿ego, ozdobnego pierœcienia";
	INV_ZBIAS		= 	INVCAM_ENTF_MISC5_STANDARD;
};
instance ItMi_Ornament_Addon_Vatras (ItemPR_Mission)
{
	name 			=	"Ornament";
	visual 			=	"ItMi_PortalRing_05.3DS"; 
	description		=	name;
	TEXT[0]			=	"Fragment du¿ego, ozdobnego pierœcienia";
	INV_ZBIAS		= 	INVCAM_ENTF_MISC5_STANDARD;
};
instance ItMi_PortalRing_Addon (ItemPR_Mission)
{
	name 			=	"Ozdobny pierœcieñ";
	visual 			=	"ItMi_PortalRing_01.3DS";
	description		=	name;
	TEXT[0]			= 	"Ten pierœcieñ otwiera portal";
	INV_ZBIAS		= 	INVCAM_ENTF_MISC3_STANDARD;
};
instance ItMi_KarrasBlessedStone_Mis (ItemPR_Mission)
{
	name 			=	"Kamieñ z poœwiêconej ziemi";
	visual 			=	"ItMi_Rockcrystal.3ds";
	description		=	name;
};
instance ItMi_PowerEye (ItemPR_Mission)
{
	name 			=	"Oko Mocy";
	visual 			=	"ItMi_DarkPearl.3ds";
	description		=	name;
	INV_ZBIAS		=	INVCAM_ENTF_MISC_STANDARD;
};
///******************************************************************************************
instance ItMi_CoragonsSilber (ItemPR_Mission)
{
	name 			=	"Srebro Coragona";
	visual 			=	"ItMi_SilverCup.3DS";
	description		=	name;
};
instance ItMi_MariasGoldPlate (ItemPR_Mission)
{
	name 			=	"Z³oty talerz Marii";
	visual 			=	"ItMi_GoldPlate.3DS";
	description		=	name;
};
instance ItMi_BromorsGeld_Addon (ItemPR_Mission)
{
	name 			=	"Z³ota misa Bromora";
	visual 			=	"ItMi_GoldChalice.3DS";
	description		=	name;
};
instance ItMi_BloodCup_MIS (ItemPR_Mission)
{
	name 			=	"Krwawy puchar";
	visual 			=	"ItMi_RubyCup.3DS";
	description		=	name;
};
instance ItMi_LostInnosStatue_Daron (ItemPR_Mission)
{
	name 			=	"Pos¹¿ek Darona";
	visual 			=	"ItMi_InnosStatue.3DS";
	description		=	name;
};
instance ItMi_GoldCompass (ItemPR_Mission)
{
	name 			=	"Z³oty kompas";
	visual 			=	"ItMi_Compass_01.3DS";
	description		=	name;
};
///******************************************************************************************
instance ItMi_BaltramPaket (ItemPR_Mission)
{
	name 			=	"Dostawa Beltrama";
	visual 			=	"ItMi_Packet.3ds";
	description		=	name;
};
instance ItMi_SkipPaket (ItemPR_Mission)
{
	name 			=	"Paczka dla Skipa";
	visual 			=	"ItMi_Packet.3ds";
	description		=	name;
};
instance ItMi_TheklasPaket (ItemPR_Mission)
{
	name 			=	"Paczka Thekli";
	visual 			=	"ItMi_Packet.3ds";
	description		=	name;
};
instance ItMi_HerbPaket (ItemPR_Mission)
{
	name 			=	"Paczka ziela";
	visual 			=	"ItMi_Packet.3ds";
	description		=	name;
};
instance ItMi_LennarPaket (ItemPR_Mission)
{
	name 			=	"Brzêcz¹ca paczka";
	visual 			=	"ItMi_Packet.3ds";
	description		=	name;
};
instance ItMi_SteelPaket (ItemPR_Mission)
{
	name 			=	"Pakiet stali";
	visual 			=	"ItMi_Packet.3ds";
	description		=	name;
};
///******************************************************************************************
instance ItFo_TastyStew (ItemPR_StewFood)
{
	name 			=	"Gulasz";
	flags 			=	ITEM_MULTI|ITEM_MISSION;
	visual 			=	"ItFo_Stew.3ds";
	on_state[0]		=	Use_ItFo_TastyStew;
	name			=	"Smaczny gulasz";
};
FUNC VOID Use_ItFo_TastyStew()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_FoodTime] += 100;
	};
	B_RaiseAttribute (self, ATR_STRENGTH, 1);
};

instance ItFo_CoragonsBeer (ItemPR_BeerFood)
{
	name 			=	"Piwo";
	flags 			=	ITEM_MULTI|ITEM_MISSION;
	visual 			=	"ItFo_Beer.3DS";
	on_state[0]		=	Use_ItFo_CoragonsBeer;
	description		=	"Piwo Coragona";
};
FUNC VOID Use_ItFo_CoragonsBeer()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_Energy] += 60;
	};
	B_RaiseAttribute (self, ATR_MANA_MAX, 1);
};

instance ItFo_SouthWine (ItemPR_AlcoholFood)
{
	name 			=	"Wino";
	flags 			=	ITEM_MULTI|ITEM_MISSION;
	visual 			=	"ItFo_Wine.3DS";
	on_state[0]		=	Use_ItFo_SouthWine;
	description		= 	"Wino z Wysp Po³udniowych";
};
FUNC VOID Use_ItFo_SouthWine()
{
	if (Npc_IsPlayer(self))
	{
		sattribute[ATR_Energy] += 50;
	};
	B_RaiseAttribute (self, ATR_MANA_MAX, 1);
	CreateInvItem (self, ItMi_EmptyBottle);
};
///******************************************************************************************
instance ItPo_HealObsession_MIS (ItemPR_Mission)
{
	name 			=	"Lekarstwo";
	mainflag 		=	ITEM_KAT_POTIONS;

	visual 			=	"ItMi_Flask.3ds";
	on_state[0]		=	Use_HealObsession;
	scemeName		=	"POTIONFAST";

	description		= 	"Uleczenie z opêtania";
};
FUNC VOID Use_HealObsession()
{
	B_ClearSCObsession(self);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_VIOLET", hero, hero, 0, 0, 0, false);
	Snd_Play("SFX_HealObsession");
};

instance ItPo_InnosTears (ItemPR_Mission)
{
	name 			=	"£zy Innosa";

	visual 			=	"ItPo_Innos.3ds";
	on_state[0]		=	Use_ItPo_InnosTears;
	scemeName		=	"POTIONFAST";

	description		= 	name;
};
FUNC VOID Use_ItPo_InnosTears()
{
	if (hero.guild == GIL_KDF)
	{
 		Wld_PlayEffect ("spellFX_LIGHTSTAR_BLUE", hero, hero, 0, 0, 0, false);
		Snd_Play("SFX_HealObsession");
		B_RaiseAttribute (self, ATR_MANA_MAX, 10);
		PrintScreen (PRINT_FullyHealed, -1, 55, FONT_Screen, 2);
		self.attribute[ATR_HITPOINTS] = self.attribute[ATR_HITPOINTS_MAX];		 
		self.attribute[ATR_MANA] = self.attribute[ATR_MANA_MAX];
	}
	else
	{
		Wld_PlayEffect ("VOB_MAGICBURN", hero, hero, 0, 0, 0, false);
		B_Say (self, self, "$Dead");
		Npc_ChangeAttribute	(self, ATR_HITPOINTS, -self.attribute[ATR_HITPOINTS_MAX]);
	};
};
///******************************************************************************************
instance ItRi_Valentino (ItemPR_Mission)
{
	name 			=	"Pierœcieñ Valentina";
	visual 			=	"ItRi_Prot_Edge_01.3ds";
	description		=	name;
};
instance ItRi_Constantino (ItemPR_Mission)
{
	name 			=	"Pierœcieñ Constantina";
	visual 			=	"ItRi_Prot_Point_01.3ds";
	description		=	name;
};
instance ItRi_Morgan (ItemPR_Mission)
{
	name 			=	"Pierœcieñ Morgana";
	visual 			=	"ItRi_Prot_Total_02.3DS";
	description		=	name;
};
instance ItRi_Tengron (ItemPR_Mission)
{
	name 			=	"Pierœcieñ Tengrona";
	visual 			=	"ItRi_Hp_01.3ds";
	description		=	name;
};
instance ItRi_BanditTrader (ItemPR_Mission)
{
	name 			=	"Pierœcieñ gildii";
	visual 			=	"ItRi_Prot_Point_02.3ds";
	description		= 	"RzeŸbiony pierœcieñ";
	TEXT[2]			= 	"zamorskiej gildii Araxos";
};
instance ItRi_OrcElite (ItemPR_Mission)
{
	name 			=	"Pierœcieñ orkowych przywódców";
	visual 			=	"ItRi_Str_02.3ds";
	description		=	name;
};
instance ItAm_Mana_Angar_MIS (ItemPR_Mission)
{
	name 			=	"Amulet";
	visual 			=	"ItAm_Mana_01.3ds";
	description		=	"Magiczny amulet Angara";
};
///******************************************************************************************
const string PRINT_SCIsWearingRangerRing = "Nosisz teraz charakterystyczny znak Wodnego Krêgu.";

prototype Rangerring_prototype (C_Item)
{
	name 			=	"Pierœcieñ z akwamarynem";
	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_RING|ITEM_MISSION;
	
	visual 			=	"ItRi_Hp_Mana_01.3ds"; 
	material 		=	MAT_METAL;
	on_equip		=	Equip_ItRi_Ranger;
	on_unequip		=	UnEquip_ItRi_Ranger;
	
	description		=	"Symbol przynale¿noœci do Wodnego Krêgu";
	INV_ZBIAS		=	INVCAM_ENTF_RING_STANDARD;
	INV_ROTZ		=	INVCAM_Z_RING_STANDARD;
	INV_ROTX		=	INVCAM_X_RING_STANDARD;
};
FUNC VOID Equip_ItRi_Ranger()
{
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(hero))
	{
		if (ENTERED_ADDONWORLD == false)
		{
			if (Npc_HasItems(hero,ItRi_Ranger) == false)
			{	RangerRingIsLaresRing = true;	};
		};
		SCIsWearingRangerRing = true;
		Print(PRINT_SCIsWearingRangerRing);
	};
};
FUNC VOID UnEquip_ItRi_Ranger()
{
	if (Hlp_GetinstanceID(self) == Hlp_GetinstanceID(hero))
	{
		if (SC_IsRanger == false)
		{	SCIsWearingRangerRing = false;	};
		RangerRingIsLaresRing = false;
	};
};
instance ItRi_Ranger_Lares (Rangerring_prototype)
{
	TEXT[1] = "Ten pierœcieñ nale¿y do Laresa.";
};
instance ItRi_Ranger (Rangerring_prototype)
{
	TEXT[1] = "To mój pierœcieñ.";
};
instance ItRi_Ranger_Lance (Rangerring_prototype)
{
	TEXT[1] = "Ten pierœcieñ nale¿a³ do Lance'a.";
};
///******************************************************************************************
instance ItSe_HannasBeutel (ItemPR_Mission)
{
	name 			=	"Skórzany mieszek Hanny";
	visual 			=	"ItMi_Pocket_White.3ds";
	scemename		=	"MAPSEALED";
	on_state[0]		=   HannasBeutel;
	description		=	name;
};
FUNC VOID HannasBeutel()
{
	CreateInvItems (self, ItKe_Lockpick, 10);
	CreateInvItem (self, ItKe_ThiefTreasure);
	Print("Ma³y klucz i kilka wytrychów...");
};

instance ItFo_HalvorFish_MIS (ItemPR_Mission)
{	
	name 			=	"Dziwna ryba";
	
	visual 			=	"ItFo_Fish.3DS";
	scemeName		=	"MAPSEALED";
	on_state[0]		=	Use_HalvorFish;
	
	description		=	"Dziwnie wygl¹daj¹ca ryba";
	TEXT[2]			=	"Z t¹ ryb¹ jest coœ nie tak.";		
	TEXT[3]			=	"Wygl¹da, jakby ktoœ j¹ pozszywa³...";
};
FUNC VOID Use_HalvorFish()
{
	CreateInvItem (self, ItWr_HalvorMessage);
	Print("W tej rybie schowano jak¹œ notatkê.");
};

instance ItSE_Addon_FrancisChest (ItemPR_Mission)
{
	name 			=	"Skrzynia ze skarbem";
	visual 			=	"ItMi_GoldChest.3ds";
	scemename		=	"MAPSEALED";
	on_state[0]		=   FrancisChest;
	description		=	name;
};
func void FrancisChest()
{
	CreateInvItems (self, Itmi_Gold, 150);
	CreateInvItem (self, ItMi_GoldPlate);
	CreateInvItem (self, ItMi_SilverRing);
	CreateInvItem (self, ItMi_GoldCup);
	CreateInvItem (self, ItMi_SilverNecklace);
	CreateInvItem (self, ITWR_Addon_FrancisAbrechnung_Mis);
	Snd_Play("Geldbeutel");
	Print("Zdoby³em stertê ró¿nych rzeczy.");
};

instance ItMi_Addon_GregsTreasureBottle_MIS	(ItemPR_Mission)
{
	name 			=	"Wiadomoœæ w butelce";
	
	visual 			=	"ItMi_EmptyBottle.3DS";
	on_state[0]		=   Use_GregsBottle;
	scemeName		=	"MAPSEALED";
	
	description		=	name;
	TEXT[2]			=   "W œrodku jest kawa³ek papieru";
};
func void Use_GregsBottle()
{
	B_PlayerFindItem (ItWR_Addon_TreasureMap, 1);
	CreateInvItem (self, ItMi_EmptyBottle);
};

instance ItSe_CavalornsBeutel (ItemPR_Mission)
{
	name 			=	"Skórzana torba Cavalorna";
	visual 			=	"ItMi_Pocket.3ds";
	description		=	name;
};

instance ItMi_GornsTreasure_MIS (ItemPR_Mission)
{
	name 			=	"Skórzana sakwa Gorna";
	visual 			=	"ItMi_Pocket_Gold.3ds";
	scemename		=	"MAPSEALED";
	on_state[0]		=   UseGornsTreasure;
	description		=	name;
};
FUNC VOID UseGornsTreasure()
{
	B_PlayerFindItem (ItMi_Gold, 250);
	Gorns_Beutel = true;
};

instance ItMi_MalethsBanditGold (ItemPR_Mission)
{
	name 			=	"Sakwa pe³na z³ota!";
	visual 			=	"ItMi_Pocket_Gold.3ds";
	scemename		=	"MAPSEALED";
	on_state[0]		=   Use_MalethsBanditGold;
	description		=	name;
};
FUNC VOID Use_MalethsBanditGold()
{
	B_PlayerFindItem (ItMi_Gold, 300);
};

instance ItSe_Golemchest_Mis (ItemPR_Mission)
{
	name 			=	"Skórzany mieszek";
	visual 			=	"ItMi_Pocket_Gold.3ds";
	scemename		=	"MAPSEALED";
	on_state[0]		=   Use_GolemChest;
	description		=	name;
};
FUNC VOID Use_GolemChest()
{
	B_PlayerFindItem (ItMi_Gold, 50);
	Print(PRINT_FoundRing);
	CreateInvItem (self, ItRi_ProtTotal_02);
	Snd_Play("Geldbeutel");
};

instance ItSe_DiegosTreasure_Mis (ItemPR_Mission)
{
	name 			=	"Skórzana torba Diega";
	visual 			=	"ItMi_Pocket.3ds";
	description		=	name;
};

instance ItMi_KerolothsGeldbeutel_MIS (ItemPR_Mission)
{
	name 			=	"Skórzana torba Kerolotha";
	visual 			=	"ItMi_Pocket.3ds";
	scemename		=	"MAPSEALED";
	on_state[0]		=   UseKerolothsGeldbeutel;
	description		=	name;
};
FUNC VOID UseKerolothsGeldbeutel()
{
	B_PlayerFindItem (ItMi_Gold, 300);
	CreateInvItem (self, ItMi_KerolothsGeldbeutelLeer_MIS);
	Snd_Play("Geldbeutel");
};

instance ItMi_KerolothsGeldbeutelLeer_MIS (ItemPR_Mission)
{
	name 			=	"Skórzana torba Kerolotha";
	visual 			=	"ItMi_Pocket.3ds";
	description		=	name;
};
///******************************************************************************************

var	string TEXT_Innoseye_Setting;
const string TEXT_InnosEye_Setting_Broken		=	"Oprawa amuletu jest pêkniêta.";
const string TEXT_InnosEye_Setting_Repaired		=	"Oprawa amuletu jest ca³a.";

///******************************************************************************************
instance ItAm_InnosEye_Broken (ItemPR_Mission)
{
	name 			=	"Oko Innosa";
	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_MISSION;
	
	visual 			=	"ItMi_InnosEye_MIS.3DS";
	on_equip		=	Equip_InnosEye_Broken;
	
	description		=	name;
	TEXT[0]			=	TEXT_Innoseye_Setting;
	TEXT[1]			=	"Klejnot jest martwy i pozbawiony mocy.";
	INV_ZBIAS		=	INVCAM_ENTF_AMULETTE_STANDARD;
};  
func void Equip_InnosEye_Broken()
{
	Wld_PlayEffect ("spellFX_Fear", self, self, 0, 0, 0, false);
	Snd_Play("MFX_FEAR_CAST");
};

instance ItAm_InnosEye (ItemPR_Mission)
{
	name 			=	"Oko Innosa";
	mainflag 		=	ITEM_KAT_MAGIC;
	flags 			=	ITEM_AMULET|ITEM_MISSION;
	
	visual 			=	"ItMi_InnosEye_MIS.3DS";
	on_equip		=	Equip_InnosEye;
	
	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 
	
	description		=	name;
	TEXT[0]			=	"Pulsuje energi¹.";
	INV_ZBIAS		=	INVCAM_ENTF_AMULETTE_STANDARD;
};
FUNC VOID Equip_InnosEye()	 
{
	Wld_PlayEffect ("spellFX_Innoseye", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("spellFX_LIGHTSTAR_RED", self, self, 0, 0, 0, false);
	Wld_PlayEffect ("FX_EarthQuake", self, self, 0, 0, 0, false);
	AI_PlayAni (self, "T_MAGRUN_2_HEASHOOT");
	AI_StandUp(self);
	Snd_Play("SFX_INNOSEYE");
};
