function [J,grad]=costCompute(x,theta,y)
J=0;
grad=zeros(size(theta));
m=length(y);
J=(1/m)*(-y'*log(sigmoid(x*theta))-(1-y')*log(1-sigmoid(x*theta)));
grad=(1/m)*x'*(sigmoid(x*theta)-y)
end