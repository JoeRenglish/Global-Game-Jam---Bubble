/// @description
global.resolutionWidth = 1920;
global.resolutionHeight = 1080;

window_set_size(global.resolutionWidth, global.resolutionHeight);
surface_resize(application_surface, global.resolutionWidth, global.resolutionHeight);
window_center();