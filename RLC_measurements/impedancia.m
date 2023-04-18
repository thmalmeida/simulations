## Copyright (C) 2020 thmalmeida
## 
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see <http://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} impedancia (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: thmalmeida <thmalmeida@horse>
## Created: 2020-03-25

#function [retval] = impedancia (input1, input2)

#endfunction

w = 2000;

C1 = 25*10^-6;
L1 = 5*10^-3;
R1 = 20;
R2 = 5;

XC1 = 1/(w*C1);
XL1 = w*L1;


Xc = -52;
R = 39;
Xl = 26
Z1 = R + j*Xl;
Z2 = j*Xc;

Zeq = Z1*Z2/(Z1+Z2)