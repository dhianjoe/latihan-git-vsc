import 'dart:io';

// Kelas MataKuliah
class MataKuliah {
  String kode;
  String nama;
  int sks;

  MataKuliah(this.kode, this.nama, this.sks);

  void tampilkanInfo() {
    print('Kode: $kode, Nama: $nama, SKS: $sks');
  }
}

// Kelas Nilai
class Nilai {
  MataKuliah mataKuliah;
  double nilai;

  Nilai(this.mataKuliah, this.nilai);

  // Menghitung predikat berdasarkan nilai
  String get predikat {
    if (nilai >= 85) return 'A';
    if (nilai >= 70) return 'B';
    if (nilai >= 55) return 'C';
    if (nilai >= 40) return 'D';
    return 'E';
  }

  void tampilkanNilai() {
    print('${mataKuliah.nama} (${mataKuliah.sks} SKS): $nilai ($predikat)');
  }
}

// Kelas Mahasiswa
class Mahasiswa {
  String nim;
  String nama;
  List<MataKuliah> mataKuliahList = [];

  Mahasiswa(this.nim, this.nama);

  void tambahMataKuliah(MataKuliah mk) {
    mataKuliahList.add(mk);
  }

  void inputNilai() {
    print('Input nilai untuk mahasiswa $nama (NIM: $nim)');
    for (var mk in mataKuliahList) {
      print('Masukkan nilai untuk mata kuliah ${mk.nama} (${mk.sks} SKS):');
      double nilai = double.parse(stdin.readLineSync()!); // Input nilai
      Nilai nilaiMahasiswa = Nilai(mk, nilai);
      nilaiMahasiswa.tampilkanNilai(); // Tampilkan nilai beserta predikatnya
    }
  }
}

void main() {
  // Membuat mahasiswa
  var mahasiswa = Mahasiswa('230103130', 'Dhian Joedhistiro');

  // Menambahkan mata kuliah yang diambil oleh mahasiswa
  var mk1 = MataKuliah('MK001', 'Pemrograman Dart', 3);
  var mk2 = MataKuliah('MK002', 'Struktur Data', 2);

  mahasiswa.tambahMataKuliah(mk1);
  mahasiswa.tambahMataKuliah(mk2);

  // Input nilai untuk setiap mata kuliah yang diambil oleh mahasiswa
  mahasiswa.inputNilai();
}
