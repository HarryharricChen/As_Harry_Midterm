/// @description Insert description here
// You can write your code in this editor
move_left = keyboard_check(ord("A"));
move_right = keyboard_check(ord("D"));
move_jump = keyboard_check(vk_space);

//var move = move_right - move_left;                  Direction Control

//hspd = move * walkspeed;                            Speed Contrl

vspd = vspd + gravi; //                               Constant gravity

//horizontal collision check;
if (place_meeting (x+hspd, y, obj_wall)){	
      //while (!place_meeting (x + sign(hspd), y, obj_wall)){
      //   x = x + sign(hsp);
      //     }
      hspd = 0;
}
x = x + hspd;                                       //Player actaul movement (WEI YI)(XIANG DANG YU, WO DUI ZHE GE SHI JIA LE YIGE V=5 DE LI RANG TA YI DONG)(Like Wuzhongli kong jian li de xiang liang) hsp shi yi ge vector force (ER BU SHI XIANG XIANG ZHONG DE YUE ZOU YUE KUAI)



//vertial collision check;
if (place_meeting (x, y + vspd, obj_wall)){    
      vspd = 0;
}
y = y + vspd;



//check if the player is in the scoring area
if (y<150){
	global.scoring = global.scoring + 10;
	
}



if (global.life < 1){
	room_restart();
}








//jump check but not useful for this
//if (place_meeting (x, y+1, obj_wall)) && (move_jump){
//     	vspd = -15;
//}



