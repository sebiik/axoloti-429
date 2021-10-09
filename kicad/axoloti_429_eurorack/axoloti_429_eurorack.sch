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
Text GLabel -3650 10400 2    50   Input ~ 0
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
P 1050 8650
F 0 "J11" H 1100 8967 50  0000 C CNN
F 1 "I2C1_HEADER" H 1100 8876 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x04_P2.54mm_Vertical" H 1050 8650 50  0001 C CNN
F 3 "~" H 1050 8650 50  0001 C CNN
	1    1050 8650
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 8550 850  8550
Connection ~ 1350 8550
$Comp
L power:GND #PWR040
U 1 1 602A0F05
P 650 8750
F 0 "#PWR040" H 650 8500 50  0001 C CNN
F 1 "GND" H 655 8577 50  0000 C CNN
F 2 "" H 650 8750 50  0001 C CNN
F 3 "" H 650 8750 50  0001 C CNN
	1    650  8750
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  8750 650  8650
Wire Wire Line
	650  8650 850  8650
Wire Wire Line
	850  8850 1350 8850
Wire Wire Line
	1350 8750 850  8750
Wire Wire Line
	1350 8250 1350 8550
Wire Wire Line
	850  8650 1350 8650
Connection ~ 850  8650
Text Notes 1400 8650 0    50   ~ 0
VCC\nGND
$Comp
L power:+3.3V #PWR048
U 1 1 602C979F
P 825 5175
AR Path="/602C979F" Ref="#PWR048"  Part="1" 
AR Path="/5EFC127A/602C979F" Ref="#PWR?"  Part="1" 
F 0 "#PWR048" H 825 5025 50  0001 C CNN
F 1 "+3.3V" H 840 5348 50  0000 C CNN
F 2 "" H 825 5175 50  0001 C CNN
F 3 "" H 825 5175 50  0001 C CNN
	1    825  5175
	1    0    0    -1  
$EndComp
Text GLabel 1350 8750 2    50   Input ~ 0
I2C1_SCL
Text GLabel 1350 8850 2    50   Input ~ 0
I2C1_SDA
$Comp
L power:+3.3V #PWR041
U 1 1 603DAAD6
P 1350 8250
AR Path="/603DAAD6" Ref="#PWR041"  Part="1" 
AR Path="/5EFC127A/603DAAD6" Ref="#PWR?"  Part="1" 
F 0 "#PWR041" H 1350 8100 50  0001 C CNN
F 1 "+3.3V" H 1365 8423 50  0000 C CNN
F 2 "" H 1350 8250 50  0001 C CNN
F 3 "" H 1350 8250 50  0001 C CNN
	1    1350 8250
	1    0    0    -1  
$EndComp
$Sheet
S 13750 1900 1000 900 
U 60EEB191
F0 "Digital IO, DAC CV out" 50
F1 "digital_io.sch" 50
$EndSheet
Text GLabel 1275 12050 2    50   Input ~ 0
GATE_IN1
Text GLabel 1275 12150 2    50   Input ~ 0
GATE_IN2
$Comp
L Switch:SW_MEC_5E SW1
U 1 1 60F97678
P 825 5450
F 0 "SW1" V 871 5362 50  0000 R CNN
F 1 "BOOT_FLASH" V 825 5475 50  0000 R CNN
F 2 "Button_Switch_SMD:SW_Push_1P1T_NO_6x6mm_H9.5mm" H 825 5750 50  0001 C CNN
F 3 "http://www.apem.com/int/index.php?controller=attachment&id_attachment=1371" H 825 5750 50  0001 C CNN
	1    825  5450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	825  5650 825  5675
Wire Wire Line
	825  5175 825  5225
Wire Wire Line
	725  5650 725  5675
Wire Wire Line
	725  5675 825  5675
Connection ~ 825  5675
Wire Wire Line
	725  5250 725  5225
