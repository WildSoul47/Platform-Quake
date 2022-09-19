x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if(place_meeting(x,y,oWall)) && (image_index !=0) 
{
	while (place_meeting(x,y,oWall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0;
	instance_change(oEMCHitSpark,true);
	audio_play_sound(choose(ric1,ric2,ric3),3,false);
}

