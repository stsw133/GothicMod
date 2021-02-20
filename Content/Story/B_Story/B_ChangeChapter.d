///******************************************************************************************
///	Kapitelwechsel
///******************************************************************************************
FUNC VOID B_ChangeChapter (var int newKap, var int currentZen)
{
	Kapitel = newKap;
	Npc_SetTalentSkill (hero, NPC_TALENT_CHAPTER, newKap);
	
	var string chapterNumber; chapterNumber = ConcatStrings(TEXT_Chapter,IntToString(newKap));
	
	if (newKap == 1)		{	IntroduceChapter (chapterNumber, TEXT_Chapter_01, "chapter_01.tga", "chapter_01.wav", 6000);	}
	else if	(newKap == 2)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_02, "chapter_02.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 3)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_03, "chapter_03.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 4)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_04, "chapter_04.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 5)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_05, "chapter_05.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 6)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_06, "chapter_06.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 7)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_07, "chapter_07.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 8)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_08, "chapter_08.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 9)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_09, "chapter_09.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 10)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_10, "chapter_10.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 11)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_11, "chapter_11.tga", "chapter_01.wav", 6000);	}
	else if (newKap == 12)	{	IntroduceChapter (chapterNumber, TEXT_Chapter_12, "chapter_12.tga", "chapter_01.wav", 6000);	};
	
 	B_CheckLog();
	
	if (currentZen == OLDWORLD_ZEN)		{	B_ENTER_OLDWORLD();		};
	if (currentZen == NEWWORLD_ZEN)		{	B_ENTER_NEWWORLD();		};
};
