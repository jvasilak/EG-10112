function plotGaussF(app)
%  plotGauss
%     Author: Jonathon Vasilak
% March 26, 2020
%% set parameters
Nx=200;
xmin=-5;
xmax=+5;

% Width of the curve, obtained from the app, updates when the user updates
% the app
width = app.widthSlider.Value;

x0=0;
iPlotType = app.PlotDropDown.Value;  % Options: Function, Derivative, Both

doGrid = app.gridCheckBox.Value;

%% calculate function
x=linspace(xmin,xmax,Nx);
[g, dgdx]=gauss(x,x0,width);

%% plot function and its derivative
switch iPlotType
    case 'Function'
        plot(app.plotAxes, x,g);
        ylabel(app.plotAxes, 'g(x)');
        
    case 'Derivative'
        plot(app.plotAxes, x,dgdx);
        ylabel('dg/dx')
    case 'Both'
        plot(app.plotAxes, x, g,...
        x, dgdx);
        ylabel(app.plotAxes, 'g(x) and dg/dx')
        legend(app.plotAxes, 'g(x)', 'dg/dx', 'Location', 'Northwest')
end

if doGrid
    grid (app.plotAxes, 'on')
else
    grid (app.plotAxes, 'off')
end