EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Buzzersystem - Sender"
Date "2021-11-02"
Rev "1.0"
Comp "Stefan Moser IT Dienstleistungen"
Comment1 "Stefan Moser"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 61823A85
P 6650 1100
F 0 "J2" V 6750 1050 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 6523 912 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-2_P5.08mm" H 6650 1100 50  0001 C CNN
F 3 "~" H 6650 1100 50  0001 C CNN
	1    6650 1100
	0    -1   -1   0   
$EndComp
$Comp
L RF:NRF24L01_Breakout U1
U 1 1 61825867
P 3750 2600
F 0 "U1" H 3850 2100 50  0000 L CNN
F 1 "NRF24L01_Breakout" V 3650 2250 50  0000 L CNN
F 2 "RF_Module:nRF24L01_Breakout" H 3900 3200 50  0001 L CIN
F 3 "http://www.nordicsemi.com/eng/content/download/2730/34105/file/nRF24L01_Product_Specification_v2_0.pdf" H 3750 2500 50  0001 C CNN
	1    3750 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x03 J1
U 1 1 618373A8
P 5500 1100
F 0 "J1" V 5600 1100 50  0000 R CNN
F 1 "Screw_Terminal_01x03" V 5373 912 50  0000 R CNN
F 2 "TerminalBlock:TerminalBlock_bornier-3_P5.08mm" H 5500 1100 50  0001 C CNN
F 3 "~" H 5500 1100 50  0001 C CNN
	1    5500 1100
	0    -1   -1   0   
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v2.x A1
U 1 1 61819B23
P 6750 2900
F 0 "A1" H 6400 3850 50  0000 C CNN
F 1 "Arduino_Nano_v2.x" V 6750 2850 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 6750 2900 50  0001 C CIN
F 3 "https://www.arduino.cc/en/uploads/Main/ArduinoNanoManual23.pdf" H 6750 2900 50  0001 C CNN
	1    6750 2900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 61847C5E
P 6750 4400
F 0 "#PWR01" H 6750 4150 50  0001 C CNN
F 1 "GND" H 6755 4227 50  0000 C CNN
F 2 "" H 6750 4400 50  0001 C CNN
F 3 "" H 6750 4400 50  0001 C CNN
	1    6750 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 4400 6750 4250
Wire Wire Line
	6650 1300 6650 1550
Wire Wire Line
	6750 1300 7900 1300
Wire Wire Line
	7900 1300 7900 4250
Wire Wire Line
	7900 4250 6750 4250
Connection ~ 6750 4250
Wire Wire Line
	6750 4250 6750 3900
Wire Wire Line
	3750 3200 3750 4250
Wire Wire Line
	3750 4250 4400 4250
Wire Wire Line
	5600 1300 5600 2700
Wire Wire Line
	5600 2700 6250 2700
Wire Wire Line
	5400 1300 5400 4250
Connection ~ 5400 4250
Wire Wire Line
	5400 4250 6750 4250
Wire Wire Line
	5500 1300 5500 2500
Wire Wire Line
	5500 2500 6250 2500
Wire Wire Line
	6850 1900 6850 1700
Wire Wire Line
	6850 1700 4400 1700
Wire Wire Line
	3750 1700 3750 2000
$Comp
L Device:CP C1
U 1 1 618592FA
P 4400 1950
F 0 "C1" H 4518 1996 50  0000 L CNN
F 1 "CP" H 4518 1905 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D4.0mm_P2.00mm" H 4438 1800 50  0001 C CNN
F 3 "~" H 4400 1950 50  0001 C CNN
	1    4400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1800 4400 1700
Connection ~ 4400 1700
Wire Wire Line
	4400 1700 3750 1700
Wire Wire Line
	4400 2100 4400 4250
Connection ~ 4400 4250
Wire Wire Line
	4400 4250 5400 4250
Wire Wire Line
	3250 2800 3150 2800
Wire Wire Line
	3250 2600 3050 2600
Wire Wire Line
	3050 2600 3050 3300
Wire Wire Line
	3050 3300 6250 3300
Wire Wire Line
	3250 2300 2950 2300
Wire Wire Line
	2950 2300 2950 3400
Wire Wire Line
	2950 3400 6250 3400
Wire Wire Line
	3250 2400 2850 2400
Wire Wire Line
	2850 2400 2850 3500
Wire Wire Line
	2850 3500 6250 3500
Wire Wire Line
	3250 2500 2750 2500
Wire Wire Line
	2750 2500 2750 3600
Wire Wire Line
	2750 3600 6250 3600
NoConn ~ 6950 1900
NoConn ~ 6250 2300
NoConn ~ 6250 2400
NoConn ~ 6250 2600
NoConn ~ 6250 2800
NoConn ~ 6250 2900
NoConn ~ 6250 3000
NoConn ~ 6250 3100
NoConn ~ 6850 3900
NoConn ~ 7250 2300
NoConn ~ 7250 2400
NoConn ~ 7250 2700
NoConn ~ 7250 2900
NoConn ~ 7250 3000
NoConn ~ 7250 3100
NoConn ~ 7250 3200
NoConn ~ 7250 3300
NoConn ~ 7250 3400
NoConn ~ 7250 3500
NoConn ~ 7250 3600
NoConn ~ 3250 2900
Wire Wire Line
	3150 3250 6050 3250
Wire Wire Line
	6050 3250 6050 3200
Wire Wire Line
	6050 3200 6250 3200
Wire Wire Line
	3150 2800 3150 3250
$Comp
L power:+9V #PWR0101
U 1 1 61874263
P 6400 1550
F 0 "#PWR0101" H 6400 1400 50  0001 C CNN
F 1 "+9V" H 6415 1723 50  0000 C CNN
F 2 "" H 6400 1550 50  0001 C CNN
F 3 "" H 6400 1550 50  0001 C CNN
	1    6400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 1550 6650 1550
Connection ~ 6650 1550
Wire Wire Line
	6650 1550 6650 1900
$EndSCHEMATC
