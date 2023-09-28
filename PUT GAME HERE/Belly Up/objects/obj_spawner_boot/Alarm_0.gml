/// @description Insert description here
// You can write your code in this editorvaf


/****************Puffer Fish time****************/
spawn--;
if(spawn <= 0){
	spawn  = 4;
	
	speedMin += 1.5;
	speedMax += 2.5;
}


var getX =  room_width + 50 + random_range(0,75);
var getY = random_range(475, room_height - 50);  

//Spawning random Items
var puffer_fish = instance_create_layer(getX, getY, "Spawn", obj_tire);
puffer_fish.speed = random_range(speedMin, speedMax); //different speed coming in
puffer_fish.direction = 180; //Direction Horizontal


/****************Puffer Fish time****************/

//var xsize = random_range(0.1, 1);
//var ysize = random_range(0.1, 2);
//puffer_fish.image_xscale = xsize;
//puffer_fish.image_yscale = ysize;


alarm[0] = spawnTime;