% fatos
aresta(a, b).
aresta(a, c).
aresta(b, d).
aresta(b, e).
aresta(c, f).
aresta(e, g).
aresta(e, h).

% regras
caminho1(O, D, Cam) :-
    caminho2([[O]], D, CamInv),
    inverte(CamInv, Cam).
caminho2([[D|C]|_], D, [D|C]).
caminho2([[A|R]|Outros], D, C) :-
    todos_filhos(A, R, L),
    append(L, Outros, L1),
    caminho2(L1, D, C).

inverte([], []).
inverte([H|T], I) :-
    inverte(T, IT),
    append(IT, [H], I).

todos_filhos(A, R, L) :-
    findall([X, A | R], (aresta(A, X), \+ member(X, [A | R])), L).