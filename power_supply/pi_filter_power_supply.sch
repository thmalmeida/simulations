<Qucs Schematic 0.0.20>
<Properties>
  <View=0,-620,1322,341,1,0,0>
  <Grid=10,10,1>
  <DataSet=pi_filter_power_supply.dat>
  <DataDisplay=pi_filter_power_supply.dpl>
  <OpenDisplay=1>
  <Script=pi_filter_power_supply.m>
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
  <L L1 1 580 -360 -26 10 0 0 "3.18 mH" 1 "" 0>
  <Eqn Eqn1 1 740 -70 -28 15 0 0 "S21_dB=dB(S[2,1])" 1 "S11_dB=dB(S[1,1])" 1 "yes" 0>
  <C C2 1 680 -280 17 -26 0 1 "15.9 uF" 1 "" 0 "neutral" 0>
  <GND *3 5 680 -250 0 0 0 0>
  <Pac P2 1 840 -280 18 -26 0 1 "2" 1 "10 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
  <GND *4 5 840 -250 0 0 0 0>
  <C C1 1 500 -280 17 -26 0 1 "15.9 uF" 1 "" 0 "neutral" 0>
  <GND *2 5 500 -250 0 0 0 0>
  <GND *1 5 340 -250 0 0 0 0>
  <.SP SP1 1 280 -190 0 81 0 0 "log" 1 "100 Hz" 1 "10 kHz" 1 "201" 1 "no" 0 "1" 0 "2" 0 "no" 0 "no" 0>
  <Pac P1 1 340 -280 18 -26 0 1 "1" 1 "10 Ohm" 1 "0 dBm" 0 "1 GHz" 0 "26.85" 0>
</Components>
<Wires>
  <680 -360 680 -310 "" 0 0 0 "">
  <610 -360 680 -360 "" 0 0 0 "">
  <680 -360 840 -360 "" 0 0 0 "">
  <840 -360 840 -310 "" 0 0 0 "">
  <500 -360 500 -310 "" 0 0 0 "">
  <500 -360 550 -360 "" 0 0 0 "">
  <340 -360 500 -360 "" 0 0 0 "">
  <340 -360 340 -310 "" 0 0 0 "">
</Wires>
<Diagrams>
</Diagrams>
<Paintings>
  <Text 830 -190 12 #000000 0 "Butterworth low-pass filter \n 1 kHz cutoff, pi-type, \n impedance matching 10 Ohm">
</Paintings>
