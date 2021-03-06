EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 9
Title ""
Date "2021-07-14"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	8725 3175 8900 3175
$Comp
L Device:CP1_Small C30
U 1 1 5EDBC007
P 9800 3275
F 0 "C30" H 9891 3321 50  0000 L CNN
F 1 "47u" H 9891 3230 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x5.4" H 9800 3275 50  0001 C CNN
F 3 "" H 9800 3275 50  0001 C CNN
	1    9800 3275
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C32
U 1 1 5EDBC00E
P 10100 3275
F 0 "C32" H 10192 3321 50  0000 L CNN
F 1 "100n" H 10192 3230 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10100 3275 50  0001 C CNN
F 3 "" H 10100 3275 50  0001 C CNN
	1    10100 3275
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3175 10100 3175
Connection ~ 9800 3175
Wire Wire Line
	9200 3675 9800 3675
Wire Wire Line
	9800 3675 9800 3375
Wire Wire Line
	9800 3675 10100 3675
Wire Wire Line
	10100 3675 10100 3375
Connection ~ 9800 3675
Wire Wire Line
	10100 3075 10100 3175
Connection ~ 10100 3175
$Comp
L power:+3.3VA #PWR0106
U 1 1 60F2698F
P 10100 3075
F 0 "#PWR0106" H 10100 2925 50  0001 C CNN
F 1 "+3.3VA" H 10115 3248 50  0000 C CNN
F 2 "" H 10100 3075 50  0001 C CNN
F 3 "" H 10100 3075 50  0001 C CNN
	1    10100 3075
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U5
U 1 1 60F3161A
P 9200 3175
F 0 "U5" H 9200 3417 50  0000 C CNN
F 1 "LM1117-3.3" H 9200 3326 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 9200 3175 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 9200 3175 50  0001 C CNN
	1    9200 3175
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 3475 9200 3675
Wire Wire Line
	9500 3175 9800 3175
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 61586056
P 1400 3375
F 0 "J2" H 1225 2925 50  0000 C CNN
F 1 "EURO_POWER" H 1250 3050 50  0000 C CNN
F 2 "" H 1400 3375 50  0001 C CNN
F 3 "~" H 1400 3375 50  0001 C CNN
	1    1400 3375
	1    0    0    1   
$EndComp
$Comp
L Device:D D1
U 1 1 6158777E
P 2025 3175
F 0 "D1" H 2025 2958 50  0000 C CNN
F 1 "1N5819HW" H 2025 3049 50  0000 C CNN
F 2 "" H 2025 3175 50  0001 C CNN
F 3 "~" H 2025 3175 50  0001 C CNN
	1    2025 3175
	-1   0    0    1   
$EndComp
Wire Wire Line
	1700 3175 1775 3175
$Comp
L Device:D D3
U 1 1 61589973
P 2025 3575
F 0 "D3" H 2025 3792 50  0000 C CNN
F 1 "1N5819HW" H 2025 3701 50  0000 C CNN
F 2 "" H 2025 3575 50  0001 C CNN
F 3 "~" H 2025 3575 50  0001 C CNN
	1    2025 3575
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 3575 1775 3575
Wire Wire Line
	1200 3575 1700 3575
Connection ~ 1700 3575
Wire Wire Line
	1700 3275 1200 3275
Wire Wire Line
	1200 3275 1200 3375
Connection ~ 1200 3275
Wire Wire Line
	1200 3475 1200 3375
Connection ~ 1200 3375
Wire Wire Line
	1700 3475 1200 3475
Connection ~ 1200 3475
Wire Wire Line
	1200 3375 1700 3375
Wire Wire Line
	1700 3275 1700 3375
Connection ~ 1700 3275
Connection ~ 1700 3375
Wire Wire Line
	1700 3375 1700 3475
Connection ~ 1700 3475
$Comp
L power:GND #PWR027
U 1 1 61595E88
P 800 3500
F 0 "#PWR027" H 800 3250 50  0001 C CNN
F 1 "GND" H 805 3327 50  0000 C CNN
F 2 "" H 800 3500 50  0001 C CNN
F 3 "" H 800 3500 50  0001 C CNN
	1    800  3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	800  3375 1200 3375
Wire Wire Line
	800  3375 800  3500
Wire Wire Line
	1200 3175 1700 3175
Connection ~ 1700 3175
$Comp
L Device:CP_Small C24
U 1 1 6159A05A
P 2575 3250
F 0 "C24" H 2663 3296 50  0000 L CNN
F 1 "47u" H 2663 3205 50  0000 L CNN
F 2 "" H 2575 3250 50  0001 C CNN
F 3 "~" H 2575 3250 50  0001 C CNN
	1    2575 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP_Small C25
