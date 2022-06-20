/// @description Insert description here
// You can write your code in this editor
#macro SAVEFILE "Save.sav"


gui_margin = 32;

menu_x = 250;
menu_y = -gui_margin-150;
menu_x_target = - gui_margin
menu_speed = 25;
menu_itemheight = font_get_size(fMenu);
menu_committed = -1;
menu_control = true;

menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";

menu_cursor = 2;
menu_items = array_length(menu);

