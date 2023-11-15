import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sakuku_app/app/models/transaction_model.dart';

class TransactionPageController extends GetxController {
  final money = NumberFormat("#,##0", "en_US").format(0).obs;
  final RxList listTransaksi = [].obs;
  final RxInt idTransaction = 0.obs;
  final RxInt selectedTransaksi = 0.obs;
  final RxString selectedTransaksiName = "Pemasukan".obs;
  final RxInt selectedKategoriPengeluaran = 0.obs;
  final RxString selectedKategoriPengeluaranName = "Belanja".obs;
  TextEditingController? nominalPengeluaranController;
  TextEditingController? catatanPengeluaranController;
  DateTime selectedTanggalPengeluaran = DateTime.now();
  TextEditingController? nominalPemasukanController;
  TextEditingController? catatanPemasukanController;
  TextEditingController? sumberPemasukanController;

  @override
  void onInit() {
    super.onInit();
    nominalPengeluaranController = new TextEditingController();
    nominalPemasukanController = new TextEditingController();
    catatanPengeluaranController = new TextEditingController();
    catatanPemasukanController = new TextEditingController();
    sumberPemasukanController = new TextEditingController();
  }

  Future<void> addTransaction({TransactionModel? transactionModel}) async {
    try {
      var hasil = await FirebaseFirestore.instance
          .collection("transaction")
          .add(transactionModel!.toMap());
      await hasil.collection("transaction").doc(hasil.id).update({
        "habitId": hasil.id,
      });
    } catch (e) {
      print(e);
    }
  }

  getDateFromUser() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      selectedTanggalPengeluaran = pickedDate;
    } else {
      print("Date is not selected");
    }
  }

  void saveTransaction() async {
    idTransaction.value = idTransaction.value++;
    switch (selectedTransaksi.value) {
      case 0:
        selectedTransaksiName.value = "Pengeluaran";
        break;
      case 1:
        selectedTransaksiName.value = "Pemasukan";
        break;
    }
    switch (selectedKategoriPengeluaran.value) {
      case 0:
        selectedKategoriPengeluaranName.value = "Belanja";
        break;
      case 1:
        selectedKategoriPengeluaranName.value = "Dana Darurat";
        break;
      case 2:
        selectedKategoriPengeluaranName.value = "Ibadah";
        break;
      case 3:
        selectedKategoriPengeluaranName.value = "Pendidikan";
        break;
      case 4:
        selectedKategoriPengeluaranName.value = "Liburan";
        break;
      case 5:
        selectedKategoriPengeluaranName.value = "Lainnya";
        break;
    }
    if (nominalPengeluaranController!.text.isNotEmpty ||
        nominalPemasukanController!.text.isNotEmpty) {
      addTransaction(
          transactionModel: TransactionModel(
        id: idTransaction.value,
        jenisTransaksi: selectedTransaksiName.value,
        nominalTransaksiPengeluaran: nominalPengeluaranController!.text,
        kategoriPengeluaran: selectedKategoriPengeluaranName.value,
        catatanTransaksiPengeluaran: catatanPengeluaranController!.text,
        tanggalTransaksiPengeluaran: selectedTanggalPengeluaran.toString(),
        nominalTransaksiPemasukan: nominalPemasukanController!.text,
        sumberPemasukan: sumberPemasukanController!.text,
        catatanTransaksiPemasukan: catatanPemasukanController!.text,
        tanggalTransaksiPemasukan: selectedTanggalPengeluaran.toString(),
      ));
    } else {
      Get.snackbar("Gagal", "Nominal tidak boleh kosong");
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> streamTransaction() async* {
    yield* FirebaseFirestore.instance
        .collection("transaction")
        .orderBy("id", descending: true)
        .snapshots();
  }
}
