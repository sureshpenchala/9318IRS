clc
clear
bitstotal=1000;
SNR_range=10:3:90;
snr_lin= 10.^(SNR_range/10)
% N=64
for N = [150] 
eta=1
mu=0.5
d=100;
d1=50;
h1=15;
ht=10;
hr=2;
dsr1=sqrt((d-d1).^2+(h1-ht).^2)
dru1=sqrt((d1).^2+(h1-hr).^2)
px=3;

ccc=1;
for SNRdB=SNR_range
    err=0;
    for mc=1:bitstotal

        n=(randn+1j*randn)/sqrt(2);
        x(mc)=2*randi([0 1])-1;
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%55
         hpx1=(dsr1.^(-px/2));
         gpx1=(dru1.^(-px/2));

          h1=(hpx1).*eta_mu_channel(eta,mu,1,N);
          g1=(gpx1).*transpose(eta_mu_channel(eta,mu,1,N));
          phi=exp(1j*angle(h1.*transpose(g1)))';%.*exp(-1j*angle(g))';
          C1=(h1*diag(phi)*g1);
           C= C1 ;        
        % phi=exp(1j*angle(h.*transpose(g)))';%.*exp(-1j*angle(g))';
        % C=(h*diag(phi)*g);
        y1=sqrt(db2pow(SNRdB))*C*x(mc)+n;
        [~, indm]=min([abs(y1 + C).^2; abs(y1 - C).^2;]);
        cc=isequal((2*indm-3),x(mc));
        if cc<1
            err=err+1;
        end
    end
    errSNR(ccc)=err/bitstotal;
    ccc=ccc+1;
end

%%%%%%%%%%%%%%%%%%

% % Defaults for figures
width = 5;     % Width in inches
height = 4;    % Height in inches
alw = 1.2;    % AxesLineWidth
fsz = 12;      % Fontsize
lw = 1.5;      % LineWidth
msz = 4;       % MarkerSize

pos = get(gcf, 'Position');
set(gcf, 'Position', [pos(1) pos(2) width*100, height*100]); %<- Set size
set(0,'defaultAxesFontName','Times New Roman');

 semilogy(SNR_range,errSNR,'o-', 'LineWidth',lw,'MarkerSize',msz);
 hold on
% semilogy(SNR_range,Pb3,'-', 'LineWidth',lw,'MarkerSize',msz);
% hold on
% semilogy(SNR_range,Pbup,'*', 'LineWidth',lw,'MarkerSize',msz);
% hold on
grid on
xlabel( 'E_{s}/N_{0}  [dB]','FontSize', fsz)
ylabel('Bit Error Rate (BER)', 'FontSize', fsz)
axis([SNR_range(1) 90 0.99*1e-5 1e-0])
ax = gca;
% ax.GridLineStyle = ':';
ax.FontSize = fsz;
ax.LineWidth = alw;
 end
