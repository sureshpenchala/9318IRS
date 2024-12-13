function [h1, g1, phi, C] = generate_channel(N, dsr1, dru1, L, M, eta, mu, px)
    % Path loss scaling
    hpx1 = dsr1.^(-px / 2); % Source-to-Relay path loss
    gpx1 = dru1.^(-px / 2); % Relay-to-User path loss

    % η-μ channel realizations
    h1 = hpx1 .* sum(eta_mu_channel(eta, mu, L, N));
    g1 = gpx1 .* transpose(sum(eta_mu_channel(eta, mu, M, N)));
    
    % Phase adjustment
    phi = exp(1j * angle(h1 .* transpose(g1)))';
    
    % Composite channel matrix
    C1 = (h1 * diag(phi) * g1) * sqrt(L * M);
    C = C1; % Can modify this for more complex setups
end
