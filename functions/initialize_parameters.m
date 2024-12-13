function [SNR_range, snr_lin, dsr1, dru1, px, bitstotal, L, M, eta, mu, N] = initialize_parameters()
    clc; clear;
    
    % Basic parameters
    bitstotal = 1000;         % Number of transmitted bits
    SNR_range = 40:3:70;      % SNR range in dB
    snr_lin = 10.^(SNR_range/10); % Convert SNR to linear scale
    
    % System setup
    L = 2; M = 2;             % IRS configurations
    eta = 1; mu = 0.5;        % η-μ channel parameters
    px = 3;                   % Path loss exponent
    
    % Geometric setup
    d = 100; d1 = 50; h1 = 5; ht = 10; hr = 2;
    dsr1 = sqrt((d - d1).^2 + (h1 - ht).^2); % Source-to-Relay distance
    dru1 = sqrt(d1.^2 + (h1 - hr).^2);       % Relay-to-User distance
    
    % Reflecting elements
    N = [16]; % Number of IRS elements (loop through this as needed)
end
