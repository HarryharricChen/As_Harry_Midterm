/// @description Insert description here
// You can write your code in this editor

x = obj_player.x;
y = obj_player.y;

image_angle = point_direction(x, y, mouse_x, mouse_y);

firingdelay = firingdelay - 1;

if (mouse_check_button (mb_left)) && (firingdelay < 0 ) && (global.bulletnumbers > 0){
   firingdelay = 30;
   with (instance_create_layer(x, y, "Instances", obj_bullet)){
	   speed = 25;
	   direction = other.image_angle;
	   image_angle = other.image_angle;
   }
   with (obj_player){
	//   vspd = -3;
	   vspd = -lengthdir_y(12, other.image_angle);
	   hspd = -lengthdir_x(8, other.image_angle);
	   
   }
   global.bulletnumbers --;
	
}

