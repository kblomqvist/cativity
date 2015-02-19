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
LIBS:special
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
LIBS:nrf
LIBS:nrf-v1-cache
EELAYER 25 0
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
L nRF51822 U2
U 1 1 54E3ACD1
P 5350 3300
F 0 "U2" H 6050 4950 60  0000 C CNN
F 1 "nRF51822" H 5350 4950 60  0000 C CNN
F 2 "project:NordicSemi-QFN-48_(6.00x6.00)" H 5350 4050 60  0001 C CNN
F 3 "" H 5350 4050 60  0000 C CNN
	1    5350 3300
	-1   0    0    -1  
$EndComp
$Comp
L BMA280 U4
U 1 1 54E4F128
P 9450 4150
F 0 "U4" H 9450 4600 60  0000 C CNN
F 1 "BMA280" H 9450 3700 60  0000 C CNN
F 2 "project:Bosch-LGA-12_(2.00x2.00)" H 9350 3900 60  0001 C CNN
F 3 "" H 9350 3900 60  0000 C CNN
	1    9450 4150
	1    0    0    -1  
$EndComp
$Comp
L SI7053 U5
U 1 1 54E4F2ED
P 10050 6100
F 0 "U5" H 10050 6300 60  0000 C CNN
F 1 "SI7053" H 10050 5900 60  0000 C CNN
F 2 "project:Silabs-DFN-6_(3.00x3.00)" H 10050 6100 60  0001 C CNN
F 3 "" H 10050 6100 60  0000 C CNN
	1    10050 6100
	1    0    0    -1  
$EndComp
$Comp
L TPS62732 U1
U 1 1 54E4FBFA
P 2500 6850
F 0 "U1" H 2500 7100 60  0000 C CNN
F 1 "TPS62732" H 2500 6600 60  0000 C CNN
F 2 "project:TI-USON-6_(1.45x1.00)" H 2500 6850 60  0001 C CNN
F 3 "" H 2500 6850 60  0000 C CNN
	1    2500 6850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 54E4FD2B
P 3900 7200
F 0 "#PWR01" H 3900 7200 30  0001 C CNN
F 1 "GND" H 3900 7130 30  0001 C CNN
F 2 "" H 3900 7200 60  0000 C CNN
F 3 "" H 3900 7200 60  0000 C CNN
	1    3900 7200
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR02
U 1 1 54E4FD45
P 4000 6750
F 0 "#PWR02" H 4000 6850 30  0001 C CNN
F 1 "VDD" H 4000 6860 30  0000 C CNN
F 2 "" H 4000 6750 60  0000 C CNN
F 3 "" H 4000 6750 60  0000 C CNN
	1    4000 6750
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR03
U 1 1 54E4FD5F
P 1250 6600
F 0 "#PWR03" H 1250 6550 20  0001 C CNN
F 1 "+BATT" H 1250 6700 30  0000 C CNN
F 2 "" H 1250 6600 60  0000 C CNN
F 3 "" H 1250 6600 60  0000 C CNN
	1    1250 6600
	1    0    0    -1  
$EndComp
$Comp
L C C1
U 1 1 54E4FD79
P 1250 6950
F 0 "C1" H 1250 7050 40  0000 L CNN
F 1 "2u2" H 1256 6865 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 1288 6800 30  0001 C CNN
F 3 "" H 1250 6950 60  0000 C CNN
	1    1250 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 54E4FE2C
P 1250 7450
F 0 "#PWR04" H 1250 7450 30  0001 C CNN
F 1 "GND" H 1250 7380 30  0001 C CNN
F 2 "" H 1250 7450 60  0000 C CNN
F 3 "" H 1250 7450 60  0000 C CNN
	1    1250 7450
	1    0    0    -1  
$EndComp
$Comp
L INDUCTOR_SMALL L1
U 1 1 54E4FE86
P 3450 6750
F 0 "L1" H 3450 6850 50  0000 C CNN
F 1 "INDUCTOR_SMALL" H 3450 6700 50  0000 C CNN
F 2 "" H 3450 6750 60  0001 C CNN
F 3 "" H 3450 6750 60  0000 C CNN
	1    3450 6750
	1    0    0    -1  
