function DrawTextOutline(_x,_y,_text){
draw_set_color(c_black);
draw_text(_x-2, _y-2, _text);
draw_text(_x-2, _y+2, _text);
draw_text(_x+2, _y-2, _text);
draw_text(_x+2, _y+2, _text);
draw_set_color(c_white);
draw_text(_x, _y, _text);
}