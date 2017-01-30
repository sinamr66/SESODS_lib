% %%
% load('2.mat','ERROR_Stable','ERROR_Stable_T','ERROR_Stable_CL','ERROR_Stable_CL_T','ERROR_SEDS','ERROR_SEDS_T')
% ERROR=[ERROR_Stable',ERROR_Stable_T',ERROR_Stable_CL',ERROR_Stable_CL_T',ERROR_SEDS',ERROR_SEDS_T'];
% clearvars -except ERROR
% load('2.mat','ERROR_Stable','ERROR_Stable_T','ERROR_Stable_CL','ERROR_Stable_CL_T','ERROR_SEDS','ERROR_SEDS_T')
% ERROR=[ERROR;ERROR_Stable',ERROR_Stable_T',ERROR_Stable_CL',ERROR_Stable_CL_T',ERROR_SEDS',ERROR_SEDS_T'];
% clearvars -except ERROR
% load('3.mat','ERROR_Stable','ERROR_Stable_T','ERROR_Stable_CL','ERROR_Stable_CL_T','ERROR_SEDS','ERROR_SEDS_T')
% ERROR=[ERROR;ERROR_Stable',ERROR_Stable_T',ERROR_Stable_CL',ERROR_Stable_CL_T',ERROR_SEDS',ERROR_SEDS_T'];
% load('1_1.mat','ERROR_Stable','ERROR_Stable_T','ERROR_SEDS','ERROR_SEDS_T')
% ERROR=[ERROR_Stable',ERROR_Stable_T',ERROR_SEDS',ERROR_SEDS_T'];
% clearvars -except ERROR
% load('1_2.mat','ERROR_Stable','ERROR_Stable_T','ERROR_SEDS','ERROR_SEDS_T')
% ERROR=[ERROR;ERROR_Stable',ERROR_Stable_T',ERROR_SEDS',ERROR_SEDS_T'];
% clearvars -except ERROR
% load('1_3.mat','ERROR_Stable','ERROR_Stable_T','ERROR_SEDS','ERROR_SEDS_T')
% ERROR=[ERROR;ERROR_Stable',ERROR_Stable_T',ERROR_SEDS',ERROR_SEDS_T'];
close all
clc

% neworder = {
%     'Orginal_{QP}_{-Training}'            [mean(ERROR_CON(1,:))]
%     'Orginal_{QP}_{-Testing}'            [mean(ERROR_CON_T(1,:))]
%     'Orginal_{EM}_{-Training}'            [mean(ERROR_CON(1,:))]
%     'Orginal_{EM}_{-Testing}'            [mean(ERROR_CON(1,:))]
%         'Orginal_{EM}_{-Training}'            [mean(ERROR_CON(1,:))]
%     'Orginal_{EM}_{-Testing}'            [mean(ERROR_CON(1,:))]
%     }
% figure1 = figure;
% 
% axes1 = axes('Parent',figure1,'XTickLabel',neworder(:,1));
% box(axes1,'on');
% hold(axes1,'all');
% ERROR=[ERROR_CON',ERROR_CON_T',ERROR_Stable',ERROR_Stable_T',ERROR_SEDS',ERROR_SEDS_T']
% ERROR=[ERROR_Stable',ERROR_Stable_T',ERROR_Stable_KAR',ERROR_Stable_T_KAR']
ERROR=[ERROR_Stable',ERROR_Stable_T',ERROR_SEDS',ERROR_SEDS_T']
% ERROR=[ERROR_EM',ERROR_EM_T',ERROR_CON',ERROR_CON_T',ERROR_CON_A',ERROR_CON_T_A']
% ERROR=[ERROR_CON(1:25)',ERROR_CON_T(1:25)',ERROR_EM(1:25)',ERROR_EM_T(1:25)',ERROR_CON_A(1:25)',ERROR_CON_T_A(1:25)']
% ERROR=[ERROR_CON',ERROR_CON_T',ERROR_EM',ERROR_EM_T']
meann = mean(ERROR)
stdd = std(ERROR)