$EndComp
$Comp
L C C10
U 1 1 54E500A4
P 3900 6950
F 0 "C10" H 3900 7050 40  0000 L CNN
F 1 "2u2" H 3906 6865 40  0000 L CNN
F 2 "Capacitors_SMD:C_0603" H 3938 6800 30  0001 C CNN
F 3 "" H 3900 6950 60  0000 C CNN
	1    3900 6950
	1    0    0    -1  
$EndComp
Text GLabel 8850 2100 0    47   Input ~ 0
spi0_cs_n
Text GLabel 8850 2200 0    47   Input ~ 0
spi0_sck
Text GLabel 8850 2300 0    47   Input ~ 0
spi0_mosi
Text GLabel 8850 2400 0    47   Input ~ 0
spi0_miso
Text GLabel 8800 3850 0    47   Input ~ 0
spi1_cs_n
Text GLabel 8800 3950 0    47   Input ~ 0
spi1_sck
Text GLabel 8800 4050 0    47   Input ~ 0
spi1_mosi
Text GLabel 8800 4150 0    47   Input ~ 0
spi1_miso
Text GLabel 8800 4350 0    47   Input ~ 0
acc_int1
Text GLabel 8800 4450 0    47   Input ~ 0
acc_int2
Text GLabel 9150 6050 0    47   Input ~ 0
twi_scl
Text GLabel 9150 6150 0    47   Input ~ 0
twi_sda
$Comp
L Csmall C15
U 1 1 54E506AF
P 10650 6150
F 0 "C15" H 10675 6200 30  0000 L CNN
F 1 "100n" H 10675 6100 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10650 6150 60  0001 C CNN
F 3 "" H 10650 6150 60  0000 C CNN
	1    10650 6150
	1    0    0    -1  
$EndComp
$Comp
L Csmall C13
U 1 1 54E50761
P 10650 2250
F 0 "C13" H 10675 2300 30  0000 L CNN
F 1 "100n" H 10675 2200 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10650 2250 60  0001 C CNN
F 3 "" H 10650 2250 60  0000 C CNN
	1    10650 2250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 54E508A7
P 5350 5250
F 0 "#PWR05" H 5350 5250 30  0001 C CNN
F 1 "GND" H 5350 5180 30  0001 C CNN
F 2 "" H 5350 5250 60  0000 C CNN
F 3 "" H 5350 5250 60  0000 C CNN
	1    5350 5250
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR06
U 1 1 54E509B0
P 3800 3800
F 0 "#PWR06" H 3800 3900 30  0001 C CNN
F 1 "VDD" H 3800 3910 30  0000 C CNN
F 2 "" H 3800 3800 60  0000 C CNN
F 3 "" H 3800 3800 60  0000 C CNN
	1    3800 3800
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR07
U 1 1 54E50B05
P 10650 6050
F 0 "#PWR07" H 10650 6150 30  0001 C CNN
F 1 "VDD" H 10650 6160 30  0000 C CNN
F 2 "" H 10650 6050 60  0000 C CNN
F 3 "" H 10650 6050 60  0000 C CNN
	1    10650 6050
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR08
U 1 1 54E50C28
P 10650 6300
F 0 "#PWR08" H 10650 6300 30  0001 C CNN
F 1 "GND" H 10650 6230 30  0001 C CNN
F 2 "" H 10650 6300 60  0000 C CNN
F 3 "" H 10650 6300 60  0000 C CNN
	1    10650 6300
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 54E50D7D
P 9550 5700
F 0 "R3" V 9630 5700 40  0000 C CNN
F 1 "4k7" V 9557 5701 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9480 5700 30  0001 C CNN
F 3 "" H 9550 5700 30  0000 C CNN
	1    9550 5700
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 54E50FDF
P 9350 5700
F 0 "R2" V 9430 5700 40  0000 C CNN
F 1 "4k7" V 9357 5701 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9280 5700 30  0001 C CNN
F 3 "" H 9350 5700 30  0000 C CNN
	1    9350 5700
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR09
U 1 1 54E51046
P 9450 5400
F 0 "#PWR09" H 9450 5500 30  0001 C CNN
F 1 "VDD" H 9450 5510 30  0000 C CNN
F 2 "" H 9450 5400 60  0000 C CNN
F 3 "" H 9450 5400 60  0000 C CNN
	1    9450 5400
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR010
U 1 1 54E513C9
P 10650 2100
F 0 "#PWR010" H 10650 2200 30  0001 C CNN
F 1 "VDD" H 10650 2210 30  0000 C CNN
F 2 "" H 10650 2100 60  0000 C CNN
F 3 "" H 10650 2100 60  0000 C CNN
	1    10650 2100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 54E51540
