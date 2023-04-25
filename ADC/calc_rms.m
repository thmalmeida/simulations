% Function to calculate RMS value of a vector
% thmalmeida at 20230424

function ret = calc_rms(v)
    ret = sqrt(sum(v)/length(v));
endfunction