Wire Wire Line
	725  5225 825  5225
Connection ~ 825  5225
Wire Wire Line
	825  5225 825  5250
Wire Wire Line
	-3900 10400 -3650 10400
$Sheet
S 14925 625  1000 900 
U 5ECD8B86
F0 "SDIO" 50
F1 "sdio.sch" 50
$EndSheet
Text Label 1225 5675 0    50   ~ 0
BOOT_FLASH
Wire Wire Line
	1225 5675 825  5675
$Comp
L Connector:Conn_01x06_Male J1
U 1 1 60F388EC
P 900 7175
F 0 "J1" H 872 7057 50  0000 R CNN
F 1 "SERIAL_SYSTEM_BOOTLOADER" H 1475 6800 50  0000 R CNN
F 2 "" H 900 7175 50  0001 C CNN
F 3 "~" H 900 7175 50  0001 C CNN
	1    900  7175
	1    0    0    1   
$EndComp
NoConn ~ 1100 6875
NoConn ~ 1100 7175
NoConn ~ 1100 7275
Text Label 1250 6975 0    50   ~ 0
SYS_TX
Text Label 1250 7075 0    50   ~ 0
SYS_RX
Wire Wire Line
	1250 7075 1100 7075
Wire Wire Line
	1100 6975 1250 6975
Text Label 11875 2525 0    50   ~ 0
SYS_TX
Text Label 11875 2625 0    50   ~ 0
SYS_RX
$Comp
L power:GND #PWR07
U 1 1 60F8DD6A
P 1250 7425
F 0 "#PWR07" H 1250 7175 50  0001 C CNN
F 1 "GND" H 1255 7252 50  0000 C CNN
F 2 "" H 1250 7425 50  0001 C CNN
F 3 "" H 1250 7425 50  0001 C CNN
	1    1250 7425
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 7425 1250 7375
Wire Wire Line
	1100 7375 1250 7375
Wire Wire Line
	7475 1075 7475 1125
Wire Wire Line
	7375 1075 7375 1125
Connection ~ 7375 1075
Wire Wire Line
	7375 1075 7475 1075
Wire Wire Line
	7275 1125 7275 1075
Connection ~ 7275 1075
Wire Wire Line
	7275 1075 7375 1075
Wire Wire Line
	7175 1075 7175 1125
Connection ~ 7175 1075
Wire Wire Line
	7175 1075 7275 1075
Wire Wire Line
	7075 1125 7075 1075
Connection ~ 7075 1075
Wire Wire Line
	7075 1075 7175 1075
Wire Wire Line
	6975 1075 6975 1125
Connection ~ 6975 1075
Wire Wire Line
	6975 1075 7075 1075
Wire Wire Line
	6875 1125 6875 1075
Connection ~ 6875 1075
Wire Wire Line
	6875 1075 6975 1075
Wire Wire Line
	6775 1125 6775 1075
Connection ~ 6775 1075
Wire Wire Line
	6775 1075 6875 1075
Wire Wire Line
	6675 1125 6675 1075
Wire Wire Line
	6675 1075 6775 1075
Connection ~ 7475 1075
Wire Wire Line
	7475 1075 7575 1075
Text Label -3775 11000 0    50   ~ 0
BOOT_FLASH
Wire Wire Line
	-3775 11000 -3900 11000
Text GLabel 12000 5825 2    50   Input ~ 0
SDIO_D0
Text GLabel 12000 5925 2    50   Input ~ 0
SDIO_D1
Text GLabel 12000 6025 2    50   Input ~ 0
SDIO_D2
Text GLabel 12000 6125 2    50   Input ~ 0
SDIO_D3
Text GLabel 12000 6225 2    50   Input ~ 0
SDIO_CK
Text GLabel 12000 6925 2    50   Input ~ 0
SDIO_CMD
Wire Wire Line
	12000 6925 11775 6925
