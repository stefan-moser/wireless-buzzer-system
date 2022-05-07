EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Buzzersystem - Host"
Date "2021-11-03"
Rev "1.0"
Comp "Stefan Moser IT Dienstleistungen"
Comment1 "Stefan Moser"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 61823FDB
P 6400 3100
F 0 "A1" H 6400 2011 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" V 6400 2950 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6400 3100 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6400 3100 50  0001 C CNN
	1    6400 3100
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 618280F2
P 6300 1350
F 0 "J1" V 6264 1162 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 6173 1162 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 6300 1350 50  0001 C CNN
F 3 "~" H 6300 1350 50  0001 C CNN
	1    6300 1350
	0    -1   -1   0   
$EndComp
$Comp
L RF:NRF24L01_Breakout U1
U 1 1 6182A410
P 4300 4100
F 0 "U1" H 4680 4146 50  0000 L CNN
F 1 "NRF24L01_Breakout" V 4400 3750 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 4450 4700 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 4300 4000 50  0001 C CNN
	1    4300 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D3
U 1 1 61830F37
P 8100 3400
F 0 "D3" H 8093 3617 50  0000 C CNN
F 1 "LED" H 8093 3526 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8100 3400 50  0001 C CNN
F 3 "~" H 8100 3400 50  0001 C CNN
	1    8100 3400
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 618362EF
P 8100 3800
F 0 "D4" H 8093 4017 50  0000 C CNN
F 1 "LED" H 8093 3926 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8100 3800 50  0001 C CNN
F 3 "~" H 8100 3800 50  0001 C CNN
	1    8100 3800
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D2
U 1 1 6183723F
P 8100 3000
F 0 "D2" H 8093 3217 50  0000 C CNN
F 1 "LED" H 8093 3126 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8100 3000 50  0001 C CNN
F 3 "~" H 8100 3000 50  0001 C CNN
	1    8100 3000
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D1
U 1 1 61837A45
P 8100 2600
F 0 "D1" H 8093 2817 50  0000 C CNN
F 1 "LED" H 8093 2726 50  0000 C CNN
F 2 "LED_THT:LED_D5.0mm" H 8100 2600 50  0001 C CNN
F 3 "~" H 8100 2600 50  0001 C CNN
	1    8100 2600
	-1   0    0    1   
$EndComp
$Comp
L Device:R R1
U 1 1 6183F2C0
P 7550 2600
F 0 "R1" V 7343 2600 50  0000 C CNN
F 1 "R" V 7434 2600 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7480 2600 50  0001 C CNN
F 3 "~" H 7550 2600 50  0001 C CNN
	1    7550 2600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 61841153
P 7550 3000
F 0 "R2" V 7343 3000 50  0000 C CNN
F 1 "R" V 7434 3000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7480 3000 50  0001 C CNN
F 3 "~" H 7550 3000 50  0001 C CNN
	1    7550 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3
U 1 1 618414B2
P 7550 3400
F 0 "R3" V 7343 3400 50  0000 C CNN
F 1 "R" V 7434 3400 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7480 3400 50  0001 C CNN
F 3 "~" H 7550 3400 50  0001 C CNN
	1    7550 3400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 61841556
P 7550 3800
F 0 "R4" V 7343 3800 50  0000 C CNN
F 1 "R" V 7434 3800 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7480 3800 50  0001 C CNN
F 3 "~" H 7550 3800 50  0001 C CNN
	1    7550 3800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 1550 6300 1650
Wire Wire Line
	6500 4100 6500 4450
Wire Wire Line
	6500 4450 8400 4450
Wire Wire Line
	8400 4450 8400 3800
Wire Wire Line
	8400 1750 6400 1750
Wire Wire Line
	6400 1750 6400 1550
Wire Wire Line
	8250 2600 8400 2600
Connection ~ 8400 2600
Wire Wire Line
	8400 2600 8400 1750
Wire Wire Line
	8250 3000 8400 3000
Connection ~ 8400 3000
Wire Wire Line
	8400 3000 8400 2600
Wire Wire Line
	8250 3400 8400 3400
Connection ~ 8400 3400
Wire Wire Line
	8400 3400 8400 3000
Wire Wire Line
	8250 3800 8400 3800
Connection ~ 8400 3800
Wire Wire Line
	8400 3800 8400 3400
Wire Wire Line
	6400 4100 6400 4450
Wire Wire Line
	6400 4450 6500 4450
Connection ~ 6500 4450
Wire Wire Line
	4300 4700 4950 4700
Wire Wire Line
	6500 4700 6500 4450
Wire Wire Line
	4300 3500 4950 3500
Wire Wire Line
	5250 3500 5250 2000
