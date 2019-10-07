/// @description Insert description here
// You can write your code in this editor


with(instance_create_layer(x, y - 100, "Instances", obj_bulletmonster)){
	   speed = 5;
	   direction = point_direction(x, y, obj_player.x, obj_player.y);
}
	   
	   
	   
alarm[0] = 1 * room_speed;