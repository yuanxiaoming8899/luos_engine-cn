EESchema Schematic File Version 4
LIBS:l0_Load-cache
EELAYER 26 0
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
L Common_Lib:l0_Shield_Socket J2
U 1 1 5D012234
P 6450 2100
F 0 "J2" H 6525 2565 50  0000 C CNN
F 1 "l0_Shield_Socket" H 6525 2474 50  0000 C CNN
F 2 "Common_Footprint:l0_Shield_Socket" H 6550 1675 50  0001 C CNN
F 3 "" H 6450 1950 50  0001 C CNN
	1    6450 2100
	1    0    0    -1  
$EndComp
$Comp
L Common_Lib:HX711 U1
U 1 1 5D0D051D
P 6650 3100
F 0 "U1" H 6675 3333 50  0000 C CNN
F 1 "HX711" H 6650 3350 50  0001 C CNN
F 2 "Common_Footprint:SOP-16_4.4x10.4mm_Pitch1.27mm" H 6500 3550 50  0001 C CNN
F 3 "" H 6650 3100 50  0001 C CNN
F 4 "?" H 6750 3550 50  0001 C CNN "Fournisseur"
F 5 "?" H 6850 3650 50  0001 C CNN "CodeCommande"
	1    6650 3100
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0101
U 1 1 5D16E296
P 7400 1950
F 0 "#PWR0101" H 7400 1800 50  0001 C CNN
F 1 "+3.3V" H 7415 2123 50  0000 C CNN
F 2 "" H 7400 1950 50  0001 C CNN
F 3 "" H 7400 1950 50  0001 C CNN
	1    7400 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1950 7400 1950
$Comp
L power:+3.3V #PWR0102
U 1 1 5D16E354
P 6650 2750
F 0 "#PWR0102" H 6650 2600 50  0001 C CNN
F 1 "+3.3V" H 6665 2923 50  0000 C CNN
F 2 "" H 6650 2750 50  0001 C CNN
F 3 "" H 6650 2750 50  0001 C CNN
	1    6650 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3000 7050 2750
Wire Wire Line
	7050 2750 6650 2750
Wire Wire Line
	6300 2750 6300 3000
Connection ~ 6650 2750
Wire Wire Line
	6650 2750 6300 2750
$Comp
L power:GND #PWR0103
U 1 1 5D16E44B
P 5600 1850
F 0 "#PWR0103" H 5600 1600 50  0001 C CNN
F 1 "GND" H 5605 1677 50  0000 C CNN
F 2 "" H 5600 1850 50  0001 C CNN
F 3 "" H 5600 1850 50  0001 C CNN
	1    5600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1850 5600 1850
$Comp
L power:GND #PWR0104
U 1 1 5D16E4F5
P 7350 3150
F 0 "#PWR0104" H 7350 2900 50  0001 C CNN
F 1 "GND" H 7355 2977 50  0000 C CNN
F 2 "" H 7350 3150 50  0001 C CNN
F 3 "" H 7350 3150 50  0001 C CNN
	1    7350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 3100 7150 3100
Wire Wire Line
	7350 3100 7350 3150
Wire Wire Line
	7050 3200 7150 3200
Wire Wire Line
	7150 3200 7150 3100
Connection ~ 7150 3100
Wire Wire Line
	7150 3100 7350 3100
NoConn ~ 7050 3300
Wire Wire Line
	7050 2350 7550 2350
Wire Wire Line
	6000 2350 5600 2350
Wire Wire Line
	7050 3400 7550 3400
Wire Wire Line
	7050 3500 7550 3500
Text Label 7550 3400 0    50   ~ 0
DAT
Text Label 7550 2350 0    50   ~ 0
DAT
Text Label 5600 2350 0    50   ~ 0
SCK
Text Label 7550 3500 0    50   ~ 0
SCK
$Comp
L Common_Lib:Q_NPN_BEC Q1
U 1 1 5D1A51AE
P 5300 2950
F 0 "Q1" H 5490 2904 50  0000 L CNN
F 1 "Q_NPN_BEC" H 5490 2995 50  0000 L CNN
F 2 "Common_Footprint:SOT-23" H 5500 3050 50  0001 C CNN
F 3 "http://www.farnell.com/datasheets/2237012.pdf?_ga=2.140267120.2129514546.1561733527-1702651347.1516354365&_gac=1.151120587.1561733527.CjwKCAjw9dboBRBUEiwA7VrrzWnHr34G1kc61Qfk28RbXiMdWHAmM61ouBBegcdTx5Nz-hzwieipihoCo5MQAvD_BwE" H 5300 2950 50  0001 C CNN
F 4 "2533332" H 0   0   50  0001 C CNN "CodeCommand"
F 5 "Farnell" H 0   0   50  0001 C CNN "Fournisseur"
	1    5300 2950
	-1   0    0    1   
