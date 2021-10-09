EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 9
Title ""
Date "2021-07-14"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Memory_RAM:MT48LC16M16A2P U?
U 1 1 62611A7A
P 6025 3525
AR Path="/62611A7A" Ref="U?"  Part="1" 
AR Path="/62143D1F/62611A7A" Ref="U13"  Part="1" 
F 0 "U13" H 6025 5106 50  0000 C CNN
F 1 "MT48LC16M16A2P" H 6025 5015 50  0000 C CNN
F 2 "Package_SO:TSOP-II-54_22.2x10.16mm_P0.8mm" H 6025 2125 50  0001 C CIN
F 3 "https://www.micron.com/-/media/client/global/documents/products/data-sheet/dram/256mb_sdr.pdf" H 6025 3275 50  0001 C CNN
	1    6025 3525
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR072
U 1 1 62612FC3
P 5975 5050
F 0 "#PWR072" H 5975 4800 50  0001 C CNN
F 1 "GND" H 5980 4877 50  0000 C CNN
F 2 "" H 5975 5050 50  0001 C CNN
F 3 "" H 5975 5050 50  0001 C CNN
	1    5975 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 4925 5925 5050
Wire Wire Line
	5925 5050 5975 5050
Wire Wire Line
	5975 5050 6025 5050
Wire Wire Line
	6025 5050 6025 4925
Connection ~ 5975 5050
Wire Wire Line
	5925 1750 5925 2125
Wire Wire Line
	6025 2125 6025 1750
$Comp
L Device:C_Small C65
U 1 1 62616E39
P 5750 1850
F 0 "C65" H 5842 1896 50  0000 L CNN
F 1 "100n" H 5842 1805 50  0000 L CNN
F 2 "" H 5750 1850 50  0001 C CNN
F 3 "~" H 5750 1850 50  0001 C CNN
	1    5750 1850
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C66
U 1 1 626174CB
P 6275 1850
F 0 "C66" H 6367 1896 50  0000 L CNN
F 1 "100n" H 6367 1805 50  0000 L CNN
F 2 "" H 6275 1850 50  0001 C CNN
F 3 "~" H 6275 1850 50  0001 C CNN
	1    6275 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6025 1750 6275 1750
Connection ~ 6025 1750
Wire Wire Line
	5925 1750 5750 1750
Connection ~ 5925 1750
$Comp
L power:GND #PWR071
U 1 1 62618C1C
P 5750 2000
F 0 "#PWR071" H 5750 1750 50  0001 C CNN
F 1 "GND" H 5755 1827 50  0000 C CNN
F 2 "" H 5750 2000 50  0001 C CNN
F 3 "" H 5750 2000 50  0001 C CNN
	1    5750 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2000 5750 1950
$Comp
L power:GND #PWR090
U 1 1 62619143
P 6275 2000
F 0 "#PWR090" H 6275 1750 50  0001 C CNN
F 1 "GND" H 6280 1827 50  0000 C CNN
F 2 "" H 6275 2000 50  0001 C CNN
F 3 "" H 6275 2000 50  0001 C CNN
	1    6275 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6275 1950 6275 2000
Text GLabel 6650 2725 2    50   Input ~ 0
FMC_D4
Text GLabel 6650 2825 2    50   Input ~ 0
FMC_D5
Text GLabel 6650 2925 2    50   Input ~ 0
FMC_D6
Text GLabel 6650 3025 2    50   Input ~ 0
FMC_D7
Text GLabel 6650 3125 2    50   Input ~ 0
FMC_D8
Text GLabel 6650 3225 2    50   Input ~ 0
FMC_D9
Text GLabel 6650 3325 2    50   Input ~ 0
FMC_D10
Text GLabel 6650 3425 2    50   Input ~ 0
FMC_D11
Text GLabel 6650 3525 2    50   Input ~ 0
FMC_D12
Text GLabel 6650 2625 2    50   Input ~ 0
FMC_D3
Text GLabel 6650 2525 2    50   Input ~ 0
FMC_D2
Text GLabel 6650 2425 2    50   Input ~ 0
FMC_D1
Text GLabel 6650 2325 2    50   Input ~ 0
FMC_D0
Text GLabel 6650 3625 2    50   Input ~ 0
FMC_D13
Text GLabel 6650 3725 2    50   Input ~ 0
FMC_D14
Text GLabel 6650 3825 2    50   Input ~ 0
FMC_D15
Text GLabel 5400 2625 0    50   Input ~ 0
FMC_A0
Text GLabel 5400 2725 0    50   Input ~ 0
FMC_A1
Text GLabel 5400 2825 0    50   Input ~ 0
FMC_A2
Text GLabel 5400 2925 0    50   Input ~ 0
FMC_A3
Text GLabel 5400 3025 0    50   Input ~ 0
FMC_A4
Text GLabel 5400 3125 0    50   Input ~ 0
FMC_A5
Text GLabel 5400 3225 0    50   Input ~ 0
FMC_A6
Text GLabel 5400 3325 0    50   Input ~ 0
FMC_A7
Text GLabel 5400 3425 0    50   Input ~ 0
FMC_A8
Text GLabel 5400 3525 0    50   Input ~ 0
FMC_A9
Text GLabel 5400 3625 0    50   Input ~ 0
FMC_A10
Text GLabel 5400 3725 0    50   Input ~ 0
FMC_A11
Text GLabel 5400 3825 0    50   Input ~ 0
FMC_A12
Wire Wire Line
	6525 2325 6650 2325
