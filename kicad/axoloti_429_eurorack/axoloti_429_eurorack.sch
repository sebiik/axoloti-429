EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 9
Title ""
Date "2021-07-14"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 14925 1875 950  950 
U 5ED86ED4
F0 "Power" 50
F1 "power.sch" 50
$EndSheet
$Sheet
S 13775 4325 950  950 
U 5EE2DB57
F0 "MIDI" 50
F1 "midi.sch" 50
$EndSheet
Text GLabel 7525 5275 2    50   Input ~ 0
MIDI_RX
$Sheet
S 14925 4325 950  950 
U 5F736ED6
F0 "USB" 50
F1 "usb.sch" 50
$EndSheet
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J11
U 1 1 602901E8
P 3600 5925
F 0 "J11" H 3650 6242 50  0000 C CNN
F 1 "I2C1_HEADER" H 3650 6151 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 3600 5925 50  0001 C CNN
F 3 "~" H 3600 5925 50  0001 C CNN
	1    3600 5925
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 5825 3400 5825
Connection ~ 3900 5825
$Comp
L power:GND #PWR040
U 1 1 602A0F05
P 3200 6025
F 0 "#PWR040" H 3200 5775 50  0001 C CNN
F 1 "GND" H 3205 5852 50  0000 C CNN
F 2 "" H 3200 6025 50  0001 C CNN
F 3 "" H 3200 6025 50  0001 C CNN
	1    3200 6025
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 6025 3200 5925
Wire Wire Line
	3200 5925 3400 5925
Wire Wire Line
	3400 6125 3900 6125
Wire Wire Line
	3900 6025 3400 6025
Wire Wire Line
	3900 5525 3900 5825
Wire Wire Line
	3400 5925 3900 5925
Connection ~ 3400 5925
$Comp
L power:+3.3V #PWR048
U 1 1 602C979F
P 3375 2450
AR Path="/602C979F" Ref="#PWR048"  Part="1" 
AR Path="/5EFC127A/602C979F" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 3375 2300 50  0001 C CNN
F 1 "+3.3V" H 3390 2623 50  0000 C CNN
F 2 "" H 3375 2450 50  0001 C CNN
F 3 "" H 3375 2450 50  0001 C CNN
	1    3375 2450
	1    0    0    -1  
$EndComp
Text GLabel 3900 6025 2    50   Input ~ 0
I2C1_SCL
Text GLabel 3900 6125 2    50   Input ~ 0
I2C1_SDA
$Comp
L power:+3.3V #PWR041
U 1 1 603DAAD6
P 3900 5525
AR Path="/603DAAD6" Ref="#PWR041"  Part="1" 
AR Path="/5EFC127A/603DAAD6" Ref="#PWR?"  Part="1" 
F 0 "#PWR041" H 3900 5375 50  0001 C CNN
F 1 "+3.3V" H 3915 5698 50  0000 C CNN
F 2 "" H 3900 5525 50  0001 C CNN
F 3 "" H 3900 5525 50  0001 C CNN
	1    3900 5525
	1    0    0    -1  
$EndComp
$Sheet
S 13750 1900 1000 900 
U 60EEB191
F0 "Digital IO, DAC CV out" 50
F1 "digital_io.sch" 50
$EndSheet
Text GLabel 13900 6175 2    50   Input ~ 0
GATE_IN1
Text GLabel 13900 6275 2    50   Input ~ 0
GATE_IN2
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 60F97678
P 3375 2725
F 0 "SW1" V 3421 2637 50  0000 R CNN
F 1 "BOOT_FLASH" V 3375 2750 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 3375 3025 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 3375 3025 50  0001 C CNN
	1    3375 2725
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3375 2925 3375 2950
Wire Wire Line
	3375 2450 3375 2500
Wire Wire Line
	3275 2925 3275 2950
Wire Wire Line
	3275 2950 3375 2950
Connection ~ 3375 2950
Wire Wire Line
	3275 2525 3275 2500
