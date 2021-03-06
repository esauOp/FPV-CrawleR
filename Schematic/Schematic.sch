EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:sn754410
LIBS:resonator
LIBS:Schematic-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "FPV CrawleR"
Date "2017-02-25"
Rev "0.1"
Comp ""
Comment1 "Atmega328 with Arduino bootloader."
Comment2 "SN754410 is 1A motor driver."
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ATMEGA328-P IC1
U 1 1 58A29A4B
P 5300 3050
F 0 "IC1" H 4550 4300 50  0000 L BNN
F 1 "ATMEGA328-P" H 5700 1650 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm" H 5300 3050 50  0001 C CIN
F 3 "" H 5300 3050 50  0000 C CNN
	1    5300 3050
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR01
U 1 1 58A39B7D
P 1350 1900
F 0 "#PWR01" H 1350 1750 50  0001 C CNN
F 1 "+9V" H 1350 2040 50  0000 C CNN
F 2 "" H 1350 1900 50  0000 C CNN
F 3 "" H 1350 1900 50  0000 C CNN
	1    1350 1900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 58A3A9FA
P 3100 1900
F 0 "#PWR02" H 3100 1750 50  0001 C CNN
F 1 "+5V" H 3100 2040 50  0000 C CNN
F 2 "" H 3100 1900 50  0000 C CNN
F 3 "" H 3100 1900 50  0000 C CNN
	1    3100 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR03
U 1 1 58A3AA28
P 2050 2650
F 0 "#PWR03" H 2050 2400 50  0001 C CNN
F 1 "GND" H 2050 2500 50  0000 C CNN
F 2 "" H 2050 2650 50  0000 C CNN
F 3 "" H 2050 2650 50  0000 C CNN
	1    2050 2650
	1    0    0    -1  
$EndComp
$Comp
L CP C1
U 1 1 58A3AB4E
P 1350 2300
F 0 "C1" H 1375 2400 50  0000 L CNN
F 1 "10uF" H 1375 2200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 1388 2150 50  0001 C CNN
F 3 "" H 1350 2300 50  0000 C CNN
	1    1350 2300
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 58A3ABA9
P 2750 2300
F 0 "C2" H 2775 2400 50  0000 L CNN
F 1 "10uF" H 2775 2200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:CP_Radial_D5.0mm_P2.50mm" H 2788 2150 50  0001 C CNN
F 3 "" H 2750 2300 50  0000 C CNN
	1    2750 2300
	1    0    0    -1  
$EndComp
$Comp
L C C3
U 1 1 58A3ABD6
P 3100 2300
F 0 "C3" H 3125 2400 50  0000 L CNN
F 1 "100nF" H 3125 2200 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3138 2150 50  0001 C CNN
F 3 "" H 3100 2300 50  0000 C CNN
	1    3100 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2150 1650 2150
Wire Wire Line
	1350 1900 1350 2150
Wire Wire Line
	2450 2150 3100 2150
Connection ~ 2750 2150
Wire Wire Line
	3100 2150 3100 1900
Wire Wire Line
	2050 2450 2050 2650
$Comp
L +5V #PWR04
U 1 1 58A3AD8A
P 4200 1900
F 0 "#PWR04" H 4200 1750 50  0001 C CNN
F 1 "+5V" H 4200 2040 50  0000 C CNN
F 2 "" H 4200 1900 50  0000 C CNN
F 3 "" H 4200 1900 50  0000 C CNN
	1    4200 1900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 58A3ADAC
P 4300 4400
F 0 "#PWR05" H 4300 4150 50  0001 C CNN
F 1 "GND" H 4300 4250 50  0000 C CNN
F 2 "" H 4300 4400 50  0000 C CNN
F 3 "" H 4300 4400 50  0000 C CNN
	1    4300 4400
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58A3ADDC
P 7600 2900
F 0 "R1" V 7680 2900 50  0000 C CNN
F 1 "10k" V 7600 2900 50  0000 C CNN
F 2 "Resistors_ThroughHole:R_Axial_DIN0207_L6.3mm_D2.5mm_P15.24mm_Horizontal" V 7530 2900 50  0001 C CNN
F 3 "" H 7600 2900 50  0000 C CNN
	1    7600 2900
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR06
U 1 1 58A3AE90
P 7600 2750
F 0 "#PWR06" H 7600 2600 50  0001 C CNN
F 1 "+5V" H 7600 2890 50  0000 C CNN
F 2 "" H 7600 2750 50  0000 C CNN
F 3 "" H 7600 2750 50  0000 C CNN
	1    7600 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1950 4400 1950
