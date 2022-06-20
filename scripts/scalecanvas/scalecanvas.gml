function ScaleCanvas() {
	if !isHTML or (variable_global_exists("browserWidth") and global.browserWidth == browser_width and global.browserHeight == browser_height) return;
	global.browserWidth = browser_width;
	global.browserHeight = browser_height;
	
	var _aspect = 1280/720;
	if ((global.browserWidth / _aspect) > global.browserHeight) window_set_size((global.browserHeight *_aspect), global.browserHeight);
	else window_set_size(global.browserWidth, (global.browserWidth / _aspect));
	surface_resize(application_surface,1280,720);
	display_set_gui_size(1280,720);
	window_center();
}