%esercitazione 0: manipolazione di vettori e matrici, grafici di
%funzioni e linguaggio Matlab

clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_1*****************')
disp('***********************************************')

x = [1:-0.1:0]
x([1 4 3]) 
disp('estrae le componenti 1, 4 e 3 del vettore x')
pause
%
x = [1:-0.1:0]
x([1:2:7 10])=zeros(1,5) 
disp('pone le componenti 1, 3, 5, 7 e 10 di x uguale a 0') 
pause
%
x = [1:-0.1:0]
x([1 2 5])=[0.5*ones(1,2) -0.3] 
disp('pone le componenti 1, 2 e 5 di x uguali a 0.5, 0.5 e -0.3, rispettivamente')
pause
%
x = [1:-0.1:0]
y = x(end:-1:1) 
disp('definisce un vettore y, le cui componenti sono quelle del vettore x ordinate dall"ultima alla prima')

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_2*****************')
disp('***********************************************')

A = [1:4;5:8;9:12] % A è una matrice di dimensioni 3x4
size(A) 
disp('fornisce il numero delle righe e il numero delle colonne della matrice A')
pause

B = A.*A 
disp('definisce la matrice B di dimensioni 3x4 con elementi B(i,j)=A(i,j)*A(i,j)')
pause

%B=A*A 
disp('B=A*A generalmente definisce la matrice B come il prodotto righe per colonne della matrice A per se stessa,')
disp('ma in questo caso il prodotto righe per colonne non è definito e MATLAB invia un messaggio di errore') 
pause

B = A'*A 
disp('definisce la matrice B di dimensioni 4x4 come il prodotto righe per colonne della trasposta della matrice A per la matrice A')
pause

B = A*A' 
disp('definisce la matrice B di dimensioni 3x3 come il prodotto righe per colonne della matrice A per la trasposta della matrice A')
pause

A(1:2,4)
disp('estrae la sottomatrice di A formata dagli elementi appartenenti alle prime due righe e alla quarta colonna')
pause

A(3,2) = A(1,1) 
disp('pone l"elemento di posto (3,2) della matrice uguale all"elemento di posto (1,1)')
pause

A(1:2,4) = zeros(2,1) 
disp('pone gli elementi della sottomatrice di A, formata dagli elementi appartenenti alle prime due righe e alla quarta colonna, uguali a zero')
pause

A = [1:4;5:8;9:12]
A(2,:) = A(2,:)-A(2,1)/A(1,1)*A(1,:) 
disp('ridefinisce gli elementi della seconda riga di A come combinazione lineare degli elementi della seconda riga e della prima riga:')
disp('precisamente sottrae agli elementi della seconda riga gli elementi della prima riga moltiplicati per il fattore A(2,1)/A(1,1)')

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_3*****************')
disp('***********************************************')

A = [1:6;5:10;9:14;15:20]
%a)
B = A(:,6:-1:1)
pause
%b)
B = A(:,2:2:end)
pause
%c)
B = A(1:2:end,:)
pause
%d)
B = A([1 4 3],[5 2])
pause
%e)
diag(A)

disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_4*****************')
disp('***********************************************')

D = diag(5*ones(10,1));
CS = diag(3*ones(9,1),1);
CI = diag(-1*ones(9,1),-1);
B = D+CS+CI
B([5 8],[6 9]) = 2

disp('**********************************************FINE ESERCIZIO**********************************************')
pause%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
clc
disp('***********************************************')
disp('*****************esercizio_0_5*****************')
disp('***********************************************')
x = linspace(-pi,pi);
y = sin(x);
figure
plot(x,y,'b','linewidth',2)
title('sin(x)')

pause
close
%
x = linspace(-1,1);
y = exp(x);
figure
plot(x,y,'r','linewidth',2)
title('exp(x)')

pause
close
%
x = linspace(-5,5);
y = exp(-x.^2);
figure
plot(x,y,'g','linewidth',2)
title('exp(-x^2)')

pause
close
%
x = linspace(0.001,4*pi,1000);
y = sin(x)./x;
figure
plot(x,y,'m','linewidth',2)
title('sin(x)/x')

pause
close
%
%
x = linspace(0.001,2,10000);
y = x.*sin(1./x);
figure
plot(x,y,'k','linewidth',2)
title('xsin(1/x)')


disp('**********************************************FINE ESERCIZIO**********************************************')
pause
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc
disp('*****************esercizio_0_6*****************')
disp('***********************************************')
x = linspace(0.1,100,10000);
y = sqrt((100*(1-0.01*x.^2).^2+0.02*x.^2)./((1-x.^2).^2+0.1*x.^2));

figure
plot(x,y,'linewidth',2)
pause

figure
loglog(x,y,'linewidth',2)

disp('**********************************************FINE ESERCIZIO**********************************************')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc
disp('*****************esercizio_0_7*****************')
disp('***********************************************')
x = 1;
fx = val_f(x)
x = linspace(-1,1,5);
fx = val_f(x)
plot(x,fx)
disp('**********************************************FINE ESERCIZIO**********************************************')
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear all
close all
clc
disp('*****************esercizio_0_8*****************')
disp('***********************************************')
x = 1;
toll = 1.0e-10;
[v,i] = taylor_exp(x,toll)
err = abs(v-exp(x))/abs(exp(x))