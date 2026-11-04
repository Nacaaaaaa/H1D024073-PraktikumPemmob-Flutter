class Mahasiswa {
  String Nama;
  int Usia;

  Mahasiswa(this.Nama, this.Usia);

  void perkenalan() {
    print("Halo, saya $Nama dan saya berusia $Usia tahun");
  }
}

void main () {
  Mahasiswa mhs = Mahasiswa("Alice", 22);
  mhs.perkenalan();
}