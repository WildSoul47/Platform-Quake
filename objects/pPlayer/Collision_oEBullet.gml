audio_play_sound(choose(pain100_1328,pain25_1329,pain50_1330,pain75_1331),3,false);

PlayerHp -- ;

BeenHitFlash = 3;

if (PlayerHp == 0) 
{
	KillPlayer();
}

with(other) instance_destroy();