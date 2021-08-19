///******************************************************************************************
///	FAI Human Strong (3)
///******************************************************************************************

/*
MOVE_RUN
MOVE_RUNBACK
MOVE_JUMPBACK
MOVE_TURN
MOVE_STRAFE

MOVE_ATTACK

MOVE_SIDEATTACK
MOVE_FRONTATTACK

MOVE_TRIPLEATTACK

MOVE_WHIRLATTACK
MOVE_MASTERATTACK

MOVE_PARADE
MOVE_STANDUP
MOVE_WAIT (200 ms)
*/

///******************************************************************************************
instance FA_ENEMY_PREHIT_3 (C_FightAI)
{
	move[0] = MOVE_JUMPBACK;
	move[1] = MOVE_PARADE;
};
instance FA_ENEMY_STORMPREHIT_3 (C_FightAI)
{
	move[0] = MOVE_STRAFE;
};

///******************************************************************************************
instance FA_MY_W_COMBO_3 (C_FightAI)
{
	
};
instance FA_MY_W_RUNTO_3 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
instance FA_MY_W_STRAFE_3 (C_FightAI)
{
	
};
instance FA_MY_W_FOCUS_3 (C_FightAI)
{
	move[0] = MOVE_FRONTATTACK;
	move[1] = MOVE_ATTACK;
	move[2] = MOVE_JUMPBACK;
};
instance FA_MY_W_NOFOCUS_3 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_G_COMBO_3 (C_FightAI)
{
	
};
instance FA_MY_G_RUNTO_3 (C_FightAI)
{
	//move[0] = MOVE_ATTACK;
	move[0] = MOVE_RUN;
};
instance FA_MY_G_STRAFE_3 (C_FightAI)
{
	
};
instance FA_MY_G_FOCUS_3 (C_FightAI)
{
	move[0] = MOVE_RUN;
	move[1] = MOVE_RUN; 
	move[2] = MOVE_STRAFE;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_3 (C_FightAI)
{
	move[0] = MOVE_RUN;
};
instance FA_MY_G_FK_NOFOCUS_3 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_FAR_3 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
};
instance FA_MY_FK_NOFOCUS_FAR_3 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_MAG_3 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_Wait_EXT;
	move[2] = MOVE_Wait_EXT;
};
instance FA_MY_FK_NOFOCUS_MAG_3 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
