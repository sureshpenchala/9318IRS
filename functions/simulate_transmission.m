function [err] = simulate_transmission(bitstotal, SNRdB, C)
    err = 0; % Initialize error counter
    for mc = 1:bitstotal
        % Generate transmitted symbol
        x = 2 * randi([0, 1]) - 1; % BPSK modulation
        n = (randn + 1j * randn) / sqrt(2); % AWGN noise
        
        % Received signal
        y1 = sqrt(db2pow(SNRdB)) * C * x + n;

        % Detection
        [~, indm] = min([abs(y1 + C).^2; abs(y1 - C).^2]);
        cc = isequal((2 * indm - 3), x);
        
        if cc < 1
            err = err + 1; % Count error if detected bit differs
        end
    end
end
