if(!instance_exists(oPlayer)) exit;
draw_set_color(c_black);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_text(20-2, 20-2, "SCORE: " + string(global.score));
draw_text(20-2, 20+2, "SCORE: " + string(global.score));
draw_text(20+2, 20-2, "SCORE: " + string(global.score));
draw_text(20+2, 20+2, "SCORE: " + string(global.score));
draw_set_color(c_white);
draw_text(20, 20, "SCORE: " + string(global.score));
