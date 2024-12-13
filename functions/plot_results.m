function plot_results(SNR_range, errSNR, Pb)
    % Plot configuration
    width = 5; height = 4; alw = 1.2; fsz = 12; lw = 1.5; msz = 4;
    
    % Adjust figure size
    pos = get(gcf, 'Position');
    set(gcf, 'Position', [pos(1), pos(2), width * 100, height * 100]);
    set(0, 'defaultAxesFontName', 'Times New Roman');

    % Plot BER curves
    semilogy(SNR_range, errSNR, 'o', 'LineWidth', lw, 'MarkerSize', msz);
    hold on;
    semilogy(SNR_range, Pb, '-', 'LineWidth', lw, 'MarkerSize', msz);
    grid on;
    
    % Labels and axis settings
    xlabel('E_{s}/N_{0}  [dB]', 'FontSize', fsz);
    ylabel('Bit Error Rate (BER)', 'FontSize', fsz);
    axis([SNR_range(1), 70, 0.99 * 1e-5, 1e-0]);
    ax = gca;
    ax.FontSize = fsz;
    ax.LineWidth = alw;
end
