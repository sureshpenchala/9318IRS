function [Pb] = compute_analytical_ber(SNR_range, snr_lin, dsr1, dru1, mean_ray_2side, variance_ray_2side, px)
    count = 1;
    Pb = zeros(1, length(SNR_range)); % Preallocate BER vector

    for SNR = 1:length(SNR_range)
        % Integral for BER computation
        fun2 = @(t) (1 / pi) .* ((1 ./ (1 + (2 * variance_ray_2side * snr_lin(SNR)) ...
            .* 1 ./ ((dsr1.^px) .* (dru1.^px) .* ((sin(t)).^2)))).^(0.5)) ...
            .* exp(-(((mean_ray_2side).^2) * snr_lin(SNR) ...
            ./ (((dsr1.^px) .* (dru1.^px)) .* ((sin(t)).^2))) ...
            ./ (1 + (2 * variance_ray_2side * snr_lin(SNR)) ...
            .* 1 ./ (((dsr1.^px) .* (dru1.^px)) .* ((sin(t)).^2))));
        
        Pb(count) = integral(fun2, 0, pi / 2);
        count = count + 1;
    end
end
