<Qucs Schematic 0.0.20>
<Properties>
  <View=147,-260,1711,625,1,0,0>
  <Grid=10,10,1>
  <DataSet=ADC_current.dat>
  <DataDisplay=ADC_current.dpl>
  <OpenDisplay=1>
  <Script=ADC_current.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
</Symbol>
<Components>
  <.TR TR1 1 1360 -70 0 81 0 0 "lin" 1 "0" 1 "33 ms" 1 "500" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.DC DC1 1 1360 -150 0 48 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <GND *5 5 1100 140 0 0 0 0>
  <GND *7 5 1100 580 0 0 0 0>
  <R R9 1 1100 530 15 -26 0 1 "470 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R10 1 1100 430 15 -26 0 1 "470 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V4 1 1100 250 18 -26 1 3 "5 V" 1>
  <GND *8 5 1100 200 0 0 0 2>
  <R R11 1 1100 330 15 -26 0 1 "470 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Iac I3 1 960 430 20 -26 0 1 "1 mA" 1 "60 Hz" 0 "0" 0 "0" 0>
  <Vdc V1 1 600 -130 18 -26 1 3 "3.3 V" 1>
  <GND *1 5 600 120 0 0 0 0>
  <GND *2 5 600 -180 0 0 0 2>
  <R R2 1 600 -50 15 -26 0 1 "180 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 1 600 50 15 -26 0 1 "120 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V2 1 600 230 18 -26 1 3 "3.3 V" 1>
  <GND *3 5 600 480 0 0 0 0>
  <GND *4 5 600 180 0 0 0 2>
  <R R5 1 600 310 15 -26 0 1 "180 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R6 1 600 410 15 -26 0 1 "120 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R1 1 440 -70 15 -26 0 1 "120 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Iac I1 1 320 -70 20 -26 0 1 "10 mA" 1 "60 Hz" 0 "0" 0 "0" 0>
  <C C1 1 440 50 17 -26 0 1 "2 uF" 1 "" 0 "neutral" 0>
  <R R4 1 440 290 15 -26 0 1 "120 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Iac I2 1 320 290 20 -26 0 1 "10 mA" 1 "60 Hz" 0 "0" 0 "0" 0>
  <C C3 1 440 410 17 -26 0 1 "2 uF" 1 "" 0 "neutral" 0>
  <Vdc V3 1 1100 -110 18 -26 1 3 "5 V" 1>
  <C C5 1 960 70 -67 -26 0 3 "22 uF" 1 "" 0 "neutral" 0>
  <R R7 1 1100 70 15 -26 0 1 "470 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R8 1 1100 -30 15 -26 0 1 "470 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND *6 5 1100 -160 0 0 0 2>
  <Vac V5 1 840 -70 -80 -26 1 1 "311.127 V" 1 "60 Hz" 0 "0" 0 "0" 0>
  <R R12 1 960 -130 15 -26 0 1 "467 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R13 1 960 -30 15 -26 0 1 "3.3 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C6 0 180 -70 17 -26 0 1 "100 nF" 1 "" 0 "neutral" 0>
  <C C4 1 180 290 17 -26 0 1 "470 nF" 1 "" 0 "neutral" 0>