P 10650 2450
F 0 "#PWR011" H 10650 2450 30  0001 C CNN
F 1 "GND" H 10650 2380 30  0001 C CNN
F 2 "" H 10650 2450 60  0000 C CNN
F 3 "" H 10650 2450 60  0000 C CNN
	1    10650 2450
	1    0    0    -1  
$EndComp
$Comp
L Csmall C14
U 1 1 54E51678
P 10650 4000
F 0 "C14" H 10675 4050 30  0000 L CNN
F 1 "100n" H 10675 3950 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10650 4000 60  0001 C CNN
F 3 "" H 10650 4000 60  0000 C CNN
	1    10650 4000
	1    0    0    -1  
$EndComp
$Comp
L VDD #PWR012
U 1 1 54E51682
P 10650 3850
F 0 "#PWR012" H 10650 3950 30  0001 C CNN
F 1 "VDD" H 10650 3960 30  0000 C CNN
F 2 "" H 10650 3850 60  0000 C CNN
F 3 "" H 10650 3850 60  0000 C CNN
	1    10650 3850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR013
U 1 1 54E51688
P 10650 4550
F 0 "#PWR013" H 10650 4550 30  0001 C CNN
F 1 "GND" H 10650 4480 30  0001 C CNN
F 2 "" H 10650 4550 60  0000 C CNN
F 3 "" H 10650 4550 60  0000 C CNN
	1    10650 4550
	1    0    0    -1  
$EndComp
$Comp
L Csmall C12
U 1 1 54E516C7
P 10450 4000
F 0 "C12" H 10475 4050 30  0000 L CNN
F 1 "100n" H 10475 3950 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 10450 4000 60  0001 C CNN
F 3 "" H 10450 4000 60  0000 C CNN
	1    10450 4000
	1    0    0    -1  
$EndComp
Text GLabel 6900 2200 2    47   Input ~ 0
spi0_cs_n
Text GLabel 6900 2300 2    47   Input ~ 0
spi0_sck
Text GLabel 6900 2400 2    47   Input ~ 0
spi0_mosi
Text GLabel 6900 2500 2    47   Input ~ 0
spi0_miso
Text GLabel 6900 3800 2    47   Input ~ 0
acc_int1
Text GLabel 6900 3900 2    47   Input ~ 0
acc_int2
Text GLabel 6900 3150 2    47   Input ~ 0
spi1_cs_n
Text GLabel 6900 3250 2    47   Input ~ 0
spi1_sck
Text GLabel 6900 3350 2    47   Input ~ 0
spi1_mosi
Text GLabel 6900 3450 2    47   Input ~ 0
spi1_miso
NoConn ~ 4350 4550
$Comp
L Csmall C6
U 1 1 54E51ED7
P 3100 4000
F 0 "C6" H 3125 4050 30  0000 L CNN
F 1 "100n" H 3125 3950 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3100 4000 60  0001 C CNN
F 3 "" H 3100 4000 60  0000 C CNN
	1    3100 4000
	1    0    0    -1  
