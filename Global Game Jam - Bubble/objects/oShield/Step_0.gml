/// @description
if(global.pause) exit;

if(place_meeting(x, y, oPlayer) && merged == false)
{
	merged = true;
	audio_play_sound(sndBubblePickup, 1, false);
	global.levelScore += 5;
}


if(merged)
{
	x = oPlayer.x;
	y = oPlayer.y;
}
else
{
	y += Wave(-0.1, 0.1, 1, 0);
}