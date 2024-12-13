function chan = eta_mu_channel(eta,mu,M,N) 
coeff=sqrt(eta);
ni=zeros(M,N);
nq=zeros(M,N); 
for j=1:2*mu
    norm1=randn(M,N); 
    ni=ni+norm1.^2;
    norm2=coeff*randn(M,N); 
    nq=nq+norm2.^2; 
end
chan=(sqrt(ni)+sqrt(-nq))/sqrt(2*(mu+eta*mu));
 h_abs=abs(chan);
 theta = 2*pi*rand(M,N);
 chan=h_abs.*cos(theta)+sqrt(-1)*h_abs.*sin(theta);