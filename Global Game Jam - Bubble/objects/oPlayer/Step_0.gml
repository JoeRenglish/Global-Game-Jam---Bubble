/// @description
var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);


var _move = _right - _left;

hsp += _move * move_speed;

hsp = clamp(hsp, -max_speed, max_speed);

y -= 0.2;
x += hsp;