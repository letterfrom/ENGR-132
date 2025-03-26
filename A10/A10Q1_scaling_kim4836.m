%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program creates linearized data and displays it along with its linearized model.
% Template for A10 - Problem 1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% DATA SET 1
x1 = [3, 5, 9, 15, 24, 41, 68, 114, 190, 316];
y1 = [18, 139, 216, 336, 451, 572, 698, 740, 888, 1060];

% DATA SET 2
x2 = [10, 120, 230, 340, 450, 560, 670, 780, 890, 1000];
y2 = [5, 7, 12, 13, 23, 43, 68, 131, 153, 376];


%% ____________________
%% FORMATTED FIGURES

% Formatted Figure 1 - DATA SET 1
figure(1)
subplot(2, 2, 1)
plot(x1, y1, "b*")
title('y1 vs x1 - rectilinear axes')
xlabel('x1')
ylabel('y1')
ax = gca;
grid on

subplot(2, 2, 2)
semilogx(x1, y1, "b*")
title('y1 vs x1 - semilog in x axes')
xlabel('x1')
ylabel('y1')
ax = gca;
grid on

subplot(2, 2, 3)
semilogy(x1, y1, "b*")
title('y1 vs x1 - semilog in y axes')
xlabel('x1')
ylabel('y1')
ax = gca;
grid on

subplot(2, 2, 4)
loglog(x1, y1, "b*")
title('y1 vs x1 - log-log axes')
xlabel('x1')
ylabel('y1')
ax = gca;
grid on

sgtitle("[DATA SET 1] y1 vs x1 Across Different Axis Scales")


% Formatted Figure 2 - DATA SET 2
figure(2)
subplot(2, 2, 1)
plot(x2, y2, "b*")
title('y2 vs x2 - rectilinear axes')
xlabel('x2')
ylabel('y2')
ax = gca;
grid on

subplot(2, 2, 2)
semilogx(x2, y2, "b*")
title('y2 vs x2 - semilog in x axes')
xlabel('x2')
ylabel('y2')
ax = gca;
grid on

subplot(2, 2, 3)
semilogy(x2, y2, "b*")
title('y2 vs x2 - semilog in y axes')
xlabel('x2')
ylabel('y2')
ax = gca;
grid on

subplot(2, 2, 4)
loglog(x2, y2, "b*")
title('y2 vs x2 - log-log axes')
xlabel('x2')
ylabel('y2')
ax = gca;
grid on

sgtitle("[DATA SET 2] y2 vs x2 Across Different Axis Scales")




%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







