adc_value = 4095;

n_bits = 12;
max = 10000;
min = 4000;
pwm_value = (max-min)*adc_value/(2^n_bits-1)+min
