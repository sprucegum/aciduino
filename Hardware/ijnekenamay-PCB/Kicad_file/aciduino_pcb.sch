EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L power:GND #PWR0101
U 1 1 610128D0
P 9450 1700
F 0 "#PWR0101" H 9450 1450 50  0001 C CNN
F 1 "GND" V 9455 1572 50  0000 R CNN
F 2 "" H 9450 1700 50  0001 C CNN
F 3 "" H 9450 1700 50  0001 C CNN
	1    9450 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61013397
P 9450 1800
F 0 "#PWR0102" H 9450 1550 50  0001 C CNN
F 1 "GND" V 9455 1672 50  0000 R CNN
F 2 "" H 9450 1800 50  0001 C CNN
F 3 "" H 9450 1800 50  0001 C CNN
	1    9450 1800
	0    -1   -1   0   
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 61014E02
P 1300 5300
F 0 "SW1" H 1300 5585 50  0000 C CNN
F 1 "Prev_STEP" H 1300 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 1300 5500 50  0001 C CNN
F 3 "~" H 1300 5500 50  0001 C CNN
	1    1300 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 610161F7
P 1100 5300
F 0 "#PWR0103" H 1100 5050 50  0001 C CNN
F 1 "GND" V 1105 5172 50  0000 R CNN
F 2 "" H 1100 5300 50  0001 C CNN
F 3 "" H 1100 5300 50  0001 C CNN
	1    1100 5300
	0    1    1    0   
$EndComp
Text GLabel 1500 5300 2    50   Input ~ 0
Prev_STEP
Text GLabel 8050 2300 3    50   Input ~ 0
Prev_STEP
$Comp
L Switch:SW_Push SW2
U 1 1 61018FA5
P 2500 5300
F 0 "SW2" H 2500 5585 50  0000 C CNN
F 1 "Next_STEP" H 2500 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 2500 5500 50  0001 C CNN
F 3 "~" H 2500 5500 50  0001 C CNN
	1    2500 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 61019045
P 2300 5300
F 0 "#PWR0104" H 2300 5050 50  0001 C CNN
F 1 "GND" V 2305 5172 50  0000 R CNN
F 2 "" H 2300 5300 50  0001 C CNN
F 3 "" H 2300 5300 50  0001 C CNN
	1    2300 5300
	0    1    1    0   
$EndComp
Text GLabel 2700 5300 2    50   Input ~ 0
Next_STEP
Text GLabel 8150 2300 3    50   Input ~ 0
Next_STEP
$Comp
L Switch:SW_Push SW3
U 1 1 6101B8FF
P 3700 5300
F 0 "SW3" H 3700 5585 50  0000 C CNN
F 1 "Rest" H 3700 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 3700 5500 50  0001 C CNN
F 3 "~" H 3700 5500 50  0001 C CNN
	1    3700 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 6101B9C1
P 3500 5300
F 0 "#PWR0105" H 3500 5050 50  0001 C CNN
F 1 "GND" V 3505 5172 50  0000 R CNN
F 2 "" H 3500 5300 50  0001 C CNN
F 3 "" H 3500 5300 50  0001 C CNN
	1    3500 5300
	0    1    1    0   
$EndComp
Text GLabel 3900 5300 2    50   Input ~ 0
Rest
Text GLabel 8250 2300 3    50   Input ~ 0
Rest
$Comp
L Switch:SW_Push SW4
U 1 1 6101D2AC
P 4700 5300
F 0 "SW4" H 4700 5585 50  0000 C CNN
F 1 "Glide" H 4700 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 4700 5500 50  0001 C CNN
F 3 "~" H 4700 5500 50  0001 C CNN
	1    4700 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 6101D390
P 4500 5300
F 0 "#PWR0106" H 4500 5050 50  0001 C CNN
F 1 "GND" V 4505 5172 50  0000 R CNN
F 2 "" H 4500 5300 50  0001 C CNN
F 3 "" H 4500 5300 50  0001 C CNN
	1    4500 5300
	0    1    1    0   
