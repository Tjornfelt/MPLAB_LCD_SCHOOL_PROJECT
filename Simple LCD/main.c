#include <stdio.h>
#include <stdlib.h>
#include <pic.h>
#include <htc.h>
#include "sound.h"
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
	init_lcd();

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
			write_data(0b0100, 0b0011);
			sound();
			charWritten = 1;
		}
		
		if(charWritten == 1 && RA4 == 1)
		{
			charWritten = 0;
		}


		if(RB0 == 0)
		{
			clear_display();
			write_data(0b0101, 0b0110);
			write_data(0b0100, 0b1111);
			write_data(0b0100, 0b1100);
			write_data(0b0101, 0b0100);
			write_data(0b0100, 0b0001);
			write_data(0b0100, 0b0111);
			write_data(0b0100, 0b0101);
			write_data(0b0011, 0b1101);

			a = ADC_Read(0); //Reading Analog Channel 0
			
			write_voltage(a);
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