Wire Wire Line
	3275 2500 3375 2500
Connection ~ 3375 2500
Wire Wire Line
	3375 2500 3375 2525
Wire Wire Line
	7400 5275 7525 5275
$Sheet
S 14925 625  1000 900 
U 5ECD8B86
F0 "SDIO" 50
F1 "sdio.sch" 50
$EndSheet
Text Label 3775 2950 0    50   ~ 0
BOOT_FLASH
Wire Wire Line
	3775 2950 3375 2950
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 60F388EC
P 3450 4450
F 0 "J1" H 3422 4332 50  0000 R CNN
F 1 "SERIAL_SYSTEM_BOOTLOADER" H 4025 4075 50  0000 R CNN
F 2 "" H 3450 4450 50  0001 C CNN
F 3 "~" H 3450 4450 50  0001 C CNN
	1    3450 4450
	1    0    0    1   
$EndComp
NoConn ~ 3650 4150
NoConn ~ 3650 4450
NoConn ~ 3650 4550
Text Label 3800 4250 0    50   ~ 0
SYS_TX
Text Label 3800 4350 0    50   ~ 0
SYS_RX
Wire Wire Line
	3800 4350 3650 4350
Wire Wire Line
	3650 4250 3800 4250
Text Label 9350 6700 2    50   ~ 0
SYS_TX
Text Label 10950 6700 0    50   ~ 0
SYS_RX
$Comp
L power:GND #PWR07
U 1 1 60F8DD6A
P 3800 4700
F 0 "#PWR07" H 3800 4450 50  0001 C CNN
F 1 "GND" H 3805 4527 50  0000 C CNN
F 2 "" H 3800 4700 50  0001 C CNN
F 3 "" H 3800 4700 50  0001 C CNN
	1    3800 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4700 3800 4650
Wire Wire Line
	3650 4650 3800 4650
Text Label 7550 5875 0    50   ~ 0
BOOT_FLASH
Wire Wire Line
	7550 5875 7400 5875
Text GLabel 10950 6500 2    50   Input ~ 0
SDIO_D0
Text GLabel 9350 6600 0    50   Input ~ 0
SDIO_D1
Text GLabel 5975 4775 0    50   Input ~ 0
SDIO_D2
Text GLabel 7525 4875 2    50   Input ~ 0
SDIO_D3
Text GLabel 5975 4875 0    50   Input ~ 0
SDIO_CK
Text GLabel 7525 4975 2    50   Input ~ 0
SDIO_CMD
Wire Wire Line
	7525 4975 7400 4975
Text GLabel 10950 5100 2    50   Input ~ 0
DAC_OUT1
Wire Wire Line
	10950 5100 10800 5100
Text GLabel 9350 5200 0    50   Input ~ 0
DAC_OUT2
Wire Wire Line
	9500 5200 9350 5200
Text GLabel 9350 6800 0    50   Input ~ 0
OTG_FS_DM
Text GLabel 10950 6800 2    50   Input ~ 0
OTG_FS_DP
Wire Wire Line
	9500 6800 9350 6800
Wire Wire Line
	10950 6800 10800 6800
Wire Wire Line
	9500 6700 9350 6700
Wire Wire Line
	10950 6700 10800 6700
Wire Wire Line
	6100 4875 5975 4875
Wire Wire Line
	7400 4875 7525 4875
Wire Wire Line
	6100 4775 5975 4775
Wire Wire Line
	9500 6600 9350 6600
Wire Wire Line
	10800 6500 10950 6500
