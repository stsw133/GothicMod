///******************************************************************************************
/// B_ChangeChapter
///******************************************************************************************
func void B_ChangeChapter (var int newKap, var int currentZen)
{
	Kapitel = newKap;
	
	var string chapterNumber; chapterNumber = ConcatStrings("Rozdzia³ ", IntToString(newKap));
	
	if		(newKap == 1)	{	IntroduceChapter (chapterNumber, "Witamy w Kolonii!",	"chapter_01.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 2)	{	IntroduceChapter (chapterNumber, "Gniazdo pe³zaczy",	"chapter_02.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 3)	{	IntroduceChapter (chapterNumber, "Staro¿ytna magia",	"chapter_03.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 4)	{	IntroduceChapter (chapterNumber, "Xardas",				"chapter_04.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 5)	{	IntroduceChapter (chapterNumber, "Stra¿nicy portalu",	"chapter_05.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 6)	{	IntroduceChapter (chapterNumber, "Le¿e Œni¹cego",		"chapter_06.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 7)	{	IntroduceChapter (chapterNumber, "Zagro¿enie",			"chapter_07.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 8)	{	IntroduceChapter (chapterNumber, "Powrót do Kolonii",	"chapter_08.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 9)	{	IntroduceChapter (chapterNumber, "Oko Innosa",			"chapter_09.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 10)	{	IntroduceChapter (chapterNumber, "Polowanie na smoki",	"chapter_10.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 11)	{	IntroduceChapter (chapterNumber, "Rozstanie",			"chapter_11.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 12)	{	IntroduceChapter (chapterNumber, "Dwór Irdorath",		"chapter_12.tga", "chapter_01.wav", 6000);	};
	
	B_CheckLog();
	
	if (currentZen == OLDWORLD_ZEN)	{	B_ENTER_OLDWORLD();	};
	if (currentZen == NEWWORLD_ZEN)	{	B_ENTER_NEWWORLD();	};
};