$EndComp
Text GLabel 4900 5300 2    50   Input ~ 0
Glide
Text GLabel 8350 2300 3    50   Input ~ 0
Glide
$Comp
L power:GND #PWR0107
U 1 1 61020EDE
P 5550 5300
F 0 "#PWR0107" H 5550 5050 50  0001 C CNN
F 1 "GND" V 5555 5172 50  0000 R CNN
F 2 "" H 5550 5300 50  0001 C CNN
F 3 "" H 5550 5300 50  0001 C CNN
	1    5550 5300
	0    1    1    0   
$EndComp
Text GLabel 8450 2300 3    50   Input ~ 0
Accent
Text GLabel 5950 5300 2    50   Input ~ 0
Accent
$Comp
L Switch:SW_Push SW5
U 1 1 61020DD8
P 5750 5300
F 0 "SW5" H 5750 5585 50  0000 C CNN
F 1 "Accent" H 5750 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 5750 5500 50  0001 C CNN
F 3 "~" H 5750 5500 50  0001 C CNN
	1    5750 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 61022A95
P 6650 5300
F 0 "#PWR0108" H 6650 5050 50  0001 C CNN
F 1 "GND" V 6655 5172 50  0000 R CNN
F 2 "" H 6650 5300 50  0001 C CNN
F 3 "" H 6650 5300 50  0001 C CNN
	1    6650 5300
	0    1    1    0   
$EndComp
Text GLabel 7050 5300 2    50   Input ~ 0
PLAY_STOP
$Comp
L Switch:SW_Push SW6
U 1 1 61022BB4
P 6850 5300
F 0 "SW6" H 6850 5585 50  0000 C CNN
F 1 "PLAY_STOP" H 6850 5494 50  0000 C CNN
F 2 "Button_Switch_THT:SW_TH_Tactile_Omron_B3F-10xx" H 6850 5500 50  0001 C CNN
F 3 "~" H 6850 5500 50  0001 C CNN
	1    6850 5300
	1    0    0    -1  
$EndComp
Text GLabel 8550 2300 3    50   Input ~ 0
PLAY_STOP
$Comp
L power:GND #PWR0109
U 1 1 61026C35
P 6200 6450
F 0 "#PWR0109" H 6200 6200 50  0001 C CNN
F 1 "GND" H 6205 6277 50  0000 C CNN
F 2 "" H 6200 6450 50  0001 C CNN
F 3 "" H 6200 6450 50  0001 C CNN
	1    6200 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 6102792A
P 6650 6250
F 0 "R1" V 6443 6250 50  0000 C CNN
F 1 "220R" V 6534 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6580 6250 50  0001 C CNN
F 3 "~" H 6650 6250 50  0001 C CNN
	1    6650 6250
	0    1    1    0   
$EndComp
Text GLabel 6800 6250 2    50   Input ~ 0
5V
Text GLabel 7450 1600 0    50   Input ~ 0
5V
$Comp
L Device:R R2
U 1 1 61029A56
P 5750 6250
F 0 "R2" V 5543 6250 50  0000 C CNN
F 1 "220R" V 5634 6250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5680 6250 50  0001 C CNN
F 3 "~" H 5750 6250 50  0001 C CNN
	1    5750 6250
	0    1    1    0   
$EndComp
Text GLabel 5600 6250 0    50   Input ~ 0
MIDI_OUT
Text GLabel 7950 2300 3    50   Input ~ 0
MIDI_OUT
$Comp
L Device:R_POT RV1
U 1 1 6102B4DF
P 1250 2950
F 0 "RV1" V 1043 2950 50  0000 C CNN
F 1 "10k" V 1134 2950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 1250 2950 50  0001 C CNN
F 3 "~" H 1250 2950 50  0001 C CNN
	1    1250 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 6102D165
P 1400 2950
F 0 "#PWR0110" H 1400 2700 50  0001 C CNN
F 1 "GND" V 1405 2822 50  0000 R CNN
F 2 "" H 1400 2950 50  0001 C CNN
F 3 "" H 1400 2950 50  0001 C CNN
	1    1400 2950
	0    -1   -1   0   
$EndComp
Text GLabel 1100 2950 0    50   Input ~ 0
5V
Text GLabel 1250 3100 3    50   Input ~ 0
Octave
Text GLabel 8750 1300 1    50   Input ~ 0
Octave
$Comp
L Device:R_POT RV2
U 1 1 61030141
P 2150 2950
F 0 "RV2" V 1943 2950 50  0000 C CNN
F 1 "10k" V 2034 2950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 2150 2950 50  0001 C CNN
F 3 "~" H 2150 2950 50  0001 C CNN
	1    2150 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 61030309
