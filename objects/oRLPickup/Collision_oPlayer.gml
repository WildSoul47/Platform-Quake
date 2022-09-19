/// @description Insert description here
// You can write your code in this editor

global.hasRL = true;
instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oRocketLauncher);
instance_destroy(self);