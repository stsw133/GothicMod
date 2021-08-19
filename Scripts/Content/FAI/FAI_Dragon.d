///******************************************************************************************
///	FAI Dragon (39)
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
instance FA_ENEMY_PREHIT_39 (C_FightAI)
{
	move[0] = MOVE_STRAFE;
	move[1] = MOVE_JUMPBACK;
	move[2] = MOVE_ATTACK;
	move[3] = MOVE_ATTACK;
	move[4] = MOVE_ATTACK;
};
instance FA_ENEMY_STORMPREHIT_39 (C_FightAI)
{
	move[0] = MOVE_STRAFE;
	move[1] = MOVE_ATTACK;
};

///******************************************************************************************
instance FA_MY_W_COMBO_39 (C_FightAI)
{
	
};
instance FA_MY_W_RUNTO_39 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
instance FA_MY_W_STRAFE_39 (C_FightAI)
{
	
};
instance FA_MY_W_FOCUS_39 (C_FightAI)
{
	move[0] = MOVE_STRAFE;
	move[1] = MOVE_ATTACK;
	move[2] = MOVE_ATTACK;
	move[3] = MOVE_ATTACK;
};
instance FA_MY_W_NOFOCUS_39 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_G_COMBO_39 (C_FightAI)
{
	
};
instance FA_MY_G_RUNTO_39 (C_FightAI)
{
	//move[0] = MOVE_ATTACK;
	move[0] = MOVE_TURN;
};
instance FA_MY_G_STRAFE_39 (C_FightAI)
{
	
};
instance FA_MY_G_FOCUS_39 (C_FightAI)
{
	//move[0] = MOVE_RUN;
	move[0] = MOVE_STRAFE;
	move[1] = MOVE_ATTACK;
	move[2] = MOVE_ATTACK;
	move[3] = MOVE_ATTACK;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_39 (C_FightAI)
{
	move[0] = MOVE_RUN;
};
instance FA_MY_G_FK_NOFOCUS_39 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_FAR_39 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
};
instance FA_MY_FK_NOFOCUS_FAR_39 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_MAG_39 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_TURN;
	//move[2] = MOVE_WAIT_EXT;
	//move[3] = MOVE_WAIT_EXT;
};
instance FA_MY_FK_NOFOCUS_MAG_39 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
