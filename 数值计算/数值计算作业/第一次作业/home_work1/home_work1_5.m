%%***********&&&&&&&&---作业1.5三次样条插值--函数调用----*******&&&&&%%
x=[-1:0.01:1];           
y=1./(1+25*x0.^2);        %%绘制f(x)图像
plot(x0,y0); 
axis([-1.1,1.1,-0.5,1.1]);
hold on;

x0=[-1:0.2:1];
y0=1./(1+25*x0.^2);      
X=-1:0.01:1;
Y=interp1(x0,y0,X,'spline');
plot(x0,y0,'ro',X,Y,'b');
xlabel('三次样条插值');
legend('原函数图像','插值节点','三次样条插值');