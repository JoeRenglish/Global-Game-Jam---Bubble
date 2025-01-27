/// @description
bullet_timer--;
if(bullet_timer <= 0)
{
	bullet_timer = bullet_timer_reset;
	with(instance_create_depth(x-8, y+8, -100, oBullet))
	{
		speed = 2;
		direction = oShoot.angle;
		
	}
}