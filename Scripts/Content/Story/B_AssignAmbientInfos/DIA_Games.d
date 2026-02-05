///******************************************************************************************
/// HIGHER OR LOWER CARD GAME
///******************************************************************************************

const int HL_GUESS_LOWER					=	-1;
const int HL_GUESS_EQUAL					=	0;
const int HL_GUESS_HIGHER					=	1;
const int HL_EQUAL_BONUS					=	5;

var int HL_Deck[52];
var int HL_CardsRemaining;
var int HL_PreviousCard;
var int HL_Streak;
var int HL_Score;
var int HL_EqualGuessed;
var int HL_GameHost;
var int HL_GameActive;
var int HL_TextLines[6];
var int HL_TextLineCount;
var int HL_CardView;
var int HL_CardViewVisible;

func void HL_ResetDeck()
{
	var int idx; idx = 0;
	repeat(idx, 52);
	MEM_WriteStatArr(HL_Deck, idx, idx + 1);
	end;
	
	HL_CardsRemaining = 52;
};

func int HL_DrawCard()
{
	if (HL_CardsRemaining <= 0)
	{
		return -1;
	};
	
	var int choice; choice = Hlp_Random(HL_CardsRemaining);
	var int card; card = MEM_ReadStatArr(HL_Deck, choice);
	
	HL_CardsRemaining -= 1;
	MEM_WriteStatArr(HL_Deck, choice, MEM_ReadStatArr(HL_Deck, HL_CardsRemaining));
	
	return card;
};

func int HL_GetCardRank(var int card)
{
	var int base; base = (card - 1) % 13;
	
	if (base == 0)
	{
		return 14;		/// Ace is the top card
	};
	
	return base + 1;	/// 2..13 map to 2..King
};

func string HL_GetRankLabel(var int rank)
{
	if (rank == 14)	{ return "As"; };
	if (rank == 13)	{ return "Król"; };
	if (rank == 12)	{ return "Dama"; };
	if (rank == 11)	{ return "Walet"; };
	
	return IntToString(rank);
};

func string HL_GetRankTextureLabel(var int rank)
{
	if (rank == 14)	{ return "A"; };
	if (rank == 13)	{ return "K"; };
	if (rank == 12)	{ return "Q"; };
	if (rank == 11)	{ return "J"; };
	
	return IntToString(rank);
};

func string HL_GetSuitSymbol(var int card)
{
	var int suit; suit = (card - 1) / 13;
	
	if (suit == 0)	{ return "a"; };
	if (suit == 1)	{ return "b"; };
	if (suit == 2)	{ return "c"; };
	
	return "d";
};

func string HL_GetCardTexture(var int card)
{
	var string label; label = HL_GetRankTextureLabel(HL_GetCardRank(card));
	var string suit; suit = HL_GetSuitSymbol(card);
	return "DEFAULT.tga";
	//return ConcatStrings("Card_", ConcatStrings(label, ConcatStrings(suit, ".tga")));
};

func void HL_ClearPersistentText()
{
	var int idx; idx = 0;
	repeat(idx, 6);
		var int handle; handle = MEM_ReadStatArr(HL_TextLines, idx);
		if (Hlp_IsValidHandle(handle))
		{
			Print_DeleteText(handle);
		};
		MEM_WriteStatArr(HL_TextLines, idx, 0);
	end;
	HL_TextLineCount = 0;
};

func void HL_AddPersistentLine(var string text, var int color)
{
	var int y; y = PF_PrintY - (HL_TextLineCount * PF_TextHeight);
	var int handle; handle = Print_Ext(PF_PrintX, y, text, PF_Font, color, -1);
	MEM_WriteStatArr(HL_TextLines, HL_TextLineCount, handle);
	HL_TextLineCount += 1;
};

func void HL_ShowCard(var int card)
{
	var string texture; texture = HL_GetCardTexture(card);
	
	if (!Hlp_IsValidHandle(HL_CardView))
	{
		HL_CardView = View_CreateCenterPxl(Print_Screen[PS_X] / 2, Print_Screen[PS_Y] / 2, 300, 420);
		View_Open(HL_CardView);
	};
	
	View_SetTexture(HL_CardView, texture);
	
	if (!HL_CardViewVisible)
	{
		ViewPtr_InsertItem(MEM_ReadInt(screen), getPtr(HL_CardView));
		HL_CardViewVisible = true;
	};
};

