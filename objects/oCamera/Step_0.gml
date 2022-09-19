/// @description Update Camera
// You can write your code in this editor

//Update destination
if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;
	
	if ((follow).object_index == oPDead)
	{
		x = xTo;
		y = yTo;
	}
}

//Update object position
x += (xTo - x)/25;
y += (yTo - y)/25;

//Keep camera center inside room
x = clamp(x,view_w_half+buff,room_width-view_w_half-buff);
y = clamp(y,view_h_half+buff,room_height-view_h_half-buff);

//Screen shake
x += random_range(-shake_remain,shake_remain)
y += random_range(-shake_remain,shake_remain)
shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));

//update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);
if (room != rMenu )&&( room != rEnding)
{
	if (layer_exists("Mountains"))
	{
		layer_x("Mountains",x);
	}

	if (layer_exists("Clouds"))
	{
		layer_x("Clouds",x/2);
	}
}