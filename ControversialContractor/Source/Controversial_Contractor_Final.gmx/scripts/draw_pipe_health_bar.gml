///draw_pipe_health_bar(obj_pipe, obj_second_stage_controller)

/*
    Given a pipe object, draw a health bar on it based on its current health
*/

var pipe = argument0;
var controller = argument1;
var pipe_health = noone;
var pipe_y = pipe.y;
var pipe_x = pipe.x;

with(controller){
    var row = floor(pipe_y/block_size);
    var col = floor(pipe_x/block_size);
    var space = game_board[row, col];
    pipe_health = space[? "health"];
}
    
draw_set_font(fnt_debug);
draw_set_font(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);

//draw_text(pipe_x, pipe_y, string(pipe_health));
var alpha;
switch(pipe_health){
    case 10:
        alpha = 0;
        break;
    case 8: 
        alpha = 0.2;
        break;
    case 6:
        alpha = 0.4;
        break;
    case 4:
        alpha = 0.6;
        break;
    case 2:
        alpha = 1;
        break;
    default:
        alpha = 0;
        break;
}
draw_sprite_ext(pipe.sprite_index, -1, pipe_x, pipe_y, 1, 1, 0, c_red, alpha);
