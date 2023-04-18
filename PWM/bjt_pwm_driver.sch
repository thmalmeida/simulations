<Qucs Schematic 0.0.20>
<Properties>
  <View=0,0,1347,851,1,0,0>
  <Grid=10,10,1>
  <DataSet=bjt_pwm_driver.dat>
  <DataDisplay=bjt_pwm_driver.dpl>
  <OpenDisplay=1>
  <Script=bjt_pwm_driver.m>
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
  <Vrect V4 1 170 590 18 -26 0 1 "3.3 V" 1 "0.25 ms" 1 "1 ms" 1 "1 ns" 0 "1 ns" 0 "0 ns" 0>
  <IProbe IR1 1 540 350 -37 -26 0 3>
  <GND *3 5 540 700 0 0 0 0>
  <GND *2 5 540 120 0 0 0 2>
  <Vdc V1 1 540 170 -77 -26 0 3 "15 V" 1>
  <_BJT T2 1 540 520 8 -26 0 0 "npn" 1 "1e-16" 1 "1" 1 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "200" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <IProbe Ib2 1 630 400 -26 -41 0 2>
  <.DC DC1 1 1110 200 0 44 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.TR TR1 1 1120 580 0 73 0 0 "lin" 1 "0" 1 "4 ms" 1 "201" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <.SW SW1 0 1110 300 0 73 0 0 "DC1" 1 "lin" 1 "Ra" 1 "10 Ohm" 1 "470 Ohm" 1 "461" 1>
  <VProbe Vb 1 70 580 -31 28 1 3>
  <GND *1 5 320 700 0 0 1 2>
  <Vdc V2 0 320 590 18 -26 0 1 "3.3 V" 1>
  <IProbe Ib1 1 370 520 -26 16 0 0>
  <VProbe Vce1 1 670 520 -16 28 0 3>
  <_BJT T1 1 820 320 8 -26 1 0 "pnp" 1 "1e-16" 1 "1" 1 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <R R4 1 720 320 -26 -65 0 2 "330 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <VProbe Vce2 1 960 310 -16 28 0 3>
  <L L1 1 820 720 10 -26 0 1 "0.64 mH" 1 "" 0>
  <R R2 1 820 650 15 -26 0 1 "2.5 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Im1 1 820 530 4 -26 1 3>
  <GND *4 5 820 800 0 0 0 0>
  <VProbe Vm 1 1000 670 -16 28 0 3>
  <Eqn Eqn1 1 760 100 -41 18 0 0 "vcb2=Vc2.Vt-Vb2.Vt" 1 "yes" 0>
  <R R1 1 540 270 15 -26 0 1 "33 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R3 1 460 520 -26 -65 0 2 "56 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
</Components>
<Wires>
  <170 620 170 660 "" 0 0 0 "">
  <170 520 170 560 "" 0 0 0 "">
  <90 660 170 660 "" 0 0 0 "">
  <90 590 90 660 "" 0 0 0 "">
  <90 520 170 520 "" 0 0 0 "">
  <90 520 90 570 "" 0 0 0 "">
  <540 380 540 400 "" 0 0 0 "">
  <540 300 540 320 "" 0 0 0 "">
  <540 220 540 240 "" 0 0 0 "">
  <540 120 540 140 "" 0 0 0 "">
  <540 200 540 220 "" 0 0 0 "">
  <540 550 540 570 "" 0 0 0 "">
  <540 400 540 480 "" 0 0 0 "">
  <540 400 600 400 "" 0 0 0 "">
  <170 520 320 520 "" 0 0 0 "">
  <170 660 320 660 "" 0 0 0 "">
  <320 620 320 660 "" 0 0 0 "">
  <320 520 340 520 "" 0 0 0 "">
  <320 520 320 560 "" 0 0 0 "">
  <320 660 320 700 "" 0 0 0 "">
  <490 520 510 520 "" 0 0 0 "">
  <400 520 430 520 "" 0 0 0 "">
  <540 480 540 490 "" 0 0 0 "">
  <540 570 540 700 "" 0 0 0 "">
  <540 570 650 570 "" 0 0 0 "">
  <650 530 650 570 "" 0 0 0 "">
  <540 480 650 480 "" 0 0 0 "">
  <650 480 650 510 "" 0 0 0 "">
  <820 680 820 690 "" 0 0 0 "">
  <540 220 820 220 "" 0 0 0 "">
  <660 320 660 400 "" 0 0 0 "">
  <750 320 790 320 "Vb2" 740 330 32 "">
  <660 320 690 320 "" 0 0 0 "">
  <820 220 820 260 "" 0 0 0 "">
  <820 260 820 290 "" 0 0 0 "">
  <820 260 920 260 "" 0 0 0 "">
  <920 260 920 300 "" 0 0 0 "">
  <920 300 940 300 "" 0 0 0 "">
  <920 320 940 320 "" 0 0 0 "">
  <920 320 920 380 "" 0 0 0 "">
  <820 350 820 380 "Vc2" 761 370 12 "">
  <820 380 920 380 "" 0 0 0 "">
  <820 750 820 780 "" 0 0 0 "">
  <820 380 820 500 "" 0 0 0 "">
  <820 780 820 800 "" 0 0 0 "">
  <820 780 980 780 "" 0 0 0 "">
  <980 680 980 780 "" 0 0 0 "">
  <820 560 820 580 "" 0 0 0 "">
  <980 580 980 660 "" 0 0 0 "">
  <820 580 820 620 "" 0 0 0 "">
  <820 580 980 580 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Rectangle 760 600 190 160 #000000 0 1 #c0c0c0 1 0>
</Paintings>
