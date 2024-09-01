///******************************************************************************************

var int VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC_OneTime;

///******************************************************************************************
/// VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC
///******************************************************************************************
func void VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC()
{
	if (!VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC_OneTime)
	{
		B_GivePlayerExp(200);
		VALLEY_SHOWCASE_TRIGGERSCRIPT_FUNC_OneTime = true;
	};
};
