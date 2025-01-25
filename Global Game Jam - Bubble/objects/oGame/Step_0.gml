/// @description
if(!global.pause) global.currentTime += 10;

if(keyboard_check_pressed(vk_escape))
{
	if(oPlayer.state != "dead")
	{
		global.pause = !global.pause;
	}
}

if(instance_exists(oPlayer))
{
	if(oPlayer.state = "dead")
	{
		if(keyboard_check_pressed(vk_enter))
		{
			global.levelScore = 0;
			global.pause = false;
			room_restart();
		}
	}
}