U 1 1 6159B31E
P 2575 3475
F 0 "C25" H 2663 3521 50  0000 L CNN
F 1 "47u" H 2663 3430 50  0000 L CNN
F 2 "" H 2575 3475 50  0001 C CNN
F 3 "~" H 2575 3475 50  0001 C CNN
	1    2575 3475
	1    0    0    -1  
$EndComp
$Comp
L power:VEE #PWR069
U 1 1 6159D185
P 2575 3750
F 0 "#PWR069" H 2575 3600 50  0001 C CNN
F 1 "VEE" H 2590 3923 50  0000 C CNN
F 2 "" H 2575 3750 50  0001 C CNN
F 3 "" H 2575 3750 50  0001 C CNN
	1    2575 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2575 3575 2575 3675
$Comp
L power:VCC #PWR068
U 1 1 615A0509
P 2575 3000
F 0 "#PWR068" H 2575 2850 50  0001 C CNN
F 1 "VCC" H 2590 3173 50  0000 C CNN
F 2 "" H 2575 3000 50  0001 C CNN
F 3 "" H 2575 3000 50  0001 C CNN
	1    2575 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2575 3000 2575 3075
Wire Wire Line
	2575 3350 2575 3375
$Comp
L power:GND #PWR070
U 1 1 615A3CB7
P 2875 3400
F 0 "#PWR070" H 2875 3150 50  0001 C CNN
F 1 "GND" H 2880 3227 50  0000 C CNN
F 2 "" H 2875 3400 50  0001 C CNN
F 3 "" H 2875 3400 50  0001 C CNN
	1    2875 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2875 3400 2875 3375
Wire Wire Line
	2875 3375 2575 3375
Connection ~ 2575 3375
$Comp
L power:VCC #PWR074
U 1 1 615B5E5E
P 8725 3075
F 0 "#PWR074" H 8725 2925 50  0001 C CNN
F 1 "VCC" H 8740 3248 50  0000 C CNN
F 2 "" H 8725 3075 50  0001 C CNN
F 3 "" H 8725 3075 50  0001 C CNN
	1    8725 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	8725 3075 8725 3175
$Comp
L TT-rescue:MP1469 U3
U 1 1 617ECDA8
P 5200 3150
F 0 "U3" H 5200 3487 60  0000 C CNN
F 1 "MP1469" H 5200 3381 60  0000 C CNN
F 2 "" H 5200 3150 60  0001 C CNN
F 3 "" H 5200 3150 60  0001 C CNN
	1    5200 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2525 3175 2525 3075
Wire Wire Line
	2525 3075 2575 3075
Connection ~ 2575 3075
Wire Wire Line
	2575 3075 2575 3150
Wire Wire Line
	2525 3575 2525 3675
Wire Wire Line
	2525 3675 2575 3675
Connection ~ 2575 3675
Wire Wire Line
	2575 3675 2575 3750
$Comp
L Device:R R24
U 1 1 61805218
P 4450 3550
F 0 "R24" V 4243 3550 50  0000 C CNN
F 1 "100k" V 4334 3550 50  0000 C CNN
F 2 "" V 4380 3550 50  0001 C CNN
F 3 "~" H 4450 3550 50  0001 C CNN
	1    4450 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	4600 3550 4900 3550
$Comp
L power:VCC #PWR03
U 1 1 61809649
P 4700 3000
F 0 "#PWR03" H 4700 2850 50  0001 C CNN
F 1 "VCC" H 4715 3173 50  0000 C CNN
F 2 "" H 4700 3000 50  0001 C CNN
F 3 "" H 4700 3000 50  0001 C CNN
	1    4700 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 3000 4700 3100
Wire Wire Line
	4700 3100 4900 3100
$Comp
L power:GND #PWR022
U 1 1 6180C284
P 5200 3875
F 0 "#PWR022" H 5200 3625 50  0001 C CNN
F 1 "GND" H 5205 3702 50  0000 C CNN
F 2 "" H 5200 3875 50  0001 C CNN
F 3 "" H 5200 3875 50  0001 C CNN
	1    5200 3875
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3875 5200 3750
$Comp
L Device:C_Small C23
U 1 1 6180F39D
P 5775 3100
F 0 "C23" V 5546 3100 50  0000 C CNN
F 1 "1u" V 5637 3100 50  0000 C CNN
F 2 "" H 5775 3100 50  0001 C CNN
F 3 "~" H 5775 3100 50  0001 C CNN
	1    5775 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	5675 3100 5500 3100