for i=1:size(ERROR,2)
    Y(1,i)=mean(ERROR(:,i));
    lower(1,i)=min(ERROR(:,i));
    upper(1,i)=max(ERROR(:,i));
end
upper=upper-Y;
lower=abs(lower-Y);

% Y=[mean(ERROR(:,1)),mean(ERROR(:,2)), mean(ERROR(:,3)), mean(ERROR(:,4)), mean(ERROR(:,5)), mean(ERROR(:,6)) , mean(ERROR(:,7))];
% E=[sqrt(var(ERROR(:,1))),sqrt(var(ERROR(:,2))), sqrt(var(ERROR(:,3))), sqrt(var(ERROR(:,4)))];
% lower=[min(ERROR(:,1)),min(ERROR(:,2)), min(ERROR(:,3)), min(ERROR(:,4)), min(ERROR(:,5)), min(ERROR(:,6)), min(ERROR(:,7))];
% upper=[max(ERROR(:,1)),max(ERROR(:,2)), max(ERROR(:,3)), max(ERROR(:,4)), max(ERROR(:,5)), max(ERROR(:,6)), max(ERROR(:,7))];
% Y=[mean(Likelihood(:,1)),mean(Likelihood(:,2)), mean(Likelihood(:,3)), mean(Likelihood(:,4)), mean(Likelihood(:,5))];
% E=[sqrt(var(Likelihood(:,1))),sqrt(var(Likelihood(:,2))), sqrt(var(Likelihood(:,3))), sqrt(var(Likelihood(:,4)))];
% lower=[min(Likelihood(:,1)),min(Likelihood(:,2)), min(Likelihood(:,3)), min(Likelihood(:,4)), min(Likelihood(:,5))];
% upper=[max(Likelihood(:,1)),max(Likelihood(:,2)), max(Likelihood(:,3)), max(Likelihood(:,4)), min(Likelihood(:,5))];
% createfigure1([1 2 3 4 5 6],[Y(:,1),Y(:,2),Y(:,3),Y(:,4),Y(:,5),Y(:,6)],[lower(:,1),lower(:,2),lower(:,3),lower(:,4),lower(:,5),lower(:,6)],[upper(:,1),upper(:,2),upper(:,3),upper(:,4),upper(:,5),upper(:,6)])
% createfigure1([1 2 3 4 ],[Y(:,1),Y(:,2),Y(:,3),Y(:,4)],[lower(:,1),lower(:,2),lower(:,3),lower(:,4)],[upper(:,1),upper(:,2),upper(:,3),upper(:,4)])
% createfigure1([1 2 3 4 5 6],meann, stdd)
createfigure1([1 2 3 4],meann, stdd)
% errorbar([1 2 3 4],ERROR)


% createfigure((1:25), [time_CON;time_EM])

% Y=[mean(reshape(ERROR(:,1,:),1,12)),mean(reshape(ERROR(:,2,:),1,12)), mean(reshape(ERROR(:,3,:),1,12)),...
%     mean(reshape(ERROR(:,4,:),1,12)),mean(reshape(ERROR(:,5,:),1,12)), mean(reshape(ERROR(:,6,:),1,12)),...
% mean(reshape(ERROR(:,7,:),1,12)),mean(reshape(ERROR(:,8,:),1,12)), mean(reshape(ERROR(:,9,:),1,12)),...
% mean(reshape(ERROR(:,10,:),1,12)),mean(reshape(ERROR(:,11,:),1,12))];
% E=[sqrt(var(reshape(ERROR(:,1,:),1,12))),sqrt(var(reshape(ERROR(:,2,:),1,12))),sqrt(var(reshape(ERROR(:,3,:),1,12))),...
%     sqrt(var(reshape(ERROR(:,4,:),1,12))),sqrt(var(reshape(ERROR(:,5,:),1,12))),sqrt(var(reshape(ERROR(:,6,:),1,12))),...
% sqrt(var(reshape(ERROR(:,7,:),1,12))),sqrt(var(reshape(ERROR(:,8,:),1,12))),sqrt(var(reshape(ERROR(:,9,:),1,12))),...
% sqrt(var(reshape(ERROR(:,10,:),1,12))),sqrt(var(reshape(ERROR(:,11,:),1,12)))];
%%
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1,'FontSize',20);
box(axes1,'on');
grid(axes1,'on');
hold(axes1,'on');