P 2300 2950
F 0 "#PWR0111" H 2300 2700 50  0001 C CNN
F 1 "GND" V 2305 2822 50  0000 R CNN
F 2 "" H 2300 2950 50  0001 C CNN
F 3 "" H 2300 2950 50  0001 C CNN
	1    2300 2950
	0    -1   -1   0   
$EndComp
Text GLabel 2000 2950 0    50   Input ~ 0
5V
Text GLabel 2150 3100 3    50   Input ~ 0
Note
Text GLabel 8650 1300 1    50   Input ~ 0
Note
$Comp
L Device:R_POT RV3
U 1 1 61032615
P 3050 2950
F 0 "RV3" V 2843 2950 50  0000 C CNN
F 1 "10k" V 2934 2950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3050 2950 50  0001 C CNN
F 3 "~" H 3050 2950 50  0001 C CNN
	1    3050 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 610327FF
P 3200 2950
F 0 "#PWR0112" H 3200 2700 50  0001 C CNN
F 1 "GND" V 3205 2822 50  0000 R CNN
F 2 "" H 3200 2950 50  0001 C CNN
F 3 "" H 3200 2950 50  0001 C CNN
	1    3200 2950
	0    -1   -1   0   
$EndComp
Text GLabel 2900 2950 0    50   Input ~ 0
5V
Text GLabel 3050 3100 3    50   Input ~ 0
Length
Text GLabel 8550 1300 1    50   Input ~ 0
Length
$Comp
L Device:R_POT RV4
U 1 1 610345B7
P 3850 2950
F 0 "RV4" V 3643 2950 50  0000 C CNN
F 1 "10k" V 3734 2950 50  0000 C CNN
F 2 "Potentiometer_THT:Potentiometer_Alpha_RD901F-40-00D_Single_Vertical" H 3850 2950 50  0001 C CNN
F 3 "~" H 3850 2950 50  0001 C CNN
	1    3850 2950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0113
U 1 1 610347C3
P 4000 2950
F 0 "#PWR0113" H 4000 2700 50  0001 C CNN
F 1 "GND" V 4005 2822 50  0000 R CNN
F 2 "" H 4000 2950 50  0001 C CNN
F 3 "" H 4000 2950 50  0001 C CNN
	1    4000 2950
	0    -1   -1   0   
$EndComp
Text GLabel 3700 2950 0    50   Input ~ 0
5V
Text GLabel 3850 3100 3    50   Input ~ 0
BPM
Text GLabel 8450 1300 1    50   Input ~ 0
BPM
Text GLabel 7450 1900 0    50   Input ~ 0
9V
$Comp
L Device:LED D1
U 1 1 6103678B
P 1200 4250
F 0 "D1" H 1193 3995 50  0000 C CNN
F 1 "LED" H 1193 4086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 1200 4250 50  0001 C CNN
F 3 "~" H 1200 4250 50  0001 C CNN
	1    1200 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0114
U 1 1 61037A7D
P 1050 4250
F 0 "#PWR0114" H 1050 4000 50  0001 C CNN
F 1 "GND" V 1055 4122 50  0000 R CNN
F 2 "" H 1050 4250 50  0001 C CNN
F 3 "" H 1050 4250 50  0001 C CNN
	1    1050 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 610398C0
P 1500 4250
F 0 "R3" V 1293 4250 50  0000 C CNN
F 1 "220R" V 1384 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1430 4250 50  0001 C CNN
F 3 "~" H 1500 4250 50  0001 C CNN
	1    1500 4250
	0    1    1    0   
$EndComp
Text GLabel 1650 4250 2    50   Input ~ 0
LED1
Text GLabel 8650 2300 3    50   Input ~ 0
LED1
$Comp
L Device:LED D2
U 1 1 6103B52A
P 2450 4250
F 0 "D2" H 2443 3995 50  0000 C CNN
F 1 "LED" H 2443 4086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 2450 4250 50  0001 C CNN
F 3 "~" H 2450 4250 50  0001 C CNN
	1    2450 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 6103B78E
