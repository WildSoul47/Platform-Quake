global.hasRL = true;
instance_destroy(pGun);
instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oRocketLauncher);
instance_destroy(self);