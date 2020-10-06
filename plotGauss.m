%  plotGauss
%     Author: Phineas Flynn

%% set parameters
Nx=200;
xmin=-5;
xmax=+5;

% Width of the curve
width=1.2;

x0=0;
iPlotType='Function';  % Options: Function, Derivative, Both

doGrid=true;

%% calculate function
x=linspace(xmin,xmax,Nx);
[g, dgdx]=gauss(x,x0,width);

%% plot function and its derivative
switch iPlotType
    case 'Function'
        plot(x,g);
        ylabel('g(x)');
        
    case 'Derivative'
        plot(x,dgdx);
        ylabel('dg/dx')
    case 'Both'
        plot(x, g,...
        x, dgdx);
        ylabel('g(x) and dg/dx')
        legend('g(x)', 'dg/dx', 'Location', 'Northwest')
end

if doGrid
    grid on
else
    grid off
end