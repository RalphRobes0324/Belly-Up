/// @description timing of ground obstacle
// You can write your code in this editor

randomize();
var count = irandom_range(2,1); //the amount it will spawn
var getX =  room_width + 50 + random_range(0,75);
var getY = random_range(475, room_height - 50);  

//gets room size 
var phase1 = instance_create_layer(getX, getY, "Spawn", obj_obstacle_flood);//Get layer were obj spawns
//pick 1 random between 3 sprites
phase1.sprite_index = choose(spr_boot, spr_bottle, spr_can,spr_plate);



//Creates descision when sprite has been picked
switch (phase1.sprite_index){
	case spr_boot:
	case spr_bottle:
	case spr_can:
	phase1.image_speed = 0;
	phase1.image_index = irandom_range(0, sprite_get_number(phase1.sprite_index)-1);
		if(global.speedModifier > 1.5){
			if(count == 2){//if it ask two objects to spawn
				var phase2 = instance_create_layer(getY, getY, "Spawn", obj_obstacle_flood);//Get layer were obj spawns
				phase2.sprite_index = choose(spr_boot, spr_bottle, spr_can); //pick 1 random between 3 sprites
				phase2.image_speed = 0;// image speed
				phase2.image_index = irandom_range(0, sprite_get_number(phase2.sprite_index)-1);
			}
	
		}
		
		break;
	default:
		phase1.image_speed = 1;// image speed
		phase1.image_xscale = -1; //reverse image
		phase1.y = 475;
		
	
	
}

alarm[0] = room_speed * random_range(1/global.speedModifier, 3/global.speedModifier);// reset time but starts spawn new timer everytime

//alarm[0] = room_speed * random_range(0.5, 1);

