clc
close all
clear

%%
% Ad.1

% ZEROES - vytvoøí matici (pole) nul,  vstupní èísla by mìla být nezáporná a celá, záporná èísla bude brát jako  0
% zeros(N) - vytvoøí matici nul N x N
% zeros(M,N) nebo zeros([M,N]) - vytvoøí matici nul M x N 
% zeros(M,N,P,...) or zeros([M N P ...]) vytvoøí pole nul MxNxP 
% zeros(SIZE(A)) - vytvoøí stejnì velkou matici jako je matice A a vyplní jí nulama  
% zeros - (bez argumentu)  vrátí 0
% zeros(..., CLASSNAME) vytvoøí pole jednotných hodnot urèené tøídy CLASSNAME
% zeros(..., 'like', Y) vytvoøípole nul se stejným typem dat, sparity a složítostí (reálná nebo komplexní) jako je èíselná promìnná Y
% 
% ONES - stejné pøíkazy jako ZEROS, ale matice (pole) vyplòuje jednièkama, vstupní èísla by mìla být nezáporná a celá, záporná èísla bude brát jako  0
% 
% RAND - stejné pøíkazy jako ZEROS , ale matici (pole) náhodnì rovnomìrnì vyplòuje èísly z intervalu (0, 1), vstupní èísla by mìla být nezáporná a celá, záporná èísla bude brát jako  0
% 
% sqrt(X) - Vypoèítá druhou odmocninu èísla X. Pokud neni èíslo kladné, výsledek bude komplexní.
% 
% clc - vymaže pøíkazové okno a kurzor zobrazí na zaèátku
% 
% tic a toc jsou funkce k mìøení uplynulého èasu
% TSTART = tic - uloží èas dopromìnné  TSTART, to se pak používá pøi volání fukce toc
% T = toc - uloží uplynulý èas do promìnné T jako double skalár
% 
% sin(X) - sinus prvkù X
% pi - je konstanta pí (3.1415....)

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
matice = A*B            % rozmìr stejný jako A  (1 x 10)
matice_2 = B*A'         % rozmìr stejný jako A' (10 x 1)

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