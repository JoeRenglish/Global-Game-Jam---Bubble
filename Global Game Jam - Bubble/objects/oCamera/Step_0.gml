if (!global.pause) 
{
	cx = camera_get_view_x(view_camera[0]);
	cy = camera_get_view_y(view_camera[0]);
	
	up = keyboard_check(vk_up) || gamepad_button_check(0, gp_padu);
	down = keyboard_check(vk_down) || gamepad_button_check(0, gp_padd);

	if (!instance_exists(follow)) exit;
	
	switch(state)
	{
		
		case "following":
			
			follow = oPlayer;
			
			if (!instance_exists(follow)) exit;
			
			
			
			cx = lerp(cx,follow.x - (view_w/2), 0.15);
			cy = lerp(cy,follow.y - (view_h/2)-16, 0.09);
				
			
			

		
			if (!boundless)
			{
				cx = clamp(cx, 0, room_width-view_w);
				cy = clamp(cy, 0, room_height-view_h);
			}
			
			ShakeShake();
			
			camera_set_view_pos(view_camera[0], cx, cy);
			
			
		break;
		
	
		case "static":
		
			follow = instance_nearest(oPlayer.x,oPlayer.y,oCameraArea);
			
			if (!instance_exists(follow)) exit;
			
			cx = lerp(cx,follow.x - (view_w/2), 0.05);
			cy = lerp(cy,follow.y - (view_h/2), 0.05);
			
			if (!boundless)
			{
				cx = clamp(cx, 0, room_width-view_w);
				cy = clamp(cy, 0, room_height-view_h);
			}
			
			ShakeShake();
			
			camera_set_view_pos(view_camera[0], cx, cy);
			
			
		break;
	
	}
	
	
	if (!boundless)
	{
		cx = clamp(cx, 0, room_width-view_w);
		cy = clamp(cy, 0, room_height-view_h);
	}
	
	
}