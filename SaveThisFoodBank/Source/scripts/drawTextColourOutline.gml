///drawTextColourOutline(x, y, text, text colour, outline color, font, halign, valign)
//Courtesy DragoniteSpam @ https://www.youtube.com/watch?v=YqdgZXphi0A&ab_channel=DragoniteSpam

var _x = argument0 + 15;
var _y = argument1;
var text = argument2;
var tcolor = argument3;
var ocolor = argument4;
var font = argument5;
var halign = argument6;
var valign = argument7;
var thickness = 1;

draw_set_font(font);
draw_set_valign(valign);
draw_set_halign(halign);

draw_set_color(ocolor);
draw_text(_x - thickness, _y, text);
draw_text(_x + thickness, _y, text);
draw_text(_x, _y - thickness, text);
draw_text(_x, _y + thickness, text);

draw_set_color(tcolor);
draw_text(_x, _y, text);

draw_set_valign(fa_top);
draw_set_halign(fa_left);
