/// @description
if(sprite_index == sBubblePop)
{
	image_index = -1;
	wait--;
	if(wait <= 0) instance_destroy();
}