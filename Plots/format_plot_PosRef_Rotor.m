% ===== Lấy dữ liệu từ Scope =====
t = ScopePosrefnRotorAngle.time;
y1 = ScopePosrefnRotorAngle.signals(1).values; 
y2 = ScopePosrefnRotorAngle.signals(2).values;

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
plot(t, y1, '--r', 'LineWidth', 3); hold on;
plot(t, y2, 'b', 'LineWidth', 2);
grid on
grid minor   % có thêm lưới phụ giống Scope

xlabel('Time (s)', 'FontSize',12)
ylabel('rad', 'FontSize',12)

legend({'position ref', 'Rotor actual angle'}, ...
    'Location','best', ...
    'FontSize',16)

% ===== Title chung =====
sgtitle('Vị trí rotor khi feed-foward gain bằng 100%, có tải', ...
    'FontWeight','bold','FontSize',14);

set(gca, 'FontSize',11, 'LineWidth',1);