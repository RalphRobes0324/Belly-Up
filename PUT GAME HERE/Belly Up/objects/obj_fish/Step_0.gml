/// @description controls and bounderies
// You can write your code in this editor

/*******************Get player input**************/
key_up =  keyboard_check(ord("W")); //Functions grabs activity of the "W" key from user keyboard
key_down =  keyboard_check(ord("S")); //Functions grabs activity of the "S" key from user keyboard
key_left = keyboard_check(ord("A")); //Functions grabs activity of the "A" key from user keyboard
key_right = keyboard_check(ord("D")); //Functions grabs activity of the "D" key from user keyboard
key_spacebar = keyboard_check_pressed(vk_space); //checks for spacebar have been pressed and check if it used specific frame/event


/*******************Calculate Movement**************/

var move_h = key_right - key_left; //checks status left or right
var move_v = key_down - key_up; //checks status up or down

if(is_hurtBackWall == true){
	hsp *=  knock_forward;
	if(abs(hsp) < 1){
		is_hurtBackWall = false;
	}
}
else if(is_hurt == true){
	
	health = fishHealth;
	is_hurt = false;
	
}
else{

	if( fish_stamina_full == true  && key_spacebar == 1){//Checks stamina is being used
		swimsp += fish_Velocity; //increase of speed
		//moving of direction with speed
		hsp = move_h * swimsp; 
		vsp = move_v * swimsp;
	}
	else{
		//moving of direction with speed
		swimsp = 4;
		hsp = move_h * swimsp;
		vsp = move_v * swimsp;
	}
}

/********************Horizontal Collision**************/
//Checks if with help of gamemaker function, players coord hits oWall (object you built)
if(place_meeting(x+hsp,y,obj_wall)){
	
	
	//While user hitting the wall, this will stop user going into the wall
	while(!place_meeting(x+sign(hsp),y,obj_wall)){//This will stop/predecting player hitting the wall by moving player 3 pixel away from the
		x = x + sign(hsp); //This will decrease or increase 
	}
	hsp = 0;

}
x = x + hsp;//This will move character horizontal


/********************Vertical Collision**************/

//Checks if with help of gamemaker function, players coord hits oWall (object you built)
if(place_meeting(x,y+vsp,obj_wall)){
	
	
	//While user hitting the wall, this will stop user going into the wall
	while(!place_meeting(x,y+sign(vsp),obj_wall)){//This will stop/predecting player hitting the wall by moving player 3 pixel away from the
		y = y + sign(vsp); //This will decrease or increase 
	}
	vsp = 0;

}
y = y + vsp;//This will move character vertical

/********************Pufferfish Collision**************/
if(!is_hurt && place_meeting(x,y,obj_enemypufferfish)){
	fishHealth--;
	is_hurt = true;
}

/********************Hook and reef Collision**************/
if(!is_hurt && place_meeting(x,y,obj_obstacle_ground)){
	fishHealth--;
	is_hurt = true;
}

/********************Backwall Collision**************/
if(!is_hurtBackWall && place_meeting(x,y, obj_backWall)){
	fishHealth--;
	is_hurtBackWall = true;
	hsp = -hsp;
}