% Create ylabel
ylabel('\xi_2 [m]');
xlabel('\xi_1 [m]');


Training_N=[3,4,5,7,8,9,11,12,16,17,20]; % 'matlab_3.mat'
Testing_N=[1,2,6,10,13,14,15,18,19]; 

for i=1:size(Training_N,2)
   p1=plot(Input_S{1,Training_N(1,i)}(:,1),Input_S{1,Training_N(1,i)}(:,2),'LineWidth',3,'Color',[0 0 1])
   hold on
end
for i=1:size(Testing_N,2)
   p2=plot(Input_S{1,Testing_N(1,i)}(:,1),Input_S{1,Testing_N(1,i)}(:,2),'LineWidth',3,'Color',[1 0 0])
   hold on
end
p3=plot(0,0,'MarkerFaceColor',[0 0.498039215803146 0],'MarkerEdgeColor',[0 0.498039215803146 0],'MarkerSize',20,'Marker','hexagram','LineStyle','none');

legend([p1 p2 p3],'The training Data Set','The training Data Set','The Target') 
%%


close all
clc
figure1 = figure;
for i=1:1
%     counter=25-7*(i-1)
counter=10
    flag=[1,1];
%  Simulation(Input_S,SEDS{counter},Stable{counter},flag,i)

Simulation(Input_S,Stable{counter},SEDS{counter},flag,i)
end
% Create line
annotation(figure1,'line',[0.51755807671529 0.51755807671529],...
    [0.986012987012987 0.00927643784786625]);

% Create textbox
annotation(figure1,'textbox',...
    [0.676850891410049 0.940630797773655 0.119475418692598 0.0204081632653064],...
    'String','SEDS',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Helvetica',...
    'FitBoxToText','off');

% Create textbox
annotation(figure1,'textbox',...
    [0.237088600756348 0.938775510204082 0.119475418692599 0.0204081632653061],...
    'String','Our algorithm',...
    'LineStyle','none',...
    'FontSize',18,...
    'FontName','Helvetica',...
    'FitBoxToText','off');

% % Create textbox
% annotation(figure1,'textbox',...
%     [0.0566455969746084 0.843228200371058 0.119475418692599 0.0204081632653061],...
%     'String','K=25',...
%     'LineStyle','none',...
%     'FontSize',18,...
%     'FontName','Helvetica',...
%     'FitBoxToText','off');
% 
% % Create textbox
% annotation(figure1,'textbox',...
%     [0.0512431118314425 0.621521335807051 0.119475418692599 0.0204081632653061],...
%     'String','K=18',...
%     'LineStyle','none',...
%     'FontSize',18,...
%     'FontName','Helvetica',...
%     'FitBoxToText','off');
% 
% % Create textbox
% annotation(figure1,'textbox',...
%     [0.0528638573743923 0.40352504638219 0.119475418692599 0.0204081632653061],...
%     'String','K=11',...
%     'LineStyle','none',...
%     'FontSize',18,...
%     'FontName','Helvetica',...
%     'FitBoxToText','off');
% 
% % Create textbox
% annotation(figure1,'textbox',...
%     [0.0539443544030255 0.183673469387756 0.119475418692599 0.0204081632653061],...
%     'String','K=4',...
%     'LineStyle','none',...
%     'FontSize',18,...
%     'FontName','Helvetica',...
%     'FitBoxToText','off');