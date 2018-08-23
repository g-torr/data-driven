function [C,id] = cusum_covariance(y)
%This function computes the cusum taking into account variance changes
%   Detailed explanation goes here
N=length(y(:,1));
t=1:N;t=t';
diff=y-(cumsum(y)./t);
A=cumsum(diag(diff/cov(y)*diff'));
C=(A./t-A(end)/N).*t/N;
[M,id]=max(abs(C));
end