Wire Wire Line
	4300 4150 4300 4400
Wire Wire Line
	4300 4250 4400 4250
$Comp
L SN754410 U3
U 1 1 58B46E23
P 9300 2250
F 0 "U3" H 9300 2700 60  0000 C CNN
F 1 "SN754410" H 9300 1650 60  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_Socket" H 9350 2250 60  0001 C CNN
F 3 "" H 9350 2250 60  0001 C CNN
	1    9300 2250
	1    0    0    -1  
$EndComp
Text GLabel 6300 3750 2    60   Input ~ 0
m1_a
Text GLabel 6300 3950 2    60   Input ~ 0
m1_b
Text GLabel 6300 4250 2    60   Input ~ 0
m2_a
Text GLabel 6300 4150 2    60   Input ~ 0
m2_b
$Comp
L CONN_01X03 P1
U 1 1 58B780F9
P 2100 3450
F 0 "P1" H 2100 3650 50  0000 C CNN
F 1 "Arduino Programmer" V 2200 3450 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 2100 3450 50  0001 C CNN
F 3 "" H 2100 3450 50  0000 C CNN
	1    2100 3450
	1    0    0    -1  
$EndComp
Text GLabel 1900 3350 0    60   Input ~ 0
RTS
Text GLabel 1900 3550 0    60   Input ~ 0
Tx
Text GLabel 1900 3450 0    60   Input ~ 0
Rx
Text GLabel 6300 3400 2    60   Input ~ 0
RTS
Text GLabel 7600 3050 3    60   Input ~ 0
RTS
$Comp
L CONN_01X03 P2
U 1 1 58B785A9
P 7600 2150
F 0 "P2" H 7600 2350 50  0000 C CNN
F 1 "X8R" V 7700 2150 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-03_03x2.54mm_Straight" H 7600 2150 50  0001 C CNN
F 3 "" H 7600 2150 50  0000 C CNN
	1    7600 2150
	1    0    0    -1  
$EndComp
Text GLabel 7400 2050 0    60   Input ~ 0
ch2
Text GLabel 7400 2150 0    60   Input ~ 0
ch3
Text GLabel 7400 2250 0    60   Input ~ 0
ch1
Text GLabel 6300 2050 2    60   Input ~ 0
ch2
Text GLabel 6300 2150 2    60   Input ~ 0
ch3
Text GLabel 6300 2250 2    60   Input ~ 0
ch1
$Comp
L C C4
U 1 1 58B789B2
P 3100 3450
F 0 "C4" H 3125 3550 50  0000 L CNN
F 1 "100nF" H 3125 3350 50  0000 L CNN
F 2 "Capacitors_ThroughHole:C_Disc_D5.0mm_W2.5mm_P2.50mm" H 3138 3300 50  0001 C CNN
F 3 "" H 3100 3450 50  0000 C CNN
	1    3100 3450
	1    0    0    -1  
$EndComp
NoConn ~ 6300 2350
NoConn ~ 6300 2450
$Comp
L +5V #PWR07
U 1 1 58B78A8B
P 3100 3300
F 0 "#PWR07" H 3100 3150 50  0001 C CNN
F 1 "+5V" H 3100 3440 50  0000 C CNN
F 2 "" H 3100 3300 50  0000 C CNN
F 3 "" H 3100 3300 50  0000 C CNN
	1    3100 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 2250 4200 2250
Wire Wire Line
	4200 1900 4200 2550
Wire Wire Line
	4200 2550 4400 2550
