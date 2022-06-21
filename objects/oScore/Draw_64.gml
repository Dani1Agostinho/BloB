if(!instance_exists(oPlayer)) exit;
draw_set_halign(fa_left);
draw_set_valign(fa_top);

DrawTextShadow(20, 20, "SCORE: " + string(global.score));

DrawTextShadow(20,60,string_replace_all(string_format(totalTime div 60,2,0)+":"+string_format(totalTime%60,2,2)," ","0"));