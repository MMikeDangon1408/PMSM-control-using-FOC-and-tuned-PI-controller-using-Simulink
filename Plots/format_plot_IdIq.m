% ===== Lấy dữ liệu từ Scope =====
t = ScopeIdIq.time;
y = ScopeIdIq.signals(1).values;

y1 = y(:,1); % Id
y2 = y(:,2); % Iq

% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf, 'Units','centimeters', 'Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y1, 'r', 'LineWidth', 1.5); hold on;
plot(t, y2, 'b', 'LineWidth', 1.5);
grid on
grid minor   % có thêm lưới phụ giống Scope

xlabel('Time (s)', 'FontSize',12)
ylabel('(A)', 'FontSize',12)

legend({'$I_d$', '$I_q$'}, ...
    'Location','best', ...
    'FontSize',16)
% ===== Title chung =====
sgtitle('Đáp ứng Id & Iq', ...
    'FontWeight','bold','FontSize',14);
set(gca, 'FontSize',11, 'LineWidth',1);