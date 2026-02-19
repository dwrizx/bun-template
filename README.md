# Bun Template: High-Performance Tooling

Template Bun yang dioptimalkan untuk kecepatan pengembangan maksimal menggunakan ekosistem **Oxc** (`oxlint`, `oxfmt`) dan **tsgo**.

## 🚀 Fitur Utama

- **Runtime:** [Bun](https://bun.sh) - Cepat, all-in-one JavaScript runtime & package manager.
- **Linter Ultra Cepat:** Menggunakan `oxlint` (10-100x lebih cepat dari ESLint).
- **Formatter Kilat:** Menggunakan `oxfmt` (Alternatif Prettier yang sangat cepat).
- **Type-checker Instan:** Menggunakan `tsgo` untuk diagnosa TypeScript tanpa menunggu lama.
- **Struktur Rapi:** Kode sumber berada di dalam folder `src/`.
- **Integrasi VS Code:** Konfigurasi otomatis untuk format dan perbaikan lint saat simpan (Save).

## 🛠 Cara Penggunaan

### 1. Instalasi Dependensi

Gunakan Bun untuk menginstal semua package yang dibutuhkan:

```bash
bun install
```

### 2. Menjalankan Proyek

Untuk menjalankan file utama (`src/index.ts`):

```bash
bun run src/index.ts
```

Untuk mode pengembangan dengan _hot reload_:

```bash
bun --hot src/index.ts
```

### 3. Quality Control (Pemeriksaan Kode)

Template ini memiliki sistem pemeriksaan kualitas yang sudah diatur di `package.json`:

- **Cek Semua:** Jalankan pemeriksaan tipe, lint, dan format sekaligus.
  ```bash
  bun run check
  ```

````
- **Perbaikan Otomatis:** Perbaiki masalah lint dan format secara otomatis.
  ```bash
  bun run fix
````

- **Cek Cepat:** Hanya lint dan format (tanpa type-check) untuk iterasi cepat.
  ```bash
  bun run check:fast
  ```

```

## 📂 Struktur Direktori

- `src/`: Folder utama untuk kode sumber TypeScript.
- `.vscode/`: Konfigurasi editor untuk integrasi tooling otomatis.
- `.oxlintrc.json`: Pengaturan aturan linter.
- `.oxfmtrc.jsonc`: Pengaturan pemformatan kode.
- `SKILL.md`: Panduan teknis penggunaan stack tooling ini.
- `AGENTS.md`: Instruksi khusus untuk asisten AI (LLM).

## 📝 Konvensi Pengembangan

1. **Gunakan Primitif Bun:** Lebih disukai menggunakan API bawaan Bun (`Bun.file`, `Bun.serve`) daripada modul Node.js.
2. **Type Safety:** Hindari penggunaan `any`. Linter akan memberikan peringatan jika ditemukan.
3. **Format Otomatis:** Pastikan editor Anda menggunakan pengaturan yang ada di `.vscode/settings.json` agar kode selalu rapi secara konsisten.
```