Text GLabel -850 10200 2    50   Input ~ 0
DAC_OUT1
Wire Wire Line
	-850 10200 -950 10200
Text GLabel -2350 10300 0    50   Input ~ 0
DAC_OUT2
Wire Wire Line
	-2250 10300 -2350 10300
Text GLabel 11875 2725 2    50   Input ~ 0
OTG_FS_DM
Text GLabel 11875 2825 2    50   Input ~ 0
OTG_FS_DP
Wire Wire Line
	11775 2725 11875 2725
Wire Wire Line
	11875 2825 11775 2825
Wire Wire Line
	11775 2525 11875 2525
Wire Wire Line
	11875 2625 11775 2625
Text Notes 11825 6450 0    50   ~ 0
warning: PC13, 14, 15 are weak
Wire Wire Line
	11775 6225 12000 6225
Wire Wire Line
	11775 6125 12000 6125
Wire Wire Line
	11775 6025 12000 6025
Wire Wire Line
	11775 5925 12000 5925
Wire Wire Line
	11775 5825 12000 5825
Wire Wire Line
	7575 1125 7575 1075
Wire Wire Line
	7575 1075 7675 1075
Wire Wire Line
	7675 1075 7675 1125
Connection ~ 7575 1075
Text GLabel 12675 4325 2    50   Input ~ 0
I2C2_WM8731_SCL
Text GLabel 12675 4425 2    50   Input ~ 0
I2C2_WM8731_SDA
$Comp
L Device:R R23
U 1 1 5EDF8C2D
P 12575 4025
AR Path="/5EDF8C2D" Ref="R23"  Part="1" 
AR Path="/5EFC127A/5EDF8C2D" Ref="R?"  Part="1" 
F 0 "R23" H 12525 3925 50  0000 R CNN
F 1 "2.2k" V 12575 4125 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 12505 4025 50  0001 C CNN
F 3 "~" H 12575 4025 50  0001 C CNN
	1    12575 4025
	-1   0    0    1   
$EndComp
$Comp
L power:+3.3V #PWR021
U 1 1 5EDF8C33
P 12575 3825
AR Path="/5EDF8C33" Ref="#PWR021"  Part="1" 
AR Path="/5EFC127A/5EDF8C33" Ref="#PWR?"  Part="1" 
F 0 "#PWR021" H 12575 3675 50  0001 C CNN
F 1 "+3.3V" H 12590 3998 50  0000 C CNN
F 2 "" H 12575 3825 50  0001 C CNN
F 3 "" H 12575 3825 50  0001 C CNN
	1    12575 3825
	1    0    0    -1  
$EndComp
Wire Wire Line
	12575 3825 12575 3875
Connection ~ 12575 3875
$Comp
L Device:R R21
U 1 1 5EDF8C3C
P 12425 4025
AR Path="/5EDF8C3C" Ref="R21"  Part="1" 
AR Path="/5EFC127A/5EDF8C3C" Ref="R?"  Part="1" 
F 0 "R21" H 12625 3925 50  0000 R CNN
F 1 "2.2k" V 12425 4125 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 12355 4025 50  0001 C CNN
F 3 "~" H 12425 4025 50  0001 C CNN
	1    12425 4025
	-1   0    0    1   
$EndComp
Wire Wire Line
	12425 3875 12575 3875
Text GLabel 11850 4125 2    50   Input ~ 0
I2C1_SCL
Text GLabel 11850 4225 2    50   Input ~ 0
I2C1_SDA
Wire Wire Line
	12575 4175 12575 4325
Wire Wire Line
	12425 4425 12425 4175
Wire Wire Line
	12675 4325 12575 4325
Connection ~ 12575 4325
Wire Wire Line
	12675 4425 12425 4425
Connection ~ 12425 4425
Text GLabel 12075 4725 2    50   Input ~ 0
OTG_HS_DM
Text GLabel 12075 4825 2    50   Input ~ 0
OTG_HS_DP
Wire Wire Line
	11775 4325 12575 4325
