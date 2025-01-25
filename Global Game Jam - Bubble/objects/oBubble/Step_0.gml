/// @description

col_player = place_meeting(x, y, oPlayer);
col_bub = instance_place(x, y, oBubble);

if((col_bub != noone || col_player) && merged == false)
{
	merged = true;
	if(col_player)
	{
		combined_x = round(x - oPlayer.x);
		combined_y = round(y - oPlayer.y);
		combine = oPlayer;
	}
	else
	{
		combined_x = round(x - col_bub.x);
		combined_y = round(y - col_bub.y);
		combine = col_bub;
	}
}




if(merged)
{
	x = combine.x + combined_x;
	y = combine.y + combined_y;
}
else
{
	
	y += Wave(-0.1, 0.1, 1, 0);
}

