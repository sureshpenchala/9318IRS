clc
clear all
N=[1	25	50	75	100	125	150	175	200	225	250	275	300	325	350	375	400	425	450	475	500
];

%%%%%SNR=10dB, N=64,eta=1, mu=0.5, Zt=Zr=2
d10_sim=[6.7192	15.5126	17.5293	18.7052	19.5352	20.1875	20.7113	21.1618	21.5454	21.8848	22.1911	22.4652	22.7153	22.9446	23.1615	23.3622	23.5459	23.7221	23.888	24.0434	24.1908
];
d10_th=[6.7192	15.57	17.5597	18.7262	19.5545	20.1973	20.7227	21.167	21.5519	21.8915	22.1953	22.4701	22.721	22.9518	23.1655	23.3645	23.5506	23.7255	23.8903	24.0463	24.1942
];
%%%%%SNR=10dB, N=256,eta=1, mu=0.5, Zt=Zr=2
d50_sim=[4.3416	13.0765	15.0947	16.2712	17.103	17.7464	18.2745	18.7206	19.1103	19.4484	19.7538	20.0286	20.2788	20.5121	20.7256	20.9217	21.1118	21.2853	21.4507	21.6072	21.7545
];
d50_th=[4.3416	13.1333	15.1229	16.2894	17.1177	17.7605	18.2859	18.7302	19.1151	19.4547	19.7585	20.0333	20.2842	20.515	20.7287	20.9277	21.1138	21.2887	21.4535	21.6095	21.7574
];


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
   % plot(N,d10_sim,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
    plot(N,d10_th,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
    % plot(N,d50_sim,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
    plot(N,d50_th,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
   % semilogy(d1,N240_sim506,'b*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
 % semilogy(d1,N240_th504,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
 %  semilogy(d1,N240_th504,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
  % semilogy(d1,N240_th506,'k-','LineWidth',lw,'MarkerSize',msz);hold on; grid on

xlabel( ' Number of reflecting elements [N]')
ylabel( ' Ergodic Capacity(EC)')
   % axis([0 500 5 25])
% axis([0 100 10 25]);
