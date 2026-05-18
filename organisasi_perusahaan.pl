% FACTS - 312400024
bawahan_langsung(adi, burhan).

bawahan_langsung(burhan, bahrun).
bawahan_langsung(burhan, bisrin).

bawahan_langsung(bahrun, anak).
bawahan_langsung(bahrun, farah).

bawahan_langsung(bisrin, ferdi).

% RULES
anak_buah(X, Y) :- bawahan_langsung(X, Y).
anak_buah(X, Y) :- bawahan_langsung(X, Z), anak_buah(Z, Y). 