Wire Wire Line
	5250 2000 6500 2000
Wire Wire Line
	6500 2000 6500 2100
Wire Wire Line
	7700 2600 7950 2600
Wire Wire Line
	7700 3000 7950 3000
Wire Wire Line
	7700 3400 7950 3400
Wire Wire Line
	7700 3800 7950 3800
Wire Wire Line
	3800 3800 3800 3400
Wire Wire Line
	3800 3400 5100 3400
Wire Wire Line
	5100 3400 5100 3600
Wire Wire Line
	5100 3600 5900 3600
Wire Wire Line
	3800 3900 3700 3900
Wire Wire Line
	3700 3900 3700 3350
Wire Wire Line
	3700 3350 5150 3350
Wire Wire Line
	5150 3350 5150 3700
Wire Wire Line
	5150 3700 5900 3700
Wire Wire Line
	3800 4000 3650 4000
Wire Wire Line
	3650 4000 3650 3300
Wire Wire Line
	3650 3300 5300 3300
Wire Wire Line
	5300 3300 5300 3800
Wire Wire Line
	5300 3800 5900 3800
Wire Wire Line
	3800 4100 3600 4100
Wire Wire Line
	3600 4100 3600 3250
Wire Wire Line
	3600 3250 5400 3250
Wire Wire Line
	5400 3250 5400 3500
Wire Wire Line
	5400 3500 5900 3500
Wire Wire Line
	3800 4300 3550 4300
Wire Wire Line
	3550 4300 3550 3200
Wire Wire Line
	3550 3200 5450 3200
Wire Wire Line
	5450 3200 5450 3400
Wire Wire Line
	5450 3400 5900 3400
Wire Wire Line
	4300 4700 3350 4700
Wire Wire Line
	3350 4700 3350 3000
Wire Wire Line
	3350 950  4100 950 
Connection ~ 4300 4700
Wire Wire Line
	4100 1450 3350 1450
Connection ~ 3350 1450
Wire Wire Line
	3350 1450 3350 950 
Wire Wire Line
	4100 1950 3350 1950
Connection ~ 3350 1950
Wire Wire Line
	3350 1950 3350 1450
Wire Wire Line
	4100 2450 3350 2450
Connection ~ 3350 2450
Wire Wire Line
	3350 2450 3350 1950
Connection ~ 3350 3000
Wire Wire Line
	3350 3000 3350 2450
Wire Wire Line
	5550 3100 5550 3200
Wire Wire Line
	5550 3200 5900 3200
Wire Wire Line
	4500 950  5650 950 
$Comp
L power:GND #PWR01
U 1 1 618A22EC
P 5500 4850
F 0 "#PWR01" H 5500 4600 50  0001 C CNN
F 1 "GND" H 5505 4677 50  0000 C CNN
F 2 "" H 5500 4850 50  0001 C CNN
F 3 "" H 5500 4850 50  0001 C CNN
	1    5500 4850
	1    0    0    -1  
$EndComp
$Comp
L power:+9V #PWR02
U 1 1 618A43D9
P 6100 1650
F 0 "#PWR02" H 6100 1500 50  0001 C CNN
F 1 "+9V" H 6115 1823 50  0000 C CNN
F 2 "" H 6100 1650 50  0001 C CNN
F 3 "" H 6100 1650 50  0001 C CNN
	1    6100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1650 6300 1650
Connection ~ 6300 1650
Wire Wire Line
	6300 1650 6300 2100
Wire Wire Line
	5500 4850 5500 4700
Connection ~ 5500 4700
Wire Wire Line
	5500 4700 6500 4700
NoConn ~ 3800 4400
NoConn ~ 5900 2500
NoConn ~ 5900 2600
NoConn ~ 5900 3100
NoConn ~ 5900 3300
NoConn ~ 6900 2500
NoConn ~ 6900 2600
NoConn ~ 6900 2900
NoConn ~ 6900 3100
NoConn ~ 6900 3600
NoConn ~ 6900 3700
NoConn ~ 6900 3800
NoConn ~ 6600 2100
$Comp
L Connector:Conn_01x03_Female J2
U 1 1 61950D96
P 4300 2750
F 0 "J2" V 4238 2562 50  0000 R CNN
F 1 "Conn_01x03_Female" V 4147 2562 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 4300 2750 50  0001 C CNN
F 3 "~" H 4300 2750 50  0001 C CNN
	1    4300 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 3000 4200 2950
Wire Wire Line
	3350 3000 4200 3000
Wire Wire Line
	4400 2950 4400 3100
Wire Wire Line
	4400 3100 5550 3100