$EndComp
$Comp
L Csmall C7
U 1 1 54E52011
P 3300 4000
F 0 "C7" H 3325 4050 30  0000 L CNN
F 1 "100n" H 3325 3950 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3300 4000 60  0001 C CNN
F 3 "" H 3300 4000 60  0000 C CNN
	1    3300 4000
	1    0    0    -1  
$EndComp
$Comp
L Csmall C9
U 1 1 54E5203A
P 3850 4750
F 0 "C9" H 3875 4800 30  0000 L CNN
F 1 "100n" H 3875 4700 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3850 4750 60  0001 C CNN
F 3 "" H 3850 4750 60  0000 C CNN
	1    3850 4750
	1    0    0    -1  
$EndComp
$Comp
L Csmall C11
U 1 1 54E52118
P 4100 4850
F 0 "C11" H 4125 4900 30  0000 L CNN
F 1 "47n" H 4125 4800 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 4100 4850 60  0001 C CNN
F 3 "" H 4100 4850 60  0000 C CNN
	1    4100 4850
	1    0    0    -1  
$EndComp
Text Notes 2950 4700 0    39   ~ 0
DEC1: not connected to VDD
$Comp
L GND #PWR014
U 1 1 54E5235A
P 3200 4150
F 0 "#PWR014" H 3200 4150 30  0001 C CNN
F 1 "GND" H 3200 4080 30  0001 C CNN
F 2 "" H 3200 4150 60  0000 C CNN
F 3 "" H 3200 4150 60  0000 C CNN
	1    3200 4150
	1    0    0    -1  
$EndComp
$Comp
L Csmall C8
U 1 1 54E5245F
P 3500 4350
F 0 "C8" H 3525 4400 30  0000 L CNN
F 1 "1n" H 3525 4300 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3500 4350 60  0001 C CNN
F 3 "" H 3500 4350 60  0000 C CNN
	1    3500 4350
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 54E52541
P 3500 4450
F 0 "#PWR015" H 3500 4450 30  0001 C CNN
F 1 "GND" H 3500 4380 30  0001 C CNN
F 2 "" H 3500 4450 60  0000 C CNN
F 3 "" H 3500 4450 60  0000 C CNN
	1    3500 4450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR016
U 1 1 54E5260B
P 3850 4850
F 0 "#PWR016" H 3850 4850 30  0001 C CNN
F 1 "GND" H 3850 4780 30  0001 C CNN
F 2 "" H 3850 4850 60  0000 C CNN
F 3 "" H 3850 4850 60  0000 C CNN
	1    3850 4850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR017
U 1 1 54E52665
P 4100 4950
F 0 "#PWR017" H 4100 4950 30  0001 C CNN
F 1 "GND" H 4100 4880 30  0001 C CNN
F 2 "" H 4100 4950 60  0000 C CNN
F 3 "" H 4100 4950 60  0000 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
$Comp
L Csmall C2
U 1 1 54E5282E
P 3000 1350
F 0 "C2" H 3025 1400 30  0000 L CNN
F 1 "12p" H 3025 1300 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3000 1350 60  0001 C CNN
F 3 "" H 3000 1350 60  0000 C CNN
	1    3000 1350
	0    1    1    0   
$EndComp
$Comp
L Csmall C3
U 1 1 54E528BD
P 3000 1950
F 0 "C3" H 3025 2000 30  0000 L CNN
F 1 "12p" H 3025 1900 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 3000 1950 60  0001 C CNN
F 3 "" H 3000 1950 60  0000 C CNN
	1    3000 1950
	0    1    1    0   
$EndComp
$Comp
L GND #PWR018
U 1 1 54E52929
P 2450 1750
F 0 "#PWR018" H 2450 1750 30  0001 C CNN
F 1 "GND" H 2450 1680 30  0001 C CNN
F 2 "" H 2450 1750 60  0000 C CNN
F 3 "" H 2450 1750 60  0000 C CNN
	1    2450 1750
	1    0    0    -1  
