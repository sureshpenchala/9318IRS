clear all
%%%%%%%%-30dbm
d1=[0 5 10 15 20 25 30 35 40 45 50 55 60 65 70 75 80 85 90 95 100];
N36_sim=[8.75E-02	0.1236	0.5177	0.9531	0.9994	1	1	1	1	1	1	1	1	1	1	0.9996	0.9371	0.1933	0	0	0
];
N36_th=[0.0432	0.0681	0.5113	0.988	1	1	1	1	1	1	1	1	1	1	1	1	0.9798	0.124	9.36E-06	2.92E-12	2.92E-12
];

N72_sim=[0	0	0	0	1.40E-03	6.27E-02	0.3788	0.745	0.9081	0.9547	0.9598	0.928	0.8252	0.5123	0.1119	0.0019	0	0	0	0	0
];
N72_th=[1.11E-16	2.22E-16	9.02E-13	2.22E-08	1.03E-04	2.38E-02	0.3332	0.799	0.9603	0.9884	0.9908	0.9775	0.888	0.5045	0.058	2.54E-04	9.53E-09	1.55E-15	0	0	0
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

 semilogy(d1,N36_th,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
 semilogy(d1,N72_th,'*','LineWidth',lw,'MarkerSize',msz);hold on; grid on
  
 semilogy(d1,N36_th,'r-','LineWidth',lw,'MarkerSize',msz);hold on; grid on
semilogy(d1,N72_th,'r-','LineWidth',lw,'MarkerSize',msz);hold on; grid on


xlabel( 'Distance (m)')
ylabel( 'Outage Probability (OP)')
 axis([0 100 0.99*1e-6 1e-0])
