function plotData(x,y)
positiveclass=find(y==1);negativeclass=find(y==0);
figure;
plot(x(positiveclass,1),x(positiveclass,2),'kx','MarkerSize',10);
hold on;
plot(x(negativeclass,1),x(negativeclass,2),'y.','MarkerSize',20);
end