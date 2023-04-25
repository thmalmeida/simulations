% Simple first order filter
% thmalmeida on 2023-04-25

% Using the equation
% y[n]=0.8y[n−1]+0.2x[n]

function ret = filter(v_in)

	n			= length(v_in)
	v_out		= zeros(1, n);
	v_out(1)  	= v_in(1);

	for i=2:1:n
		v_out(i) = 0.8*v_out(i-1) + 0.2*v_in(i);
	end

	ret = v_out;

endfunction
