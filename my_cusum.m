function [cusum,k] = my_cusum(oxy)
%this function gives the cusum and the index of the changepoint 
N=length(oxy(:,1))
cusum_2nd=flipud(cumsum(flipud(oxy)));
t1=1:N-1;
cusum_1st=sqrt((N-1-t1)./((N-1)*t1))'.*cumsum(oxy(1:end-1,:));
t2=1:N-1;
cusum_2nd=cusum_2nd(2:end,:)*sqrt(t2/((N-t2)*N));
cusum=cusum_1st+cusum_2nd;

[M,k]=max(diag(cusum/(cov(oxy(1:end-1,:)))*cusum'))
end

