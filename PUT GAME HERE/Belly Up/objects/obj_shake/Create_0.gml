/// @description Variables of shake
// You can write your code in this editor

camera = view_camera[0]; //getting viewport from room

//Getting coord of camera
camera_posx = camera_get_view_x(camera);
camera_posy = camera_get_view_y(camera);


is_shaking = false;
shake_amount = 2;
shake_timer = 0.1;