Connection ~ 4200 2250
$Comp
L GND #PWR08
U 1 1 58B78BE0
P 3100 3600
F 0 "#PWR08" H 3100 3350 50  0001 C CNN
F 1 "GND" H 3100 3450 50  0000 C CNN
F 2 "" H 3100 3600 50  0000 C CNN
F 3 "" H 3100 3600 50  0000 C CNN
	1    3100 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 4150 4300 4150
Connection ~ 4300 4250
Connection ~ 4200 1950
Text GLabel 6300 3550 2    60   Input ~ 0
Rx
Text GLabel 6300 3650 2    60   Input ~ 0
Tx
NoConn ~ 6300 2800
NoConn ~ 6300 2900
NoConn ~ 6300 3000
NoConn ~ 6300 3100
NoConn ~ 6300 3200
NoConn ~ 6300 3300
$Comp
L GND #PWR09
U 1 1 58B78F95
P 2700 4600
F 0 "#PWR09" H 2700 4350 50  0001 C CNN
F 1 "GND" H 2700 4450 50  0000 C CNN
F 2 "" H 2700 4600 50  0000 C CNN
F 3 "" H 2700 4600 50  0000 C CNN
	1    2700 4600
	1    0    0    -1  
$EndComp
Text GLabel 6300 2650 2    60   Input ~ 0
xt1
Text GLabel 6300 2550 2    60   Input ~ 0
xt2
Text GLabel 2500 4350 0    60   Input ~ 0
xt1
Text GLabel 2900 4350 2    60   Input ~ 0
xt2
NoConn ~ 6300 1950
Text GLabel 6300 3850 2    60   Input ~ 0
m1_pwm
Text GLabel 6300 4050 2    60   Input ~ 0
m2_pwm
$Comp
L CONN_01X04 P3
U 1 1 58B794B5
P 9650 4000
F 0 "P3" H 9650 4250 50  0000 C CNN
F 1 "Motors" V 9750 4000 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-04_04x2.54mm_Straight" H 9650 4000 50  0001 C CNN
F 3 "" H 9650 4000 50  0000 C CNN
	1    9650 4000
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR010
U 1 1 58B798BD
P 8750 2650
F 0 "#PWR010" H 8750 2500 50  0001 C CNN
F 1 "+9V" H 8750 2790 50  0000 C CNN
F 2 "" H 8750 2650 50  0000 C CNN
F 3 "" H 8750 2650 50  0000 C CNN
	1    8750 2650
	-1   0    0    1   
$EndComp
Text GLabel 9900 2650 2    60   Input ~ 0
m1_pwm
Text GLabel 9900 2550 2    60   Input ~ 0
m1_a
Text GLabel 9900 2050 2    60   Input ~ 0
m1_b
Text GLabel 8750 1950 0    60   Input ~ 0
m2_pwm
Text GLabel 8750 2550 0    60   Input ~ 0
m2_a
Text GLabel 8750 2050 0    60   Input ~ 0
m2_b
Text GLabel 9450 3850 0    60   Input ~ 0
motor1_x
Text GLabel 9450 3950 0    60   Input ~ 0
motor1_y
Text GLabel 9450 4050 0    60   Input ~ 0
motor2_x
Text GLabel 9450 4150 0    60   Input ~ 0
motor2_y
Text GLabel 8750 2150 0    60   Input ~ 0
motor1_x
Text GLabel 8750 2450 0    60   Input ~ 0
motor1_y
Text GLabel 9900 2150 2    60   Input ~ 0
motor2_x
Text GLabel 9900 2450 2    60   Input ~ 0
motor2_y
$Comp
L GND #PWR011
U 1 1 58B79C80
P 8400 2250
F 0 "#PWR011" H 8400 2000 50  0001 C CNN
F 1 "GND" H 8400 2100 50  0000 C CNN
F 2 "" H 8400 2250 50  0000 C CNN
F 3 "" H 8400 2250 50  0000 C CNN
	1    8400 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 58B79CAF
P 10250 2250
F 0 "#PWR012" H 10250 2000 50  0001 C CNN
F 1 "GND" H 10250 2100 50  0000 C CNN
F 2 "" H 10250 2250 50  0000 C CNN
F 3 "" H 10250 2250 50  0000 C CNN
	1    10250 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 2250 10250 2250
