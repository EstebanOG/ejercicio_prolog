padrede('Esteban','Felipe').
padrede('Esteban','Cristhian').
padrede('Juan','Esteban').
padrede('Juan','Maria').
padrede('Andres','Juan').
padrede('Andrea','Juan').


%Reglas
abuelode(A,B):-padrede(A,C),padrede(C,B).
hijode(A,B):-padrede(B,A).
hermanode(A,B):- padrede(C,A),padrede(C,B),A\==B.
tiode(A,B):-abuelode(C,B),hijode(A,C),not(padrede(A,B)).
bisabuelode(A,B):-padrede(C,B),padrede(D,C),padrede(A,D).
casadocon(A,B):-padrede(A,C),padrede(B,C),A\==B.
esfeliz(A):-casadocon(A,_).
nietode(A,B):-abuelode(B,A).
bisnietode(A,B):-bisabuelode(B,A).
primode(A,B):-tiode(C,A),padrede(C,B);
esfamiliarde(A,B):-abuelode(A,B);abuelode(B,A);padrede(A,B);padrede(B,A);hijode(A,B);hijode(B,A);tiode(A,B);tiode(B,A);casadocon(A,B);hermanode(A,B);bisabuelode(A,B);bisabuelode(B,A);nietode(A,B);nietode(B,A);bisnietode(A,B);bisnietode(B,A);primode(A,B);primode(B,A).
familiade(X,L):-findall(Y,esfamiliarde(X,Y),L).
