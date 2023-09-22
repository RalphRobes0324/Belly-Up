/// @description Insert description here
// You can write your code in this editorvaf


/****************Puffer Fish time****************/
spawn--;
if(spawn <= 0){
	spawn  = 2;
	//speedMin += 1.5;
	//speedMax += 2.5;
}

var getX = room_width + 50 + random_range(0,75);
var getY = random_range(40, room_height - 150);

//Spawning puffer fish
var puffer_fish = instance_create_layer(getX, getY, "Spawn", obj_enemypufferfish);
puffer_fish.speed = random_range(speedMin, speedMax); //different speed coming in
puffer_fish.direction = 180; //Direction Horizontal


/****************Puffer Fish time****************/

//var size = random_range(0.1, 1);
//puffer_fish.image_xscale = size;
//puffer_fish.image_yscale = size;


alarm[0] = spawnTime;