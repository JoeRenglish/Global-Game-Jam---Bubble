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
