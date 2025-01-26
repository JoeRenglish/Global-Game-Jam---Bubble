/// @description

image_index = 0;
image_speed = 1;

if(pop == false)
{
	pop = true;
	audio_stop_sound(sndPop);
	audio_play_sound(sndPop, 1, false);
}

state = "dead";