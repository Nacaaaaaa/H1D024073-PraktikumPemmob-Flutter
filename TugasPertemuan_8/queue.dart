class Queue<T> {
  //list sebagai penyimpan data
  final List<T> _items = [];

  //enqueue untuk menambahkan elemen yang posisinya paling belakang
  void enqueue(T element) {
    _items.add(element);
    print("$element telah masuk ke dalam antrian");
  }

  //pop (dequeue) untuk menghapus elemen yang posisinya paling depan
  T? pop() {
    if (isEmpty) {
      print("Antrian kosong, tidak ada data yang bisa di-pop.");
      return null;
    }
    //menghapus elemen di indeks 0, yaitu yang paling depan dan mengembalikan nilainya
    T removedItem = _items.removeAt(0);
    print("$removedItem telah keluar dari antrian");
    return removedItem;
  }

  //untuk mengecek apakah antrian kosong
  bool get isEmpty => _items.isEmpty;

  //untuk mengecek jumlah elemen dalam antrian
  int get length => _items.length;

  @override
  String toString() => "Isi antrian: $_items";
}

void main() {
  //membuat instance queue untuk tipe data String
  Queue<String> antreanPelanggan = Queue<String>();

  //memasukkan data ke antrian (enqueue)
  antreanPelanggan.enqueue("Nalendra");
  antreanPelanggan.enqueue("Wicaksana");
  antreanPelanggan.enqueue("H1D024073");

  print(antreanPelanggan);

  print("\nProses Antrian yang Sedang Berlangsung:\n");
  //mengeluarkan data dari antrian pop/dequeue
  antreanPelanggan.pop(); //Nalendra keluar, karena yang pertama masuk
  print(antreanPelanggan); //Output: Isi Antrian: [Wicaksana, H1D024073]
  antreanPelanggan.pop(); //Wicaksana keluar
  print(antreanPelanggan); //Output: Isi Antrian: [H1D024073]
}