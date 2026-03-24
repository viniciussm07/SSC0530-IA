% fatos
aresta(a, b).
aresta(a, c).
aresta(b, d).
aresta(b, e).
aresta(c, f).
aresta(e, g).
aresta(e, h).

% regras
caminho(O, D, Cam) :-
    caminho(O, D, [], CamInv),
    inverte(CamInv, Cam).
caminho(D, D, C, [D|C]).
caminho(A, D, Ac, C) :-
    aresta(A, X),
    not(member(X, Ac)),
    caminho(X, D, [A|Ac], C).
inverte([], []).
inverte([H|T], I) :-
    inverte(T, IT),
    append(IT, [H], I).

% queries
% findall(X, aresta(a, X) L).