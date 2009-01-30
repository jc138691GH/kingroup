w = load('He_ns_beta05_1_1S.csv')
% w = load('HeA_1_1S.csv')
x_1 = w(:, 2)
A_1 = w(:, 3)
w = load('He_ns_beta06_1_1S.csv')
% w = load('HeB_1_1S.csv')
B_1 = w(:, 3)
w = load('He_ns_lambda95_1_1S.csv')
% w = load('HeC_1_1S.csv')
C_1 = w(:, 3)

w = load('He_nsp_lambda40_1_1S.csv')
x_2 = w(:, 2)
A_2 = w(:, 3)
w = load('He_nsp_lambda70_1_1S.csv')
B_2 = w(:, 3)
w = load('He_nsp_lambda95_1_1S.csv')
C_2 = w(:, 3)

w = load('He_nspd_lambda40_1_1S.csv')
x_3 = w(:, 2)
A_3 = w(:, 3)
w = load('He_nspd_lambda70_1_1S.csv')
B_3 = w(:, 3)
w = load('He_nspd_lambda95_1_1S.csv')
C_3 = w(:, 3)

w = load('He_L4_lambda40_1_1S.csv')
x_4 = w(:, 2)
A_4 = w(:, 3)
w = load('He_L4_lambda70_1_1S.csv')
B_4 = w(:, 3)
w = load('He_L4_lambda95_1_1S.csv')
C_4 = w(:, 3)
%
subplot(2,2,1)
plot (x_1, A_1, 'k-')
hold
plot (x_1, B_1, 'k--')
plot (x_1, C_1, 'k:')
ylabel('log_1_0(Energy - E_s)')
xlabel('\itN_s')
legend('\it\lambda_s=4', '\it\lambda_s=7', '\it\lambda_s=9.5')
title('A.')
set(gca, 'XLim', [0, 21])
set(gca, 'YLim', [-7, 0])
%
subplot(2,2,2)
plot (x_2, A_2, 'k-')
hold
plot (x_2, B_2, 'k--')
plot (x_2, C_2, 'k:')
ylabel('log_1_0(Energy - E_p)')
xlabel('\itN_p')
legend('\it\lambda_p=4', '\it\lambda_p=7', '\it\lambda_p=9.5')
title('B.')
set(gca, 'XLim', [0, 21])
set(gca, 'YLim', [-7, 0])
%
subplot(2,2,3)
plot (x_3, A_3, 'k-')
hold
plot (x_3, B_3, 'k--')
plot (x_3, C_3, 'k:')
ylabel('log_1_0(Energy - E_d)')
xlabel('\itN_d')
legend('\it\lambda_d=4', '\it\lambda_d=7', '\it\lambda_d=9.5')
title('C.')
set(gca, 'XLim', [0, 21])
set(gca, 'YLim', [-7, 0])
% %
subplot(2,2,4)
plot (x_4, A_4, 'k-')
hold
plot (x_4, B_4, 'k--')
plot (x_4, C_4, 'k:')
ylabel('log_1_0(Energy - Exact)')
xlabel('Cumulative \itN_l')
legend('\it\lambda_d=l', '\it\lambda_l=7', '\it\lambda_l=9.5')
title('C.')
set(gca, 'XLim', [0, 101])
set(gca, 'YLim', [-7, 0])
%
