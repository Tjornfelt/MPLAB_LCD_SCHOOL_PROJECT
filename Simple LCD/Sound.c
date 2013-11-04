#include <pic.h>

#define Delay 6000
//#define Delay 6 //for debugging

void Sound(){

	int i = 0;

	//the while loop defines the length of the sound.
	while(i < 20)
	{
		
		RC2 = 1;
		
		//the delay between on and off sets the pitch of the sound.
		_delay(Delay);

		RC2 = 0;
		i++;
	}
}
