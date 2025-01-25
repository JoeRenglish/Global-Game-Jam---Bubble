/// @description

draw_set_font(fDefault);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);


if(room == rmTitle)
{
	draw_set_font(fTitle);
	draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT/4,"Bubble! Bubble! Pop!");
	draw_set_font(fDefault);
	draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT/1.5, "Press Enter to Start");
}

if(room == rmTutorial)
{
	draw_set_font(fTitle);
	draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT/7, "How to Play");
	draw_set_font(fDefault);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_text(48, 80, "Use the Arrow keys to control \nthe bubble as you float up.");
	draw_sprite(sPlayer, 0, 124, 128);
	
	draw_text(256, 96, "Collect the smaller bubbles on your way. \nThey will stick to both you and each other.");
	draw_sprite(sBubble, 0, 356, 148);
	draw_sprite(sBubble, 0, 364, 140);
	
	draw_text(88, 178, "Grab the big bubble in each level. \nYou can earn extra points by bringing it to the end. \nIt will surround you, but other bubbles will not stick to it.");
	draw_sprite(sShield, 0, 156, 260);
	
	draw_text(296, 236, "Don't touch anything sharp! They will pop both you \nand the bubbles you've collected. Be careful!" );
	draw_sprite(sSpike, 0, 400, 270);
	
	draw_set_font(fTitle);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT-44, "Press Enter to Begin");
	
	
}


if(instance_exists(oPlayer))
{
	if(oPlayer.state = "dead")
	{
		draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT/4,"Oh dear! You popped!");
		draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT/1.5, "Press Enter to retry level");
	}
	
	if(oPlayer.state = "wait")
	{
		draw_set_font(fTitle);
		draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT/2, "Level " + string(global.levelNumber));
		draw_set_font(fDefault);
	}
}

if(global.pause && oPlayer.state != "dead")
{
	draw_text(SCREEN_WIDTH/2, SCREEN_HEIGHT/2, "Paused")
}
