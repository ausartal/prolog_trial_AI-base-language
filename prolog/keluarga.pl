%3124600024
% Facts: anak(Parent, Child)
anak(anto, deni).
anak(anto, ita).
anak(anto, budi).
anak(anto, ida).
anak(wati, deni).
anak(wati, ita).
anak(wati, budi).
anak(wati, ida).
anak(deni, hadi).
anak(budi, dina).
anak(budi, andi).
anak(ida, rudi).
anak(rudi, rita).

% Gender facts
laki_laki(anto).
laki_laki(deni).
laki_laki(budi).
laki_laki(rudi).
laki_laki(andi).
laki_laki(hadi).

perempuan(wati).
perempuan(ita).
perempuan(ida).
perempuan(dina).
perempuan(rita).

% Rules
orang_tua(X, Y) :- anak(X, Y).

saudara(X, Y) :-
    anak(Z, X),
    anak(Z, Y),
    X \= Y.

saudara_laki(X, Y) :-
    saudara(X, Y),
    laki_laki(X).

saudara_perempuan(X, Y) :-
    saudara(X, Y),
    perempuan(X).

paman(X, Y) :-
    orang_tua(Z, Y),
    saudara(X, Z),
    laki_laki(X).

bibi(X, Y) :-
    orang_tua(Z, Y),
    saudara(X, Z),
    perempuan(X).

kakek(X, Y) :-
    orang_tua(X, Z),
    orang_tua(Z, Y),
    laki_laki(X).

nenek(X, Y) :-
    orang_tua(X, Z),
    orang_tua(Z, Y),
    perempuan(X).
