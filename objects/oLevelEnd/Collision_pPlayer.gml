/// @description Move to next room

with(pPlayer)
{
	if(hascontrol)
	{
		hascontrol = false;
		SlideTransition(TRANS_MODE.GOTO,other.target);
	}
}