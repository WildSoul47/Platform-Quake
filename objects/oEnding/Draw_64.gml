draw_set_color(c_black);
draw_rectangle(0,0,RES_W,128,false);
draw_rectangle(0,RES_H-128,RES_W,RES_H,false);

DrawSetText(c_black, fMenu, fa_center, fa_top);
draw_text(RES_W*0.5+2, RES_W*0.3+2,text);
draw_set_color(c_white);
draw_text(RES_W*0.5, RES_W*0.3,text);