</Components>
<Wires>
  <1100 560 1100 580 "" 0 0 0 "">
  <1100 200 1100 220 "" 0 0 0 "">
  <1100 280 1100 300 "" 0 0 0 "">
  <1100 460 1100 490 "" 0 0 0 "">
  <1100 490 1100 500 "" 0 0 0 "">
  <960 490 1100 490 "" 0 0 0 "">
  <960 460 960 490 "" 0 0 0 "">
  <1100 360 1100 380 "" 0 0 0 "">
  <1100 380 1100 400 "" 0 0 0 "">
  <960 380 1100 380 "" 0 0 0 "">
  <960 380 960 400 "" 0 0 0 "">
  <600 -180 600 -160 "" 0 0 0 "">
  <600 -100 600 -80 "" 0 0 0 "">
  <600 180 600 200 "" 0 0 0 "">
  <600 260 600 280 "" 0 0 0 "">
  <600 340 600 360 "" 0 0 0 "">
  <600 360 600 380 "" 0 0 0 "">
  <440 360 600 360 "" 0 0 0 "">
  <600 440 600 460 "" 0 0 0 "">
  <600 460 600 480 "" 0 0 0 "">
  <440 460 600 460 "" 0 0 0 "">
  <600 -20 600 0 "" 0 0 0 "">
  <600 0 600 20 "" 0 0 0 "">
  <440 0 600 0 "" 0 0 0 "">
  <600 80 600 100 "" 0 0 0 "">
  <600 100 600 120 "" 0 0 0 "">
  <440 100 600 100 "" 0 0 0 "">
  <440 80 440 100 "" 0 0 0 "">
  <440 -40 440 0 "" 0 0 0 "">
  <440 0 440 20 "" 0 0 0 "">
  <320 0 440 0 "" 0 0 0 "">
  <320 -40 320 0 "" 0 0 0 "">
  <440 -140 440 -100 "" 0 0 0 "">
  <320 -140 320 -100 "" 0 0 0 "">
  <320 -140 440 -140 "Vi_out" 410 -180 36 "">
  <440 440 440 460 "" 0 0 0 "">
  <440 320 440 360 "" 0 0 0 "">
  <440 360 440 380 "" 0 0 0 "">
  <320 360 440 360 "" 0 0 0 "">
  <320 320 320 360 "" 0 0 0 "">
  <440 220 440 260 "" 0 0 0 "">
  <320 220 320 260 "" 0 0 0 "">
  <320 220 440 220 "Vic_out" 370 160 36 "">
  <960 -180 960 -160 "" 0 0 0 "">
  <960 -100 960 -80 "" 0 0 0 "">
  <960 -80 1000 -80 "" 0 0 0 "">
  <960 20 960 40 "" 0 0 0 "">
  <1100 0 1100 20 "" 0 0 0 "">
  <1100 20 1100 40 "" 0 0 0 "">
  <960 20 1100 20 "" 0 0 0 "">
  <960 100 960 120 "" 0 0 0 "">
  <960 120 1100 120 "" 0 0 0 "">
  <1100 100 1100 120 "" 0 0 0 "">
  <1100 120 1100 140 "" 0 0 0 "">
  <1100 -160 1100 -140 "" 0 0 0 "">
  <1100 -80 1100 -60 "" 0 0 0 "">
  <960 -80 960 -60 "" 0 0 0 "">
  <960 0 960 20 "" 0 0 0 "">
  <840 20 960 20 "" 0 0 0 "">
  <840 -40 840 20 "" 0 0 0 "">
  <840 -180 960 -180 "" 0 0 0 "">
  <840 -180 840 -100 "" 0 0 0 "">
  <180 360 320 360 "" 0 0 0 "">
  <180 220 320 220 "" 0 0 0 "">
  <180 220 180 260 "" 0 0 0 "">
  <180 320 180 360 "" 0 0 0 "">
  <180 -140 320 -140 "" 0 0 0 "">
  <180 -140 180 -100 "" 0 0 0 "">
  <180 0 320 0 "" 0 0 0 "">
  <180 -40 180 0 "" 0 0 0 "">
  <1100 380 1100 380 "Vv_out2" 1130 350 0 "">
  <600 360 600 360 "Vref_Ic" 520 330 0 "">
  <600 0 600 0 "Vref_I" 530 -30 0 "">
  <1000 -80 1000 -80 "Vv_out" 1020 -110 0 "">
  <1100 20 1100 20 "Vref" 1130 -10 0 "">
  <840 -180 840 -180 "Vin" 810 -220 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 1360 150 12 #000000 0 "ESP32\n- Polarization circuit; \n- voltage ranges with attenuation.\n\nattenuations:\n- dB-0: 	100 mV - 950 mV\n- dB2-5:	100 mV - 1250 mV\n- dB-6:	150 mV ~ 1750 mV\n- dB-11: 150 mV ~ 2450 mV\n">
</Paintings>