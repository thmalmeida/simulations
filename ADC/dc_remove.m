% Simple first order filter
% thmalmeida on 2023-04-25

% Using the equation
% y[n]=0.8y[n−1]+0.2x[n]

function ret = dc_remove(v_in)

	n			= length(v_in);

	dc_value 	= mean(v_in);
	ret 	  	= v_in - dc_value;

endfunction
