/// @description
randomize();
global.levelNumber = "";

global.currentTime = 0;
global.pause = false;

global.levelScore = 0;
global.gameScore = 0;

timer = 90;
timer_reset = timer;


display_set_gui_size(SCREEN_WIDTH, SCREEN_HEIGHT);

room_goto(rmTitle);

