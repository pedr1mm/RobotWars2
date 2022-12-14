script_execute(estado);

#region TIRO




if key_shoot and global.bullets > 0
{
	with (instance_create_layer(x, y - 15, "Shoot", Obj_Shoot))
	{
		global.bullets--;
		
		// VELOCIDADE DO TIRO
		
		speed = 6;
		
		// DIREÇÃO DO TIRO
		
		direction = -90 + 90 * other.image_xscale;
		
		// ÂNGULO  DO TIRO
		
		image_angle = direction;
		
		
	}
}
#endregion

#region VIDA

if global.life < 1
{
	game_restart();
}

#endregion

#region SPRITES

if (!place_meeting(x,y+1,Obj_Floor))
{
	sprite_index = Spr_Player_up;
	if (sign(vspd) > 0.5) sprite_index = Spr_Player_down;
	else sprite_index = Spr_Player_up;
}
else
{
	if (hspd != 0)
	{
		sprite_index = Spr_Player_run;
	}
}
if hspd = 0 {
	if place_meeting(x,y+1,Obj_Floor){
		sprite_index = Spr_Player_idle
	}
}

if hspd != 0{
	if place_meeting(x,y+1,Obj_Floor){
		sprite_index = spr_player_shooting_run;
	}
}

#endregion

#region levando o hit

if (alarm[0] > 0)
{
	if image_alpha >= 1
	{
		alpha_hit = -0.05;
	}
	else if(image_alpha <= 0)
	{
		alpha_hit = 0.05;
	}
	
	image_alpha += alpha_hit;
}
	
	else
	{
		image_alpha = 1;
	}
	
#endregion
	


if(keyboard_check_pressed(vk_enter))
{
	game_restart();
}


