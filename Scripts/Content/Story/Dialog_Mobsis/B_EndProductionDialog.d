///******************************************************************************************
/// B_EndProductionDialog
///******************************************************************************************
func void B_EndProductionDialog()
{
	AI_StopProcessInfos(self);
	Wld_StopEffect("DEMENTOR_FX");
	self.aivar[AIV_Invisible] = false;
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
};