Wire Wire Line
	11775 4425 12425 4425
Wire Wire Line
	11850 4125 11775 4125
Wire Wire Line
	11775 4725 12075 4725
Wire Wire Line
	11775 4825 12075 4825
NoConn ~ 11775 6325
NoConn ~ 11775 6425
NoConn ~ 11775 6525
Wire Wire Line
	7975 1125 7975 1075
Connection ~ 7675 1075
NoConn ~ 9000 9175
Wire Wire Line
	8075 1125 8075 1075
Wire Wire Line
	7975 1075 8075 1075
Connection ~ 7975 1075
$Sheet
S 14925 3025 950  975 
U 61EC8332
F0 "Pots, CV inputs" 50
F1 "pots_cv_inputs.sch" 50
$EndSheet
Wire Wire Line
	11775 4225 11850 4225
Text GLabel -5325 12100 0    50   Input ~ 0
CV_IN1
Wire Wire Line
	-5325 12100 -5200 12100
Text GLabel -3775 12200 2    50   Input ~ 0
CV_IN2
Text GLabel -5325 12200 0    50   Input ~ 0
CV_IN3
Text GLabel -2375 10200 0    50   Input ~ 0
CV_IN4
Text GLabel 11900 2225 2    50   Input ~ 0
CV_IN5
Text GLabel 11900 2325 2    50   Input ~ 0
CV_IN6
Wire Wire Line
	-3900 12200 -3775 12200
Wire Wire Line
	-5325 12200 -5200 12200
Wire Wire Line
	-2250 10200 -2375 10200
Wire Wire Line
	11775 2225 11900 2225
Wire Wire Line
	11900 2325 11775 2325
Text GLabel 11900 3325 2    50   Input ~ 0
CV_IN7
Text GLabel 11900 3425 2    50   Input ~ 0
CV_IN8
Wire Wire Line
	11775 3325 11900 3325
Wire Wire Line
	11900 3425 11775 3425
Text Notes 15325 1025 0    50   ~ 0
done
Text GLabel -3400 11400 2    50   Input ~ 0
SAI1_SD_B
Text GLabel -5700 11500 0    50   Input ~ 0
SAI1_SD_A
Text GLabel -3400 11500 2    50   Input ~ 0
SAI1_SCK_A
Text GLabel -5700 11400 0    50   Input ~ 0
SAI1_FS_A
Wire Wire Line
	-3400 11400 -3900 11400
Wire Wire Line
	-5700 11400 -5200 11400
Wire Wire Line
	-3400 11500 -3900 11500
Wire Wire Line
	-5700 11500 -5200 11500
Wire Wire Line
	7775 1075 7775 1125
Connection ~ 7775 1075
Wire Wire Line
	7775 1075 7675 1075
Wire Wire Line
	7875 1125 7875 1075
Wire Wire Line
	7775 1075 7875 1075
Connection ~ 7875 1075
Wire Wire Line
	7875 1075 7975 1075
NoConn ~ 3175 5425
NoConn ~ 11775 8625
$Comp
L power:GND #PWR0164
U 1 1 61E43C4C
P 12375 3525
F 0 "#PWR0164" H 12375 3275 50  0001 C CNN
F 1 "GND" V 12380 3397 50  0000 R CNN
F 2 "" H 12375 3525 50  0001 C CNN
F 3 "" H 12375 3525 50  0001 C CNN
	1    12375 3525
	0    -1   -1   0   
$EndComp
Wire Wire Line
	12375 3525 11775 3525
$Comp
L power:+5V #PWR0162
U 1 1 61E7991A
P -4900 7900
F 0 "#PWR0162" H -4900 7750 50  0001 C CNN
F 1 "+5V" H -4885 8073 50  0000 C CNN
F 2 "" H -4900 7900 50  0001 C CNN
F 3 "" H -4900 7900 50  0001 C CNN
	1    -4900 7900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R105
