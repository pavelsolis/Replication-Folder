z = peaks(45);
figure
mesh(z)
grid off
set(gcf,'color','w')
axis off
colormap winter
saveas(gcf,'exfigure1.png')

figure
surf(z)
grid off
set(gcf,'color','w')
axis off
colormap winter
saveas(gcf,'exfigure2.png')