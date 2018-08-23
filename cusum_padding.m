function [cusum,k] = my_cusum(oxy)
%this function gives the cusum and the index of the changepoint 
N=length(oxy(:,1))
t1=1:N;
cusum_1st=sqrt((N-t1)./(N*t1))'.*cumsum(oxy(1:end,:));
t2=2:N;
cusum_2nd=flipud(cumsum(flipud(oxy)));% the second term in cusum formula starts from t+1
cusum_2nd=cusum_2nd(2:end,:)*sqrt(t2/((N-t2)*N));
cusum=cusum_1st+padarray(cusum_2nd,1,"pre");
temp=diag(cusum/cov(oxy)*cusum');
plot(temp)
[M,k]=max(temp);
end