U 1 1 61E7A4B1
P -4900 8125
F 0 "R105" H -4830 8171 50  0000 L CNN
F 1 "47k" H -4830 8080 50  0000 L CNN
F 2 "" V -4970 8125 50  0001 C CNN
F 3 "~" H -4900 8125 50  0001 C CNN
	1    -4900 8125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R106
U 1 1 61E7A844
P -4900 8625
F 0 "R106" H -4830 8671 50  0000 L CNN
F 1 "47k" H -4830 8580 50  0000 L CNN
F 2 "" V -4970 8625 50  0001 C CNN
F 3 "~" H -4900 8625 50  0001 C CNN
	1    -4900 8625
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4900 7900 -4900 7975
Wire Wire Line
	-4900 8275 -4900 8375
$Comp
L power:GND #PWR0163
U 1 1 61EAE142
P -4900 8850
F 0 "#PWR0163" H -4900 8600 50  0001 C CNN
F 1 "GND" H -4895 8677 50  0000 C CNN
F 2 "" H -4900 8850 50  0001 C CNN
F 3 "" H -4900 8850 50  0001 C CNN
	1    -4900 8850
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4900 8850 -4900 8800
$Comp
L Device:C C83
U 1 1 61EC9945
P -4525 8625
F 0 "C83" H -4410 8671 50  0000 L CNN
F 1 "10n" H -4410 8580 50  0000 L CNN
F 2 "" H -4487 8475 50  0001 C CNN
F 3 "~" H -4525 8625 50  0001 C CNN
	1    -4525 8625
	1    0    0    -1  
$EndComp
Wire Wire Line
	-4900 8800 -4525 8800
Wire Wire Line
	-4525 8800 -4525 8775
Connection ~ -4900 8800
Wire Wire Line
	-4900 8800 -4900 8775
Wire Wire Line
	-4525 8475 -4525 8375
Wire Wire Line
	-4525 8375 -4900 8375
Connection ~ -4900 8375
Wire Wire Line
	-4900 8375 -4900 8475
Text Notes -4800 8300 0    50   ~ 0
5v voltage supervisor to PF10
Connection ~ -4525 8375
Wire Wire Line
	-4525 8375 -4375 8375
Text Notes 15325 2400 0    50   ~ 0
done
Text GLabel -650 11500 2    50   Input ~ 0
LED_RED
Wire Wire Line
	-650 11500 -950 11500
Text GLabel -700 11400 2    50   Input ~ 0
LED_GREEN
Wire Wire Line
	-700 11400 -950 11400
Text GLabel 11875 2425 2    50   Input ~ 0
SAI_MCLK
Wire Wire Line
	11775 2425 11875 2425
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
Text GLabel 1275 12350 2    50   Input ~ 0
GATE_OUT2
Text GLabel 1275 12250 2    50   Input ~ 0
GATE_OUT1
Text GLabel 12075 4525 2    50   Input ~ 0
SPI2_74HC595_EN
Text GLabel 12075 4625 2    50   Input ~ 0
SPI2_74HC595_SCLK
Text GLabel 12075 5325 2    50   Input ~ 0
SPI2_74HC595_DATA
$Sheet
S 13775 3025 950  975 
U 62143D1F
F0 "sdram" 50
F1 "sdram.sch" 50
$EndSheet
Text GLabel 11875 7325 2    50   Input ~ 0
SPI3_MOSI
Wire Wire Line
	11875 7325 11775 7325
Text GLabel 11900 3625 2    50   Input ~ 0
SPI3_SCK
Wire Wire Line
	11900 3625 11775 3625
Text GLabel 11900 3125 2    50   Input ~ 0
SPI3_NSS
Wire Wire Line
	11900 3125 11775 3125
