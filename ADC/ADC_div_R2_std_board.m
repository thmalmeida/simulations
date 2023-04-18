## Copyright (C) 2021 Thiago
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} ADC_Voltage_resistors (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: Thiago <thmalmeida@horse>
## Created: 2021-09-16
clc

##     ___ V12 = 220 V rms       ___ Vmax = 1.1 V
##      |                         |
##      |                         |
##     | |
##     | | R1
##     | |
##      |___ V2
##      |
##     | |
##     | | R2
##     | |
##      |  
##     _|____ Vref

R1 = 180.0*10^3;
V12 = 3.28;
V2 = 1.31;

R2 = V2*R1/(V12-V2);

fprintf('R1 = %.1f Ohms\n',R1);
fprintf('R2 = %.1f Ohms\n',R2);
fprintf('V2 = %.2f V\n',(R2)/(R1+R2)*V12);

% Using defined Resistors values
R1 = 180.0*10^3;
R2 = 120.0*10^3;

V2 = R2*V12/(R1+R2);

fprintf('\nUsing defined R1 = %.1f Ohms and R2 = %.1f\n',R1,R2);
fprintf('V2 = %.2f V\n',(R2)/(R1+R2)*V12);


% Vac divisor for Vrms = 220 V
R3 = 680*10^3;
Vrms = 220;
Vp = Vrms*sqrt(2);
Vpp = 2*Vp;
V4 = 2450/2*10^-3;
R4 = V4*R3/(Vp-V4);

fprintf('\n-- Vac divisor --\n');
fprintf('R3 = %.2f Ohms\n',R3);
fprintf('Vrms = %.2f V, Vp = %.2f V, Vpp = %.2f\n',Vrms, Vp, Vpp);
fprintf('R4 = %.2f Ohms\n',R4);

fprintf('V4 = %.2f V\n',Vpp*R4/(R3+R4));