$EndComp
$Comp
L Common_Lib:R R1
U 1 1 5D1A52F5
P 5200 3250
F 0 "R1" H 5259 3296 50  0000 L CNN
F 1 "20K" H 5259 3205 50  0000 L CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 5200 3250 50  0001 C CNN
F 3 "~" H 5230 3270 50  0001 C CNN
F 4 "Farnell" H 5330 3370 50  0001 C CNN "Fournisseur"
F 5 "2447133" H 5430 3470 50  0001 C CNN "CodeCommande"
	1    5200 3250
	1    0    0    -1  
$EndComp
$Comp
L Common_Lib:R R2
U 1 1 5D1A53CC
P 5200 3450
F 0 "R2" H 5259 3496 50  0000 L CNN
F 1 "8.2K" H 5259 3405 50  0000 L CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 5200 3450 50  0001 C CNN
F 3 "~" H 5230 3470 50  0001 C CNN
F 4 "Farnnell" H 5330 3570 50  0001 C CNN "Fournisseur"
F 5 "2073272" H 5430 3670 50  0001 C CNN "CodeCommande"
	1    5200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3100 6100 3100
Wire Wire Line
	6100 3100 6100 2950
Wire Wire Line
	6100 3350 6100 3300
Wire Wire Line
	6100 3300 6300 3300
Wire Wire Line
	6300 3200 6100 3200
Wire Wire Line
	6100 3200 6100 3150
Connection ~ 5200 3150
Wire Wire Line
	5200 3150 5050 3150
Connection ~ 5200 3350
$Comp
L power:GND #PWR0105
U 1 1 5D1A6341
P 5200 3550
F 0 "#PWR0105" H 5200 3300 50  0001 C CNN
F 1 "GND" H 5205 3377 50  0000 C CNN
F 2 "" H 5200 3550 50  0001 C CNN
F 3 "" H 5200 3550 50  0001 C CNN
	1    5200 3550
	1    0    0    -1  
$EndComp
$Comp
L Common_Lib:L L1
U 1 1 5D1A64EC
P 4900 3150
F 0 "L1" V 4750 3150 50  0000 C CNN
F 1 "3.3uh" V 4850 3150 50  0000 C CNN
F 2 "Common_Footprint:1008" H 4900 3150 50  0001 C CNN
F 3 "~" H 4900 3150 50  0001 C CNN
F 4 "Farnell" H 4950 3250 50  0001 C CNN "Fournisseur"
F 5 "2530066" H 5050 3350 50  0001 C CNN "CodeCommande"
	1    4900 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6300 3500 6150 3500
Wire Wire Line
	6150 3500 6150 3550
Wire Wire Line
	5200 2750 6300 2750
Connection ~ 6300 2750
Wire Wire Line
	5500 2950 6100 2950
Wire Wire Line
	5200 3150 6100 3150
Wire Wire Line
	5200 3350 6100 3350
Wire Wire Line
	5200 3550 5450 3550
Wire Wire Line
	5450 3400 5450 3550
Wire Wire Line
	5450 3400 6300 3400
Connection ~ 5450 3550
Wire Wire Line
	5450 3550 5650 3550
Connection ~ 5200 3550
$Comp
L Common_Lib:C C3
U 1 1 5D1AB4E1
P 5750 3550
F 0 "C3" V 5800 3450 50  0000 C CNN
F 1 "0.1uf" V 5700 3400 50  0000 C CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 5660 3520 50  0001 C CNN
F 3 "~" H 5750 3550 50  0001 C CNN
F 4 "Farnell" H 5860 3720 50  0001 C CNN "Fournisseur"
F 5 "1759380" H 5960 3820 50  0001 C CNN "codeCommande"
	1    5750 3550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5850 3550 6150 3550