$EndComp
$Comp
L CRYSTAL X2
U 1 1 54E52F8B
P 3100 2550
F 0 "X2" H 3100 2700 60  0000 C CNN
F 1 "32.768kHz" H 3100 2400 60  0000 C CNN
F 2 "" H 3100 2550 60  0001 C CNN
F 3 "" H 3100 2550 60  0000 C CNN
	1    3100 2550
	0    1    1    0   
$EndComp
$Comp
L Csmall C4
U 1 1 54E52F91
P 2800 2250
F 0 "C4" H 2825 2300 30  0000 L CNN
F 1 "12p" H 2825 2200 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2800 2250 60  0001 C CNN
F 3 "" H 2800 2250 60  0000 C CNN
	1    2800 2250
	0    1    1    0   
$EndComp
$Comp
L Csmall C5
U 1 1 54E52F97
P 2800 2850
F 0 "C5" H 2825 2900 30  0000 L CNN
F 1 "12p" H 2825 2800 30  0000 L CNN
F 2 "Capacitors_SMD:C_0402" H 2800 2850 60  0001 C CNN
F 3 "" H 2800 2850 60  0000 C CNN
	1    2800 2850
	0    1    1    0   
$EndComp
$Comp
L GND #PWR019
U 1 1 54E52F9D
P 2450 2650
F 0 "#PWR019" H 2450 2650 30  0001 C CNN
F 1 "GND" H 2450 2580 30  0001 C CNN
F 2 "" H 2450 2650 60  0000 C CNN
F 3 "" H 2450 2650 60  0000 C CNN
	1    2450 2650
	1    0    0    -1  
$EndComp
Text GLabel 4200 2750 0    47   Input ~ 0
swdio
Text GLabel 4200 2850 0    47   Input ~ 0
swclk
$Comp
L CONN_02X05 P1
U 1 1 54E53621
P 6000 7000
F 0 "P1" H 6000 7300 50  0000 C CNN
F 1 "CONN_02X05" H 6000 6700 50  0000 C CNN
F 2 "" H 6000 5800 60  0001 C CNN
F 3 "" H 6000 5800 60  0000 C CNN
	1    6000 7000
	1    0    0    -1  
$EndComp
Text GLabel 5450 6800 0    47   Input ~ 0
swdio
Text GLabel 5450 6900 0    47   Input ~ 0
swclk
$Comp
L LED D1
U 1 1 54E53876
P 7600 5000
F 0 "D1" H 7600 5100 50  0000 C CNN
F 1 "LED" H 7600 4900 50  0000 C CNN
F 2 "LEDs:LED-0603" H 7600 5000 60  0001 C CNN
F 3 "" H 7600 5000 60  0000 C CNN
	1    7600 5000
	0    1    1    0   
$EndComp
Text Notes 5000 6400 0    39   ~ 0
Programming wing
$Comp
L SST25WF040B U3
U 1 1 54E61B6A
P 9450 2250
F 0 "U3" H 9450 2550 60  0000 C CNN
F 1 "SST25WF040B" H 9450 1950 60  0000 C CNN
F 2 "project:Microchip-USON-8_(2.00x3.00)" H 9450 1850 60  0001 C CNN
F 3 "" H 9450 1850 60  0000 C CNN
	1    9450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 6600 1250 6750
Wire Wire Line
	1250 7150 1250 7450
Connection ~ 1250 6750
Wire Wire Line
	2000 6850 1400 6850
Wire Wire Line
	1250 6750 2000 6750
Wire Wire Line
	3000 6750 3200 6750
Wire Wire Line
	3000 6850 3800 6850
Wire Wire Line
	3800 6850 3800 6750
Wire Wire Line
	3700 6750 4000 6750
Connection ~ 3800 6750
Wire Wire Line
	3900 7200 3900 7150
Wire Wire Line
	1400 6850 1400 7200
Wire Wire Line
	1400 7200 1250 7200
Connection ~ 1250 7200
Wire Wire Line
	8950 2100 8850 2100
Wire Wire Line
	8850 2200 8950 2200
Wire Wire Line
	8850 2300 8950 2300
Wire Wire Line
	8850 2400 8950 2400
