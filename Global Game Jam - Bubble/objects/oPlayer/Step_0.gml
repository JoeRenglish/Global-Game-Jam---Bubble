/// @description


var _left = keyboard_check(vk_left);
var _right = keyboard_check(vk_right);
var _up = keyboard_check(vk_up);

if(!global.pause) switch(state)
{
	case "free":

		var _move = _right - _left;

		hsp += _move * move_speed;
		if(_move == 0) 
		{
	
			if(hsp != 0)
			{
				hsp -= sign(hsp) * frict;
			}
			else animation_state = 0;
		}

		hsp = clamp(hsp, -max_speed, max_speed);

		if(_up)
		{
			float_speed = float_fast;
			if(_left)
			{
				animation_state = 3;
			}
			else if(_right)
			{
				animation_state = 2;
			}
			else animation_state = 1;
		}
		else
		{
			float_speed = float_speed_reset;
		}
		if(_left && !_up) animation_state = 4;
		if(_right && !_up) animation_state = 5;

		y -= float_speed;
		x += hsp;
		round(y);




		switch(animation_state)
		{
			case 0:
				image_index = 0;
				break;
			case 1:
				image_index = 1;
				break;
			case 2:
				image_index = 2;
				break;
			case 3:
				image_index = 3;
				break;
			case 4:
				image_index = 4;
				break;
			case 5:
				image_index = 5;
				break;
		}
		
	break;
	
	case "dead":
		global.pause = true;
		sprite_index = sBubblePop;
	
	break;
	
	case "wait":
		wait--;
		if(wait <= 0)
		{
			wait = wait_reset;
			state = "free";
		}
		
		
	break;

}