$Comp
L Common_Lib:C C4
U 1 1 5D1AB6E8
P 5850 3950
F 0 "C4" H 5942 3996 50  0000 L CNN
F 1 "0.1uf" H 5942 3905 50  0000 L CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 5760 3920 50  0001 C CNN
F 3 "~" H 5850 3950 50  0001 C CNN
F 4 "1759380" H 5960 4120 50  0001 C CNN "Fournisseur"
F 5 "Farnell" H 6060 4220 50  0001 C CNN "codeCommande"
	1    5850 3950
	1    0    0    -1  
$EndComp
$Comp
L Common_Lib:C C2
U 1 1 5D1AB876
P 4450 3350
F 0 "C2" H 4542 3396 50  0000 L CNN
F 1 "10uf" H 4542 3305 50  0000 L CNN
F 2 "Common_Footprint:R_0805" H 4360 3320 50  0001 C CNN
F 3 "~" H 4450 3350 50  0001 C CNN
F 4 "Farnell" H 4560 3520 50  0001 C CNN "Fournisseur"
F 5 "1735530" H 4660 3620 50  0001 C CNN "codeCommande"
	1    4450 3350
	1    0    0    -1  
$EndComp
$Comp
L Common_Lib:C C1
U 1 1 5D1AB8F3
P 4100 3350
F 0 "C1" H 4192 3396 50  0000 L CNN
F 1 "0.1uf" H 4192 3305 50  0000 L CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 4010 3320 50  0001 C CNN
F 3 "~" H 4100 3350 50  0001 C CNN
F 4 "Farnell" H 4210 3520 50  0001 C CNN "Fournisseur"
F 5 "1759380" H 4310 3620 50  0001 C CNN "codeCommande"
	1    4100 3350
	1    0    0    -1  
$EndComp
$Comp
L Common_Lib:C C6
U 1 1 5D1ABA45
P 6500 4850
F 0 "C6" H 6592 4896 50  0000 L CNN
F 1 "0.1uf" H 6592 4805 50  0000 L CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 6410 4820 50  0001 C CNN
F 3 "~" H 6500 4850 50  0001 C CNN
F 4 "Farnell" H 6610 5020 50  0001 C CNN "Fournisseur"
F 5 "1759380" H 6710 5120 50  0001 C CNN "codeCommande"
	1    6500 4850
	1    0    0    -1  
$EndComp
$Comp
L Common_Lib:C C5
U 1 1 5D1ABAA1
P 6150 4850
F 0 "C5" H 6242 4896 50  0000 L CNN
F 1 "0.1uf" H 6242 4805 50  0000 L CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 6060 4820 50  0001 C CNN
F 3 "~" H 6150 4850 50  0001 C CNN
F 4 "Farnell" H 6260 5020 50  0001 C CNN "Fournisseur"
F 5 "1759380" H 6360 5120 50  0001 C CNN "codeCommande"
	1    6150 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 3600 6050 3600
Wire Wire Line
	6050 3600 6050 3850
Wire Wire Line
	6300 3700 6250 3700
Wire Wire Line
	6250 3700 6250 4050
$Comp
L Common_Lib:R R3
U 1 1 5D1ADCA7
P 5550 3850
F 0 "R3" V 5600 3700 50  0000 C CNN
F 1 "100" V 5500 3700 50  0000 C CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 5550 3850 50  0001 C CNN
F 3 "~" H 5580 3870 50  0001 C CNN
F 4 "Farnell" H 5680 3970 50  0001 C CNN "Fournisseur"
F 5 "2447095" H 5780 4070 50  0001 C CNN "CodeCommande"
	1    5550 3850
	0    -1   -1   0   
$EndComp
$Comp
L Common_Lib:R R4
U 1 1 5D1AF3F5
P 5550 4050
F 0 "R4" V 5600 3900 50  0000 C CNN
F 1 "100" V 5500 3900 50  0000 C CNN
F 2 "Common_Footprint:R_0402_NoSilk" H 5550 4050 50  0001 C CNN
F 3 "~" H 5580 4070 50  0001 C CNN
F 4 "Farnell" H 5680 4170 50  0001 C CNN "Fournisseur"
F 5 "2447095" H 5780 4270 50  0001 C CNN "CodeCommande"
	1    5550 4050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5650 3850 5850 3850
Wire Wire Line
	5650 4050 5850 4050
