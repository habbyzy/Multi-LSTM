Nstd = 0.2;
NR = 500;
MaxIter = 5000;


[modes its]=emd(t_s);
t=1:length(t_s);

[a b]=size(modes);

figure;
subplot(a+1,1,1);
plot(t,t_s);% the ECG signal is in the first row of the subplot
ylabel('T_S')
set(gca,'xtick',[])
axis tight;

for i=2:a
    subplot(a+1,1,i);
    plot(t,modes(i-1,:));
    ylabel (['IMF ' num2str(i-1)]);
    set(gca,'xtick',[])
    xlim([1 length(t_s)])
end;

subplot(a+1,1,a+1)
plot(t,modes(a,:))
ylabel(['IMF ' num2str(a)])
xlim([1 length(t_s)])

figure;
boxplot(its);