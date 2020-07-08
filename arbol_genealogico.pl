padrede('Esteban','Felipe').
padrede('Esteban','Cristhian').
padrede('Juan','Esteban').
padrede('Juan','Maria').
padrede('Andres','Juan').
padrede('Andrea','Juan').


%Reglas
abuelode(A,B):-padrede(A,C),padrede(C,B).
hijode(A,B):-padrede(B,A).
tiode(A,B):-abuelode(C,B),hijode(A,C),not(padrede(A,B)).
%padrede(C,A),padrede(D,B),padrede(C,D).
bisabuelode(A,B):-padrede(C,B),padrede(D,C),padrede(A,D).
casadocon(A,B):-padrede(A,C),padrede(B,C),A\==B.
esfeliz(A):-casadocon(A,_).
