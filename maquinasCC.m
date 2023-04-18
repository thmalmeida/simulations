## Copyright (C) 2020 thmalmeida
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

## Author: thmalmeida <thmalmeida@horse>
## Created: 2020-07-08

##Va  = Ea + Ra*Ia motor
##Tm  = Ka*Phi*Ia;
##Ea  = Ka*Phi*wm;
##Va  = Ea - Ra*Ia gerador
##P = Ea*Ia = Tm*wm

Ka = 100;           % Admensional constant;
Ph = 40;            % Flux in webber [Wb]
Va = 480;           % Armature terminal voltage [V]
n  = 1000;          % Velocity [rpm];
Vf = Va;            % Field voltage [V];
Pele = 10000;       % Electrical power input [W]
Ra = 3.5;           % Armature resistance [Ohms];
Pmec = 10*735.5;    % Eletromagnetic power (on shaft) [W]
wm = 1000*2*pi/60;  % Velocity [rad/s]

T = Pmec/wm;
EaIa = T*wm;
Ea = Va - Ra*Ia
u = Pmec/Pele;

