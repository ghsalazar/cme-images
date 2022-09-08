input boxes;

prologues := 3;
%outputformat := "svg";
outputtemplate := "%j-%c.%o";

beginfig(1);

% Loop
boxit.dsp(btex Procesador digital etex);
boxit.dac(btex Modulador por conmutaci\'on etex);
boxit.potencia(btex Etapa de potencia etex);
boxit.motor(btex Motor etex);
boxit.sensor(btex Sensor etex);
boxit.instr(btex Acondicionador de se\~nal etex);
boxit.adc(btex ADC etex);

% Auxiliar systems
boxit.hmi(btex HMI etex);
boxit.timer(btex Temporizador etex);

% Horizontal spacing
dsp.w - hmi.e = dac.w -dsp.e = potencia.w - dac.e = (7mm, 0);
motor.w - potencia.e = (14mm, 0);

% Vertical spacing
dac.c - adc.c = (0,20mm);
potencia.c - instr.c = (0, 20mm);
motor.c - sensor.c = (0, 20mm);
dsp.c - z1 = (0, 20mm);

timer.c - dsp.c = (0, 20mm);

drawboxed(dsp,dac,potencia,motor,sensor,instr,adc,hmi,timer);

drawarrow hmi.e -- dsp.w;
drawarrow dsp.e -- dac.w;
drawarrow dac.e -- potencia.w;
drawarrow potencia.e -- motor.w;

drawarrow motor.s -- sensor.n;

drawarrow sensor.w -- instr.e;
drawarrow instr.w -- adc.e;
drawarrow adc.w -- z1 -- dsp.s;

drawarrow timer.s -- dsp.n;

endfig;

end;
