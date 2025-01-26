global.levelNumber = "One";
global.levelScore = 0;

if(!audio_is_playing(sndMusic))
{
	audio_stop_all();
	audio_play_sound(sndMusic, 1, true);
}