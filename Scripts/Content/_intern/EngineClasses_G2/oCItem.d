///******************************************************************************************
/// Item
///******************************************************************************************
class oCItem
{
	//zCVob {
	//zCObject {
	var int _vtbl;
	var int _zCObject_refCtr;
	var int _zCObject_hashIndex;
	var int _zCObject_hashNext;
	var string _zCObject_objectName;
	//}
	var int _zCVob_globalVobTreeNode;
	var int _zCVob_lastTimeDrawn;
	var int _zCVob_lastTimeCollected;
	var int _zCVob_vobLeafList_array;
	var int _zCVob_vobLeafList_numAlloc;
	var int _zCVob_vobLeafList_numInArray;
	var int _zCVob_trafoObjToWorld[16];
	var int _zCVob_bbox3D_mins[3];
	var int _zCVob_bbox3D_maxs[3];
	var int _zCVob_bsphere3D_center[3];
	var int _zCVob_bsphere3D_radius;
	var int _zCVob_touchVobList_array;
	var int _zCVob_touchVobList_numAlloc;
	var int _zCVob_touchVobList_numInArray;
	var int _zCVob_type;
	var int _zCVob_groundShadowSizePacked;
	var int _zCVob_homeWorld;
	var int _zCVob_groundPoly;
	var int _zCVob_callback_ai;
	var int _zCVob_trafo;
	var int _zCVob_visual;
	var int _zCVob_visualAlpha;
	var int _zCVob_m_fVobFarClipZScale;
	var int _zCVob_m_AniMode;
	var int _zCVob_m_aniModeStrength;
	var int _zCVob_m_zBias;
	var int _zCVob_rigidBody;
	var int _zCVob_lightColorStat;
	var int _zCVob_lightColorDyn;
	var int _zCVob_lightDirectionStat[3];
	var int _zCVob_vobPresetName;
	var int _zCVob_eventManager;
	var int _zCVob_nextOnTimer;
	var int _zCVob_bitfield[5];
	var int _zCVob_m_poCollisionObjectClass;
	var int _zCVob_m_poCollisionObject;
	
	/// For all items
	var int id;
	var string name, nameID;
	var int hp, hp_max;
	
	var int mainflag, flags;
	var int weight, value;
	
	/// For weapons
	var int damageType;
	var int damageTotal;
	var int damage[DAM_INDEX_MAX];
	
	/// For armor
	var int wear;
	var int protection[PROT_INDEX_MAX];
	
	/// For food
	var int nutrition;		// HP increase in food
	
	/// Required attributes to use the item
	var int cond_atr[3];
	var int cond_value[3];
	
	/// Attributes that are changed when the item is created
	var int change_atr[3];
	var int change_value[3];
	
	/// Parser functions
	var int magic;			// Parser function for the "Magic Header"
	var int on_equip;		// Parser function when the item is equipped
	var int on_unequip;		// Parser function when the item is unequipped
	var int on_state[4];

	/// Owner
	var int owner;
	var int ownerGuild;
	var int disguiseGuild;	// Guild displayed through disguise
	
	/// The 3DS file
	var string visual;
	
	/// Change to the NPC mesh when equipping this item
	var string visual_change;	// ASC - File
	var string effect;			// Effekt Instanz
	var int visual_skin;
	
	var string scemeName;
	var int material;	
	// var string pfx;			// Magic Weapon PFX
	var int munition;			// Instance of Munition
	
	var int spell;
	var int range;
	
	var int mag_circle;
	
	var string description;
	var string text[ITM_TEXT_MAX];
	var int count[ITM_TEXT_MAX];
	
	/// Inventory display stories, only used if different from 0
	var int inv_zbias;						// How far is the item shifted in the inventory towards the far plane (integer scale 100=1)
	var	int inv_rotx;						// How many degrees around the x-axis is the item in inventory rotated?
	var int inv_roty;						// How many degrees around the y-axis is the item in inventory rotated?
	var int inv_rotz;						// How many degrees around the z-axis is the item in inventory rotated?
	var int inv_animate;					// Should the item be rotated into inventory?
	
	var int amount;							//int How many items are there (item stack)?
	var int instanz;						//int Symbolindex
	var int c_manipulation;					//int ?
	var int last_manipulation;				//zREAL ?
	var int magic_value;					//int ?
	var int effectVob;						//oCVisualFX*
	var int next;							//oCItem* These are probably simply linked lists.
};

///******************************************************************************************
class oCItemContainer
{
	var int vtbl;                                               // 0x00
	var int contents;                                           // 0x04 zCListSort<oCItem>*
	var int npc;                                                // 0x08 oCNpc*
	var string titleText;                                       // 0x0C zSTRING
	var int invMode;                                            // 0x20 int
	var int selectedItem;                                       // 0x24 int
	var int offset;                                             // 0x28 int
	var int maxSlotsCol;                                        // 0x2C int
	var int maxSlotsColScr;                                     // 0x30 int
	var int maxSlotsRow;                                        // 0x34 int
	var int maxSlotsRowScr;                                     // 0x38 int
	var int maxSlots;                                           // 0x3C int
	var int marginTop;                                          // 0x40 int
	var int marginLeft;                                         // 0x44 int
	var int frame;                                              // 0x48 zBOOL
	var int right;                                              // 0x4C zBOOL
	var int ownList;                                            // 0x50 zBOOL
	var int prepared;                                           // 0x54 zBOOL
	var int passive;                                            // 0x58 zBOOL
	var int TransferCount;                                      // 0x5C zINT
	var int viewTitle;                                          // 0x60 zCView*
	var int viewBack;                                           // 0x64 zCView*
	var int viewItem;                                           // 0x68 zCView*
	var int viewItemActive;                                     // 0x6C zCView*
	var int viewItemHightlighted;                               // 0x70 zCView*
	var int viewItemActiveHighlighted;                          // 0x74 zCView*
	var int viewItemInfo;                                       // 0x78 zCView*
	var int viewItemInfoItem;                                   // 0x7C zCView*
	var int textView;                                           // 0x80 zCView*
	var int viewArrowAtTop;                                     // 0x84 zCView*
	var int viewArrowAtBottom;                                  // 0x88 zCView*
	var int rndWorld;                                           // 0x8C zCWorld*
	var int posx;                                               // 0x90 int
	var int posy;                                               // 0x94 int
	var int m_bManipulateItemsDisabled;                         // 0x98 zBOOL
	var int m_bCanTransferMoreThanOneItem;                      // 0x9C zBOOL
};                                                              // 0xA0 sizeof_oCItemContainer
