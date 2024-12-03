import 'mata_kuliah.dart';

class Nilai {
  MataKuliah mataKuliah;
  double nilai;

  Nilai(this.mataKuliah, this.nilai);

  String get predikat {
    if (nilai >= 85) return "A";
    if (nilai >= 70) return "B";
    if (nilai >= 55) return "C";
    if (nilai >= 40) return "D";
    return "E";
  }

  void tampilkanNilai() {
    print("${mataKuliah.nama} (${mataKuliah.sks} SKS): $nilai ($predikat)");
  }
}
