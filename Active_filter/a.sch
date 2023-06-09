<Qucs Schematic 0.0.17>
<Properties>
  <View=-80,-589,1067,415,1,135,77>
  <Grid=10,10,1>
  <DataSet=a.dat>
  <DataDisplay=a.dpl>
  <OpenDisplay=1>
  <Script=a.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=T�tulo>
  <FrameText1=Desenhado por:>
  <FrameText2=Data:>
  <FrameText3=Revis�o:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 1 780 370 0 0 0 0>
  <GND * 1 940 370 0 0 0 0>
  <_BJT T1 1 940 260 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "50" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <_BJT T2 1 400 250 8 -26 0 0 "npn" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "50" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <R B1 1 280 170 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R B2 1 280 330 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R RE 1 400 330 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R RC 1 400 170 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V4 1 520 240 -55 -26 1 1 "3 V" 1>
  <VProbe Pr2 1 830 -220 -16 28 0 3>
  <.DC DC1 1 430 -560 0 73 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <Vdc V6 1 240 -390 -62 -26 1 1 "20 V" 1>
  <GND * 1 240 -420 0 0 0 2>
  <R Rc 1 240 -330 15 -26 0 1 "1 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <_BJT T4 1 240 -270 8 -26 0 0 "pnp" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <R Re 1 240 -210 15 -26 0 1 "2 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 1 240 -180 0 0 0 0>
  <R Rb 1 160 -270 -26 15 1 2 "120 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <_BJT T3 1 620 -220 8 -26 0 0 "pnp" 0 "1e-16" 0 "1" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 0 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <R Rb2 1 540 -220 -26 15 1 2 "120 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Pr1 1 620 -300 16 -26 0 1>
  <GND * 1 620 -70 0 0 0 0>
  <Vdc V5 1 620 -480 -62 -26 1 1 "20 V" 1>
  <GND * 1 620 -510 0 0 0 2>
  <R Rc2 1 620 -380 15 -26 0 1 "1 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R Re2 1 620 -140 15 -26 0 1 "2 k Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Pr3 1 500 -340 16 -26 0 1>
  <GND * 1 940 -80 0 0 0 2>
  <Vdc V2 1 940 -30 18 -26 1 3 "10 V" 1>
  <R R1 1 940 50 15 -26 0 1 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe Pr4 1 940 150 -36 -26 0 3>
  <R R2 1 830 260 -26 -45 0 2 "100 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V1 1 780 320 -55 -26 1 1 "1 V" 1>
</Components>
<Wires>
  <780 260 800 260 "" 0 0 0 "">
  <780 260 780 290 "" 0 0 0 "">
  <780 350 780 370 "" 0 0 0 "">
  <860 260 910 260 "" 0 0 0 "">
  <940 290 940 370 "" 0 0 0 "">
  <400 360 400 380 "" 0 0 0 "">
  <400 280 400 300 "" 0 0 0 "">
  <400 200 400 220 "" 0 0 0 "">
  <400 120 400 140 "" 0 0 0 "">
  <280 380 400 380 "" 0 0 0 "">
  <280 120 400 120 "" 0 0 0 "">
  <280 250 370 250 "" 0 0 0 "">
  <280 200 280 250 "" 0 0 0 "">
  <280 120 280 140 "" 0 0 0 "">
  <280 250 280 300 "" 0 0 0 "">
  <280 360 280 380 "" 0 0 0 "">
  <400 380 520 380 "" 0 0 0 "">
  <520 270 520 380 "" 0 0 0 "">
  <400 120 520 120 "" 0 0 0 "">
  <520 120 520 210 "" 0 0 0 "">
  <800 -230 810 -230 "" 0 0 0 "">
  <800 -210 810 -210 "" 0 0 0 "">
  <120 -360 240 -360 "" 0 0 0 "">
  <120 -360 120 -270 "" 0 0 0 "">
  <190 -270 210 -270 "" 0 0 0 "">
  <120 -270 130 -270 "" 0 0 0 "">
  <800 -210 800 -180 "" 0 0 0 "">
  <620 -180 800 -180 "" 0 0 0 "">
  <800 -260 800 -230 "" 0 0 0 "">
  <620 -260 800 -260 "" 0 0 0 "">
  <570 -220 590 -220 "" 0 0 0 "">
  <500 -220 510 -220 "" 0 0 0 "">
  <500 -430 500 -370 "" 0 0 0 "">
  <620 -350 620 -330 "" 0 0 0 "">
  <620 -430 620 -410 "" 0 0 0 "">
  <500 -430 620 -430 "" 0 0 0 "">
  <620 -270 620 -260 "" 0 0 0 "">
  <620 -260 620 -250 "" 0 0 0 "">
  <620 -190 620 -180 "" 0 0 0 "">
  <620 -180 620 -170 "" 0 0 0 "">
  <620 -110 620 -70 "" 0 0 0 "">
  <620 -450 620 -430 "" 0 0 0 "">
  <500 -310 500 -220 "" 0 0 0 "">
  <940 80 940 120 "" 0 0 0 "">
  <940 -80 940 -60 "" 0 0 0 "">
  <940 0 940 20 "" 0 0 0 "">
  <940 180 940 230 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 970 280 12 #000000 0 "hfe = 50">
  <Text 730 250 12 #000000 0 "3 V">
  <Text 780 150 12 #000000 0 "Vce(sat) = 0,2 V">
  <Text 560 180 12 #000000 0 "Dados:\nVbe = 0,7 V\nhfe = 110\nVcc = 12 V\nIc = 10 mA\nVce = Vcc/2">
</Paintings>
