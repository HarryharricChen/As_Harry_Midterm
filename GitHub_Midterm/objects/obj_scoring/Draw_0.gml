/// @description Insert description here
// You can write your code in this editor

//draw_self();
draw_text(x, y, "Stay in the top part of screen:  " + string(global.scoring));
draw_text(x, y+12.5, "bullet remaining:  " + string(global.bulletnumbers));
draw_text(x, y+25, "Life:  " + string(global.life));