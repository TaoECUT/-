%%***********&&&&&&&&---作业1.4切比雪夫零点插值----*******&&&&&%%

x10=Chebyshev(10);
x20=Chebyshev(20);       %10,20,40次切比雪夫多项式的零点--插值节点
x40=Chebyshev(40);

y10=1./(1+25*x10.^2);
y20=1./(1+25*x20.^2);    %1计算插值节点对应的函数值
y40=1./(1+25*x40.^2);


%创建需要的插值点，并利用上面的切比雪夫插值节点对这些插值点进行插值计算
X=[-1:0.01:1];           %创建需要的插值点
m=length(X);
L10=zeros(1,m);            %插值点拉格朗插值后的值--空向量       
for i=1:m
    L10(i)=lagr_fun(x10,y10,X(i));   %计算出需要插值点的对应的值
end

L20=zeros(1,m);            %插值点拉格朗插值后的值--空向量       
for i=1:m
    L20(i)=lagr_fun(x20,y20,X(i));   %计算出需要插值点的对应的值
end

L40=zeros(1,m);            %插值点拉格朗插值后的值--空向量       
for i=1:m
    L40(i)=lagr_fun(x40,y40,X(i));   %计算出需要插值点的对应的值
end

x0=[-1:0.01:1];           
y0=1./(1+25*x0.^2);      

subplot(3,2,1);
plot(x0,y0);             
axis([-1.1,1.1,-0.5,1.1]);
legend('原函数图像');


subplot(3,2,2);
plot(x10,y10,'mo',X,L10);
axis([-1.1,1.1,-0.5,1.1]);
legend('插值节点','L10图像');

subplot(3,2,3);
plot(x20,y20,'mo',X,L20);
axis([-1.1,1.1,-0.5,1.1]);
legend('插值节点','L20图像');

subplot(3,2,4);
plot(x40,y40,'mo',X,L40);
axis([-1.1,1.1,-0.5,1.1]);
legend('插值节点','L40图像');