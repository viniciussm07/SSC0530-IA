% Fatos



% Regras
pertence(X, [X|R]).
pertence(X, [Y|R]):-
    pertence(X, R).

append([], L, L).
append([C1 | R1], L2, [C1 | R]):-
    append(R1, L2, R).

proximas(X,Y):- conectada(X,Y,L).
proximas(X,Y):- conectada(X,Y,Z), conectada(Z,Y,L).

% ? append([a, b], [c, d, e], L).
% L = [a, b, c, d, e]
