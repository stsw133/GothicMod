///******************************************************************************************
///	FAI Snapper (18)
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
instance FA_ENEMY_PREHIT_18 (C_FightAI)
{
	move[0] = MOVE_JUMPBACK;
	move[2] = MOVE_WAIT;
};
instance FA_ENEMY_STORMPREHIT_18 (C_FightAI)
{
	move[0] = MOVE_STRAFE;
};

///******************************************************************************************
instance FA_MY_W_COMBO_18 (C_FightAI)
{
	
};
instance FA_MY_W_RUNTO_18 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
instance FA_MY_W_STRAFE_18 (C_FightAI)
{
	
};
instance FA_MY_W_FOCUS_18 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT;
};
instance FA_MY_W_NOFOCUS_18 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_G_COMBO_18 (C_FightAI)
{
	
};
instance FA_MY_G_RUNTO_18 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	//move[1] = MOVE_RUN;
};
instance FA_MY_G_STRAFE_18 (C_FightAI)
{
	
};
instance FA_MY_G_FOCUS_18 (C_FightAI)
{
	move[0] = MOVE_RUN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_18 (C_FightAI)
{
	move[0] = MOVE_RUN;
};
instance FA_MY_G_FK_NOFOCUS_18 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_FAR_18 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
};
instance FA_MY_FK_NOFOCUS_FAR_18 (C_FightAI)
{
	move[0] = MOVE_TURN;
};

///******************************************************************************************
instance FA_MY_FK_FOCUS_MAG_18 (C_FightAI)
{
	move[0] = MOVE_ATTACK;
	move[1] = MOVE_WAIT_LONGER;
	move[2] = MOVE_WAIT_LONGER;
	move[3] = MOVE_WAIT_LONGER;
	move[4] = MOVE_WAIT_LONGER;
	move[5] = MOVE_WAIT_LONGER;
};
instance FA_MY_FK_NOFOCUS_MAG_18 (C_FightAI)
{
	move[0] = MOVE_TURN;
};