Wire Wire Line
	8800 3850 8900 3850
Wire Wire Line
	8800 3950 8900 3950
Wire Wire Line
	8800 4050 8900 4050
Wire Wire Line
	8800 4150 8900 4150
Wire Wire Line
	9150 6050 9650 6050
Wire Wire Line
	9150 6150 9650 6150
Wire Wire Line
	10450 6050 10650 6050
Wire Wire Line
	10450 6150 10550 6150
Wire Wire Line
	10550 6150 10550 6250
Wire Wire Line
	9950 2100 10650 2100
Wire Wire Line
	10650 2100 10650 2150
Wire Wire Line
	9950 2400 10650 2400
Wire Wire Line
	10650 2350 10650 2450
Wire Wire Line
	5200 5100 5200 5200
Wire Wire Line
	5200 5200 5500 5200
Wire Wire Line
	5500 5200 5500 5100
Wire Wire Line
	5400 5100 5400 5200
Connection ~ 5400 5200
Wire Wire Line
	5300 5100 5300 5200
Connection ~ 5300 5200
Wire Wire Line
	5350 5250 5350 5200
Connection ~ 5350 5200
Wire Wire Line
	3800 3800 3800 4250
Wire Wire Line
	3100 3850 4350 3850
Wire Wire Line
	3800 3950 4350 3950
Connection ~ 3800 3850
Wire Wire Line
	3800 4150 4350 4150
Connection ~ 3800 3950
Wire Wire Line
	3500 4250 4350 4250
Connection ~ 3800 4150
Wire Wire Line
	10650 6250 10650 6300
Wire Wire Line
	10550 6250 10650 6250
Wire Wire Line
	9350 5450 9550 5450
Wire Wire Line
	9450 5450 9450 5400
Connection ~ 9450 5450
Wire Wire Line
	9350 5950 9350 6050
Connection ~ 9350 6050
Wire Wire Line
	9550 5950 9550 6150
Connection ~ 9550 6150
Wire Wire Line
	8800 4350 8900 4350
Wire Wire Line
	8900 4450 8800 4450
Connection ~ 10650 2400
Wire Wire Line
	10000 3850 10650 3850
Wire Wire Line
	10650 3850 10650 3900
Wire Wire Line
	10650 4100 10650 4550
Connection ~ 10650 4150
Wire Wire Line
	10000 3950 10150 3950
Wire Wire Line
	10150 3950 10150 3850
Connection ~ 10150 3850
Wire Wire Line
	10450 3900 10450 3850
Connection ~ 10450 3850
Wire Wire Line
	10000 4450 10650 4450
Connection ~ 10650 4450
Wire Wire Line
	10000 4350 10100 4350
Wire Wire Line
	10100 4350 10100 4450
Connection ~ 10100 4450
Wire Wire Line
	10000 4250 10200 4250
Wire Wire Line
	10200 4250 10200 4450
Connection ~ 10200 4450
Wire Wire Line
	10650 4150 10450 4150
Wire Wire Line
	10450 4150 10450 4100
Wire Wire Line
	10000 4150 10300 4150
Wire Wire Line
	10300 4150 10300 4450
Connection ~ 10300 4450
Wire Wire Line
	9950 2300 10150 2300
Wire Wire Line
	4350 4650 3850 4650
Wire Wire Line
	4100 4750 4100 4250
Connection ~ 4100 4250
Wire Wire Line
	4100 4750 4350 4750
Wire Wire Line
	3100 3850 3100 3900
Wire Wire Line
	3300 3900 3300 3850
Connection ~ 3300 3850
Wire Wire Line
	3100 4100 3300 4100
Wire Wire Line
	3200 4100 3200 4150
Connection ~ 3200 4100
Connection ~ 3800 4250
Wire Wire Line
	2450 1750 2450 1650
Wire Wire Line
	2450 1650 2650 1650
Wire Wire Line
	2650 1350 2650 1950
Wire Wire Line
	2650 1350 2900 1350
Wire Wire Line
	2650 1950 2900 1950
