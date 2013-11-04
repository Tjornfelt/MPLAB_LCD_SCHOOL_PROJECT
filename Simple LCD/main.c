#include <stdio.h>
#include <stdlib.h>
#include <htc.h>
#include <pic.h>
#include "Sound.h"
#include "LCD.h"
#include "ADC.h"

unsigned int a;

void main()
{
	//=================STARTUP INITIALIZERS==============================================

	//LED lights for verifying stuff works!
	TRISB = 0x01; //set for output
	PORTB = 0x9; //1001
	
	//Buzzer
	TRISC = 0;
	PORTC = 0;
	
	//display control ports
	TRISA = 0b00010001; //RA0 and RA4 are inputs. RA1-3 are outputs.
	
	//Display 
	TRISD = 0; //Always output data.

	//Initialize the lcd screen
	Init_lcd();

	//Initialize the Analog/Digital module
	ADC_Init();

	//=================END OF STARTUP INITIALIZERS=======================================

	//main program loop.
	int charWritten = 0;
	while(1)
	{
		//write a character to the display. Once per click.
		if(RA4 == 0 && charWritten == 0)
		{
			Write_data(0b0100, 0b0011);
			Sound();
			charWritten = 1;
		}
		
		if(charWritten == 1 && RA4 == 1)
		{
			charWritten = 0;
		}

		if(RB0 == 0)
		{
			Clear_display();
			Write_data(0b0101, 0b0110);
			Write_data(0b0100, 0b1111);
			Write_data(0b0100, 0b1100);
			Write_data(0b0101, 0b0100);
			Write_data(0b0100, 0b0001);
			Write_data(0b0100, 0b0111);
			Write_data(0b0100, 0b0101);
			Write_data(0b0011, 0b1101);

			a = ADC_Read(0); //Reading Analog Channel 0
			
			Write_voltage(a);
		}
	}

/*
	do
  {
    a = ADC_Read(0); //Reading Analog Channel 0


    PORTB = a; //Lower 8 bits to PORTB
    PORTC = a>>8; //Higher 2 bits to PORTC
    __delay_ms(100); //Delay
  }while(1); //Infinite Loop
*/
}