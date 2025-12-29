///******************************************************************************************
/// Info choice
///******************************************************************************************
class oCInfoChoice
{
	var string Text;       //zSTRING 
	var int Function;      //int     //symbolindex
};

///******************************************************************************************
/// Info
///******************************************************************************************

/* Caution!
Unlike C_NPC and C_ITEM, a C_INFO does not point to the enlarged memory area, but actually to itself.
Therefore, when applied to a C_INFO, MEM_InstGetOffset does NOT return the address of the surrounding oCInfo object, but rather the address of the contained C_INFO.
To get the oCInfo, subtract 4 + 4 + 20 = 28! */

const int oCInfo_C_INFO_Offset = 28;

class oCInfo
{
	/// Attention: Only "name" and "told" are saved to a save game!
	
	var int _vtbl;                  //Methodentabelle
	
	var int next;                   //oCInfo*
	var string name;                //zSTRING
	
	/// Well-known:
	//struct Tpd {
	var int npc;                    //int
	var int nr;                     //int
	var int important;              //zBOOL
	var int conditions;             //int
	var int information;            //int
	var string description;         //zSTRING
	var int trade;                  //zBOOL
	var int permanent;              //zBOOL
	//} pd;
	
	var int told;                   //zBOOL  //Already played (what Npc_KnowsInfo queries)
	var int _instance;              //int    //symbol index of oCInfo in the parser
	
	//Choices:
	//zCList< oCInfoChoice > listChoices;
	var int listChoices_data;       //oCInfoChoice*
	var int listChoices_next;       //zCList< oCInfoChoice >*
};

///******************************************************************************************
/// Info manager
///******************************************************************************************
class oCInfoManager
{
	var int _vtbl; /// Pointer to methods table
	
	/// List of all oCInfos. Sorted by...? We'd have to check.
	//zCListSort< oCInfo > infoList;
	var int infoList_compare;   //int (*Compare)(oCInfo *ele1,oCInfo *ele2);
	var int infoList_data;      //oCInfo*
	var int infoList_next;      //zCListSort< oCInfo >*
	
	/// Parser
	var int p;                  //zCParser*
};

///******************************************************************************************
/// Information manager
///******************************************************************************************
class oCInformationManager
{
	/*
	typedef
	enum zEInformationManagerMode
	{
		INFO_MGR_MODE_IMPORTANT ,
		INFO_MGR_MODE_INFO      ,
		INFO_MGR_MODE_CHOICE    ,
		INFO_MGR_MODE_TRADE
	}
	zTInfoMgrMode; */
	
	var string LastMethod;             //zSTRING
	var int DlgStatus;                 //zCViewDialogChoice*    //Those are views. That probably just means "advertisement".
	var int DlgTrade;                  //oCViewDialogTrade*     //Those are views. That probably just means "advertisement".
	var int DlgChoice;                 //zCViewDialogChoice*    //Those are views. That probably just means "advertisement".
	var int Npc;                       //oCNpc*
	var int Player;                    //oCNpc*
	var int Info;                      //oCInfo*
	var int IsDone;                    //zBOOL                  //== InfoManager_HasFinished
	var int IsWaitingForEnd;           //zBOOL
	var int IsWaitingForScript;        //zBOOL
	var int IsWaitingForOpen;          //zBOOL
	var int IsWaitingForClose;         //zBOOL
	var int IsWaitingForSelection;     //zBOOL
	var int MustOpen;                  //zBOOL
	var int IndexBye;                  //int
	var int ImportantCurrent;          //int
	var int ImportantMax;              //int
	var int Mode;                      //zTInfoMgrMode
};