Wire Wire Line
	9900 2350 10050 2350
Wire Wire Line
	10050 2350 10050 2250
Connection ~ 10050 2250
Wire Wire Line
	8750 2250 8400 2250
Wire Wire Line
	8750 2350 8600 2350
Wire Wire Line
	8600 2350 8600 2250
Connection ~ 8600 2250
$Comp
L +5V #PWR013
U 1 1 58B79D62
P 9900 1950
F 0 "#PWR013" H 9900 1800 50  0001 C CNN
F 1 "+5V" H 9900 2090 50  0000 C CNN
F 2 "" H 9900 1950 50  0000 C CNN
F 3 "" H 9900 1950 50  0000 C CNN
	1    9900 1950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P4
U 1 1 58B7A530
P 2000 1050
F 0 "P4" H 2000 1200 50  0000 C CNN
F 1 "Motors Voltage" V 2100 1050 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 2000 1050 50  0001 C CNN
F 3 "" H 2000 1050 50  0000 C CNN
	1    2000 1050
	1    0    0    -1  
$EndComp
$Comp
L +9V #PWR014
U 1 1 58B7A592
P 1800 1000
F 0 "#PWR014" H 1800 850 50  0001 C CNN
F 1 "+9V" H 1800 1140 50  0000 C CNN
F 2 "" H 1800 1000 50  0000 C CNN
F 3 "" H 1800 1000 50  0000 C CNN
	1    1800 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 58B7A612
P 1800 1100
F 0 "#PWR015" H 1800 850 50  0001 C CNN
F 1 "GND" H 1800 950 50  0000 C CNN
F 2 "" H 1800 1100 50  0000 C CNN
F 3 "" H 1800 1100 50  0000 C CNN
	1    1800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 2450 1350 2550
Wire Wire Line
	1350 2550 3100 2550
Connection ~ 2050 2550
Wire Wire Line
	2750 2550 2750 2450
Wire Wire Line
	3100 2550 3100 2450
Connection ~ 2750 2550
$Comp
L LM7805CT U1
U 1 1 58B7AB87
P 2050 2200
F 0 "U1" H 1850 2400 50  0000 C CNN
F 1 "LM7805" H 2050 2400 50  0000 L CNN
F 2 "Power_Integrations:TO-220" H 2050 2300 50  0000 C CIN
F 3 "" H 2050 2200 50  0000 C CNN
	1    2050 2200
	1    0    0    -1  
$EndComp
$Comp
L Resonator Y1
U 1 1 58B8D280
P 2700 4350
F 0 "Y1" H 2700 4500 50  0000 C CNN
F 1 "Resonator" H 2950 4450 50  0000 C CNN
F 2 "Crystals:Resonator-3pin_w7.0mm_h2.5mm" H 2700 4350 50  0001 C CNN
F 3 "" H 2700 4350 50  0000 C CNN
	1    2700 4350
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 P5
U 1 1 58BCF343
P 2800 1050
F 0 "P5" H 2800 1200 50  0000 C CNN
F 1 "Rx PS" V 2900 1050 50  0000 C CNN
F 2 "Connectors_Molex:Molex_KK-6410-02_02x2.54mm_Straight" H 2800 1050 50  0001 C CNN
F 3 "" H 2800 1050 50  0000 C CNN
	1    2800 1050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 58BCF389
P 2600 1100
F 0 "#PWR016" H 2600 850 50  0001 C CNN
F 1 "GND" H 2600 950 50  0000 C CNN
F 2 "" H 2600 1100 50  0000 C CNN
F 3 "" H 2600 1100 50  0000 C CNN
	1    2600 1100
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR017
U 1 1 58BCF3BE
P 2600 1000
F 0 "#PWR017" H 2600 850 50  0001 C CNN
F 1 "+5V" H 2600 1140 50  0000 C CNN
F 2 "" H 2600 1000 50  0000 C CNN
F 3 "" H 2600 1000 50  0000 C CNN
	1    2600 1000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