Wire Wire Line
	4450 3150 4450 3250
Wire Wire Line
	4450 3150 4750 3150
Wire Wire Line
	4450 3150 4100 3150
Wire Wire Line
	4100 3150 4100 3250
Connection ~ 4450 3150
Connection ~ 4100 3150
$Comp
L power:GND #PWR0106
U 1 1 5D1B323E
P 4450 3450
F 0 "#PWR0106" H 4450 3200 50  0001 C CNN
F 1 "GND" H 4455 3277 50  0000 C CNN
F 2 "" H 4450 3450 50  0001 C CNN
F 3 "" H 4450 3450 50  0001 C CNN
	1    4450 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5D1B32EE
P 4100 3450
F 0 "#PWR0107" H 4100 3200 50  0001 C CNN
F 1 "GND" H 4105 3277 50  0000 C CNN
F 2 "" H 4100 3450 50  0001 C CNN
F 3 "" H 4100 3450 50  0001 C CNN
	1    4100 3450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5D1B7F0B
P 6150 4950
F 0 "#PWR0108" H 6150 4700 50  0001 C CNN
F 1 "GND" H 6155 4777 50  0000 C CNN
F 2 "" H 6150 4950 50  0001 C CNN
F 3 "" H 6150 4950 50  0001 C CNN
	1    6150 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5D1B7FF7
P 6500 4950
F 0 "#PWR0109" H 6500 4700 50  0001 C CNN
F 1 "GND" H 6505 4777 50  0000 C CNN
F 2 "" H 6500 4950 50  0001 C CNN
F 3 "" H 6500 4950 50  0001 C CNN
	1    6500 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0111
U 1 1 5D1B81ED
P 6150 4750
F 0 "#PWR0111" H 6150 4600 50  0001 C CNN
F 1 "+3.3V" H 6165 4923 50  0000 C CNN
F 2 "" H 6150 4750 50  0001 C CNN
F 3 "" H 6150 4750 50  0001 C CNN
	1    6150 4750
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0112
U 1 1 5D1B8324
P 6500 4750
F 0 "#PWR0112" H 6500 4600 50  0001 C CNN
F 1 "+3.3V" H 6515 4923 50  0000 C CNN
F 2 "" H 6500 4750 50  0001 C CNN
F 3 "" H 6500 4750 50  0001 C CNN
	1    6500 4750
	1    0    0    -1  
$EndComp
Connection ~ 5850 3850
Wire Wire Line
	5850 3850 6050 3850
Wire Wire Line
	6250 4050 5850 4050
Connection ~ 5850 4050
NoConn ~ 7050 3600
NoConn ~ 7050 3700
$Comp
L Common_Lib:Header5Contacts J1
U 1 1 5D1BF487
P 3350 3350
F 0 "J1" H 3381 3787 60  0000 C CNN
F 1 "Header5Contacts" H 3381 3681 60  0000 C CNN
F 2 "Common_Footprint:826926-5" V 3100 3400 60  0001 C CNN
F 3 "" H 3250 3400 60  0001 C CNN
F 4 "Farnell" H 3450 3750 50  0001 C CNN "Fournisseur"
F 5 "1248143" H 3550 3850 50  0001 C CNN "CodeCommande"
	1    3350 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3150 4100 3150
Wire Wire Line
	5450 3850 3950 3850
Wire Wire Line
	3950 3850 3950 3350
Wire Wire Line
	3950 3350 3500 3350
Wire Wire Line
	5450 4050 3800 4050
Wire Wire Line
	3800 4050 3800 3450
Wire Wire Line
	3800 3450 3500 3450
$Comp
L power:GND #PWR0114
U 1 1 5D1C29CE
P 3650 3650
F 0 "#PWR0114" H 3650 3400 50  0001 C CNN
F 1 "GND" H 3655 3477 50  0000 C CNN
F 2 "" H 3650 3650 50  0001 C CNN
F 3 "" H 3650 3650 50  0001 C CNN
	1    3650 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3250 3650 3250
Wire Wire Line
	3650 3250 3650 3550
Wire Wire Line
	3500 3550 3650 3550
Connection ~ 3650 3550
Wire Wire Line
	3650 3550 3650 3650
Text Label 3700 3350 0    50   ~ 0
A-
Text Label 3700 3450 0    50   ~ 0
A+
$EndSCHEMATC