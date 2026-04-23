% ===== Lấy dữ liệu từ Dataset =====
sig_ref = ScopeIdtuning{1};   % Id*
sig_id  = ScopeIdtuning{2};   % Id

t  = sig_ref.Values.Time;
y1 = sig_ref.Values.Data;     % Id*
y2 = sig_id.Values.Data;      % Id

% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf,'Units','centimeters','Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y1, '--r', 'LineWidth',1.5); hold on
plot(t, y2, 'b', 'LineWidth',1.8)

grid on
grid minor

xlabel('Time (s)', 'FontSize',12)
ylabel('(A)', 'FontSize',12)

legend({'$I_d^*$', '$I_d$'}, ...
    'Interpreter','latex', ...
    'FontSize',14, ...
    'Location','best')

title('$I_d$ response', ...
    'Interpreter','latex', ...
    'FontSize',14)


set(gca,'FontSize',11,'LineWidth',1)