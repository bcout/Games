///drawQuotaValues()
var state = getState();
var quotas = getQuotas(state);
var currently_caught = getNumCurrentlyCaughtFood();


var _x  = 84;

var apple_y = 78;
var apple_sprite = sprAppleSticker;
var apples_needed = max(0, quotas[0] - currently_caught[0]);

var banana_y = apple_y + 32;
var banana_sprite = sprBananaSticker;
var bananas_needed = max(0, quotas[1] - currently_caught[1]);

var orange_y = banana_y + 32;
var orange_sprite = sprOrangeSticker;
var oranges_needed = max(0, quotas[2] - currently_caught[2]);

var hamburger_y = orange_y + 32;
var hamburger_sprite = sprHamburgerSticker;
var hamburgers_needed = max(0, quotas[3] - currently_caught[3]);

if(state == 4){
    //start of day 3
    //don't want hamburgers anymore
    hamburger_sprite = sprHamburgerForbidden;
    hamburgers_needed = 0;
}

var offset = 15;

var color_text = c_black;
var color_outline = c_white;
if(apples_needed == 0){
    apple_sprite = sprAppleCompleted;
}else{
    drawTextColourOutline(_x + 15, apple_y, string(apples_needed), color_text, color_outline, fntQuota, fa_left, fa_center);
}
if(bananas_needed == 0){
    banana_sprite = sprBananaCompleted;
}else{
    drawTextColourOutline(_x + 15, banana_y, string(bananas_needed), color_text, color_outline, fntQuota, fa_left, fa_center);
}
if(oranges_needed == 0){
    orange_sprite = sprOrangeCompleted;
}else{
    drawTextColourOutline(_x + 15, orange_y, string(oranges_needed), color_text, color_outline, fntQuota, fa_left, fa_center);
}
if(state == 5 || state == 7){
    hamburger_sprite = sprHamburgerForbidden;
}else{
    if(hamburgers_needed == 0){
        hamburger_sprite = sprHamburgerCompleted;
    }else{
        drawTextColourOutline(_x + 15, hamburger_y, string(hamburgers_needed), color_text, color_outline, fntQuota, fa_left, fa_center);
    }
}

if(apples_needed == 0 && bananas_needed == 0 && oranges_needed == 0 && hamburgers_needed == 0){
    if(state == 3){
        setMetFirstQuota(true);
    }else if(state == 5){
        setMetSecondQuota(true);
    }else if(state == 7){
        setMetLastQuota(true);
    }
}

draw_sprite(apple_sprite, 0, _x, apple_y);
draw_sprite(banana_sprite, 0, _x, banana_y);
draw_sprite(orange_sprite, 0, _x, orange_y);
draw_sprite(hamburger_sprite, 0, _x, hamburger_y);
