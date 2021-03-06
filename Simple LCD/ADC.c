// http://www.tuicool.com/articles/JbeINr

#include <pic.h>
#define _XTAL_FREQ 4000000

void ADC_Init()
{
  ADCON0 = 0x41; //ADC Module Turned ON and Clock is selected
  ADCON1 = 0xC0; //All pins as Analog Input
                 //With reference voltages VDD and VSS
}

//must be int, not char, because we read 10 bits!
unsigned int ADC_Read(unsigned char channel)
{
  ADCON0 &= 0xC5; //Clearing the Channel Selection Bits
  ADCON0 |= channel<<3; //Setting the required Bits
  __delay_ms(2); //Acquisition time to charge hold capacitor
  GO_nDONE = 1; //Initializes A/D Conversion
  while(GO_nDONE); //Wait for A/D Conversion to complete
  return ((ADRESH<<8)+ADRESL); //Returns Result
}