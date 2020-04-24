NineSlicedBoxStretch(sprTextBox, xLeft, yLeft, xRight, yRight, textBoxBackground);
draw_set_font(fntText);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_black);

var _print = string_copy(message, 1, textProgress);
draw_text((xLeft + xRight) / 2,  yLeft + 8, _print); // Shadow
draw_set_color(c_white);
draw_text((xLeft + xRight) / 2,  yLeft + 7, _print); 