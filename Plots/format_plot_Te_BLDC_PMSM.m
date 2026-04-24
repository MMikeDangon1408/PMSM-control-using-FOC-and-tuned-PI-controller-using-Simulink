% ===== Lấy dữ liệu từ Scope =====
t = Scope_Te_PMSM_BLDC.time;
y = Scope_Te_PMSM_BLDC.signals(1).values;

y1 = y(:,1); % Te BLDC
y2 = y(:,2); % Te PMSM

% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf, 'Units','centimeters', 'Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y1, 'b', 'LineWidth', 1.5); hold on;
plot(t, y2, 'r', 'LineWidth', 1.5);
grid on
grid minor   % có thêm lưới phụ giống Scope

xlabel('Time (s)', 'FontSize',12)
ylabel('[N.m]', 'FontSize',12)

legend({'Te PMSM', 'Te BLDC'}, ...
    'Location','best', ...
    'FontSize',16)

% ===== Title chung =====
sgtitle('Đáp ứng Momen điện từ giữa PMSM và BLDC', ...
    'FontWeight','bold','FontSize',14);

set(gca, 'FontSize',11, 'LineWidth',1);