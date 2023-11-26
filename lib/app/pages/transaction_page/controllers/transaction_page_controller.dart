import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:sakuku_app/app/models/transaction_model.dart';
import 'package:sakuku_app/app/routes/app_pages.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';

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
          .where("email", isEqualTo: FirebaseAuth.instance.currentUser!.email)
          .get();
      hasil.docs.forEach((doc) async {
        String docId = doc.id;
        int currentBalance = doc["balance"];
        int currentIncome = doc["last_income"];
        int currentExpense = doc["last_expense"];
        int updatedBalance = currentBalance;
        int updatedIncome = currentIncome;
        int updatedExpense = currentExpense;
        if (nominalPemasukanController!.text.isNotEmpty) {
          updatedIncome += int.parse(nominalPemasukanController!.text
              .replaceAll(RegExp(r'[^\d]'), ''));
          updatedBalance += int.parse(nominalPemasukanController!.text
              .replaceAll(RegExp(r'[^\d]'), ''));
        } else if (nominalPengeluaranController!.text.isNotEmpty) {
          updatedExpense += int.parse(nominalPengeluaranController!.text
              .replaceAll(RegExp(r'[^\d]'), ''));
          updatedBalance -= int.parse(nominalPengeluaranController!.text
              .replaceAll(RegExp(r'[^\d]'), ''));
        }
        await FirebaseFirestore.instance.collection("users").doc(docId).update({
          "last_income": updatedIncome,
          "last_expense": updatedExpense,
          "balance": updatedBalance,
        });
      });
    } catch (e) {
      print(e);
    }
  }

  getDateFromUserIncoming() async {
   await showCupertinoModalPopup(
      context: Get.context!,
      builder: (context) {
        return Container(
          height: sizeHeight * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: thirdColor,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pilih Tanggal",
                          style: GoogleFonts.poppins(
                            color: primaryTextColorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: figmaFontsize(18),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "Sesuaikan dengan pemasukanmu",
                          style: GoogleFonts.poppins(
                            color: primaryTextColorGrey,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            fontSize: figmaFontsize(12),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: secondaryColor,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          "Done",
                          style: GoogleFonts.poppins(
                            fontSize: figmaFontsize(13),
                            color: primaryTextColorWhite,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: backgroundColor,
                  child: CupertinoDatePicker(
                    initialDateTime: selectedTanggalPemasukan.value,
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (value) {
                      selectedTanggalPemasukan.value = value;
                      update();
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  getDateFromUserExit() async {
     await showCupertinoModalPopup(
      context: Get.context!,
      builder: (context) {
        return Container(
          height: sizeHeight * 0.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
            color: thirdColor,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Pilih Tanggal",
                          style: GoogleFonts.poppins(
                            color: primaryTextColorBlack,
                            fontWeight: FontWeight.bold,
                            fontSize: figmaFontsize(18),
                            decoration: TextDecoration.none,
                          ),
                        ),
                        Text(
                          "Sesuaikan dengan pengeluaranmu",
                          style: GoogleFonts.poppins(
                            color: primaryTextColorGrey,
                            height: 1.2,
                            fontWeight: FontWeight.w500,
                            fontSize: figmaFontsize(12),
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 35,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: secondaryColor,
                      ),
                      child: TextButton(
                        onPressed: () {
                          Get.back();
                        },
                        child: Text(
                          "Done",
                          style: GoogleFonts.poppins(
                            fontSize: figmaFontsize(13),
                            color: primaryTextColorWhite,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  color: backgroundColor,
                  child: CupertinoDatePicker(
                    initialDateTime: selectedTanggalPengeluaran.value,
                    mode: CupertinoDatePickerMode.date,
                    onDateTimeChanged: (value) {
                      selectedTanggalPengeluaran.value = value;
                      update();
                    },
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
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
