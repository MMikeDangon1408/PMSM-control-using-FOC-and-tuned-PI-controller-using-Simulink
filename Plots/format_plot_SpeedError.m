% ===== Lấy dữ liệu từ Scope =====
t = ScopeSpeed_error.time;
y = ScopeSpeed_error.signals.values; %Dimension = 1, nên chỉ cần lấy 1 gtri y


% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf, 'Units','centimeters', 'Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y, 'b', 'LineWidth', 1.5);
grid on
grid minor   % có thêm lưới phụ giống Scope
 
xlabel('Time (s)', 'FontSize',12)
ylabel('RPM', 'FontSize',12)

legend({'speed error'}, ...
    'Location','best', ...
    'FontSize',16)

% ===== Title chung =====
sgtitle('Sai số vận tốc khi feed-foward gain bằng 100%', ...
    'FontWeight','bold','FontSize',14);

set(gca, 'FontSize',11, 'LineWidth',1);