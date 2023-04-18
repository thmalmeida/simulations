## Copyright (C) 2019 thmalmeida
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
## @deftypefn {} {@var{retval} =} RC (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: thmalmeida <thmalmeida@horse>
## Created: 2019-11-12

t = 0:0.001:10;

C = 1000*10^-6;   # [uF]
R = 1*10^3;
V0 = 10;
vc = V0*e^(-t./(R*C));

plot(vc, t)
