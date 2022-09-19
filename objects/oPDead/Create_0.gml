hsp = 0
vsp = 0;
grv = 0.2;
done = 0;

ScreenShake(6,60)
image_speed = 0;
image_index = 0;
audio_play_sound(choose(death1320,death2321,death3322),10,false);
// game_set_speed(30,gamespeed_fps);

with(oCamera)follow = other.id;