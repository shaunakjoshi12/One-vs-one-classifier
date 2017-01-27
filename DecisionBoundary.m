function DecisionBoundary(x,final_theta,y)

plotData(x(:,[2:3]),y);

if size(x,2)<=3
    plotx=(-1./final_theta(2)).*(x.*final_theta(3)+final_theta(1));
    ploty=(-1./final_theta(3)).*(plotx.*final_theta(2)+final_theta(1));
    plot(plotx,ploty);
    axis([30,100,30,100]);
hold on;
%else
    
    % Here is the grid range
    %u = linspace(-1, 1.5, 50);
    %v = linspace(-1, 1.5, 50);

    %z = zeros(length(u), length(v));
    % Evaluate z = theta*x over the grid
    %for i = 1:length(u)
       % for j = 1:length(v)
      %      z(i,j) = mapFeature(u(i), v(j))*theta;
     %   end
    %end
    %z = z'; % important to transpose z before calling contour

    % Plot z = 0
    % Notice you need to specify the range [0, 0]
    %contour(u, v, z, [0, 0], 'LineWidth', 2)
end
hold off

end