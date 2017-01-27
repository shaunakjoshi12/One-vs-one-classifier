%-------------------PART1 Declarations------------------------------
data=load('ex2data1.txt')
x=data(:,[1:2]);y=data(:,3);
m=length(y);

%--------------------PART 2 Plotting---------------------------------
plotData(x,y)

hold off;

%--------------------PART 3 Sigmoid-----------------------------------
[m,n]=size(x);
x=[ones(m,1) x];

theta=zeros(n+1,1);
[cost,grad]=costCompute(x,theta,y);
fprintf('Unoptimized cost is %f: ',cost);
fprintf('Gradient is %f: ',grad);
%--------------------PART 4 Gradient-----------------------------------
options=optimset('GradObj','on','MaxIter',400);
[final_theta,final_cost]=fminunc(@(t)(costCompute(x,t,y)),theta,options);

%plotData(x,y);
%hold on;
DecisionBoundary(x,final_theta,y);
a=30;b=99;
fprintf('For 40 and 85 the probability is %f ',sigmoid([1,a,b]*final_theta));
fprintf('The training accuracy is %f',mean(double(prediction(x*final_theta)==y))*100);
%disp(x);   

