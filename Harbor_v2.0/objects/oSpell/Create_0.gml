owner		= noone;
target		= noone;
moves		= noone;
moveSpeed	= 2;
damageLo	= 0;
damageHi	= 0;
accuracy	= 1;

dealtDamage = false;

image_index = 0;
image_alpha = 1;

if (instance_exists(oSpell))
	depth = oSpell.depth - 1;
	
if (x > room_width / 2)
	image_xscale = -1;
else
	image_xscale = 1;