/// @description Insert description here
// You can write your code in this editor

if(camera_target ==noone){
	camera_target = instance_find(obj_shake, 0);
}

if(camera_target !=noone){
	with(camera_target){
		event_user(0);
	}
}


