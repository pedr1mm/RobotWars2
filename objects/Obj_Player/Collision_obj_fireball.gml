//aqui coloco o dano na vida do jogador caso ele colida com a bola de fogo e usando o alarm[0] setado antes, ele fica imortal por 3 segundos

if (alarm[0] <= 0)
{
	global.life--;
	alarm[0] = 180;
}
