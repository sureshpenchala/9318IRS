clc
clear all
d1=[45 40 35 30 25 20 15 10 5 0 ];

%%%%%SNR=50dB, N=240,eta=1, mu=0.5, L=2
N240_sim502=[0.0054	0.0042	0.0026	0.0012	3.03E-04	3.38E-05	9.24E-07	3.71E-09	7.50E-12	2.29E-12
];
N240_th502=[0.0054	0.0042	0.0026	0.0012	3.03E-04	3.38E-05	9.24E-07	3.71E-09	7.50E-12	2.29E-12];
%%%%%SNR=50dB, N=240,eta=1, mu=0.5, L=4
N240_sim504=[2.34E-07	1.01E-07	1.87E-08	1.06E-09	9.75E-12	4.94E-15	2.76E-20	6.09E-28	5.72E-36	1.96E-37
];
N240_th504=[2.34E-07	1.01E-07	1.87E-08	1.06E-09	9.75E-12	4.94E-15	2.76E-20	6.09E-28	5.72E-36	1.96E-37
];
% %%%%%SNR=50dB, N=240,eta=1, mu=0.5, L=6
% N240_sim506=[6.00E-05	0	1.00E-05	0.00E+00	0.00E+00	0	0	0	0	0
% ];
% N240_th506=[3.16E-05	1.47E-05	3.30E-06	2.34E-07	2.01E-09	2.06E-13	5.34E-22	1.29E-42	6.46E-87	1.41E-118
% ];
width = 5;     % Width in inches
height = 4;    % Height in inches
alw = 1.2;    % AxesLineWidth
fsz = 12;      % Fontsize
lw = 1.5;      % LineWidth
msz = 6;       % MarkerSize

% Plot BLERv
% figure
pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(0,'defaultAxesFontName','Times New Roman');

   % semilogy(d1,N240_sim502,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
    semilogy(d1,N240_th502,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
   % semilogy(d1,N240_sim506,'b*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
 % semilogy(d1,N240_th504,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
 %  semilogy(d1,N240_th504,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
  % semilogy(d1,N240_th506,'k-','LineWidth',lw,'MarkerSize',msz);hold on; grid on

xlabel( 'Distance (m)')
ylabel( 'Bit Error Rate (BER)')
  axis([0 45 0.99*1e-30 1e-0])
% axis([0 100 10 25]);
