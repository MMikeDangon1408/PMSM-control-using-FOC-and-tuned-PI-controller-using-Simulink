% ===== Lấy dữ liệu từ Structure =====
t  = IqIqrefAFPI.time;                  % Trục thời gian chung
y1 = IqIqrefAFPI.signals(1).values;     % Dữ liệu dòng 1 (Id*)
y2 = IqIqrefAFPI.signals(2).values;     % Dữ liệu dòng 2 (Id)

% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf,'Units','centimeters','Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y1, 'b', 'LineWidth',1.5); hold on
plot(t, y2, '--r', 'LineWidth',1.8)
grid on
grid minor
xlabel('Time (s)', 'FontSize',12)
ylabel('(A)', 'FontSize',12)
legend({'$I_d$', '$I_d^*$'}, ...
    'Interpreter','latex', ...
    'FontSize',14, ...
    'Location','best')
title('$I_d$ response', ...
    'Interpreter','latex', ...
    'FontSize',14)
set(gca,'FontSize',11,'LineWidth',1)