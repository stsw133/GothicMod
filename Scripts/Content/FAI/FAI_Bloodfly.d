///******************************************************************************************
///	FAI Bloodfly (24)
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
instance FA_ENEMY_PREHIT_24 (C_FightAI)
{
	move[0] = MOVE_JUMPBACK;
	move[1] = MOVE_STRAFE;
};
instance FA_ENEMY_STORMPREHIT_24 (C_FightAI)
{
	move[0] = MOVE_STRAFE;
};

///******************************************************************************************
instance FA_MY_W_COMBO_24 (C_FightAI)
{
	
};
instance FA_MY_W_RUNTO_24 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
instance FA_MY_W_STRAFE_24 (C_FightAI)
{
	
};
instance FA_MY_W_FOCUS_24 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT;
};
instance FA_MY_W_NOFOCUS_24 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_G_COMBO_24 (C_FightAI)
{
	
};
instance FA_MY_G_RUNTO_24 (C_FightAI)
{
	//move[0] = MOVE_ATTACK;
	move[0] = MOVE_RUN;
};
instance FA_MY_G_STRAFE_24 (C_FightAI)
{
	
};
instance FA_MY_G_FOCUS_24 (C_FightAI)
{
	move[0] = MOVE_RUN;
	move[1] = MOVE_STRAFE;
	move[2] = MOVE_STRAFE;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_24 (C_FightAI)
{
	move[0] = MOVE_RUN;
};
instance FA_MY_G_FK_NOFOCUS_24 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_FAR_24 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
};
instance FA_MY_FK_NOFOCUS_FAR_24 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_MAG_24 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT_LONGER;
	move[2] = MOVE_WAIT_LONGER;
	move[3] = MOVE_WAIT_LONGER;
	move[4] = MOVE_WAIT_LONGER;
	move[5] = MOVE_WAIT_LONGER;
};
instance FA_MY_FK_NOFOCUS_MAG_24 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