func void HL_ClearCardView()
{
	if (HL_CardViewVisible && Hlp_IsValidHandle(HL_CardView))
	{
		ViewPtr_RemoveItem(MEM_ReadInt(screen), getPtr(HL_CardView));
		HL_CardViewVisible = false;
	};
	
	if (Hlp_IsValidHandle(HL_CardView))
	{
		View_Delete(HL_CardView);
	};
	HL_CardView = 0;
};

func string HL_GetCardLabel(var int card)
{
	return HL_GetRankLabel(HL_GetCardRank(card));
};

func void HL_PrintRoundHeader()
{
	var string text;
	text = ConcatStrings("Karta bazowa: ", HL_GetCardLabel(HL_PreviousCard));
	text = ConcatStrings(text, ConcatStrings(" | Pozosta³o kart: ", IntToString(HL_CardsRemaining)));
	//PrintS_Ext(text, COL_White);
	HL_AddPersistentLine(text, COL_White);
};

func void HL_StartGame(var C_Npc slf)
{
	HL_ResetDeck();
	
	HL_PreviousCard = HL_DrawCard();
	HL_Streak = 0;
	HL_Score = 0;
	HL_EqualGuessed = false;
	HL_GameHost = Hlp_GetInstanceID(slf);
	HL_GameActive = true;
	
	//PrintS_Ext("Rozdajemy 52 karty. As jest najwy¿szy (K < A).", COL_White);
	HL_ClearPersistentText();
	HL_AddPersistentLine("Rozdajemy 52 karty. As jest najwyszy (K < A).", COL_White);
	HL_PrintRoundHeader();
	HL_ShowCard(HL_PreviousCard);
};

func void HL_CashOut(var int forced)
{
	HL_GameActive = false;
	HL_ClearPersistentText();
	HL_ClearCardView();
	
	var int finalScore; finalScore = HL_Score;
	if (HL_EqualGuessed)
	{
		finalScore += HL_EQUAL_BONUS;
	};
	
	var string result;
	if (forced)
	{
		result = "Talia siê skoñczy³a. Czas na nagrodê!";
	}
	else
	{
		result = "Koniec gry. Zgarnij nagrodê!";
	};
	PrintS_Ext(result, COL_White);
	//HL_AddPersistentLine(result, COL_White);
	
	var string scoreLine;
	scoreLine = ConcatStrings("Wynik za seriê: ", IntToString(HL_Score));
	PrintS_Ext(scoreLine, COL_Exp);
	//HL_AddPersistentLine(scoreLine, COL_Exp);
	
	if (HL_EqualGuessed)
	{
		var string bonusLine;
		bonusLine = ConcatStrings("Bonus za trafione 'taka sama': ", IntToString(HL_EQUAL_BONUS));
		PrintS_Ext(bonusLine, COL_Exp);
		//HL_AddPersistentLine(bonusLine, COL_Exp);
	};
	
	var string totalLine;
	totalLine = ConcatStrings("Suma punktów: ", IntToString(finalScore));
	PrintS_Ext(totalLine, COL_Exp);
	//HL_AddPersistentLine(totalLine, COL_Exp);
	
	B_GivePlayerExp(finalScore);
	Info_ClearChoices(DIA_HigherLower_JOIN);
	AI_StopProcessInfos(self);
};

func void HL_ShowChoices()
{
	Info_ClearChoices(DIA_HigherLower_JOIN);
	Info_AddChoice (DIA_HigherLower_JOIN, "Wiêksza ni¿ poprzednia", DIA_HigherLower_GuessHigher);
	Info_AddChoice (DIA_HigherLower_JOIN, "Mniejsza ni¿ poprzednia", DIA_HigherLower_GuessLower);
	Info_AddChoice (DIA_HigherLower_JOIN, "Taka sama jak poprzednia", DIA_HigherLower_GuessEqual);
	
	if (HL_Streak >= 3)
	{
		Info_AddChoice (DIA_HigherLower_JOIN, "Zakoñcz i zgarnij nagrodê", DIA_HigherLower_CashOut);
	};
	
	HL_ShowCard(HL_PreviousCard);
};

