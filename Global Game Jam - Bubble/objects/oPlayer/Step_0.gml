/// @description
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);


var _move = _right - _left;

hsp += _move * move_speed;

hsp = clamp(hsp, -max_speed, max_speed);

if(_up)
{
	float_speed = float_fast;
}
else
{
	float_speed = float_speed_reset;
}


y -= float_speed;
x += hsp;
round(y);