NoConn ~ 4300 2950
$Comp
L Device:CP C1
U 1 1 61960DF2
P 4950 4100
F 0 "C1" H 5068 4146 50  0000 L CNN
F 1 "CP" H 5068 4055 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 4988 3950 50  0001 C CNN
F 3 "~" H 4950 4100 50  0001 C CNN
	1    4950 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 3950 4950 3500
Connection ~ 4950 3500
Wire Wire Line
	4950 3500 5250 3500
Wire Wire Line
	4950 4250 4950 4700
Connection ~ 4950 4700
Wire Wire Line
	4950 4700 5500 4700
$Comp
L Switch:SW_Push_Dual SW4
U 1 1 618511CC
P 4300 2450
F 0 "SW4" H 4300 2735 50  0000 C CNN
F 1 "SW_Push_Dual" H 4300 2644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 4300 2650 50  0001 C CNN
F 3 "~" H 4300 2650 50  0001 C CNN
	1    4300 2450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW3
U 1 1 618771B7
P 4300 1950
F 0 "SW3" H 4300 2235 50  0000 C CNN
F 1 "SW_Push_Dual" H 4300 2144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 4300 2150 50  0001 C CNN
F 3 "~" H 4300 2150 50  0001 C CNN
	1    4300 1950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW2
U 1 1 6187A678
P 4300 1450
F 0 "SW2" H 4300 1735 50  0000 C CNN
F 1 "SW_Push_Dual" H 4300 1644 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 4300 1650 50  0001 C CNN
F 3 "~" H 4300 1650 50  0001 C CNN
	1    4300 1450
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push_Dual SW1
U 1 1 6187D8A6
P 4300 950
F 0 "SW1" H 4300 1235 50  0000 C CNN
F 1 "SW_Push_Dual" H 4300 1144 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H13mm" H 4300 1150 50  0001 C CNN
F 3 "~" H 4300 1150 50  0001 C CNN
	1    4300 950 
	1    0    0    -1  
$EndComp
NoConn ~ 4500 1150
NoConn ~ 4100 1150
NoConn ~ 4100 1650
NoConn ~ 4500 1650
NoConn ~ 4500 2150
NoConn ~ 4100 2150
NoConn ~ 4100 2650
NoConn ~ 4500 2650
Wire Wire Line
	7000 2600 7400 2600
Wire Wire Line
	7000 2600 7000 3200
Wire Wire Line
	7000 3200 6900 3200
Wire Wire Line
	7400 3000 7050 3000
Wire Wire Line
	7050 3000 7050 3300
Wire Wire Line
	7050 3300 6900 3300
Wire Wire Line
	6900 3400 7400 3400
Wire Wire Line
	6900 3500 7050 3500
Wire Wire Line
	7050 3500 7050 3800
Wire Wire Line
	7050 3800 7400 3800
Wire Wire Line
	4500 2450 5800 2450
Wire Wire Line
	5800 2450 5800 2700
Wire Wire Line
	5800 2700 5900 2700
Wire Wire Line
	4500 1950 5750 1950
Wire Wire Line
	5750 1950 5750 2800
Wire Wire Line
	5750 2800 5900 2800
Wire Wire Line
	4500 1450 5700 1450
Wire Wire Line
	5700 1450 5700 2900
Wire Wire Line
	5700 2900 5900 2900
Wire Wire Line
	5900 3000 5650 3000
Wire Wire Line
	5650 3000 5650 950 
$Comp
L Mechanical:MountingHole H1
U 1 1 618B05AC
P 9250 1350
F 0 "H1" H 9350 1396 50  0000 L CNN
F 1 "MountingHole" H 9350 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9250 1350 50  0001 C CNN
F 3 "~" H 9250 1350 50  0001 C CNN
	1    9250 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H3
U 1 1 618B1C84
P 10200 1350
F 0 "H3" H 10300 1396 50  0000 L CNN
F 1 "MountingHole" H 10300 1305 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10200 1350 50  0001 C CNN
F 3 "~" H 10200 1350 50  0001 C CNN
	1    10200 1350
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 618B4B87
P 9250 1900
F 0 "H2" H 9350 1946 50  0000 L CNN
F 1 "MountingHole" H 9350 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 9250 1900 50  0001 C CNN
F 3 "~" H 9250 1900 50  0001 C CNN
	1    9250 1900
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H4
U 1 1 618B7741
P 10200 1900
F 0 "H4" H 10300 1946 50  0000 L CNN
F 1 "MountingHole" H 10300 1855 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.2mm_M2" H 10200 1900 50  0001 C CNN
F 3 "~" H 10200 1900 50  0001 C CNN
	1    10200 1900
	1    0    0    -1  
$EndComp
$EndSCHEMATC
