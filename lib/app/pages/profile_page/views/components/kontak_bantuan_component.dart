import 'package:flutter/material.dart';
import 'package:sakuku_app/app/pages/profile_page/views/widgets/button_text_pengaturan.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/profile_page_themes.dart';

class KontakBantuanComponent extends StatelessWidget {
  const KontakBantuanComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth * 0.89,
      height: sizeHeight * 0.45,
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
              "Kontak & Bantuan",
              style: titleKontakBantuan,
            ),
            SizedBox(
              height: sizeHeight * 0.01,
            ),
            Text(
              "Punya kritik & saran apapun itu ke Sakuku?, bisa lewat dibawah ini yaa...",
              style: subtitleKontakBantuan,
            ),
            //transaksi dicatat
            //tabungan yang tercapai
            //status keuangan
            SizedBox(
              height: sizeHeight * 0.025,
            ),
            Container(
              width: sizeWidth * 0.8,
              height: sizeHeight * 0.285,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ButtonTextPengaturan(
                    namaIcon: iconWhatsapp,
                    scaleIcon: 24,
                    namaPengaturan: 'WhatsApp',
                    isWithChip: true,
                  ),
                  ButtonTextPengaturan(
                    namaIcon: iconNulis,
                    scaleIcon: 25,
                    namaPengaturan: 'Feedback',
                    isWithChip: false,
                  ),
                  ButtonTextPengaturan(
                    namaIcon: iconMail,
                    scaleIcon: 25,
                    namaPengaturan: 'Email',
                    isWithChip: false,
                  ),
                  SizedBox(
                    height: sizeHeight * 0.015,
                  ),
                  Text(
                    "Atau follow media sosial kami",
                    style: subtitleSosialMedia,
                  ),
                  SizedBox(
                    height: sizeHeight * 0.01,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        iconFacebook,
                        scale: 22,
                      ),
                      SizedBox(
                        width: sizeWidth * 0.02,
                      ),
                      Image.asset(
                        iconInstagram,
                        scale: 25,
                      ),
                      SizedBox(
                        width: sizeWidth * 0.02,
                      ),
                      Image.asset(
                        iconLinkedIn,
                        scale: 25,
                      ),
                    ],
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
