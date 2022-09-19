/// @description Insert description here
// You can write your code in this editor

//Get Player Input
if (hascontrol)
{
	key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
	key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
	key_jump = keyboard_check_pressed(vk_space);
	change_RL = mouse_wheel_down() || keyboard_check(ord("Q"));
	change_PMG = mouse_wheel_up() || keyboard_check(ord("E"));

	if (key_left) || (key_right) || (key_jump)
	{
		controller = 0;
	}

	if (abs(gamepad_axis_value(0,gp_axislh))> 0.2)
	{
		key_left = abs(min(gamepad_axis_value(0,gp_axislh),0));
		key_right = max(gamepad_axis_value(0,gp_axislh),0);
		controller = 1;
	}

	if (gamepad_button_check_pressed(0,gp_face1))
	{
		key_jump = 1; 
		controller = 1;
	}
}
else
{
	key_right = 0;
	key_left = 0;
	key_jump = 0;
}

//Calculate Movement
var move = key_right - key_left;

hsp = (move * walksp) +  gunkickx + RocketBoostx;
gunkickx = 0;
RocketBoostx = 0;

vsp = (vsp + grv) +  gunkicky + RocketBoosty;
gunkicky = 0;
RocketBoosty = 0;

//Jumping
canjump -= 1;
if (canjump > 0) && (key_jump)
{
	vsp = -7;
	canjump = 0;
	audio_play_sound(jump1327,4,false);
}

//Horizontal Collistion
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//Vertical Collistion
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Animation
var aimside = sign(mouse_x - x);
if (aimside !=0) image_xscale = aimside;

if (!place_meeting(x,y+1,oWall))
{
	sprite_index = sPlayerA;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1;
		else image_index = 0;
}
else
{
	canjump = 10;
	if (sprite_index == sPlayerA) 
	{
		audio_play_sound(land1,6,false);
		repeat(5)
		{
			with (instance_create_layer(x,bbox_bottom,"Bullets",oDust))
			{
				vsp = 0;
			}
		}
	}
	
	image_speed = 1;
	if (hsp == 0 )
	{
		sprite_index = sPlayer;
	}
	else
	{
		sprite_index = sPlayerR;
		if (aimside != sign(hsp)) sprite_index = sPlayerRb;
	}
}

// Change Weapon
if(change_RL) && (global.hasRL) && (!instance_exists(oRocketLauncher))
{
		instance_destroy(pGun);
		instance_create_layer(pPlayer.x,pPlayer.y,"Gun",oRocketLauncher);
}

if(change_PMG) && (global.hasPMG) && (!instance_exists(oPlasmaGun))
{
		instance_destroy(pGun);
		instance_create_layer(pPlayer.x,pPlayer.y,"Gun",oPlasmaGun);
}