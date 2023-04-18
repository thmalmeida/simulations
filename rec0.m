function [R, X] = rec0(Z, theta)
  R = Z*cosd(theta);
  X = Z*sind(theta);
endfunction