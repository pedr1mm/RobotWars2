script_execute(estado);

//aqui faço o player criar o objeto tiro cada vez que ele aperta a tecla designada

#region TIRO
if key_shoot and global.bullets > 0
{
	with (instance_create_layer(x, y - 15, "Shoot", Obj_Shoot)) // criando o objeto tiro na localização que eu quero
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

//apenas fazendo o jogo resetar se a vida acabar

#region VIDA

if global.life < 1
{
	game_restart();
}

#endregion

//fazendo cada sprite do personagem para cada direção e ação que ele realizar

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

#region //levando o hit e ativando invencibilidade 

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
	
//uma tecla pra ajudar nos testes do jogo, se apertar enter o jogo reinicia

if(keyboard_check_pressed(vk_enter))
{
	game_restart();
}


