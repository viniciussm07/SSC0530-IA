% Fatos

gosta(ana, pedro).
gosta(ana, bruno).
gosta(joao, ana).

mulher(ana).
filho(paulo, ana).
filho(jose, paulo).

% Regras
mae(X) :-
    mulher(X),
    filho(Y, X),
    X \=Y.

avó(X) :-
    mulher(X),
    filho(Y, X),
    filho(Z, Y),
    X \=Y.