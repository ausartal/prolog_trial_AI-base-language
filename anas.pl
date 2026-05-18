% FACTS
wni(anas).
lulusan_sd(anas).
lahir(anas, 1952).
daftar_pns(anas, 1985).
tahun(2005).

% RULES
bisa_pns(X) :-
    wni(X),
    lulusan_sd(X),
    usia_daftar(X, U),


    
    U =< 35.

pensiun(X) :-
    bisa_pns(X),
    usia(X, U),
    U >= 60.

usia_daftar(X, U) :-
    lahir(X, L),
    daftar_pns(X, D),
    U is D - L.

usia(X, U) :-
    lahir(X, L),
    tahun(T),
    U is T - L.