#include "structs.h"
#include <pic.h>
#define Data PORTD
#define Control PORTA
#define Enable 0x2 	//0010 - (E)
#define Write 0xA 	//1010 - (E + RS)
#define DataRegister 0x08 //1000 - (RS)
#define Disable 0x00 //0000
#define Delay 20000
//#define Delay 1 //for debugging


void Clear_display()
{
	//Clear the display
	Control = Enable;
	Data = 0b0000;
	Control = Disable;
	Control = Enable;
	Data = 0b0001;
	Control = Disable;
	_delay(Delay);
}

void Init_lcd()
{
	//4 bit mode 2 line
	Control = Enable;
	Data = 0b0010;
	Control = Disable;
	Control = Enable;
	Data = 0b1000;
	Control = Disable;
	_delay(Delay);

	//Display blinking block cursor
	Control = Enable;
	Data = 0b0000;
	Control = Disable;
	Control = Enable;
	Data = 0b1111;
	Control = Disable;
	_delay(Delay);

	Clear_display();
}



void Write_data(char hb, char lb)
{
	Control = Write;
	Data = hb;
	Control = DataRegister;

	Control = Write;
	Data = lb;
	Control = DataRegister;

	_delay(Delay);
}

void Write_data_struct(struct byte_struct chardata)
{
	Control = Write;
	Data = chardata.hb;
	Control = DataRegister;

	Control = Write;
	Data = chardata.lb;
	Control = DataRegister;

	_delay(Delay);
}

void Write_digits(int adc_measurement)
{
	Write_data(0b0010,0b1100); //comma

	if(adc_measurement > 180)
	{
		Write_data(0b0011, 0b1001);	//9
	}
	else if(adc_measurement > 160)
	{
		Write_data(0b0011, 0b1000); //8
	}
	else if(adc_measurement > 140)
	{
		Write_data(0b0011, 0b0111); //7
	}
	else if(adc_measurement > 120)
	{
		Write_data(0b0011, 0b0110); //6
	}
	else if(adc_measurement > 100)
	{
		Write_data(0b0011, 0b0101); //5
	}
	else if(adc_measurement > 80)
	{
		Write_data(0b0011, 0b0100); //4
	}
	else if(adc_measurement > 60)
	{
		Write_data(0b0011, 0b0011); //3
	}
	else if(adc_measurement > 40)
	{
		Write_data(0b0011, 0b0010); //2
	}
	else if(adc_measurement > 20)
	{
		Write_data(0b0011, 0b0001); //1
	}
	else if(adc_measurement >= 0)
	{
		Write_data(0b0011, 0b0000); //0
	}
}

void Write_voltage(int adc_measurement)
{
	// maxV / maxbits = 5 / 1023 = 0,005 volts per bit
	
	// 0,005 * x = 1v  => x = 200;	
	
	if(adc_measurement < 200)
	{
		Write_data(0b0011,0b0000);
		Write_digits(adc_measurement);
	}
	else if(adc_measurement > 200 && adc_measurement < 400)
	{
		Write_data(0b0011,0b0001);
		Write_digits((adc_measurement-200));
	}
	else if(adc_measurement > 400 && adc_measurement < 600)
	{
		Write_data(0b0011,0b0010);
		Write_digits((adc_measurement-400));
	}
	else if(adc_measurement > 600 && adc_measurement < 800)
	{
		Write_data(0b0011,0b0011);
		Write_digits((adc_measurement-600));
	}
	else if(adc_measurement > 800 & adc_measurement < 1000)
	{
		Write_data(0b0011,0b0100);
		Write_digits((adc_measurement-800));
	}
	else if(adc_measurement > 1000)
	{
		Write_data(0b0011,0b0101);
	}
}