Text GLabel 11900 3725 2    50   Input ~ 0
SPI3_MISO
Wire Wire Line
	11900 3725 11775 3725
Wire Wire Line
	1275 12050 1175 12050
Wire Wire Line
	1275 12150 1175 12150
Wire Wire Line
	1175 12250 1275 12250
Wire Wire Line
	1175 12350 1275 12350
Wire Wire Line
	12075 4525 11775 4525
Wire Wire Line
	12075 5325 11775 5325
Wire Wire Line
	12075 4625 11775 4625
$Comp
L power:GND #PWR0100
U 1 1 6162A639
P -5475 9700
F 0 "#PWR0100" H -5475 9450 50  0001 C CNN
F 1 "GND" V -5470 9572 50  0000 R CNN
F 2 "" H -5475 9700 50  0001 C CNN
F 3 "" H -5475 9700 50  0001 C CNN
	1    -5475 9700
	0    1    1    0   
$EndComp
Wire Wire Line
	-5475 9700 -5200 9700
$Comp
L power:GND #PWR0143
U 1 1 61641AC4
P -3625 9700
F 0 "#PWR0143" H -3625 9450 50  0001 C CNN
F 1 "GND" V -3620 9572 50  0000 R CNN
F 2 "" H -3625 9700 50  0001 C CNN
F 3 "" H -3625 9700 50  0001 C CNN
	1    -3625 9700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 61659C4E
P -5475 12300
F 0 "#PWR0105" H -5475 12050 50  0001 C CNN
F 1 "GND" V -5470 12172 50  0000 R CNN
F 2 "" H -5475 12300 50  0001 C CNN
F 3 "" H -5475 12300 50  0001 C CNN
	1    -5475 12300
	0    1    1    0   
$EndComp
Wire Wire Line
	-5475 12300 -5200 12300
$Comp
L power:GND #PWR0145
U 1 1 61670CBA
P -3625 12300
F 0 "#PWR0145" H -3625 12050 50  0001 C CNN
F 1 "GND" V -3620 12172 50  0000 R CNN
F 2 "" H -3625 12300 50  0001 C CNN
F 3 "" H -3625 12300 50  0001 C CNN
	1    -3625 12300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0146
U 1 1 616899AD
P -675 9900
F 0 "#PWR0146" H -675 9650 50  0001 C CNN
F 1 "GND" V -670 9772 50  0000 R CNN
F 2 "" H -675 9900 50  0001 C CNN
F 3 "" H -675 9900 50  0001 C CNN
	1    -675 9900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	-675 9900 -950 9900
$Comp
L power:+3.3V #PWR0147
U 1 1 616BAD54
P -675 9800
F 0 "#PWR0147" H -675 9650 50  0001 C CNN
F 1 "+3.3V" V -660 9928 50  0000 L CNN
F 2 "" H -675 9800 50  0001 C CNN
F 3 "" H -675 9800 50  0001 C CNN
	1    -675 9800
	0    1    1    0   
$EndComp
Wire Wire Line
	-675 9800 -950 9800
$Comp
L power:+5V #PWR0148
U 1 1 616EEC4D
P -675 9700
F 0 "#PWR0148" H -675 9550 50  0001 C CNN
F 1 "+5V" V -660 9828 50  0000 L CNN
F 2 "" H -675 9700 50  0001 C CNN
F 3 "" H -675 9700 50  0001 C CNN
	1    -675 9700
	0    1    1    0   
$EndComp
Wire Wire Line
	-675 9700 -950 9700
Text GLabel -3625 9800 2    50   Input ~ 0
VBAT
Text GLabel -5475 11800 0    50   Input ~ 0
V_SUPERVIS
Wire Wire Line
	-5475 11800 -5200 11800
Text GLabel -4375 8375 2    50   Input ~ 0
V_SUPERVIS
Wire Wire Line
	-3625 12300 -3900 12300
Wire Wire Line
	-3625 9800 -3900 9800
