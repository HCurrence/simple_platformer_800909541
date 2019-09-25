if(ammo >= 1)
{
	instance_create_layer(x, y, "Instances", obj_bullet);
	obj_bullet.hspeed = bullet_speed;
	
	ammo -= 1;
	
	canShoot = false;
	alarm[0] = 3;
}