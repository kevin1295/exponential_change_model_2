clc
num = csvread('result.csv', 2, 0) %��ȡ���������������Ϊ���
C=num(:,3) %��B����ȡ����һ�е�������
B=num(:,2) 
A=num(:,1) 
clc
xx=linspace(min(A),max(A),20); %����min(A)��max(A)��̯��50���㣬Ŀ���������ɢ�������ϵĲ���
yy=linspace(min(B),max(B),20); 
[xt,yt]=meshgrid(xx,yy); %���ɶ�ά����
zt=griddata(A,B,C,xt,yt,'v4'); %��v4��ķ�ʽ�������
surf(xt,yt,zt) %������ͼ��