class MataKuliah {
  String kode;
  String nama;
  int sks;

  MataKuliah(this.kode, this.nama, this.sks);

  void tampilkanInfo() {
    print("Kode: $kode");
    print("Nama: $nama");
    print("SKS: $sks");
  }
}
