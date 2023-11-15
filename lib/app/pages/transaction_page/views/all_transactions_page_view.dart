import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/models/transaction_model.dart';
import 'package:sakuku_app/app/pages/transaction_page/controllers/transaction_page_controller.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/transaction_page_themes.dart';

class AllTransactionsPageView extends StatelessWidget {
  AllTransactionsPageView({super.key});

  final controller = Get.put(TransactionPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Semua Transaksi",
          style: titleAllTransactionsStyle,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.1,
        toolbarHeight: 60,
      ),
      body: StreamBuilder(
        stream: controller.streamTransaction(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data!.docs.isEmpty) {
            return const Center(
              child: Text("No products"),
            );
          }
          controller.listTransaksi.clear();
          for (var element in snapshot.data!.docs) {
            controller.listTransaksi.add(
              TransactionModel.fromMap(
                element.data(),
              ),
            );
          }
          return ListView.builder(
            shrinkWrap: true,
            itemCount: controller.listTransaksi.length,
            padding: const EdgeInsets.all(20),
            itemBuilder: (context, index) {
              TransactionModel transaksi = controller.listTransaksi[index];
              return Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Container(
                    width: sizeWidth * 0.9,
                    height: sizeHeight * 0.11,
                    decoration: BoxDecoration(
                      color: primaryTextColorWhite,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 5,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: sizeWidth * 0.04,
                        ),
                        Image.asset(
                          transaksi.jenisTransaksi == "Pengeluaran" &&
                                  transaksi.kategoriPengeluaran == "Belanja"
                              ? iconBelanja
                              : transaksi.jenisTransaksi == "Pengeluaran" &&
                                      transaksi.kategoriPengeluaran ==
                                          "Dana Darurat"
                                  ? iconDanaDarurat
                                  : transaksi.jenisTransaksi == "Pengeluaran" &&
                                          transaksi.kategoriPengeluaran ==
                                              "Ibadah"
                                      ? iconIbadah
                                      : transaksi.jenisTransaksi ==
                                                  "Pengeluaran" &&
                                              transaksi.kategoriPengeluaran ==
                                                  "Pendidikan"
                                          ? iconPendidikan
                                          : transaksi.jenisTransaksi ==
                                                      "Pengeluaran" &&
                                                  transaksi
                                                          .kategoriPengeluaran ==
                                                      "Liburan"
                                              ? iconLiburan
                                              : transaksi.jenisTransaksi ==
                                                          "Pengeluaran" &&
                                                      transaksi
                                                              .kategoriPengeluaran ==
                                                          "Lainnya"
                                                  ? iconSumberPemasukan
                                                  : transaksi.jenisTransaksi ==
                                                          "Pemasukan"
                                                      ? iconPemasukan
                                                      : iconSumberPemasukan,
                          scale: 13,
                        ),
                        SizedBox(
                          width: sizeWidth * 0.04,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              transaksi.jenisTransaksi ?? "",
                              style: GoogleFonts.poppins(
                                fontSize: figmaFontsize(14),
                                fontWeight: FontWeight.bold,
                                color: primaryTextColorBlack,
                              ),
                            ),
                            SizedBox(
                              height: sizeHeight * 0.005,
                            ),
                            Builder(builder: (context) {
                              if (transaksi.jenisTransaksi == "Pengeluaran") {
                                return Text(
                                  transaksi.kategoriPengeluaran ?? "",
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(12),
                                    fontWeight: FontWeight.w600,
                                    color: primaryTextColorBlack,
                                  ),
                                );
                              } else {
                                return Text(
                                  transaksi.sumberPemasukan ?? "",
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(12),
                                    fontWeight: FontWeight.w600,
                                    color: primaryTextColorBlack,
                                  ),
                                );
                              }
                            }),
                            Builder(builder: (context) {
                              if (transaksi.jenisTransaksi == "Pengeluaran") {
                                return Text(
                                  transaksi.catatanTransaksiPengeluaran ?? "",
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(12),
                                    fontWeight: FontWeight.w600,
                                    color: primaryTextColorBlack,
                                  ),
                                );
                              } else {
                                return Text(
                                  transaksi.catatanTransaksiPemasukan ?? "",
                                  style: GoogleFonts.poppins(
                                    fontSize: figmaFontsize(12),
                                    fontWeight: FontWeight.w600,
                                    color: primaryTextColorBlack,
                                  ),
                                );
                              }
                            }),
                          ],
                        ),
                        Spacer(),
                        Builder(
                          builder: (context) {
                            if (transaksi.jenisTransaksi == "Pengeluaran") {
                              return Text(
                                "- Rp ${transaksi.nominalTransaksiPengeluaran}",
                                style: GoogleFonts.poppins(
                                  fontSize: figmaFontsize(14),
                                  fontWeight: FontWeight.w600,
                                  color: warningColor,
                                ),
                              );
                            } else {
                              return Text(
                                "+ Rp ${transaksi.nominalTransaksiPemasukan}",
                                style: GoogleFonts.poppins(
                                  fontSize: figmaFontsize(14),
                                  fontWeight: FontWeight.w600,
                                  color: successColor,
                                ),
                              );
                            }
                          },
                        ),
                        SizedBox(
                          width: sizeWidth * 0.04,
                        ),
                      ],
                    )),
              );
            },
          );
        },
      ),
    );
  }
}