Text GLabel 3475 1800 2    50   Input ~ 0
I2C2_WM8731_SDA
$Comp
L Device:R R23
U 1 1 5EDF8C2D
P 3375 1400
AR Path="/5EDF8C2D" Ref="R23"  Part="1" 
AR Path="/5EFC127A/5EDF8C2D" Ref="R?"  Part="1" 
F 0 "R23" H 3325 1300 50  0000 R CNN
F 1 "2.2k" V 3375 1500 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3305 1400 50  0001 C CNN
F 3 "~" H 3375 1400 50  0001 C CNN
	1    3375 1400
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5EDF8C33
P 3375 1200
AR Path="/5EDF8C33" Ref="#PWR021"  Part="1" 
AR Path="/5EFC127A/5EDF8C33" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 3375 1050 50  0001 C CNN
F 1 "+3.3V" H 3390 1373 50  0000 C CNN
F 2 "" H 3375 1200 50  0001 C CNN
F 3 "" H 3375 1200 50  0001 C CNN
	1    3375 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3375 1200 3375 1250
Connection ~ 3375 1250
$Comp
L Device:R R21
U 1 1 5EDF8C3C
P 3225 1400
AR Path="/5EDF8C3C" Ref="R21"  Part="1" 
AR Path="/5EFC127A/5EDF8C3C" Ref="R?"  Part="1" 
F 0 "R21" H 3425 1300 50  0000 R CNN
F 1 "2.2k" V 3225 1500 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3155 1400 50  0001 C CNN
F 3 "~" H 3225 1400 50  0001 C CNN
	1    3225 1400
	-1   0    0    1   
$EndComp
Wire Wire Line
	3225 1250 3375 1250
Text GLabel 7525 5975 2    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	3225 1800 3225 1550
Wire Wire Line
	3475 1800 3225 1800
Text GLabel 10950 6000 2    50   Input ~ 0
OTG_HS_DM
Text GLabel 9350 6100 0    50   Input ~ 0
OTG_HS_DP
Wire Wire Line
	5975 5875 6100 5875
Wire Wire Line
	10800 6000 10950 6000
Wire Wire Line
	9500 6100 9350 6100
NoConn ~ 9000 9175
$Sheet
S 14925 3025 950  975 
U 61EC8332
F0 "Pots, CV inputs" 50
F1 "pots_cv_inputs.sch" 50
$EndSheet
Wire Wire Line
	7400 5975 7525 5975
Text GLabel 7525 7075 2    50   Input ~ 0
CV_IN1
Wire Wire Line
	7525 7075 7400 7075
Text GLabel 5975 7075 0    50   Input ~ 0
CV_IN2
Text GLabel 9375 5100 0    50   Input ~ 0
CV_IN3
Text GLabel 9350 5300 0    50   Input ~ 0
CV_IN5
Text GLabel 7550 6875 2    50   Input ~ 0
CV_IN6
Wire Wire Line
	6100 7075 5975 7075
Wire Wire Line
	9375 5100 9500 5100
Wire Wire Line
	9500 5300 9350 5300
Wire Wire Line
	7550 6875 7400 6875
Text GLabel 5950 6875 0    50   Input ~ 0
CV_IN7
Text GLabel 10950 5300 2    50   Input ~ 0
CV_IN8
Wire Wire Line
	6100 6875 5950 6875
Wire Wire Line
	10950 5300 10800 5300
Text Notes 15325 1025 0    50   ~ 0
done
Text GLabel 7525 6275 2    50   Input ~ 0
SAI1_SD_B
Text GLabel 5975 6375 0    50   Input ~ 0
SAI1_SD_A
Text GLabel 7525 6375 2    50   Input ~ 0
SAI1_SCK_A
Text GLabel 5975 6275 0    50   Input ~ 0
SAI1_FS_A
Wire Wire Line
	7525 6275 7400 6275
Wire Wire Line
	5975 6275 6100 6275
Wire Wire Line
	7525 6375 7400 6375
Wire Wire Line
	5975 6375 6100 6375
NoConn ~ 11775 8625
$Comp
L power:+5V #PWR0162
U 1 1 61E7991A
P 3325 7150
F 0 "#PWR0162" H 3325 7000 50  0001 C CNN
F 1 "+5V" H 3340 7323 50  0000 C CNN
F 2 "" H 3325 7150 50  0001 C CNN
F 3 "" H 3325 7150 50  0001 C CNN
	1    3325 7150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R105
