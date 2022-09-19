with(pPlayer)
{
	PlayerHp += 1;
}

audio_play_sound(n_health,10,false);
instance_destroy();