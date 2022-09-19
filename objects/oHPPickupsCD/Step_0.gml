/// @desc floating visual effect

y = ystart + sin(get_timer()/500000)*5;

HPcdtime --;

if(HPcdtime == 0) instance_change(oHPPickups,true);