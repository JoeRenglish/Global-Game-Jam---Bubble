// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ShakeShake(){
	cx += random_range(-shake_remain, shake_remain);
	cy += random_range(-shake_remain, shake_remain);
	shake_remain = max(0,shake_remain-((1/shake_length)*shake_magnitude));
}