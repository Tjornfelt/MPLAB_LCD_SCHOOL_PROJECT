void Thermal_Init()
{
	//Startup condition - A
	PORTC = 0b01000; //RC4 set to low
	_delay(1000);
	PORTC = 0; //RC3 set to low

	//MSB of Address Clocked into Slave - B
	//0b100-1101

	//first bit
	PORTC = 0b10000; //1
	PORTC = 0b11000;
	_delay(1000);
	PORTC = 0b00000;

	//second bit
	PORTC = 0b00000; //0
	PORTC = 0b01000;
	_delay(1000);
	PORTC = 0b00000;

	//third bit
	PORTC = 0b00000; //0
	PORTC = 0b01000;
	_delay(1000);
	PORTC = 0b00000;

	//LSB of Address Clocked into Slave - C
	//fourth bit
	PORTC = 0b10000; //1
	PORTC = 0b11000;
	_delay(1000);
	PORTC = 0b00000;

	//fifth bit
	PORTC = 0b10000; //1
	PORTC = 0b01000;
	_delay(1000);
	PORTC = 0b00000;

	//sixth bit
	PORTC = 0b00000; //0
	PORTC = 0b01000;
	_delay(1000);
	PORTC = 0b00000;

	//seventh bit
	PORTC = 0b10000; //1
	PORTC = 0b11000;
	_delay(1000);
	PORTC = 0b00000;

	//R/W Bit Clocked into Slave - D
	PORTC = 0b10000;
	PORTC = 0b11000;
	_delay(1000);
	PORTC = 0b10000;

	//Slave Pulls SDA Line Low - E
	TRISC = 0b01000;
	PORTC = 0b01000;
	PORTC = 0b00000;

	//Acknowledge Bit Clocked into Master - F
	TRISC = 0b0;
}