Wire Wire Line
	-3625 9700 -3900 9700
$Comp
L w_connector:429_Conn_02x27_Odd_Even J8
U 1 1 617A45C7
P -4550 11000
F 0 "J8" H -4550 12517 50  0000 C CNN
F 1 "429_Conn_02x27_Odd_Even" H -4550 12426 50  0000 C CNN
F 2 "" H -4300 11000 50  0001 C CNN
F 3 "~" H -4300 11000 50  0001 C CNN
	1    -4550 11000
	1    0    0    -1  
$EndComp
Wire Wire Line
	-2525 9700 -2250 9700
$Comp
L power:+5V #PWR0152
U 1 1 61707F5F
P -2525 9700
F 0 "#PWR0152" H -2525 9550 50  0001 C CNN
F 1 "+5V" V -2510 9828 50  0000 L CNN
F 2 "" H -2525 9700 50  0001 C CNN
F 3 "" H -2525 9700 50  0001 C CNN
	1    -2525 9700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	-2525 9800 -2250 9800
$Comp
L power:+3.3V #PWR0151
U 1 1 616D3BDC
P -2525 9800
F 0 "#PWR0151" H -2525 9650 50  0001 C CNN
F 1 "+3.3V" V -2510 9928 50  0000 L CNN
F 2 "" H -2525 9800 50  0001 C CNN
F 3 "" H -2525 9800 50  0001 C CNN
	1    -2525 9800
	0    -1   -1   0   
$EndComp
Wire Wire Line
	-2525 9900 -2250 9900
$Comp
L power:GND #PWR0150
U 1 1 616A1448
P -2525 9900
F 0 "#PWR0150" H -2525 9650 50  0001 C CNN
F 1 "GND" V -2520 9772 50  0000 R CNN
F 2 "" H -2525 9900 50  0001 C CNN
F 3 "" H -2525 9900 50  0001 C CNN
	1    -2525 9900
	0    1    1    0   
$EndComp
Text GLabel -5450 10600 0    50   Input ~ 0
MIDI_TX
Wire Wire Line
	-5450 10600 -5200 10600
Text GLabel -3750 10600 2    50   Input ~ 0
2141_FLG
Wire Wire Line
	-3750 10600 -3900 10600
$Comp
L w_stm32:STM32F427IITx U2
U 1 1 6153A646
P 7475 5825
F 0 "U2" H 6625 1275 50  0000 C CNN
F 1 "STM32F427IITx" H 8425 1275 50  0000 C CNN
F 2 "LQFP176" H 11575 10300 50  0001 R TNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00071990.pdf" H 7475 5825 50  0001 C CNN
	1    7475 5825
	1    0    0    -1  
$EndComp
Text GLabel -5425 10300 0    50   Input ~ 0
2141_EN
Wire Wire Line
	-5425 10300 -5200 10300
Text GLabel 1275 12550 2    50   Input ~ 0
BUTTON1
Text GLabel 1275 12650 2    50   Input ~ 0
BUTTON2
Text GLabel 1275 12750 2    50   Input ~ 0
BUTTON3
Text GLabel 1275 12850 2    50   Input ~ 0
BUTTON4
Text Notes 1825 12500 0    50   ~ 0
TODO
Text Notes 375  5800 0    50   ~ 0
LCtech already includes 10k pull down
NoConn ~ -3900 11900
$Comp
L w_connector:429_Conn_02x27_Odd_Even_mirrored J30
U 1 1 617A73CC
P -1600 11000
F 0 "J30" H -1600 12517 50  0000 C CNN
F 1 "429_Conn_02x27_Odd_Even_mirrored" H -1600 12426 50  0000 C CNN
F 2 "" H -1350 11000 50  0001 C CNN
F 3 "~" H -1350 11000 50  0001 C CNN
	1    -1600 11000
	-1   0    0    1   
$EndComp
$EndSCHEMATC
