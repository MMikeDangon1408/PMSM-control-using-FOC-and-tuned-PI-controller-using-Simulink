% ===== Lấy dữ liệu từ Scope =====
t = Scope_IdIq_PMSM_BLDC.time;
y = Scope_IdIq_PMSM_BLDC.signals(1).values;   % 600001 x 4

% ===== Tách tín hiệu =====
y1 = y(:,1); % Id PMSM
y2 = y(:,2); % Iq PMSM
y3 = y(:,3); % Id BLDC
y4 = y(:,4); % Iq BLDC

% ===== LaTeX mặc định =====
set(groot,'defaultTextInterpreter','latex');
set(groot,'defaultLegendInterpreter','latex');
set(groot,'defaultAxesTickLabelInterpreter','latex');

% ===== Figure =====
figure('Color','w');
set(gcf, 'Units','centimeters', 'Position',[5 5 15 10]);

% ===== Plot =====
plot(t, y1, 'r',  'LineWidth', 1); hold on;
plot(t, y2, 'b',  'LineWidth', 1);
plot(t, y3, 'g','LineWidth', 1);
plot(t, y4, 'Color',[0.93 0.69 0.13], 'LineWidth', 1);

grid on
grid minor

xlabel('Time (s)', 'FontSize',12)
ylabel('(A)', 'FontSize',12)

% ===== Legend đúng =====
legend({'$I_d$ PMSM', '$I_q$ PMSM', '$I_d$ BLDC', '$I_q$ BLDC'}, ...
    'Location','best', ...
    'FontSize',14)

% ===== Title =====
title('Đáp ứng dòng điện Iq, Id giữa PMSM và BLDC', ...
    'FontSize',14)

set(gca, 'FontSize',12, 'LineWidth',1.2);