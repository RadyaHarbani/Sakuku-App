import 'package:flutter/material.dart';
import 'package:sakuku_app/app/pages/profile_page/views/widgets/button_text_pengaturan.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/profile_page_themes.dart';

class InformasiPengaturanComponent extends StatelessWidget {
  const InformasiPengaturanComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth * 0.89,
      height: sizeHeight * 0.385,
      decoration: BoxDecoration(
        color: aboveBackgroundColor,
        borderRadius: defaulBorderRadius,
        boxShadow: defaultBoxShadow,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.06,
          vertical: sizeHeight * 0.025,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Informasi & Pengaturan",
              style: titleInformasiPengaturan,
            ),
            //transaksi dicatat
            //tabungan yang tercapai
            //status keuangan
            SizedBox(
              height: sizeHeight * 0.025,
            ),
            Container(
              width: sizeWidth * 0.8,
              height: sizeHeight * 0.275,
              child: Column(
                children: [
                  ButtonTextPengaturan(
                    namaIcon: iconMail,
                    scaleIcon: 24,
                    namaPengaturan: 'FAQ',
                    isWithChip: false,
                  ),
                  ButtonTextPengaturan(
                    namaIcon: iconKebijakanPrivasi,
                    scaleIcon: 25,
                    namaPengaturan: 'Kebijakan Privasi',
                    isWithChip: false,
                  ),
                  ButtonTextPengaturan(
                    namaIcon: iconShare,
                    scaleIcon: 25,
                    namaPengaturan: 'Share',
                    isWithChip: false,
                  ),
                  ButtonTextPengaturan(
                    namaIcon: iconlock,
                    scaleIcon: 25,
                    namaPengaturan: 'Syarat & Ketentuan',
                    isWithChip: false,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

