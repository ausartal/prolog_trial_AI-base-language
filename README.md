<div align="center">

# 🧠 Prolog Trial — AI Base Language

### Eksperimen Kecerdasan Buatan dengan Prolog, Java & Python

Kumpulan uji-coba bahasa dasar AI: representasi pengetahuan & penalaran
logika di **Prolog**, serta algoritma *search* klasik di **Java** dan **Python**.

<br>

![Prolog](https://img.shields.io/badge/Prolog-SWI--Prolog-2C6DED?style=for-the-badge&logo=prolog&logoColor=white)
![Java](https://img.shields.io/badge/Java-Search%20Algorithms-E76F00?style=for-the-badge&logo=openjdk&logoColor=white)
![Python](https://img.shields.io/badge/Python-Pathfinding-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Status](https://img.shields.io/badge/Status-Academic%20Trial-success?style=for-the-badge)
![License](https://img.shields.io/badge/License-Educational-lightgrey?style=for-the-badge)

</div>

---

## 📖 Tentang Repositori

Repositori ini berisi **trial bahasa dasar AI** — eksperimen kecil yang
mendemonstrasikan bagaimana mesin dapat *menalar* dari fakta dan aturan
(logika simbolik), serta bagaimana algoritma pencarian menemukan solusi
pada ruang masalah.

| Bahasa | Peran |
|:------:|:------|
| **Prolog** | Representasi fakta + aturan, penalaran deduktif, *query* relasi |
| **Java**   | Implementasi algoritma pencarian pada graf berbobot |
| **Python** | Pencarian jalur pada grid (BFS & A*) dengan visualisasi |

---

## 📂 Struktur Proyek

```
prolog_trial_AI-base-language/
│
├── 📁 prolog/                        # Representasi pengetahuan & penalaran
│   ├── anas.pl                       # Sistem pakar PNS (WNI, usia, pensiun)
│   ├── keluarga.pl                   # Relasi keluarga (saudara, paman, kakek…)
│   ├── matakuliah.pl                 # Preferensi matakuliah mahasiswa teknik
│   ├── organisasi_perusahaan.pl      # Hirarki perusahaan (rekursif anak_buah)
│   ├── pompeian.pl                   # Logika mortalitas Marcus si Pompeian
│   └── switest.pl                    # Rekomendasi matakuliah berbasis minat
│
├── 📁 java/
│   └── SearchAlgorithms.java         # BFS, DFS, Hill Climbing, Best-First, A*
│
├── 📁 python/
│   └── Trial.py                      # BFS & A* pada grid 2D + visualisasi jalur
│
├── 📁 docs/
│   └── Kimia.txt                     # Catatan konsep asesmen adaptif (AKURAT)
│
├── .gitignore
└── README.md
```

---

## 🗂️ Daftar Isi Berkas

<details open>
<summary><b>Prolog — Logika & Penalaran</b></summary>

| Berkas | Topik | Deskripsi Singkat |
|:-------|:------|:------------------|
| `prolog/anas.pl` | 🏛️ Sistem Pakar PNS | Fakta `wni`, `lulusan_sd`, `lahir`; aturan `bisa_pns/1`, `pensiun/1`, `usia_daftar/2` — kelayakan menjadi PNS berdasarkan usia saat mendaftar (≤ 35) dan masa pensiun (≥ 60). |
| `prolog/keluarga.pl` | 👨‍👩‍👧‍👦 Relasi Keluarga | Fakta `anak/2`, `laki_laki/1`, `perempuan/1`; aturan `saudara`, `paman`, `bibi`, `kakek`, `nenek` — silsilah keluarga multi-generasi. |
| `prolog/matakuliah.pl` | 🎓 Preferensi Matakuliah | Fakta mahasiswa/jurusan & matakuliah sulit; aturan `suka/2`, `benci/2`, `tidak_suka/2` dengan negasi `\+` (*closed-world assumption*). |
| `prolog/organisasi_perusahaan.pl` | 🏢 Organisasi Perusahaan | Fakta `bawahan_langsung/2`; aturan `anak_buah/2` **rekursif** untuk menelusuri hirarki sampai level terbawah. |
| `prolog/pompeian.pl` | ⚔️ Logika Klasik | Fakta tentang Marcus (manusia, Pompeian); aturan `mortal/1`, `dead/1`, `age/2` — contoh klasik penalaran temporal & mortalitas. |
| `prolog/switest.pl` | 💡 Rekomendasi Matakuliah | Fakta `matkul/3` (tingkat & tipe); aturan `rekomendasi/1`, `cocok_level/1`, `tampilkan_rekomendasi/0` — sistem rekomendasi sederhana berbasis minat praktik/teori. |

</details>

<details open>
<summary><b>Java — Algoritma Pencarian Graf</b></summary>

| Berkas | Topik | Deskripsi Singkat |
|:-------|:------|:------------------|
| `java/SearchAlgorithms.java` | 🔍 Search Algorithms | Graf berbobot + heuristik: **BFS**, **DFS**, **Hill Climbing**, **Best-First Search**, dan **A\***. Demo `main` pada graf A→B→C→D→G. |

</details>

<details open>
<summary><b>Python — Pencarian Jalur Grid</b></summary>

| Berkas | Topik | Deskripsi Singkat |
|:-------|:------|:------------------|
| `python/Trial.py` | 🗺️ Pathfinding Grid | Grid 2D (0 = jalur, 1 = dinding); **BFS** & **A\*** dengan *heuristik Manhattan*, rekonstruksi jalur, dan visualisasi ASCII (`S` start, `G` goal, `*` jalur). |

</details>

<details open>
<summary><b>Dokumen — Catatan Konsep</b></summary>

| Berkas | Topik | Deskripsi Singkat |
|:-------|:------|:------------------|
| `docs/Kimia.txt` | 🧪 Asesmen Adaptif | Catatan konsep instrumen **AKURAT** (*Multistage Adaptive Testing* + *confidence rating*) untuk materi stoikiometri: domain/learner/adaptation model, bank soal IRT, dan pola klasifikasi miskonsepsi. |

</details>

> **Catatan penamaan:** berkas `Pempoeian.pl` (ejaan lama yang keliru) telah
> diganti namanya menjadi **`prolog/pompeian.pl`** — sesuai istilah *Pompeian*
> (orang Pompeii) yang menjadi topik berkas tersebut. Riwayat Git tetap utuh
> melalui `git mv`. Berkas `switest.pl` juga telah diperbaiki dari kesalahan
> ketik (`p` yang tersisa) yang mengakibatkan *syntax error*.

---

## 🚀 Cara Menjalankan

### 1️⃣ Prolog (SWI-Prolog)

Pastikan [SWI-Prolog](https://www.swi-prolog.org/) terpasang, lalu muat berkas dan jalankan *query*:

```bash
swipl
```

```prolog
?- [prolog/anas.pl].
?- bisa_pns(anas).
?- pensiun(anas).

?- [prolog/keluarga.pl].
?- saudara(deni, ita).
?- paman(deni, rita).

?- [prolog/switest.pl].
?- tampilkan_rekomendasi.
```

Jalankan langsung dari terminal:

```bash
swipl -g "tampilkan_rekomendasi, halt" prolog/switest.pl
```

### 2️⃣ Java

```bash
javac java/SearchAlgorithms.java
java -cp java SearchAlgorithms
```

**Keluaran:** jejak kunjungan tiap algoritma — BFS, DFS, Hill Climbing, Best-First, dan A*.

### 3️⃣ Python

```bash
python python/Trial.py
```

**Keluaran:** visualisasi grid dengan jalur BFS dan A\* (`S` = start, `G` = goal, `*` = rute).

---

## 🧩 Ide Utama yang Dieksplorasi

```
  Fakta  +  Aturan  ──▶  Penalaran Deduktif  ──▶  Jawaban (Query)
        │
        └─▶  Ruang Masalah  ──▶  Algoritma Search  ──▶  Jalur / Solusi
```

- **Knowledge Representation** — dunia dimodelkan sebagai fakta & aturan Prolog.
- **Deductive Reasoning** — mesin menyimpulkan jawaban baru dari yang diketahui.
- **Recursion** — penelusuran hirarki (keluarga, perusahaan) & mortalitas.
- **Search Strategies** — perbandingan *uninformed* (BFS/DFS) vs *informed* (Greedy/A*).
- **Heuristic** — jarak Manhattan & *heuristic cost* untuk memandu pencarian.

---

## 👨‍💻 Penulis

<div align="center">

**Ahmad Nabah Falah** *(Ausartal)*

![GitHub](https://img.shields.io/badge/GitHub-ausartal-181717?style=for-the-badge&logo=github&logoColor=white)

*Artificial Intelligence — Eksperimen Bahasa Dasar AI*

</div>

---

<div align="center">

⭐ *Jika bermanfaat, silakan beri bintang pada repositori ini!*

Terima kasih telah berkunjung. 🚀

</div>
