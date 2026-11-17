<p align="center">
  <img src="docs/preview/hero.svg" alt="Masjidkorea — ilustrasi aplikasi direktori masjid Korea" width="100%">
</p>

<h1 align="center">Masjidkorea</h1>

<p align="center">
  <b>Direktori masjid di Korea Selatan, dari Flutter sampai Firebase.</b><br>
  Flutter app · Firebase Functions · Hosting
</p>

<p align="center">
  <a href="https://flutter.dev"><img alt="Flutter" src="https://img.shields.io/badge/Flutter-3.x-02569B?logo=flutter&logoColor=white"></a>
  <img alt="BLoC" src="https://img.shields.io/badge/State-BLoC%20(Cubit)-2496ED">
  <a href="https://firebase.google.com"><img alt="Firebase" src="https://img.shields.io/badge/Backend-Firebase-FFCA28?logo=firebase&logoColor=black"></a>
  <img alt="Platform" src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-lightgrey">
</p>

---

## ✨ Preview

<p align="center">
  <img src="docs/preview/hero.png" alt="Mockup gelap Masjidkorea" width="90%">
</p>

> **Catatan:** gambar di atas adalah *ilustrasi konsep*, bukan screenshot asli.

---

## 📖 Tentang

Versi full-stack dari direktori masjid Korea: aplikasi Flutter untuk pengguna, Firebase
Cloud Firestore untuk data, Cloud Functions untuk logika backend, dan Firebase Hosting
untuk build web (`public/`).

---

## 🌟 Fitur

- 🕌 **Home** — daftar masjid
- 🔎 **Pencarian** masjid
- 📄 **Detail** masjid dengan galeri foto
- ⭐ **Favorit**
- 👥 **Komunitas masjid**
- 📰 **Blog**
- 🏛️ **Fasilitas utama**
- 🌐 **Versi web** lewat Firebase Hosting

---

## 🛠️ Tech Stack

| Area | Pilihan |
|---|---|
| App | Flutter (Android, iOS, Web) |
| State management | BLoC / Cubit |
| Database | Cloud Firestore |
| Backend | Firebase Cloud Functions |
| Hosting | Firebase Hosting |
| Lainnya | Google Fonts, `share_plus`, `http`, `google_cloud` |

---

## 🚀 Menjalankan

Aplikasi:

```bash
flutter pub get
flutter run
```

Backend (Cloud Functions):

```bash
cd functions
npm install
firebase deploy --only functions
```

Deploy web:

```bash
flutter build web
firebase deploy --only hosting
```

---

## 🔐 Keamanan Data

Aturan akses Firestore ada di [`firestore.rules`](firestore.rules), indeks di
[`firestore.indexes.json`](firestore.indexes.json), dan konfigurasi CORS di [`cors.json`](cors.json).
