//caso o player colida com alguma entidade que é filha da entidade pai, ele recebe dano e de novo fica imortal por 3 s
if (alarm[0] <= 0)
{
	global.life--;
	alarm[0] = 180;
}