Wire Wire Line
	5500 3250 5925 3250
Wire Wire Line
	5925 3250 5925 3100
Wire Wire Line
	5925 3100 5875 3100
$Comp
L Device:L L1
U 1 1 61813E7E
P 6150 3100
F 0 "L1" V 5969 3100 50  0000 C CNN
F 1 "6.8uh" V 6060 3100 50  0000 C CNN
F 2 "" H 6150 3100 50  0001 C CNN
F 3 "~" H 6150 3100 50  0001 C CNN
	1    6150 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 3100 5925 3100
Connection ~ 5925 3100
$Comp
L Device:R R27
U 1 1 61816F66
P 5925 3550
F 0 "R27" V 5718 3550 50  0000 C CNN
F 1 "75k" V 5809 3550 50  0000 C CNN
F 2 "" V 5855 3550 50  0001 C CNN
F 3 "~" H 5925 3550 50  0001 C CNN
	1    5925 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	5500 3550 5775 3550
$Comp
L Device:R R35
U 1 1 6181A161
P 6400 3375
F 0 "R35" H 6330 3329 50  0000 R CNN
F 1 "43k" H 6330 3420 50  0000 R CNN
F 2 "" V 6330 3375 50  0001 C CNN
F 3 "~" H 6400 3375 50  0001 C CNN
	1    6400 3375
	-1   0    0    1   
$EndComp
$Comp
L Device:R R49
U 1 1 6181B15B
P 6400 3750
F 0 "R49" H 6330 3704 50  0000 R CNN
F 1 "8.2k" H 6330 3795 50  0000 R CNN
F 2 "" V 6330 3750 50  0001 C CNN
F 3 "~" H 6400 3750 50  0001 C CNN
	1    6400 3750
	-1   0    0    1   
$EndComp
Wire Wire Line
	6075 3550 6400 3550
Wire Wire Line
	6400 3525 6400 3550
Connection ~ 6400 3550
Wire Wire Line
	6400 3550 6400 3600
Wire Wire Line
	6300 3100 6400 3100
Wire Wire Line
	6400 3100 6400 3225
$Comp
L Device:CP_Small C26
U 1 1 61822D72
P 6800 3325
F 0 "C26" H 6888 3371 50  0000 L CNN
F 1 "22u" H 6888 3280 50  0000 L CNN
F 2 "" H 6800 3325 50  0001 C CNN
F 3 "~" H 6800 3325 50  0001 C CNN
	1    6800 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6400 3100 6800 3100
Wire Wire Line
	6800 3100 6800 3225
Connection ~ 6400 3100
$Comp
L Device:C_Small C61
U 1 1 61826630
P 7075 3325
F 0 "C61" H 7167 3371 50  0000 L CNN
F 1 "100n" H 7167 3280 50  0000 L CNN
F 2 "" H 7075 3325 50  0001 C CNN
F 3 "~" H 7075 3325 50  0001 C CNN
	1    7075 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	6800 3100 7075 3100
Wire Wire Line
	7075 3100 7075 3225
Connection ~ 6800 3100
$Comp
L power:GND #PWR023
U 1 1 6182C62B
P 6400 3975
F 0 "#PWR023" H 6400 3725 50  0001 C CNN
F 1 "GND" H 6405 3802 50  0000 C CNN
F 2 "" H 6400 3975 50  0001 C CNN
F 3 "" H 6400 3975 50  0001 C CNN
	1    6400 3975
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6182CA3A
P 6800 3500
F 0 "#PWR024" H 6800 3250 50  0001 C CNN
F 1 "GND" H 6805 3327 50  0000 C CNN
F 2 "" H 6800 3500 50  0001 C CNN
F 3 "" H 6800 3500 50  0001 C CNN
	1    6800 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 6182CE1C
P 7075 3500
F 0 "#PWR026" H 7075 3250 50  0001 C CNN
F 1 "GND" H 7080 3327 50  0000 C CNN
F 2 "" H 7075 3500 50  0001 C CNN
F 3 "" H 7075 3500 50  0001 C CNN
	1    7075 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 3500 7075 3425
Wire Wire Line
	6800 3425 6800 3500
Wire Wire Line
	6400 3900 6400 3975
Wire Wire Line
	4300 3550 4300 3100
Wire Wire Line
	4300 3100 4700 3100
Connection ~ 4700 3100
$Comp
L power:+5V #PWR025
U 1 1 6183FCA5
P 7075 2975
F 0 "#PWR025" H 7075 2825 50  0001 C CNN
F 1 "+5V" H 7090 3148 50  0000 C CNN
F 2 "" H 7075 2975 50  0001 C CNN
F 3 "" H 7075 2975 50  0001 C CNN
	1    7075 2975
	1    0    0    -1  
