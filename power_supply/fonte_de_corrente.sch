<Qucs Schematic >
<Properties>
  <View=0,-180,1547,800,1,0,0>
  <Grid=10,10,1>
  <DataSet=fonte_de_corrente.dat>
  <DataDisplay=fonte_de_corrente.dpl>
  <OpenDisplay=1>
  <Script=fonte_de_corrente.m>
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
  <_BJT T1 1 310 150 8 -26 1 0 "pnp" 1 "1e-16" 1 "1" 1 "1" 0 "0" 0 "0" 0 "0" 1 "0" 0 "0" 0 "1.5" 0 "0" 0 "2" 0 "100" 1 "1" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0" 0 "0.75" 0 "0.33" 0 "0" 0 "0.75" 0 "0.33" 0 "1.0" 0 "0" 0 "0.75" 0 "0" 0 "0.5" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "0.0" 0 "26.85" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "1.0" 0 "1.0" 0 "0.0" 0 "0.0" 0 "3.0" 0 "1.11" 0 "26.85" 0 "1.0" 0>
  <R RB 1 220 150 -26 -61 0 2 "1 kOhm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <Vdc V1 1 310 30 -74 -26 0 3 "3.3 V" 1>
  <GND * 5 310 -20 0 0 0 2>
  <GND * 5 110 260 0 0 0 0>
  <Vdc V2 1 110 210 -74 -26 1 1 "Vb" 1>
  <.DC DC1 1 460 10 0 46 0 0 "26.85" 0 "0.001" 0 "1 pA" 0 "1 uV" 0 "no" 0 "150" 0 "no" 0 "none" 0 "CroutLU" 0>
  <.SW SW1 1 460 120 0 77 0 0 "DC1" 1 "lin" 1 "Vb" 1 "3.3" 1 "0.1" 1 "201" 1>
  <R Carga 1 310 310 15 -26 0 1 "5 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <IProbe I1 1 310 390 -33 -26 0 3>
  <R Rs 1 310 470 15 -26 0 1 "10 Ohm" 1 "26.85" 0 "0.0" 0 "0.0" 0 "26.85" 0 "US" 0>
  <GND * 5 310 520 0 0 0 0>
</Components>
<Wires>
  <250 150 280 150 "" 0 0 0 "">
  <110 150 110 180 "" 0 0 0 "">
  <110 150 190 150 "" 0 0 0 "">
  <110 240 110 260 "" 0 0 0 "">
  <310 60 310 120 "" 0 0 0 "">
  <310 -20 310 0 "" 0 0 0 "">
  <310 180 310 280 "" 0 0 0 "">
  <310 340 310 360 "" 0 0 0 "">
  <310 420 310 440 "V_ADC" 370 400 20 "">
  <310 500 310 520 "" 0 0 0 "">
</Wires>
<Diagrams>
  <Rect 691 236 828 267 3 #c0c0c0 1 00 1 0 0.2 1 1 -0.1 0.5 1.1 1 -0.1 0.5 1.1 315 0 225 "" "" "" "">
	<"V_ADC.V" #0000ff 0 3 0 0 0>
  </Rect>
  <Rect 691 576 828 267 3 #c0c0c0 1 00 1 0.1 0.2 3.3 1 -0.208053 0.5 2.28859 1 -1 0.5 1 315 0 225 "" "" "" "">
	<"I1.I" #ff0000 0 3 0 0 0>
  </Rect>
</Diagrams>
<Paintings>
</Paintings>