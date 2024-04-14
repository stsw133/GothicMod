///******************************************************************************************
///	FAI Stein-Golem (8)
///******************************************************************************************

/*
MOVE_RUN
MOVE_RUNBACK
MOVE_JUMPBACK
MOVE_TURN
MOVE_STRAFE

MOVE_ATTACK

MOVE_PARADE
MOVE_STANDUP
MOVE_WAIT (200 ms)
*/

///******************************************************************************************
instance FA_ENEMY_PREHIT_8 (C_FightAI)
{
	move[0] = MOVE_PARADE;
};
instance FA_ENEMY_STORMPREHIT_8 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
};

///******************************************************************************************
instance FA_MY_W_COMBO_8 (C_FightAI)
{
	
};
instance FA_MY_W_RUNTO_8 (C_FightAI)
{
	move[0] = MOVE_TURN;
	move[1] = MOVE_ATTACK;
};
instance FA_MY_W_STRAFE_8 (C_FightAI)
{
	
};
instance FA_MY_W_FOCUS_8 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT;
};
instance FA_MY_W_NOFOCUS_8 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_G_COMBO_8 (C_FightAI)
{
	
};
instance FA_MY_G_RUNTO_8 (C_FightAI)
{
	//move[0] = MOVE_ATTACK;
	move[0] = MOVE_RUN;
};
instance FA_MY_G_STRAFE_8 (C_FightAI)
{
	
};
instance FA_MY_G_FOCUS_8 (C_FightAI)
{
	move[0] = MOVE_RUN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_8 (C_FightAI)
{
	move[0] = MOVE_RUN;
};
instance FA_MY_G_FK_NOFOCUS_8 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_FAR_8 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
};
instance FA_MY_FK_NOFOCUS_FAR_8 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_MAG_8 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT_EXT;
	move[2] = MOVE_WAIT_EXT;
	move[3] = MOVE_WAIT_EXT;
//	move[4] = MOVE_WAIT_EXT;
//	move[5] = MOVE_WAIT_EXT;
};
instance FA_MY_FK_NOFOCUS_MAG_8 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
