import 'package:flutter/material.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/text_style_themes/profile_page_themes.dart';

class KhususBuatKamuComponent extends StatelessWidget {
  const KhususBuatKamuComponent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth * 0.89,
      height: sizeHeight * 0.35,
      decoration: BoxDecoration(
        color: aboveBackgroundColor,
        borderRadius: defaulBorderRadius,
        boxShadow: defaultBoxShadow,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: sizeWidth * 0.06,
          vertical: sizeHeight * 0.02,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Khusus Buat Kamu",
              style: titleKhususBuatKamu,
            ),
            //transaksi dicatat
            //tabungan yang tercapai
            //status keuangan
            SizedBox(
              height: sizeHeight * 0.025,
            ),
            Container(
              width: sizeWidth * 0.8,
              height: sizeHeight * 0.24,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: sizeHeight * 0.11,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: defaulBorderRadius,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sizeWidth * 0.02,
                      ),
                      Expanded(
                        child: Container(
                          height: sizeHeight * 0.11,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: defaulBorderRadius,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: sizeHeight * 0.01,
                  ),
                  Container(
                    height: sizeHeight * 0.12,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: defaulBorderRadius,
                    ),
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
