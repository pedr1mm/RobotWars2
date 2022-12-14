//o que acontece quando o tiro acerta o inimigo

instance_destroy(other) //o tiro se destrói
hp--;
if(hp = 0)
{
	instance_destroy() // se o inimigo tiver menos que 1 de hp, ele se destrói
}
