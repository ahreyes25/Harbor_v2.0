playerInst = noone;
boardInst = noone;

drawTree = choose(0, 1);

sprite_index = sGround;
image_index = irandom_range(0, image_number - 1);
image_speed = 0;
image_xscale = 1 + (-2 * (x > room_width / 2));