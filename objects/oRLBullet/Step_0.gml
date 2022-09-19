x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);


if(place_meeting(x,y,pShotable)) || (place_meeting(x,y,oWall)) && (image_index !=0) 
{
	while (place_meeting(x,y,oWall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
	}
	spd = 0;
	instance_change(oRLHitSpark,true);
	audio_play_sound(rocklx1a,10,false);
	layer_add_instance("Tiles",id);
	depth += 1;
}