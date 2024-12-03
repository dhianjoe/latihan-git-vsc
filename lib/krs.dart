import 'mahasiswa.dart';
import 'mata_kuliah.dart';

class KRS {
  Mahasiswa mahasiswa;
  List<MataKuliah> daftarMataKuliah = [];

  KRS(this.mahasiswa);

  void tambahMataKuliah(MataKuliah mataKuliah) {
    daftarMataKuliah.add(mataKuliah);
    print("Mata kuliah ${mataKuliah.nama} berhasil ditambahkan.");
  }

  void cetakKRS() {
    print("\n--- KRS Mahasiswa ---");
    mahasiswa.tampilkanData();
    print("Daftar Mata Kuliah:");
    for (var mk in daftarMataKuliah) {
      mk.tampilkanInfo();
    }
  }
}