P 2300 4250
F 0 "#PWR0115" H 2300 4000 50  0001 C CNN
F 1 "GND" V 2305 4122 50  0000 R CNN
F 2 "" H 2300 4250 50  0001 C CNN
F 3 "" H 2300 4250 50  0001 C CNN
	1    2300 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 6103B798
P 2750 4250
F 0 "R4" V 2543 4250 50  0000 C CNN
F 1 "220R" V 2634 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2680 4250 50  0001 C CNN
F 3 "~" H 2750 4250 50  0001 C CNN
	1    2750 4250
	0    1    1    0   
$EndComp
Text GLabel 2900 4250 2    50   Input ~ 0
LED2
Text GLabel 8750 2300 3    50   Input ~ 0
LED2
$Comp
L Device:LED D3
U 1 1 6103EDCE
P 3700 4250
F 0 "D3" H 3693 3995 50  0000 C CNN
F 1 "LED" H 3693 4086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 3700 4250 50  0001 C CNN
F 3 "~" H 3700 4250 50  0001 C CNN
	1    3700 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0116
U 1 1 6103F066
P 3550 4250
F 0 "#PWR0116" H 3550 4000 50  0001 C CNN
F 1 "GND" V 3555 4122 50  0000 R CNN
F 2 "" H 3550 4250 50  0001 C CNN
F 3 "" H 3550 4250 50  0001 C CNN
	1    3550 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R5
U 1 1 6103F070
P 4000 4250
F 0 "R5" V 3793 4250 50  0000 C CNN
F 1 "220R" V 3884 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3930 4250 50  0001 C CNN
F 3 "~" H 4000 4250 50  0001 C CNN
	1    4000 4250
	0    1    1    0   
$EndComp
Text GLabel 4150 4250 2    50   Input ~ 0
LED3
Text GLabel 8850 2300 3    50   Input ~ 0
LED3
$Comp
L Device:LED D4
U 1 1 61040F5C
P 4950 4250
F 0 "D4" H 4943 3995 50  0000 C CNN
F 1 "LED" H 4943 4086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 4950 4250 50  0001 C CNN
F 3 "~" H 4950 4250 50  0001 C CNN
	1    4950 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0117
U 1 1 61041228
P 4800 4250
F 0 "#PWR0117" H 4800 4000 50  0001 C CNN
F 1 "GND" V 4805 4122 50  0000 R CNN
F 2 "" H 4800 4250 50  0001 C CNN
F 3 "" H 4800 4250 50  0001 C CNN
	1    4800 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 61041232
P 5250 4250
F 0 "R6" V 5043 4250 50  0000 C CNN
F 1 "220R" V 5134 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5180 4250 50  0001 C CNN
F 3 "~" H 5250 4250 50  0001 C CNN
	1    5250 4250
	0    1    1    0   
$EndComp
Text GLabel 5400 4250 2    50   Input ~ 0
LED4
Text GLabel 8950 2300 3    50   Input ~ 0
LED4
$Comp
L Device:LED D5
U 1 1 610514B4
P 6300 4250
F 0 "D5" H 6293 3995 50  0000 C CNN
F 1 "LED" H 6293 4086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 6300 4250 50  0001 C CNN
F 3 "~" H 6300 4250 50  0001 C CNN
	1    6300 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0118
U 1 1 610517B4
P 6150 4250
F 0 "#PWR0118" H 6150 4000 50  0001 C CNN
F 1 "GND" V 6155 4122 50  0000 R CNN
F 2 "" H 6150 4250 50  0001 C CNN
F 3 "" H 6150 4250 50  0001 C CNN
	1    6150 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 610517BE
P 6600 4250
F 0 "R7" V 6393 4250 50  0000 C CNN
F 1 "220R" V 6484 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 6530 4250 50  0001 C CNN
F 3 "~" H 6600 4250 50  0001 C CNN
	1    6600 4250
	0    1    1    0   
$EndComp
Text GLabel 6750 4250 2    50   Input ~ 0
LED5
Text GLabel 9050 2300 3    50   Input ~ 0
LED5
$Comp
L Device:LED D6
U 1 1 61054350
P 7650 4250
F 0 "D6" H 7643 3995 50  0000 C CNN
F 1 "LED" H 7643 4086 50  0000 C CNN
F 2 "LED_THT:LED_D3.0mm" H 7650 4250 50  0001 C CNN
F 3 "~" H 7650 4250 50  0001 C CNN
	1    7650 4250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 61054684
