import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:sakuku_app/app/models/transaction_model.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';

class TransactionPageController extends GetxController {
  // final money = NumberFormat("#,##0", "en_US").format(0).obs;
  final RxList listTransaksi = [].obs;
  final RxInt balance = 0.obs;
  final RxInt idTransaction = 0.obs;
  final RxInt selectedTransaksi = 0.obs;
  final RxString selectedTransaksiName = "Pemasukan".obs;
  final RxInt selectedKategoriPengeluaran = 0.obs;
  final RxString selectedKategoriPengeluaranName = "Belanja".obs;
  TextEditingController? nominalPengeluaranController;
  TextEditingController? catatanPengeluaranController;
  Rx<DateTime> selectedTanggalPengeluaran = DateTime.now().obs;
  Rx<DateTime> selectedTanggalPemasukan = DateTime.now().obs;
  TextEditingController? nominalPemasukanController;
  TextEditingController? catatanPemasukanController;
  TextEditingController? sumberPemasukanController;

  RxList listKategoriPengeluaran = [
    "Belanja",
    "Dana Darurat",
    "Ibadah",
    "Pendidikan",
    "Liburan",
    "Lainnya"
  ].obs;

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
      final hasil = await FirebaseFirestore.instance
          .collection("transaction")
          .add(transactionModel!.toMap());
      await hasil.collection("transaction").doc(hasil.id).update({
        "habitId": hasil.id,
      });
    } catch (e) {
      print(e);
    }
  }

  Future<void> updateBalance() async {
    try {
      final hasil = await FirebaseFirestore.instance
          .collection('users')
          .where("email", isEqualTo: 'radya@gmail.com')
          .get();
      hasil.docs.forEach((doc) async {
        String docId = doc.id;
        int currentBalance = doc["balance"];
        int updatedBalance = currentBalance;
        if (nominalPemasukanController!.text.isNotEmpty) {
          updatedBalance += int.parse(nominalPemasukanController!.text
              .replaceAll(RegExp(r'[^\d]'), ''));
        } else if (nominalPengeluaranController!.text.isNotEmpty) {
          updatedBalance -= int.parse(nominalPengeluaranController!.text
              .replaceAll(RegExp(r'[^\d]'), ''));
        }
        await FirebaseFirestore.instance.collection("users").doc(docId).update({
          "balance": updatedBalance,
        });
      });
    } catch (e) {
      print(e);
    }
  }

  getDateFromUserIncoming() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedTanggalPemasukan.value,
      firstDate: DateTime(2015),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      selectedTanggalPemasukan.value = pickedDate;
      update();
    }
  }

  getDateFromUserExit() async {
    DateTime? pickedDate = await showDatePicker(
      context: Get.context!,
      initialDate: selectedTanggalPengeluaran.value,
      firstDate: DateTime(2015),
      lastDate: DateTime(2101),
    );
    if (pickedDate != null) {
      selectedTanggalPengeluaran.value = pickedDate;
      update();
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
      if (nominalPemasukanController!.text.isNotEmpty) {
        addTransaction(
            transactionModel: TransactionModel(
          id: idTransaction.value,
          jenisTransaksi: selectedTransaksiName.value,
          nominalTransaksiPemasukan: int.parse(nominalPemasukanController!.text
              .replaceAll(RegExp(r'[^\d]'), '')),
          sumberPemasukan: sumberPemasukanController!.text,
          catatanTransaksiPemasukan: catatanPemasukanController!.text,
          tanggalTransaksiPemasukan: DateFormat.yMd()
              .format(selectedTanggalPemasukan.value)
              .toString(),
          nominalTransaksiPengeluaran: 0,
          kategoriPengeluaran: null,
          catatanTransaksiPengeluaran: null,
          tanggalTransaksiPengeluaran: null,
          timestamp: Timestamp.fromDate(DateTime.now()),
        ));
        updateBalance();
        Get.offAllNamed(Routes.NAVIGATOR_COMPONENT);
      } else if (nominalPengeluaranController!.text.isNotEmpty) {
        addTransaction(
            transactionModel: TransactionModel(
          id: idTransaction.value,
          jenisTransaksi: selectedTransaksiName.value,
          nominalTransaksiPemasukan: 0,
          sumberPemasukan: null,
          catatanTransaksiPemasukan: null,
          tanggalTransaksiPemasukan: null,
          nominalTransaksiPengeluaran: int.parse(nominalPengeluaranController!
              .text
              .replaceAll(RegExp(r'[^\d]'), '')),
          kategoriPengeluaran: selectedKategoriPengeluaranName.value,
          catatanTransaksiPengeluaran: catatanPengeluaranController!.text,
          tanggalTransaksiPengeluaran: DateFormat.yMd()
              .format(selectedTanggalPengeluaran.value)
              .toString(),
          timestamp: Timestamp.fromDate(DateTime.now()),
        ));
        updateBalance();
        Get.offAllNamed(Routes.NAVIGATOR_COMPONENT);
      }
    } else {
      Get.snackbar("Gagal", "Nominal tidak boleh kosong");
    }
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> stremAllTransaction() async* {
    yield* FirebaseFirestore.instance
        .collection("transaction")
        .orderBy('timestamp', descending: true)
        .snapshots();
  }
}