Wire Wire Line
	6650 2425 6525 2425
Wire Wire Line
	6525 2525 6650 2525
Wire Wire Line
	6650 2625 6525 2625
Wire Wire Line
	6525 2725 6650 2725
Wire Wire Line
	6650 2825 6525 2825
Wire Wire Line
	6525 2925 6650 2925
Wire Wire Line
	6650 3025 6525 3025
Wire Wire Line
	6525 3125 6650 3125
Wire Wire Line
	6650 3225 6525 3225
Wire Wire Line
	6525 3325 6650 3325
Wire Wire Line
	6650 3425 6525 3425
Wire Wire Line
	6525 3525 6650 3525
Wire Wire Line
	6650 3625 6525 3625
Wire Wire Line
	6525 3725 6650 3725
Wire Wire Line
	6650 3825 6525 3825
Wire Wire Line
	5400 2625 5525 2625
Wire Wire Line
	5525 2725 5400 2725
Wire Wire Line
	5400 2825 5525 2825
Wire Wire Line
	5525 2925 5400 2925
Wire Wire Line
	5400 3025 5525 3025
Wire Wire Line
	5525 3125 5400 3125
Wire Wire Line
	5400 3225 5525 3225
Wire Wire Line
	5525 3325 5400 3325
Wire Wire Line
	5400 3425 5525 3425
Wire Wire Line
	5525 3525 5400 3525
Wire Wire Line
	5400 3625 5525 3625
Wire Wire Line
	5525 3725 5400 3725
Wire Wire Line
	5400 3825 5525 3825
Text GLabel 5400 2325 0    50   Input ~ 0
FMC_BA0
Text GLabel 5400 2425 0    50   Input ~ 0
FMC_BA1
Wire Wire Line
	5400 2325 5525 2325
Wire Wire Line
	5525 2425 5400 2425
$Comp
L power:+3.3V #PWR088
U 1 1 626154C0
P 6025 1675
F 0 "#PWR088" H 6025 1525 50  0001 C CNN
F 1 "+3.3V" H 6040 1848 50  0000 C CNN
F 2 "" H 6025 1675 50  0001 C CNN
F 3 "" H 6025 1675 50  0001 C CNN
	1    6025 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	5925 1750 6025 1750
Wire Wire Line
	6025 1675 6025 1750
Text GLabel 5375 4025 0    50   Input ~ 0
FMC_SDNE0
Text GLabel 5400 4125 0    50   Input ~ 0
FMC_SDCKE0
Text GLabel 5400 4525 0    50   Input ~ 0
FMC_SDNWE
Text GLabel 4175 4950 0    50   Input ~ 0
FMC_SDNE1
Text GLabel 4175 4850 0    50   Input ~ 0
FMC_SDCKE1
Text GLabel 5400 4225 0    50   Input ~ 0
FMC_SDCLK
Text GLabel 5400 4725 0    50   Input ~ 0
FMC_RAS
Wire Wire Line
	5400 4725 5525 4725
Text GLabel 5400 4625 0    50   Input ~ 0
FMC_CAS
Wire Wire Line
	5400 4625 5525 4625
Text GLabel 5400 4425 0    50   Input ~ 0
FMC_NBL1
Text GLabel 5400 4325 0    50   Input ~ 0
FMC_NBL0
Wire Wire Line
	5400 4225 5525 4225
Wire Wire Line
	5400 4125 5525 4125
Wire Wire Line
	5400 4525 5525 4525
Wire Wire Line
	5375 4025 5525 4025
Wire Wire Line
	4175 4850 4300 4850
Wire Wire Line
	4175 4950 4300 4950
NoConn ~ 4300 4950
NoConn ~ 4300 4850
Wire Wire Line
	5400 4325 5525 4325
Wire Wire Line
	5400 4425 5525 4425
Text Notes 3525 4750 0    50   ~ 0
only used on akso,\nmight have to add\nif using only available\nSDRAM chip
Text Notes 5900 950  0    79   ~ 0
SDRAM
$EndSCHEMATC
