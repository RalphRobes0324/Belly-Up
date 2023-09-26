/// @description Insert description here
// You can write your code in this editor


if( mouse_x >= bbox_left && mouse_x <= bbox_right &&
mouse_y >= bbox_top && mouse_y <= bbox_bottom) {
	image_index = 1;

}
else{
	image_index = 0;
}

if(mouse_check_button_pressed(mb_left)){
		if( mouse_x >= bbox_left && mouse_x <= bbox_right &&
		mouse_y >= bbox_top && mouse_y <= bbox_bottom) {
			image_index = 2;
			room_goto(Level1Room);

	}
	
}