func void HL_HandleFailure(var int drawnCard)
{
	var string text;
	text = ConcatStrings("Przegrana! Odkryta karta to ", HL_GetCardLabel(drawnCard));
	//PrintS_Ext(text, COL_Red);
	HL_ClearPersistentText();
	HL_AddPersistentLine(text, COL_Red);
	HL_ClearCardView();
	
	HL_GameActive = false;
	Info_ClearChoices(DIA_HigherLower_JOIN);
	AI_StopProcessInfos(self);
};

func void HL_HandleSuccess(var int drawnCard, var int guessedEqual)
{
	HL_Streak += 1;
	HL_Score += HL_Streak;
	HL_PreviousCard = drawnCard;
	
	if (guessedEqual)
	{
		HL_EqualGuessed = true;
	};
	
	var string text;
	text = ConcatStrings("Trafione! Nowa karta: ", HL_GetCardLabel(drawnCard));
	text = ConcatStrings(text, ConcatStrings(" | Seria: ", IntToString(HL_Streak)));
	text = ConcatStrings(text, ConcatStrings(" | Wynik: ", IntToString(HL_Score)));
	//PrintS_Ext(text, COL_White);
	HL_ClearPersistentText();
	HL_AddPersistentLine(text, COL_White);
	
	if (HL_CardsRemaining <= 0)
	{
		HL_CashOut(true);
		return;
	};
	
	HL_PrintRoundHeader();
	HL_ShowCard(HL_PreviousCard);
	HL_ShowChoices();
};

func void HL_ProcessGuess(var int guessType)
{
	var int drawnCard; drawnCard = HL_DrawCard();
	
	if (drawnCard == -1)
	{
		HL_CashOut(true);
		return;
	};
	
	var int previousRank; previousRank = HL_GetCardRank(HL_PreviousCard);
	var int newRank; newRank = HL_GetCardRank(drawnCard);
	
	if (guessType == HL_GUESS_HIGHER)
	{
		if (newRank > previousRank)		{	HL_HandleSuccess(drawnCard, false);	}
		else							{	HL_HandleFailure(drawnCard);		};
	}
	else if (guessType == HL_GUESS_LOWER)
	{
		if (newRank < previousRank)		{	HL_HandleSuccess(drawnCard, false);	}
		else							{	HL_HandleFailure(drawnCard);		};
	}
	else
	{
		if (newRank == previousRank)	{	HL_HandleSuccess(drawnCard, true);	}
		else							{	HL_HandleFailure(drawnCard);		};
	};
};

///******************************************************************************************
/// GAMES
///******************************************************************************************
instance DIA_HigherLower_JOIN (C_Info)
{
	nr									=	820;
	condition							=	DIA_HigherLower_JOIN_Condition;
	information							=	DIA_HigherLower_JOIN_Info;
	permanent							=	true;
	description							=	"Zagraj w 'Higher or Lower'";
};

func int DIA_HigherLower_JOIN_Condition()
{
	if (self.aivar[AIV_CanOffer] & OFFER_Games)
	{
		return true;
	};
};

func void DIA_HigherLower_JOIN_Info()
{
	if (!HL_GameActive)
	|| (HL_GameHost != Hlp_GetInstanceID(self))
	{
		HL_StartGame(self);
	};
	
	HL_ShowChoices();
};

func void DIA_HigherLower_GuessHigher()
{
	HL_ProcessGuess(HL_GUESS_HIGHER);
};
func void DIA_HigherLower_GuessLower()
{
	HL_ProcessGuess(HL_GUESS_LOWER);
};
func void DIA_HigherLower_GuessEqual()
{
	HL_ProcessGuess(HL_GUESS_EQUAL);
};
func void DIA_HigherLower_CashOut()
{
	HL_CashOut(false);
};