U 1 1 61E7A4B1
P 3325 7375
F 0 "R105" H 3395 7421 50  0000 L CNN
F 1 "47k" H 3395 7330 50  0000 L CNN
F 2 "" V 3255 7375 50  0001 C CNN
F 3 "~" H 3325 7375 50  0001 C CNN
	1    3325 7375
	1    0    0    -1  
$EndComp
$Comp
L Device:R R106
U 1 1 61E7A844
P 3325 7875
F 0 "R106" H 3395 7921 50  0000 L CNN
F 1 "47k" H 3395 7830 50  0000 L CNN
F 2 "" V 3255 7875 50  0001 C CNN
F 3 "~" H 3325 7875 50  0001 C CNN
	1    3325 7875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 7150 3325 7225
Wire Wire Line
	3325 7525 3325 7625
$Comp
L power:GND #PWR0163
U 1 1 61EAE142
P 3325 8100
F 0 "#PWR0163" H 3325 7850 50  0001 C CNN
F 1 "GND" H 3330 7927 50  0000 C CNN
F 2 "" H 3325 8100 50  0001 C CNN
F 3 "" H 3325 8100 50  0001 C CNN
	1    3325 8100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 8100 3325 8050
$Comp
L Device:C C83
U 1 1 61EC9945
P 3700 7875
F 0 "C83" H 3815 7921 50  0000 L CNN
F 1 "10n" H 3815 7830 50  0000 L CNN
F 2 "" H 3738 7725 50  0001 C CNN
F 3 "~" H 3700 7875 50  0001 C CNN
	1    3700 7875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3325 8050 3700 8050
Wire Wire Line
	3700 8050 3700 8025
Connection ~ 3325 8050
Wire Wire Line
	3325 8050 3325 8025
Wire Wire Line
	3700 7725 3700 7625
Wire Wire Line
	3700 7625 3325 7625
Connection ~ 3325 7625
Wire Wire Line
	3325 7625 3325 7725
Text Notes 3425 7550 0    50   ~ 0
5v voltage supervisor to PF10
Connection ~ 3700 7625
Wire Wire Line
	3700 7625 3850 7625
Text Notes 15325 2400 0    50   ~ 0
done
Text GLabel 10950 6400 2    50   Input ~ 0
LED_RED
Wire Wire Line
	10950 6400 10800 6400
Text GLabel 10950 6300 2    50   Input ~ 0
LED_GREEN
Wire Wire Line
	10950 6300 10800 6300
Text Notes 14150 3550 0    50   ~ 0
done
$Sheet
S 13775 625  950  900 
U 5EFC127A
F0 "Audio Codec + IO" 50
F1 "codec.sch" 50
$EndSheet
Text Notes 14125 1025 0    50   ~ 0
done
Text Notes 15325 3550 0    50   ~ 0
done
Text Notes 14175 4850 0    50   ~ 0
done
Text GLabel 13900 6475 2    50   Input ~ 0
GATE_OUT2
Text GLabel 13900 6375 2    50   Input ~ 0
GATE_OUT1
Text GLabel 7525 6975 2    50   Input ~ 0
SPI2_74HC595_DATA
$Sheet
S 13775 3025 950  975 
U 62143D1F
F0 "sdram" 50
F1 "sdram.sch" 50
$EndSheet
Text GLabel 7525 5575 2    50   Input ~ 0
SPI3_SCK
Wire Wire Line
	7525 5575 7400 5575
Text GLabel 7525 4775 2    50   Input ~ 0
SPI3_NSS
Wire Wire Line
	7525 4775 7400 4775
Text GLabel 5975 5575 0    50   Input ~ 0
SPI3_MISO
Wire Wire Line
	5975 5575 6100 5575
Wire Wire Line
	13900 6175 13800 6175
Wire Wire Line
	13900 6275 13800 6275
Wire Wire Line
	13800 6375 13900 6375
Wire Wire Line
	13800 6475 13900 6475
