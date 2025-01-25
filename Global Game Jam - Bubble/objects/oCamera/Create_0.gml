follow = oPlayer;

boundless = false;

view_w = camera_get_view_width(view_camera[0]);
view_h = camera_get_view_height(view_camera[0]);

camera_set_view_pos(view_camera[0], follow.x - (view_w/2), follow.y - (view_h/2));

state = "following";

change = 30;
changed = 30;

falling = 60;
fell = 60;


shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;


key_pressed = 0;
key_threshold = 180;

looking_down = false;
looking_up = false;