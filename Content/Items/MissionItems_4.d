
const int Value_Dragonegg 		= 200;//Joly: nicht ändern
const int Value_OrcEliteRing 	= 130;//Joly: nicht ändern

/******************************************************************************************/	

var int Neoras_SCUsedDragonEggDrink;
INSTANCE ItPo_DragonEggDrinkNeoras_MIS (C_Item)
{
	name 			=	"Mikstura";

	mainflag 		=	ITEM_KAT_POTIONS;
	flags 			=	ITEM_MULTI;

	value 			=	1000;	

	visual 			=	"ItPo_Perm_STR.3ds";
	material 		=	MAT_GLAS;
	on_state[0]		=	Use_DragonEggDrinkNeoras;
	scemeName		=	"POTIONFAST";

	wear			= 	WEAR_EFFECT;
	effect			=	"SPELLFX_ITEMGLIMMER"; 

	description		= 	"Mikstura wydzieliny ze smoczych jaj";
	
	TEXT[3]			= 	"Skutki nieznane.";				
	
	TEXT[5]			= 	NAME_Value;					
	COUNT[5]		= 	value;
};

	FUNC VOID Use_DragonEggDrinkNeoras()
	{
		Npc_ChangeAttribute	(self,	ATR_HITPOINTS,	100);
		B_RaiseAttribute (self, ATR_STRENGTH, + 3);
		Snd_Play ("DEM_Warn");
		Neoras_SCUsedDragonEggDrink = TRUE;
	};

