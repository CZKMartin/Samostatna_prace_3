clc
close all
clear

%%
% Ad.1

% ZEROES - vytvo�� matici (pole) nul,  vstupn� ��sla by m�la b�t nez�porn� a cel�, z�porn� ��sla bude br�t jako  0
% zeros(N) - vytvo�� matici nul N x N
% zeros(M,N) nebo zeros([M,N]) - vytvo�� matici nul M x N 
% zeros(M,N,P,...) or zeros([M N P ...]) vytvo�� pole nul MxNxP 
% zeros(SIZE(A)) - vytvo�� stejn� velkou matici jako je matice A a vypln� j� nulama  
% zeros - (bez argumentu)  vr�t� 0
% zeros(..., CLASSNAME) vytvo�� pole jednotn�ch hodnot ur�en� t��dy CLASSNAME
% zeros(..., 'like', Y) vytvo��pole nul se stejn�m typem dat, sparity a slo��tost� (re�ln� nebo komplexn�) jako je ��seln� prom�nn� Y
% 
% ONES - stejn� p��kazy jako ZEROS, ale matice (pole) vypl�uje jedni�kama, vstupn� ��sla by m�la b�t nez�porn� a cel�, z�porn� ��sla bude br�t jako  0
% 
% RAND - stejn� p��kazy jako ZEROS , ale matici (pole) n�hodn� rovnom�rn� vypl�uje ��sly z intervalu (0, 1), vstupn� ��sla by m�la b�t nez�porn� a cel�, z�porn� ��sla bude br�t jako  0
% 
% sqrt(X) - Vypo��t� druhou odmocninu ��sla X. Pokud neni ��slo kladn�, v�sledek bude komplexn�.
% 
% clc - vyma�e p��kazov� okno a kurzor zobraz� na za��tku
% 
% tic a toc jsou funkce k m��en� uplynul�ho �asu
% TSTART = tic - ulo�� �as doprom�nn�  TSTART, to se pak pou��v� p�i vol�n� fukce toc
% T = toc - ulo�� uplynul� �as do prom�nn� T jako double skal�r
% 
% sin(X) - sinus prvk� X
% pi - je konstanta p� (3.1415....)

%%
% Ad.2
A = linspace(0,31,10)

vypis_prvnich_5 = A(1:5)
vypis_poslednich_5 = A(end-5:end)

%%
% Ad.3

B = round(rand(10)*255)

%%
% Ad.4

v_soucet = B(:,1)+B(:,end)

%%
% Ad.5
matice = A*B            % rozm�r stejn� jako A  (1 x 10)
matice_2 = B*A'         % rozm�r stejn� jako A' (10 x 1)

%%
% Ad.6
t = linspace(0,pi,50);
X = sin(t);
Y1 = 1*X;
Y2 = 2*X;
Y3 = 3*X;

plot(t,Y1,'b-*')
hold on
plot(t,Y2,'m:+')
hold on
plot(t,Y3,'k--d')
legend('sin','2*sin','3*sin')
grid on

%%
% Ad.7
figure(2)

subplot(3,1,1)
plot(t,Y1,'b-*')
title('sinus')
xlabel('T [rad]')
ylabel('A [-]')
grid on

 
subplot(3,1,2)
plot(t,Y2,'m:+')
title('2*sinus')
xlabel('T [rad]')
ylabel('A [-]')
grid on

subplot(3,1,3)
plot(t,Y3,'k--d')
title('3*sinus')
xlabel('T [rad]')
ylabel('A [-]')
grid on