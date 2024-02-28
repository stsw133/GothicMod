///******************************************************************************************
///	VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC
///******************************************************************************************

var int VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC_OneTime;

///******************************************************************************************
func void VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC()
{
	if (!VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC_OneTime)
	{
		B_GivePlayerExp(200);
		VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC_OneTime = true;
	};
};