Wire Wire Line
	7525 6975 7400 6975
$Comp
L power:GND #PWR0100
U 1 1 6162A639
P 5850 4575
F 0 "#PWR0100" H 5850 4325 50  0001 C CNN
F 1 "GND" V 5855 4447 50  0000 R CNN
F 2 "" H 5850 4575 50  0001 C CNN
F 3 "" H 5850 4575 50  0001 C CNN
	1    5850 4575
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 4575 6100 4575
$Comp
L power:GND #PWR0143
U 1 1 61641AC4
P 7700 4575
F 0 "#PWR0143" H 7700 4325 50  0001 C CNN
F 1 "GND" V 7705 4447 50  0000 R CNN
F 2 "" H 7700 4575 50  0001 C CNN
F 3 "" H 7700 4575 50  0001 C CNN
	1    7700 4575
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61659C4E
P 5850 7175
F 0 "#PWR0105" H 5850 6925 50  0001 C CNN
F 1 "GND" V 5855 7047 50  0000 R CNN
F 2 "" H 5850 7175 50  0001 C CNN
F 3 "" H 5850 7175 50  0001 C CNN
	1    5850 7175
	0    1    1    0   
$EndComp
Wire Wire Line
	5850 7175 6100 7175
$Comp
L power:GND #PWR0145
U 1 1 61670CBA
P 7700 7175
F 0 "#PWR0145" H 7700 6925 50  0001 C CNN
F 1 "GND" V 7705 7047 50  0000 R CNN
F 2 "" H 7700 7175 50  0001 C CNN
F 3 "" H 7700 7175 50  0001 C CNN
	1    7700 7175
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 616899AD
P 11100 4800
F 0 "#PWR0146" H 11100 4550 50  0001 C CNN
F 1 "GND" V 11105 4672 50  0000 R CNN
F 2 "" H 11100 4800 50  0001 C CNN
F 3 "" H 11100 4800 50  0001 C CNN
	1    11100 4800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	11100 4800 10800 4800
$Comp
L power:+3.3V #PWR0147
U 1 1 616BAD54
P 11100 4700
F 0 "#PWR0147" H 11100 4550 50  0001 C CNN
F 1 "+3.3V" V 11115 4828 50  0000 L CNN
F 2 "" H 11100 4700 50  0001 C CNN
F 3 "" H 11100 4700 50  0001 C CNN
	1    11100 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	11100 4700 10800 4700
$Comp
L power:+5V #PWR0148
U 1 1 616EEC4D
P 11100 4600
F 0 "#PWR0148" H 11100 4450 50  0001 C CNN
F 1 "+5V" V 11115 4728 50  0000 L CNN
F 2 "" H 11100 4600 50  0001 C CNN
F 3 "" H 11100 4600 50  0001 C CNN
	1    11100 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	11100 4600 10800 4600
Text GLabel 7525 4675 2    50   Input ~ 0
VBAT
Text GLabel 5975 6675 0    50   Input ~ 0
V_SUPERVIS
Wire Wire Line
	5975 6675 6100 6675
Text GLabel 3850 7625 2    50   Input ~ 0
V_SUPERVIS
Wire Wire Line
	7700 7175 7400 7175
Wire Wire Line
	7525 4675 7400 4675
Wire Wire Line
	7700 4575 7400 4575
$Comp
L w_connector:429_Conn_02x27_Odd_Even J8
U 1 1 617A45C7
P 6750 5875
F 0 "J8" H 6750 7392 50  0000 C CNN
F 1 "429_Conn_02x27_Odd_Even" H 6750 7301 50  0000 C CNN
F 2 "" H 7000 5875 50  0001 C CNN
F 3 "~" H 7000 5875 50  0001 C CNN
	1    6750 5875
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 4600 9500 4600
$Comp
L power:+5V #PWR0152
U 1 1 61707F5F
P 9250 4600
F 0 "#PWR0152" H 9250 4450 50  0001 C CNN
F 1 "+5V" V 9265 4728 50  0000 L CNN
F 2 "" H 9250 4600 50  0001 C CNN
F 3 "" H 9250 4600 50  0001 C CNN
	1    9250 4600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9250 4700 9500 4700
