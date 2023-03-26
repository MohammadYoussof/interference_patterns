clear
close all
clc

% Figure 1: Experimental setup
figure(1);
hold on;

% Draw target material
rectangle('Position', [0.25, 0, 0.5, 0.1], 'FaceColor', [0.8, 0.8, 0.8], 'EdgeColor', 'k');

% Draw emitters k and l
plot(0.25, 0.2, 'ro', 'MarkerSize', 10);
plot(0.75, 0.2, 'ro', 'MarkerSize', 10);

% Draw sensor m
plot(0.5, 0.2, 'bo', 'MarkerSize', 10);

% Draw reference transparent surface
rectangle('Position', [0.25, 0.3, 0.5, 0.02], 'FaceColor', [0.6, 0.8, 1], 'EdgeColor', 'k');

% Set up the plot's appearance
xlim([0, 1]);
ylim([-0.1, 0.4]);
axis equal;
axis off;

% Add labels
text(0.5, 0.05, 'Target Material', 'FontSize', 10, 'Color', 'k', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
text(0.25, 0.2, 'Emitter k', 'FontSize', 10, 'Color', 'r', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
text(0.75, 0.2, 'Emitter l', 'FontSize', 10, 'Color', 'r', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
text(0.5, 0.2, 'Sensor m', 'FontSize', 10, 'Color', 'b', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');
text(0.5, 0.31, 'Reference Transparent Surface', 'FontSize', 10, 'Color', 'k', 'HorizontalAlignment', 'center', 'VerticalAlignment', 'middle');

% Figure 2: Interference pattern
figure(2);
hold on;

% Generate data for interference pattern
x = linspace(-0.5, 0.5, 500);
y = linspace(-0.5, 0.5, 500);
[X, Y] = meshgrid(x, y);
Z = cos(2*pi*sqrt(X.^2 + Y.^2));

% Plot interference pattern
imagesc(x, y, Z);
colormap('gray');
axis equal;
axis off;

% Save figures
saveas(figure(1), 'experiment_setup.png');
saveas(figure(2), 'interference_pattern.png');
