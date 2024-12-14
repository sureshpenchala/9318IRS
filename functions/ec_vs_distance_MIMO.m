clc
clear all
d1=[0	4	8	12	16	20	24	28	32	36	40	44	48	52	56	60	64	68	72	76	80	84	88	92	96	100
 ];

%%%%%SNR=10dB, N=64,eta=1, mu=0.5, Zt=Zr=2
N64_sim=[18.7989	18.7808	18.4679	18.0153	17.5562	17.1347	16.7754	16.4735	16.2347	16.048	15.9162	15.8413	15.8035	15.8253	15.8949	16.0109	16.1987	16.4484	16.77	17.1831	17.7174	18.4061	19.3134	20.5171	22.0013	22.9005
];
N64_th=[18.8209	18.8013	18.4858	18.0388	17.5776	17.1565	16.7944	16.4945	16.2545	16.071	15.9404	15.8605	15.8299	15.8484	15.9175	16.0399	16.2205	16.4669	16.79	17.2061	17.74	18.4293	19.3328	20.5321	22.0286	22.9255
];
%%%%%SNR=10dB, N=256,eta=1, mu=0.5, Zt=Zr=2
N256_sim=[22.8103	22.7897	22.4749	22.0252	21.5672	21.1444	20.7823	20.4831	20.2434	20.0597	19.9277	19.8481	19.817	19.8365	19.905	20.0292	20.2098	20.4549	20.779	21.193	21.7279	22.4167	23.3204	24.5196	26.0182	26.9144
];
N256_th=[22.8148	22.7953	22.4797	22.0328	21.5715	21.1504	20.7883	20.4884	20.2484	20.0649	19.9343	19.8544	19.8238	19.8423	19.9114	20.0338	20.2145	20.4608	20.7839	21.2001	21.7339	22.4233	23.3267	24.526	26.0225	26.9195
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
   % plot(d1,N64_sim,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
    plot(d1,N64_th,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
    % plot(d1,N256_sim,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
    plot(d1,N256_th,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
   % semilogy(d1,N240_sim506,'b*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
 % semilogy(d1,N240_th504,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
 %  semilogy(d1,N240_th504,'-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
  % semilogy(d1,N240_th506,'k-','LineWidth',lw,'MarkerSize',msz);hold on; grid on

xlabel( 'Distance (m)')
ylabel( ' Ergodic Capacity(EC)')
  % axis([0 100 15 30])
% axis([0 100 10 25]);
