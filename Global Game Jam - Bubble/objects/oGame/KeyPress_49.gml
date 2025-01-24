/// @description
global.resolutionWidth = 1280;
global.resolutionHeight = 720;

window_set_size(global.resolutionWidth, global.resolutionHeight);
surface_resize(application_surface, global.resolutionWidth, global.resolutionHeight);
window_center();