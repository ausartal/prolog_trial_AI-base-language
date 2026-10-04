% FACTS
mahasiswa(andi).
jurusan(andi, elektro).
matakuliah_sulit(kalkulus).
tidak_hadir(andi, kalkulus).

% RULES
mahasiswa_teknik(X) :-
    mahasiswa(X),
    jurusan(X, elektro).

suka(X, Y) :-
    mahasiswa_teknik(X),
    matakuliah_sulit(Y),
    not(tidak_suka(X, Y)).

benci(X, Y) :-
    mahasiswa_teknik(X),
    matakuliah_sulit(Y),
    not(suka(X, Y)).

tidak_suka(X, Y) :-
    matakuliah_sulit(Y),
    tidak_hadir(X, Y).

suka(X, Y) :-
    mahasiswa(X),
    matakuliah(Y).






