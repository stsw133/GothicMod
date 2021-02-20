///******************************************************************************************
///	C_WantToEat
///******************************************************************************************
func int C_WantToEat (var C_NPC slf, var C_NPC oth)
{
	/// ------ ich bin ein Party-Monster ------
	if (slf.aivar[AIV_PARTYMEMBER] == true)
	{
		return false;
	};
	
	/// ------ Scavenger / Biter frisst... ------
	if (slf.guild == GIL_SCAVENGER)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		/// ------ klassische Beutetiere ------
		|| (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		/// ------ Geflügel ------
//		|| (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_HARPY)
		/// ------ Wild ------
		|| (oth.guild == GIL_WOLF)
		|| (oth.guild == GIL_SUMMONED_WOLF)
		|| (oth.guild == GIL_SHADOWBEAST)
		/// ------ Reptilien ------
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_LURKER)
		|| (oth.guild == GIL_SNAPPER)
		/// ------ Insekten ------
		|| (oth.guild == GIL_MEATBUG)
		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_BLOODFLY)
		|| (oth.guild == GIL_MINECRAWLER)
		{
			return true;
		};
	};
	
	/// ------ Riesenratte frisst... ------
	if (slf.guild == GIL_GIANT_RAT)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		/// ------ klassische Beutetiere ------
		|| (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		/// ------ Geflügel ------
		|| (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_HARPY)
		/// ------ Wild ------
		|| (oth.guild == GIL_WOLF)
		|| (oth.guild == GIL_SUMMONED_WOLF)
		|| (oth.guild == GIL_SHADOWBEAST)
		/// ------ Reptilien ------
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_LURKER)
		|| (oth.guild == GIL_SNAPPER)
		/// ------ Insekten ------
		|| (oth.guild == GIL_MEATBUG)
		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_BLOODFLY)
		|| (oth.guild == GIL_MINECRAWLER)
		{
			return true;
		};
	};
	
	/// ------ Feldräuber frisst... ------
	if (slf.guild == GIL_GIANT_BUG)
	{
		/// ------ Insekten ------
		if (oth.guild == GIL_MEATBUG)
//		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_BLOODFLY)
		|| (oth.guild == GIL_MINECRAWLER)
		{
			return true;
		};
	};
	
	/// ------ Waran frisst... ------
	if (slf.guild == GIL_WARAN)
	{
		/// ------ Geflügel ------
		if (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_HARPY)
		/// ------ Reptilien ------
		|| (oth.guild == GIL_GOBBO)
		{
			return true;
		};
	};
	
	/// ------ Wolf frisst... ------
	if (slf.guild == GIL_WOLF) && (slf.aivar[AIV_MM_REAL_ID] != ID_Keiler)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
//		|| (oth.guild > GIL_SEPERATOR_ORC)
		/// ------ klassische Beutetiere ------
		|| (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		{
			return true;
		};
	};
	
	/// ------ Summoned Wolf frisst... ------
	if (slf.guild == GIL_SUMMONED_WOLF)
	{
		/// ------ klassische Beutetiere ------
		if (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		{
			return true;
		};
	};
	
	/// ------ Minecrawler frisst... ------
	if (slf.guild == GIL_MINECRAWLER)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		/// ------ Insekten ------
		|| (oth.guild == GIL_MEATBUG)
		|| (oth.guild == GIL_GIANT_BUG)
		|| (oth.guild == GIL_BLOODFLY)
//		|| (oth.guild == GIL_MINECRAWLER)
		{
			return true;
		};
	};
	
	/// ------ Lurker frisst... ------
	if (slf.guild == GIL_LURKER)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		/// ------ Reptilien ------
		|| (oth.guild == GIL_GOBBO)
		{
			return true;
		};
	};
	
	/// ------ Zombie frisst... ------
	if (slf.guild == GIL_ZOMBIE)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		{
			return true;
		};
	};
	
	/// ------ Snapper frisst... ------
	if (slf.guild == GIL_SNAPPER)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		/// ------ klassische Beutetiere ------
		|| (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		/// ------ Geflügel ------
		|| (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_HARPY)
		/// ------ Wild ------
		|| (oth.guild == GIL_WOLF)
		|| (oth.guild == GIL_SUMMONED_WOLF)
		|| (oth.guild == GIL_SHADOWBEAST)
		/// ------ Reptilien ------
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_LURKER)
//		|| (oth.guild == GIL_SNAPPER)
		{
			return true;
		};
	};
	
	/// ------ Shadowbeast frisst... ------
	if (slf.guild == GIL_SHADOWBEAST)
	{
		/// ------ Menschen und Orks ------
		if (oth.guild < GIL_SEPERATOR_HUM)
		|| (oth.guild > GIL_SEPERATOR_ORC)
		/// ------ klassische Beutetiere ------
		|| (oth.guild == GIL_SHEEP)
		|| (oth.guild == GIL_GIANT_RAT)
		|| (oth.guild == GIL_MOLERAT)
		/// ------ Geflügel ------
		|| (oth.guild == GIL_SCAVENGER)
		|| (oth.guild == GIL_HARPY)
		/// ------ Wild ------
		|| (oth.guild == GIL_WOLF)
		|| (oth.guild == GIL_SUMMONED_WOLF)
//		|| (oth.guild == GIL_SHADOWBEAST)
		/// ------ Reptilien ------
		|| (oth.guild == GIL_GOBBO)
		|| (oth.guild == GIL_WARAN)
		|| (oth.guild == GIL_LURKER)
		|| (oth.guild == GIL_SNAPPER)
		{
			return true;
		};
	};
	
	return false;
};
