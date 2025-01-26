/// @description
sprite_index = sBubblePop;
if(popped == false)
{
	popped = true;
	if(!audio_is_playing(sndPop)) audio_play_sound(sndPop, 1, false);
	global.levelScore--;
}
