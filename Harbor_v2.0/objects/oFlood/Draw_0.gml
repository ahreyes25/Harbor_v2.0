draw_sprite_ext(sprite_index, image_index, x - 1, y, image_xscale, image_yscale, 0, c_white, alpha);
draw_set_alpha(alpha);
draw_rectangle_color(x - 1, y - ((image_yscale - 0.5) * boardInst.space) + 2, x + boardInst.space - 2, y - ((image_yscale - 0.5) * boardInst.space) - 0.5, c_white, c_white, c_white, c_white, false);
draw_set_alpha(1);