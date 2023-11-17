import 'package:cloud_firestore/cloud_firestore.dart';

class TransactionModel {
  int? id;
  String? jenisTransaksi;
  int? nominalTransaksiPengeluaran;
  String? kategoriPengeluaran;
  String? catatanTransaksiPengeluaran;
  String? tanggalTransaksiPengeluaran;
  int? nominalTransaksiPemasukan;
  String? sumberPemasukan;
  String? catatanTransaksiPemasukan;
  String? tanggalTransaksiPemasukan;
  Timestamp? timestamp;

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
     this.timestamp,
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
      'timestamp': timestamp ?? Timestamp.now(),
    };
  }

  factory TransactionModel.fromMap(Map<String, dynamic> map) {
    return TransactionModel(
      id: map['id'] ?? 0,
      jenisTransaksi: map['jenisTransaksi'] ?? "",
      nominalTransaksiPengeluaran: map['nominalTransaksiPengeluaran'] ?? 0,
      kategoriPengeluaran: map['kategoriPengeluaran'] ?? "",
      catatanTransaksiPengeluaran: map['catatanTransaksiPengeluaran'] ?? "",
      tanggalTransaksiPengeluaran: map['tanggalTransaksiPengeluaran'] ?? "",
      nominalTransaksiPemasukan: map['nominalTransaksiPemasukan'] ?? 0,
      sumberPemasukan: map['sumberPemasukan'] ?? "",
      catatanTransaksiPemasukan: map['catatanTransaksiPemasukan'] ?? "",
      tanggalTransaksiPemasukan: map['tanggalTransaksiPemasukan'] ?? "",
      timestamp: map['timestamp'] ?? Timestamp.now(),
    );
  }
}
