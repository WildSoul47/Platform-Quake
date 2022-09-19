/// @description Draw Score

draw_text_transformed(RES_W-10,30,string(fps),killstextscale,killstextscale,0);

if (room != rMenu) && (instance_exists(oPlayer)) && (global.kills >0)
{
	killstextscale =max(killstextscale * 0.95, 1);
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text_transformed(RES_W-8,12,string(global.kills) + "Pointless Murders :(",killstextscale,killstextscale,0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10,10,string(global.kills) + "Pointless Murders :(",killstextscale,killstextscale,0);
}

if (room == rMenu)
{
	draw_set_font(fKaiti);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	
	draw_text(room_width/2,room_height/2,"crurrent time: "+string(current_hour) +":" +string(current_minute));
}