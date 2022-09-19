with(pPlayer)
{
	
	if (!audio_is_playing(jumppad))
	{
		audio_play_sound(jumppad,20,false);
	}

	vsp -= other.jumpPadForce;
}