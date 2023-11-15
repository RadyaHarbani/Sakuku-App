class TransactionModel {
  int? id;
  String? jenisTransaksi;
  String? nominalTransaksiPengeluaran;
  String? kategoriPengeluaran;
  String? catatanTransaksiPengeluaran;
  String? tanggalTransaksiPengeluaran;
  String? nominalTransaksiPemasukan;
  String? sumberPemasukan;
  String? catatanTransaksiPemasukan;
  String? tanggalTransaksiPemasukan;

  TransactionModel({
     this.id,
     this.jenisTransaksi,
     this.nominalTransaksiPengeluaran,
     this.kategoriPengeluaran,
     this.catatanTransaksiPengeluaran,
     this.tanggalTransaksiPengeluaran,
     this.nominalTransaksiPemasukan,
     this.sumberPemasukan,
     this.catatanTransaksiPemasukan,
     this.tanggalTransaksiPemasukan,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'jenisTransaksi': jenisTransaksi,
      'nominalTransaksiPengeluaran': nominalTransaksiPengeluaran,
      'kategoriPengeluaran': kategoriPengeluaran,
      'catatanTransaksiPengeluaran': catatanTransaksiPengeluaran,
      'tanggalTransaksiPengeluaran': tanggalTransaksiPengeluaran,
      'nominalTransaksiPemasukan': nominalTransaksiPemasukan,
      'sumberPemasukan': sumberPemasukan,
      'catatanTransaksiPemasukan': catatanTransaksiPemasukan,
      'tanggalTransaksiPemasukan': tanggalTransaksiPemasukan,
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      id: map['id'] ?? "",
      jenisTransaksi: map['jenisTransaksi'] ?? "",
      nominalTransaksiPengeluaran: map['nominalTransaksiPengeluaran'] ?? "",
      kategoriPengeluaran: map['kategoriPengeluaran'] ?? "",
      catatanTransaksiPengeluaran: map['catatanTransaksiPengeluaran'] ?? "",
      tanggalTransaksiPengeluaran: map['tanggalTransaksiPengeluaran'] ?? "",
      nominalTransaksiPemasukan: map['nominalTransaksiPemasukan'] ?? "",
      sumberPemasukan: map['sumberPemasukan'] ?? "",
      catatanTransaksiPemasukan: map['catatanTransaksiPemasukan'] ?? "",
      tanggalTransaksiPemasukan: map['tanggalTransaksiPemasukan'] ?? "",
    );
  }
}
