function [mean_ray_2side, variance_ray_2side] = compute_stats(eta, mu, L, M, N)
    % Mean calculation
    p = power(2, (2 * mu) + 1 / 2) * gamma((2 * mu) + 1 / 2);
    q = power((2 + (eta.^(-1)) + eta), (mu + 1 / 2)) * sqrt(mu) * gamma(2 * mu);
    mean_ray_1side = (p / q) * hypergeom([mu + 1 / 4 + 1 / 2, mu + 1 / 4], mu + 1 / 2, power(((1 - eta) / (1 + eta)), 2));
    mean_ray_2side = mean_ray_1side^2 * N * L * M;

    % Variance calculation
    r = power(2, (2 * mu) + 1) * gamma((2 * mu) + 1);
    s = power((2 + (eta.^(-1)) + eta), (mu + 1)) * mu * gamma(2 * mu);
    z = (r / s) * hypergeom([mu + 2 / 4 + 1 / 2, mu + 2 / 4], mu + 1 / 2, power(((1 - eta) / (1 + eta)), 2));
    variance_ray_1side = z - mean_ray_1side^2;

    % Combined variance
    variance_ray_2side = N * ((M * L) * variance_ray_1side^2 + M * L * variance_ray_1side * (mean_ray_1side^2) + ((M * L)^2) * variance_ray_1side * (mean_ray_1side^2));
end
