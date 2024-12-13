% Initialize parameters
[SNR_range, snr_lin, dsr1, dru1, px, bitstotal, L, M, eta, mu, N] = initialize_parameters();

% Statistical properties
[mean_ray_2side, variance_ray_2side] = compute_stats(eta, mu, L, M, N);

% Simulation
errSNR = zeros(1, length(SNR_range));
ccc = 1;
for SNRdB = SNR_range
    [h1, g1, phi, C] = generate_channel(N, dsr1, dru1, L, M, eta, mu, px);
    errSNR(ccc) = simulate_transmission(bitstotal, SNRdB, C) / bitstotal;
    ccc = ccc + 1;
end

% Analytical BER
Pb = compute_analytical_ber(SNR_range, snr_lin, dsr1, dru1, mean_ray_2side, variance_ray_2side, px);

% Plot results
plot_results(SNR_range, errSNR, Pb);
