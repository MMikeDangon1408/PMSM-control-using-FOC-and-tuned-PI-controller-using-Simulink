% ===== Lấy dữ liệu từ Scope =====
t = Scope_SpError_PMSM_BLDC.time;
y = Scope_SpError_PMSM_BLDC.signals(1).values;

y1 = y(:,1); % Speed Error PMSM
y2 = y(:,2); % Speed Error BLDC

% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf, 'Units','centimeters', 'Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y1, 'b', 'LineWidth', 1.5); hold on;
plot(t, y2, 'r', 'LineWidth', 1);
grid on
grid minor   % có thêm lưới phụ giống Scope

xlabel('Time (s)', 'FontSize',12)
ylabel('RPM', 'FontSize',12)

legend({'Speed error PMSM', 'Speed error BLDC'}, ...
    'Location','best', ...
    'FontSize',16)

% ===== Title chung =====
sgtitle('Sai số vận tốc giữa PMSM và BLDC', ...
    'FontWeight','bold','FontSize',14);

set(gca, 'FontSize',11, 'LineWidth',1);