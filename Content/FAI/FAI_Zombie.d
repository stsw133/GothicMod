//******************************************************************************************
//	Kampf - AI Zombie (23)
//******************************************************************************************

/*
MOVE_RUN				
MOVE_RUNBACK			
MOVE_JUMPBACK			
MOVE_TURN				
MOVE_STRAFE				

MOVE_ATTACK				

MOVE_PARADE			
MOVE_STANDUP		
MOVE_WAIT				200 ms
*/

// ------ Gegner attackiert mich ------
instance FA_ENEMY_PREHIT_23 (C_FightAI)
{
};

// ------ Gegner macht Sturmattacke ------
instance FA_ENEMY_STORMPREHIT_23 (C_FightAI)
{
};

// ------ Ich bin im Combo-Fenster ------
instance FA_MY_W_COMBO_23 (C_FightAI)
{
};

// ------ Ich renne auf den Gegner zu ------
instance FA_MY_W_RUNTO_23 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

// ------- Ich Strafe gerade ------
instance FA_MY_W_STRAFE_23 (C_FightAI)
{
};

// ------- Ich habe Gegner im Fokus (kann treffen) -------
instance FA_MY_W_FOCUS_23 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT;
};

// ------- Ich habe Gegner NICHT im Fokus -------
instance FA_MY_W_NOFOCUS_23 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

// ------ Ich bin im Combo-Fenster ------
instance FA_MY_G_COMBO_23 (C_FightAI)
{
};

// ------ Ich renne auf den Gegner zu (kann Sturmattacke machen) ------
instance FA_MY_G_RUNTO_23 (C_FightAI)
{
	move[0] = MOVE_RUN;
};

// ------- Ich Strafe gerade ------
instance FA_MY_G_STRAFE_23 (C_FightAI)
{
};

// ------- Ich habe Gegner im Fokus -------
instance FA_MY_G_FOCUS_23 (C_FightAI)
{
	move[0] = MOVE_RUN;
};

// ------- Ich habe Gegner im Fokus -------
instance FA_MY_FK_FOCUS_23 (C_FightAI)
{
	move[0] = MOVE_RUN;
};

// ------- Ich habe Gegner NICHT im Fokus (gilt auch f�r G-Distanz!) -------
instance FA_MY_G_FK_NOFOCUS_23 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

// ------ Gegner im Fokus ------
instance FA_MY_FK_FOCUS_FAR_23 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
};

// ------ Gegner NICHT im Fokus ------
instance FA_MY_FK_NOFOCUS_FAR_23 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

// ------ Gegner im Fokus ------
instance FA_MY_FK_FOCUS_MAG_23 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT_LONGER;
	move[2] = MOVE_WAIT_LONGER;
	move[3] = MOVE_WAIT_LONGER;
	move[4] = MOVE_WAIT_LONGER;
	move[5] = MOVE_WAIT_LONGER;
};

// ------ Gegner NICHT im Fokus -------
instance FA_MY_FK_NOFOCUS_MAG_23 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
