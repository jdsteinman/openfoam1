%%
clc
clear all
close all

%% Import data
dat20 = readtable("./cavity20/postProcessing/sample/0.5/line1_U.xy", "FileType", "text");
dat40 = readtable("./cavity40/postProcessing/sample/0.5/line1_U.xy", "FileType", "text");
dat80 = readtable("./cavity80/postProcessing/sample/0.5/line1_U.xy", "FileType", "text");
dat160 = readtable("./cavity160/postProcessing/sample/0.5/line1_U.xy", "FileType", "text");
names = ["x", "y", "z", "u", "v", "w"];

dat20.Properties.VariableNames = names;
dat40.Properties.VariableNames = names;
dat80.Properties.VariableNames = names;
dat160.Properties.VariableNames = names;

%% Plot Properties
plottingPreamble()
sz = 8;
lw = 1;

%% Figure 1
figure(1)
y(1) = plot(dat20.u, dat20.y, 'b-s', 'MarkerFaceColor', 'b', 'LineWidth', lw);
hold on
y(2) = plot(100*dat20.v, dat20.y, 'r-s', 'LineWidth', lw);
hold off
grid on
title('Velocity Component Profiles: N=400');
xlabel('u/U, v/V (x/L = 0.5)');
ylabel('Position along Y-Axis');
legend('u/U', 'v/U x 100', 'Location', 'SouthEast')


%% Figure 2
figure(2)
y(1) = plot(dat40.u, dat40.y, 'b-s', 'MarkerFaceColor', 'b', 'LineWidth', lw);
hold on
y(2) = plot(100*dat40.v, dat40.y, 'r-s', 'LineWidth', lw);
hold off
grid on
title('Velocity Component Profiles: N=1600');
xlabel('u/U, v/V (x/L = 0.5)');
ylabel('Position along Y-Axis');
legend('u/U', 'v/U x 100', 'Location', 'SouthEast')


%% Figure 3
figure(3)
y(1) = plot(dat80.u, dat80.y, 'b-s', 'MarkerFaceColor', 'b', 'LineWidth', lw);
hold on
y(2) = plot(100*dat80.v, dat80.y, 'r-s', 'LineWidth', lw);
hold off
grid on
title('Velocity Component Profiles: N=6400');
xlabel('u/U, v/V (x/L = 0.5)');
ylabel('Position along Y-Axis');
legend('u/U', 'v/U x 100', 'Location', 'SouthEast')

%% Figure 4
figure(4)
y(1) = plot(dat160.u, dat160.y, 'b-s', 'MarkerFaceColor', 'b', 'LineWidth', lw);
hold on
y(2) = plot(100*dat160.v, dat160.y, 'r-s', 'LineWidth', lw);
hold off
grid on
title('Velocity Component Profiles: N=25600');
xlabel('u/U, v/V (x/L = 0.5)');
ylabel('Position along Y-Axis');
legend('u/U', 'v/U x 100', 'Location', 'SouthEast')

%% Figure 5: CvN

N = [400, 1600, 6400, 25600];
C = [.03, .035, .0775, .5112];
x = linspace(400, 25600, 100);

lfit = polyfit(N, C, 1);
qfit = polyfit(N, C, 2);
cfit = polyfit(N, C, 3);

figure(5)
scatter(N, C, 50, 'ko');
hold on
plot(x, polyval(lfit,x))
plot(x, polyval(qfit,x))
plot(x, polyval(cfit,x))
hold off
set(gca, 'XScale', 'log', 'YScale', 'log')
title('Computational Cost for Various Mesh Densities')
xlabel('Total Number of Nodes N')
ylabel('Time per Step C')
legend('Obtained Data','Linear Fit','Quadratic Fit','Cubic Fit')

