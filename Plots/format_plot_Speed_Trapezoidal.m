% ===== Lấy dữ liệu từ Scope =====
t = ScopeSpeedTrapezoidal.time;
y1 = ScopeSpeedTrapezoidal.signals(1).values; 
y2 = ScopeSpeedTrapezoidal.signals(2).values;

%% ================================
 % Dimension dạng 2x1 ==> Lấy y(1), y(2)
 % Dimension dạng 1x2 ==> Lấy y = ScopeIdIq.signals(1).values;
 %                              y1 = y(:,1); % Id
 %                              y2 = y(:,2); % Iq
% ================================
%%

% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf, 'Units','centimeters', 'Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y2, '--r', 'LineWidth', 3); hold on;
plot(t, y1, 'b', 'LineWidth', 2);
grid on
grid minor   % có thêm lưới phụ giống Scope

xlabel('Time (s)', 'FontSize',12)
ylabel('RPM', 'FontSize',12)

legend({'speed ref', 'Rotor actual speed'}, ...
    'Location','best', ...
    'FontSize',16)

% ===== Title chung =====
sgtitle('Đáp ứng vận tốc với phương pháp điều khiển FOC', ...
    'FontWeight','bold','FontSize',14);

set(gca, 'FontSize',11, 'LineWidth',1);