/// @description Shake effect
// You can write your code in this editor


if(is_shaking){//shake is on
	var xx = camera_get_view_x(camera) + random_range(-shake_amount, shake_amount);
	var yy = camera_get_view_y(camera) + random_range(-shake_amount, shake_amount);
	camera_set_view_pos(camera, xx,yy);
}
else{//resets the shake
	var xx = camera_get_view_x(camera);
	var yy = camera_get_view_y(camera);
	xx = lerp(xx, camera_posx, 0.1);
	yy = lerp(yy, camera_posy, 0.1);
	camera_set_view_pos(camera, xx,yy);
}