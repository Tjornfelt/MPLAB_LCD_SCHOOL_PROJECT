#include <stdio.h>
#include <stdlib.h>
#include <pic.h>

#define Data PORTD
#define Control PORTA
#define Enable 0x2 	//0010
#define Write 0xA 	//1010
#define DataRegister 0x08
#define Disable 0x00
void main()
{
	//LED lights for verifying stuff works!
	TRISB = 0; //set for output
	PORTB = 0x9;
	
	//display control ports
	TRISA = 0b00010000; //Always output data.
	
	//Display 
	TRISD = 0; //Always output data.

	//initialize
	//4 bit mode 2 line
	Control = Enable;
	Data = 0b0010;
	Control = Disable;
	Control = Enable;
	Data = 0b1000;
	Control = Disable;
	_delay(20000);

	//Display blinking block cursor
	Control = Enable;
	Data = 0b0000;
	Control = Disable;
	Control = Enable;
	Data = 0b1111;
	Control = Disable;
	_delay(20000);

	//Address DDRAM with 0 offset 80h
	Control = Enable;
	Data = 0b1000;
	Control = Disable;
	Control = Enable;
	Data = 0b0000;
	Control = Disable;
	_delay(20000);
	

	Control = Write;
	Data = 0b0100;
	Control = DataRegister;

	Control = Write;
	Data = 0b0001;
	Control = DataRegister;

	_delay(20000);


	int charWritten = 0;	

	while(1)
	{
		if(RA4 == 0 && charWritten == 0)
		{
			Control = Write;
			Data = 0b0100;
			Control = DataRegister;
		
			Control = Write;
			Data = 0b0001;
			Control = DataRegister;
			
			_delay(20000);

			charWritten = 1;
		}
		
		if(charWritten == 1 && RA4 == 1)
		{
			charWritten = 0;
		}
	}
}