

function set_resolution(_scale = 2)
{

	global.resolution = {
		width: 640,
		height: 360,
		scale: _scale,
	}

	var _width = global.resolution.width * global.resolution.scale;
	var _height = global.resolution.height * global.resolution.scale;

	//Set resolution
	surface_resize(application_surface, _width, _height);

	//Set window size
	window_set_size(_width, _height);

	//Set gui
	display_set_gui_size(_width, _height);

	//Center window
	var _displayWidth = display_get_width();
	var _displayHeight = display_get_height();

	window_set_position(
		_displayWidth / 2 - _width / 2,
		_displayHeight /2 - _height /2
	);
}

set_resolution();