$EndComp
Wire Wire Line
	7075 2975 7075 3025
Connection ~ 7075 3100
$Comp
L power:PWR_FLAG #FLG03
U 1 1 6184363C
P 7075 3025
F 0 "#FLG03" H 7075 3100 50  0001 C CNN
F 1 "PWR_FLAG" V 7075 3153 50  0000 L CNN
F 2 "" H 7075 3025 50  0001 C CNN
F 3 "~" H 7075 3025 50  0001 C CNN
	1    7075 3025
	0    1    1    0   
$EndComp
Connection ~ 7075 3025
Wire Wire Line
	7075 3025 7075 3100
$Comp
L power:PWR_FLAG #FLG01
U 1 1 61845E65
P 1775 3175
F 0 "#FLG01" H 1775 3250 50  0001 C CNN
F 1 "PWR_FLAG" H 1775 3348 50  0000 C CNN
F 2 "" H 1775 3175 50  0001 C CNN
F 3 "~" H 1775 3175 50  0001 C CNN
	1    1775 3175
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 61847AD1
P 1775 3575
F 0 "#FLG02" H 1775 3650 50  0001 C CNN
F 1 "PWR_FLAG" H 1775 3748 50  0000 C CNN
F 2 "" H 1775 3575 50  0001 C CNN
F 3 "~" H 1775 3575 50  0001 C CNN
	1    1775 3575
	-1   0    0    1   
$EndComp
Connection ~ 1775 3575
Wire Wire Line
	1775 3575 1700 3575
Connection ~ 1775 3175
Wire Wire Line
	1775 3175 1875 3175
Wire Wire Line
	2175 3175 2525 3175
Wire Wire Line
	2175 3575 2525 3575
$Comp
L power:GNDA #PWR091
U 1 1 611A99CC
P 9200 3675
F 0 "#PWR091" H 9200 3425 50  0001 C CNN
F 1 "GNDA" H 9205 3502 50  0000 C CNN
F 2 "" H 9200 3675 50  0001 C CNN
F 3 "" H 9200 3675 50  0001 C CNN
	1    9200 3675
	1    0    0    -1  
$EndComp
Connection ~ 9200 3675
Text Notes 5600 1475 0    79   ~ 0
POWER
Text Notes 6625 4150 0    50   ~ 0
TT values: 40.2k / 7.68k (5.2343)\nseb values: 43k / 8.2k (5.2439)
Text Notes 2600 1225 0    50   ~ 0
"system star ground"
Wire Wire Line
	2675 1500 2675 1450
Wire Wire Line
	2675 1450 2825 1450
Wire Wire Line
	3125 1450 3300 1450
Wire Wire Line
	3300 1450 3300 1500
$Comp
L power:GND #PWR?
U 1 1 6152F26E
P 2675 1500
AR Path="/6152F26E" Ref="#PWR?"  Part="1" 
AR Path="/5EFC127A/6152F26E" Ref="#PWR?"  Part="1" 
AR Path="/5ED86ED4/6152F26E" Ref="#PWR0101"  Part="1" 
F 0 "#PWR0101" H 2675 1250 50  0001 C CNN
F 1 "GND" H 2680 1327 50  0000 C CNN
F 2 "" H 2675 1500 50  0001 C CNN
F 3 "" H 2675 1500 50  0001 C CNN
	1    2675 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 6152F274
P 3300 1500
AR Path="/6152F274" Ref="#PWR?"  Part="1" 
AR Path="/5EFC127A/6152F274" Ref="#PWR?"  Part="1" 
AR Path="/5ED86ED4/6152F274" Ref="#PWR0102"  Part="1" 
F 0 "#PWR0102" H 3300 1250 50  0001 C CNN
F 1 "GNDA" H 3305 1327 50  0000 C CNN
F 2 "" H 3300 1500 50  0001 C CNN
F 3 "" H 3300 1500 50  0001 C CNN
	1    3300 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 6152F27A
P 2975 1450
AR Path="/5ED86ED4/6152F27A" Ref="L2"  Part="1" 
AR Path="/5EFC127A/6152F27A" Ref="L?"  Part="1" 
F 0 "L2" V 2794 1450 50  0000 C CNN
F 1 "6.8uh" V 2885 1450 50  0000 C CNN
F 2 "" H 2975 1450 50  0001 C CNN
F 3 "~" H 2975 1450 50  0001 C CNN
	1    2975 1450
	0    1    1    0   
$EndComp
$EndSCHEMATC
