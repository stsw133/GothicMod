///******************************************************************************************
///	B_ENDPRODUCTIONDIALOG
///******************************************************************************************
func void B_ENDPRODUCTIONDIALOG()
{
	AI_StopProcessInfos(self);
 	Wld_StopEffect("DEMENTOR_FX");
	self.aivar[AIV_INVINCIBLE] = false;
	PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
};
