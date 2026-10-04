matkul(ai, sulit, teori).
matkul(pemrograman_web, sedang, praktek).
matkul(jaringan, sedang, teori).
matkul(data_mining, sulit, teori).
matkul(pemrograman_mobile, sulit, praktek).
matkul(basis_data, mudah, praktek).

% contoh preferensi (bisa kamu ubah)
minat(praktek).
tingkat(sedang).


rekomendasi(Matkul) :-
    matkul(Matkul, Level, Tipe),
    minat(Tipe),
    cocok_level(Level).

cocok_level(mudah).
cocok_level(sedang).

tampilkan_rekomendasi :-
    rekomendasi(X),
    write('Rekomendasi mata kuliah: '),
    write(X), nl,
    fail.

tampilkan_rekomendasi.