P 7500 4250
F 0 "#PWR0119" H 7500 4000 50  0001 C CNN
F 1 "GND" V 7505 4122 50  0000 R CNN
F 2 "" H 7500 4250 50  0001 C CNN
F 3 "" H 7500 4250 50  0001 C CNN
	1    7500 4250
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 6105468E
P 7950 4250
F 0 "R8" V 7743 4250 50  0000 C CNN
F 1 "220R" V 7834 4250 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 7880 4250 50  0001 C CNN
F 3 "~" H 7950 4250 50  0001 C CNN
	1    7950 4250
	0    1    1    0   
$EndComp
Text GLabel 8100 4250 2    50   Input ~ 0
LED6
Text GLabel 9150 2300 3    50   Input ~ 0
LED6
NoConn ~ 8850 1300
NoConn ~ 8950 1300
NoConn ~ 9050 1300
NoConn ~ 9150 1300
$Comp
L Connector:DIN-5_180degree J1
U 1 1 6105E5B1
P 6200 6150
F 0 "J1" H 6200 5783 50  0000 C CNN
F 1 "MIDI_OUT" H 6200 5874 50  0000 C CNN
F 2 "Connector:SDS-50J" H 6200 6150 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 6200 6150 50  0001 C CNN
	1    6200 6150
	-1   0    0    1   
$EndComp
NoConn ~ 6500 6150
NoConn ~ 5900 6150
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 6106B0B8
P 5200 3000
F 0 "J2" H 5308 3181 50  0000 C CNN
F 1 "battery" H 5308 3090 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 5200 3000 50  0001 C CNN
F 3 "~" H 5200 3000 50  0001 C CNN
	1    5200 3000
	1    0    0    -1  
$EndComp
Text GLabel 5400 3000 2    50   Input ~ 0
9V
$Comp
L power:GND #PWR0120
U 1 1 6106C0EF
P 5400 3100
F 0 "#PWR0120" H 5400 2850 50  0001 C CNN
F 1 "GND" H 5405 2927 50  0000 C CNN
F 2 "" H 5400 3100 50  0001 C CNN
F 3 "" H 5400 3100 50  0001 C CNN
	1    5400 3100
	0    -1   -1   0   
$EndComp
NoConn ~ 8250 1300
NoConn ~ 7950 1300
NoConn ~ 7850 1300
NoConn ~ 7450 1700
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 6106EFAA
P 1100 5300
F 0 "#FLG0101" H 1100 5375 50  0001 C CNN
F 1 "PWR_FLAG" H 1100 5473 50  0000 C CNN
F 2 "" H 1100 5300 50  0001 C CNN
F 3 "~" H 1100 5300 50  0001 C CNN
	1    1100 5300
	-1   0    0    1   
$EndComp
Connection ~ 1100 5300
$Comp
L power:PWR_FLAG #FLG0102
U 1 1 6106FF98
P 5400 3000
F 0 "#FLG0102" H 5400 3075 50  0001 C CNN
F 1 "PWR_FLAG" H 5400 3173 50  0000 C CNN
F 2 "" H 5400 3000 50  0001 C CNN
F 3 "~" H 5400 3000 50  0001 C CNN
	1    5400 3000
	1    0    0    -1  
$EndComp
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 6100DEA2
P 8450 1800
F 0 "A1" V 8500 150 50  0000 R CNN
F 1 "Arduino_Nano_v3.x" V 8400 200 50  0000 R CNN
F 2 "Module:Arduino_Nano" H 8450 1800 50  0001 C CIN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 8450 1800 50  0001 C CNN
	1    8450 1800
	0    -1   -1   0   
$EndComp
Text GLabel 7850 2300 3    50   Input ~ 0
MIDI_IN
$Comp
L Connector:DIN-5_180degree J3
U 1 1 61FB3E85
P 1150 6350
F 0 "J3" H 1150 5983 50  0000 C CNN
F 1 "MIDI_IN" H 1150 6074 50  0000 C CNN
F 2 "Connector:SDS-50J" H 1150 6350 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/18/40_c091_abd_e-75918.pdf" H 1150 6350 50  0001 C CNN
	1    1150 6350
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 61FB6CD9
P 1800 6100
F 0 "R9" V 1593 6100 50  0000 C CNN
F 1 "220R" V 1684 6100 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 1730 6100 50  0001 C CNN
F 3 "~" H 1800 6100 50  0001 C CNN
	1    1800 6100
	0    1    1    0   
