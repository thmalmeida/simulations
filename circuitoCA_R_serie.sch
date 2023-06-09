<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-980,1713,425,1,0,360>
  <Grid=10,10,1>
  <DataSet=circuitoCA_R_serie.dat>
  <DataDisplay=circuitoCA_R_serie.dpl>
  <OpenDisplay=1>
  <Script=circuitoCA_R_serie.m>
  <RunScript=0>
  <showFrame=0>
  <FrameText0=Title>
  <FrameText1=Drawn By:>
  <FrameText2=Date:>
  <FrameText3=Revision:>
</Properties>
<Symbol>
  <.ID -20 -16 SUB>
  <Line -20 20 40 0 #000080 2 1>
  <Line 20 20 0 -40 #000080 2 1>
  <Line -20 -20 40 0 #000080 2 1>
  <Line -20 20 0 -40 #000080 2 1>
</Symbol>
<Components>
  <GND * 5 340 380 0 0 0 0>
  <IProbe I1 1 450 200 -26 16 0 0>
  <VProbe VR 1 760 250 -16 28 0 3>
  <R R1 1 570 250 15 -26 0 1 "1 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <R R2 1 570 330 15 -26 0 1 "2 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND *2 5 340 -720 0 0 0 0>
  <VProbe VRC 1 760 -850 -16 28 0 3>
  <Vac Vs2 1 340 -810 -86 -26 1 1 "180 V" 1 "60 Hz" 0 "" 0 "0" 0>
  <IProbe I_RC 1 450 -900 -26 16 0 0>
  <R R5 1 570 -850 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <C C1 1 570 -770 17 -26 0 1 "10 uF" 1 "" 0 "neutral" 0>
  <Vac Vs 1 340 290 -86 -26 1 1 "180 V" 1 "60 Hz" 0 "0" 0 "" 0>
  <.TR TR1 1 1150 -370 0 89 0 0 "lin" 1 "33.33 ms" 1 "66.67 ms" 1 "1001" 0 "Trapezoidal" 0 "2" 0 "1 ns" 0 "1e-16" 0 "150" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "26.85" 0 "1e-3" 0 "1e-6" 0 "1" 0 "CroutLU" 0 "no" 0 "yes" 0 "0" 0>
  <GND *1 5 340 -310 0 0 0 0>
  <VProbe VR4 1 760 -440 -16 28 0 3>
  <R R4 1 570 -440 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vac Vs1 1 340 -400 -86 -26 1 1 "311 V" 1 "60 Hz" 0 "" 0 "0" 0>
  <L L1 1 570 -360 10 -26 1 3 "100 mH" 1 "0" 0>
  <IProbe I_RL 1 450 -500 -26 16 0 0>
  <VProbe VL1 1 740 -340 -16 28 0 3>
  <VProbe V_s1 1 200 -410 -31 28 1 3>
</Components>
<Wires>
  <340 320 340 380 "" 0 0 0 "">
  <340 200 340 260 "" 0 0 0 "">
  <340 200 420 200 "" 0 0 0 "">
  <570 200 570 220 "" 0 0 0 "">
  <340 380 570 380 "" 0 0 0 "">
  <570 280 570 300 "" 0 0 0 "">
  <570 360 570 380 "" 0 0 0 "">
  <480 200 570 200 "" 0 0 0 "">
  <570 200 720 200 "" 0 0 0 "">
  <720 200 720 240 "" 0 0 0 "">
  <720 240 740 240 "" 0 0 0 "">
  <720 260 740 260 "" 0 0 0 "">
  <720 260 720 380 "" 0 0 0 "">
  <570 380 720 380 "" 0 0 0 "">
  <340 -780 340 -720 "" 0 0 0 "">
  <340 -900 340 -840 "" 0 0 0 "">
  <340 -900 420 -900 "" 0 0 0 "">
  <570 -900 570 -880 "" 0 0 0 "">
  <480 -900 570 -900 "" 0 0 0 "">
  <570 -900 720 -900 "" 0 0 0 "">
  <720 -900 720 -860 "" 0 0 0 "">
  <720 -860 740 -860 "" 0 0 0 "">
  <720 -840 740 -840 "" 0 0 0 "">
  <720 -840 720 -720 "" 0 0 0 "">
  <570 -820 570 -800 "" 0 0 0 "">
  <340 -720 570 -720 "" 0 0 0 "">
  <570 -720 720 -720 "" 0 0 0 "">
  <570 -740 570 -720 "" 0 0 0 "">
  <340 -370 340 -310 "" 0 0 0 "">
  <570 -410 570 -400 "" 0 0 0 "">
  <570 -400 720 -400 "" 0 0 0 "">
  <720 -430 720 -400 "" 0 0 0 "">
  <720 -430 740 -430 "" 0 0 0 "">
  <340 -310 570 -310 "" 0 0 0 "">
  <570 -330 570 -310 "" 0 0 0 "">
  <570 -400 570 -390 "" 0 0 0 "">
  <340 -500 340 -430 "" 0 0 0 "">
  <720 -450 740 -450 "" 0 0 0 "">
  <720 -500 720 -450 "" 0 0 0 "">
  <570 -500 570 -470 "" 0 0 0 "">
  <480 -500 570 -500 "" 0 0 0 "">
  <570 -500 720 -500 "" 0 0 0 "">
  <340 -500 420 -500 "" 0 0 0 "">
  <570 -310 710 -310 "" 0 0 0 "">
  <710 -330 710 -310 "" 0 0 0 "">
  <710 -330 720 -330 "" 0 0 0 "">
  <720 -400 720 -350 "" 0 0 0 "">
  <220 -420 230 -420 "" 0 0 0 "">
  <230 -500 230 -420 "" 0 0 0 "">
  <230 -500 340 -500 "" 0 0 0 "">
  <220 -400 230 -400 "" 0 0 0 "">
  <230 -400 230 -310 "" 0 0 0 "">
  <230 -310 340 -310 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 170 -25 731 253 3 #c0c0c0 1 00 1 0.03333 0.002 0.06667 1 -361.614 50 360.402 1 -10 2 10 315 0 225 "" "" "" "">
	<"I_RL.It" #ff0000 0 3 0 0 1>
	<"VL1.Vt" #0000ff 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
  <Text 740 200 12 #000000 0 "Voltímetro">
  <Text 390 140 12 #000000 0 "Amperímetro">
  <Text 740 -900 12 #000000 0 "Voltímetro">
  <Text 390 -960 12 #000000 0 "Amperímetro">
  <Text 740 -490 12 #000000 0 "Voltímetro(osciloscópio)">
  <Text 390 -560 12 #000000 0 "Amperímetro">
</Paintings>
