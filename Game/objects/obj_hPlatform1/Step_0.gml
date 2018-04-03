/// @description Insert description here
// You can write your code in this editor

time += 1;

if(time >= timeMax)
{
	switch(dirType)
	{
		case -1:
			dirType = 1;
			break;
		
		case 1:
			dirType = -1;
			break;
	}
	
	time = 0;
}

x += dirType;