$EndComp
$Comp
L Device:D D7
U 1 1 61FB8DDC
P 2150 6250
F 0 "D7" V 2104 6330 50  0000 L CNN
F 1 "1N4148" V 2195 6330 50  0000 L CNN
F 2 "Diode_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 2150 6250 50  0001 C CNN
F 3 "~" H 2150 6250 50  0001 C CNN
	1    2150 6250
	0    1    1    0   
$EndComp
$Comp
L Isolator:6N138 U1
U 1 1 61FBB36D
P 2850 6200
F 0 "U1" H 2850 6667 50  0000 C CNN
F 1 "6N138" H 2850 6576 50  0000 C CNN
F 2 "Package_DIP:DIP-8_W7.62mm" H 3140 5900 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/HCPL2731-D.pdf" H 3140 5900 50  0001 C CNN
	1    2850 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 6450 1650 6450
Wire Wire Line
	1650 6450 1650 6100
Wire Wire Line
	1950 6100 2150 6100
Connection ~ 2150 6100
Wire Wire Line
	2150 6100 2550 6100
Wire Wire Line
	850  6450 850  6750
Wire Wire Line
	850  6750 1850 6750
Wire Wire Line
	1850 6750 1850 6400
Wire Wire Line
	1850 6400 2150 6400
Wire Wire Line
	2550 6400 2550 6300
Connection ~ 2150 6400
Wire Wire Line
	2150 6400 2550 6400
$Comp
L power:GND #PWR0121
U 1 1 61FC1623
P 1150 6650
F 0 "#PWR0121" H 1150 6400 50  0001 C CNN
F 1 "GND" V 1155 6522 50  0000 R CNN
F 2 "" H 1150 6650 50  0001 C CNN
F 3 "" H 1150 6650 50  0001 C CNN
	1    1150 6650
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 61FC248E
P 3700 6000
F 0 "R10" V 3493 6000 50  0000 C CNN
F 1 "220R" V 3584 6000 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3630 6000 50  0001 C CNN
F 3 "~" H 3700 6000 50  0001 C CNN
	1    3700 6000
	-1   0    0    1   
$EndComp
$Comp
L Device:R R11
U 1 1 61FC3B4A
P 3400 6750
F 0 "R11" V 3193 6750 50  0000 C CNN
F 1 "4.7k" V 3284 6750 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3330 6750 50  0001 C CNN
F 3 "~" H 3400 6750 50  0001 C CNN
	1    3400 6750
	-1   0    0    1   
$EndComp
Wire Wire Line
	3700 5850 3700 5750
Text GLabel 3700 5750 1    50   Input ~ 0
5V
Wire Wire Line
	3700 5850 3150 5850
Wire Wire Line
	3150 5850 3150 6000
Connection ~ 3700 5850
Wire Wire Line
	3150 6300 3700 6300
Wire Wire Line
	3700 6300 3700 6150
Wire Wire Line
	3700 6300 3950 6300
Connection ~ 3700 6300
Text GLabel 3950 6300 2    50   Input ~ 0
MIDI_IN
Wire Wire Line
	3150 6100 3400 6100
Wire Wire Line
	3400 6100 3400 6600
$Comp
L power:GND #PWR0122
U 1 1 61FC825F
P 3400 6900
F 0 "#PWR0122" H 3400 6650 50  0001 C CNN
F 1 "GND" V 3405 6772 50  0000 R CNN
F 2 "" H 3400 6900 50  0001 C CNN
F 3 "" H 3400 6900 50  0001 C CNN
	1    3400 6900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 61FC939D
P 3150 6400
F 0 "#PWR0123" H 3150 6150 50  0001 C CNN
F 1 "GND" V 3155 6272 50  0000 R CNN
F 2 "" H 3150 6400 50  0001 C CNN
F 3 "" H 3150 6400 50  0001 C CNN
	1    3150 6400
	1    0    0    -1  
$EndComp
NoConn ~ 1450 6350
NoConn ~ 850  6350
$EndSCHEMATC
