
function scr_player_movendo(){
#region CONTROLES

key_right = keyboard_check(ord("D")) // direita
key_left = keyboard_check(ord("A")) // esquerda
key_jump = keyboard_check(vk_space) // pulo
key_shoot = keyboard_check_pressed(ord("P")) // tiro

#endregion


 #region MOVIMENTAÇÃO

var move = key_right - key_left

hspd = move * spd;

vspd = vspd + grv;

if (hspd !=0) image_xscale = sign(hspd);

//COLISÃO HORIZONTAL

if place_meeting(x + hspd, y, Obj_Floor)
{
	while(!place_meeting(x + sign(hspd), y, Obj_Floor))
	{
		x = x + sign(hspd)
	}
 hspd = 0;	
}

x = x + hspd;

//COLISÃO VERTICAL

if place_meeting(x, y + vspd, Obj_Floor)
{
	while(!place_meeting(x, y + sign(vspd), Obj_Floor))
	{
		y = y + sign(vspd)
	}
 vspd = 0;	
}

y = y + vspd;

// JUMP

if place_meeting(x,y+1,Obj_Floor) and key_jump
{
	vspd -= 10;
}

#endregion


}