$Comp
L power:+3.3V #PWR0151
U 1 1 616D3BDC
P 9250 4700
F 0 "#PWR0151" H 9250 4550 50  0001 C CNN
F 1 "+3.3V" V 9265 4828 50  0000 L CNN
F 2 "" H 9250 4700 50  0001 C CNN
F 3 "" H 9250 4700 50  0001 C CNN
	1    9250 4700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9250 4800 9500 4800
$Comp
L power:GND #PWR0150
U 1 1 616A1448
P 9250 4800
F 0 "#PWR0150" H 9250 4550 50  0001 C CNN
F 1 "GND" V 9255 4672 50  0000 R CNN
F 2 "" H 9250 4800 50  0001 C CNN
F 3 "" H 9250 4800 50  0001 C CNN
	1    9250 4800
	0    1    1    0   
$EndComp
Text GLabel 5975 5475 0    50   Input ~ 0
MIDI_TX
Wire Wire Line
	5975 5475 6100 5475
Text GLabel 7525 5475 2    50   Input ~ 0
2141_FLG
Wire Wire Line
	7525 5475 7400 5475
Text GLabel 5975 5175 0    50   Input ~ 0
2141_EN
Wire Wire Line
	5975 5175 6100 5175
Text GLabel 13900 6675 2    50   Input ~ 0
BUTTON1
Text GLabel 13900 6775 2    50   Input ~ 0
BUTTON2
Text GLabel 13900 6875 2    50   Input ~ 0
BUTTON3
Text GLabel 13900 6975 2    50   Input ~ 0
BUTTON4
Text Notes 14450 6625 0    50   ~ 0
TODO
Text Notes 2925 3075 0    50   ~ 0
LCtech already includes 10k pull down
NoConn ~ 7400 6775
$Comp
L w_connector:429_Conn_02x27_Odd_Even_mirrored J30
U 1 1 617A73CC
P 10150 5900
F 0 "J30" H 10150 7417 50  0000 C CNN
F 1 "429_Conn_02x27_Odd_Even_mirrored" H 10150 7326 50  0000 C CNN
F 2 "" H 10400 5900 50  0001 C CNN
F 3 "~" H 10400 5900 50  0001 C CNN
	1    10150 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	7525 5175 7400 5175
Text GLabel 7525 5175 2    50   Input ~ 0
SPI3_MOSI
Text GLabel 10950 6600 2    50   Input ~ 0
SAI_MCLK
Wire Wire Line
	10800 6600 10950 6600
Text GLabel 5975 5875 0    50   Input ~ 0
I2C1_SCL
Wire Wire Line
	3475 1700 3375 1700
Wire Wire Line
	3375 1550 3375 1700
Text GLabel 3475 1700 2    50   Input ~ 0
I2C2_WM8731_SCL
Text GLabel 9350 5600 0    50   Input ~ 0
I2C2_WM8731_SCL
Wire Wire Line
	9350 5600 9500 5600
Text GLabel 10950 5600 2    50   Input ~ 0
I2C2_WM8731_SDA
Wire Wire Line
	10950 5600 10800 5600
Text GLabel 9350 6000 0    50   Input ~ 0
SPI2_74HC595_SCLK
Wire Wire Line
	9350 6000 9500 6000
Text GLabel 10950 5900 2    50   Input ~ 0
SPI2_74HC595_EN
Wire Wire Line
	10950 5900 10800 5900
Text Notes 3600 1475 0    50   ~ 0
I2C pull-ups
NoConn ~ 6100 6975
Wire Wire Line
	10800 5200 10950 5200
Text GLabel 10950 5200 2    50   Input ~ 0
CV_IN4
NoConn ~ 6100 6775
$EndSCHEMATC