Connection ~ 2650 1650
Wire Wire Line
	3100 1950 4350 1950
Wire Wire Line
	3100 1350 3400 1350
Wire Wire Line
	3400 1850 4350 1850
Wire Wire Line
	3400 1350 3400 1850
Connection ~ 3100 1350
Connection ~ 3100 1950
Wire Wire Line
	2450 2650 2450 2550
Wire Wire Line
	2450 2550 2650 2550
Wire Wire Line
	2650 2250 2650 2850
Wire Wire Line
	2650 2250 2700 2250
Wire Wire Line
	2650 2850 2700 2850
Connection ~ 2650 2550
Wire Wire Line
	2900 2250 4350 2250
Connection ~ 3100 2250
Connection ~ 3100 2850
Wire Wire Line
	2900 2850 3400 2850
Wire Wire Line
	3400 2850 3400 2350
Wire Wire Line
	3400 2350 4350 2350
Wire Wire Line
	4200 2750 4350 2750
Wire Wire Line
	4200 2850 4350 2850
Wire Notes Line
	6700 7550 4950 7550
Wire Notes Line
	4950 7550 4950 6300
Wire Notes Line
	4950 6300 6700 6300
Wire Notes Line
	6700 6300 6700 7550
Wire Wire Line
	9950 2200 10050 2200
Wire Wire Line
	10050 2200 10050 2100
Connection ~ 10050 2100
Wire Wire Line
	10150 2300 10150 2100
Connection ~ 10150 2100
$Comp
L BATTERY BT1
U 1 1 54E62225
P 800 7000
F 0 "BT1" H 800 7200 50  0000 C CNN
F 1 "BATTERY" H 800 6810 50  0000 C CNN
F 2 "project:Keystone-3007" H 800 7000 60  0001 C CNN
F 3 "" H 800 7000 60  0000 C CNN
	1    800  7000
	0    1    1    0   
$EndComp
Wire Wire Line
	800  6700 1250 6700
Connection ~ 1250 6700
Wire Wire Line
	800  7300 1250 7300
Connection ~ 1250 7300
$Comp
L R R1
U 1 1 54E62B02
P 7600 5550
F 0 "R1" V 7680 5550 40  0000 C CNN
F 1 "R" V 7607 5551 40  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 7530 5550 30  0001 C CNN
F 3 "" H 7600 5550 30  0000 C CNN
	1    7600 5550
	1    0    0    -1  
$EndComp
$Comp
L +BATT #PWR020
U 1 1 54E62FD1
P 7600 4700
F 0 "#PWR020" H 7600 4650 20  0001 C CNN
F 1 "+BATT" H 7600 4800 30  0000 C CNN
F 2 "" H 7600 4700 60  0000 C CNN
F 3 "" H 7600 4700 60  0000 C CNN
	1    7600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 4800 7600 4700
Wire Wire Line
	7600 5300 7600 5200
Text GLabel 7450 5900 0    47   Input ~ 0
~led
Wire Wire Line
	7450 5900 7600 5900
Wire Wire Line
	7600 5900 7600 5800
Text GLabel 6900 4100 2    47   Input ~ 0
~led
Text Notes 7700 4750 0    39   ~ 0
Is it safe to use BAT here?
$Comp
L XTAL-4 X?
U 1 1 54E6667C
P 3100 1650
F 0 "X?" H 3100 1900 39  0000 C CNN
F 1 "XTAL-4" H 3100 1800 39  0000 C CNN
F 2 "" H 3100 1650 39  0000 C CNN
F 3 "" H 3100 1650 39  0000 C CNN
	1    3100 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	3100 1400 3100 1350
Wire Wire Line
	3100 1900 3100 1950
Wire Wire Line
	2950 1400 2800 1400
Wire Wire Line
	2800 1400 2800 1350
Connection ~ 2800 1350
Wire Wire Line
	2950 1900 2800 1900
Wire Wire Line
	2800 1900 2800 1950
Connection ~ 2800 1950
$EndSCHEMATC
