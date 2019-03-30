// Create Surface If Not Existing
if (!surface_exists(global.puzzleSurface))
	global.puzzleSurface = surface_create(room_width, room_height);
	
//////////////////////////////////////////////////////////////////////////////
// Draw Transparent Surface
surface_set_target(global.puzzleSurface);
draw_clear_alpha(c_black, 0);

// Draw Tiled Background
image_speed = 0.1;
draw_sprite_tiled(sSquares, image_index, 0, 0);

var x1 = player1Inst.x - 30;
var y1 = player1Inst.y - 60;
var x2 = player2Inst.x + 30;
var y2 = player2Inst.y + 5;
	
// Subtract 
gpu_set_blendmode(bm_subtract);
draw_rectangle(x1 + 1, y1 + 1, x2 - 2, y2 - 2, false);
gpu_set_blendmode(bm_normal);

// Draw Opaque Surface
surface_reset_target();
draw_surface_ext(global.puzzleSurface, 0, 0, 1, 1, 0, c_white, 1.0);

//////////////////////////////////////////////////////////////////////////////
// Draw Opaque Surface
surface_set_target(global.puzzleSurface);
draw_clear_alpha(c_black, 0);

// Draw Blue Border Around Combat Area
if (instance_exists(player1Inst) && instance_exists(player2Inst))
	draw_sprite_nine(sSimpleFrame, x1, y1, x2, y2);
	
// Draw 1.0 Alpha Surface
surface_reset_target();
draw_surface(global.puzzleSurface, 0, 0);

