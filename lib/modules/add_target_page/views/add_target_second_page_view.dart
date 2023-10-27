import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/components/button_add_target_page.dart';
import 'package:sakuku_app/components/textfield_add_target_page.dart';
import 'package:sakuku_app/helpers/themes.dart';

class AddTargetSecondPageView extends StatelessWidget {
  const AddTargetSecondPageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.close,
              size: 22,
              color: Colors.black,
            ),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: EdgeInsets.only(right: 20, left: 20, top: 5),
              height: 148,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '25%',
                    style: GoogleFonts.poppins(
                        color: secondaryColor,
                        fontSize: figmaFontsize(11),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Apa kategori mu saat ini?',
                    style: GoogleFonts.poppins(
                        fontSize: figmaFontsize(15),
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '*Wajib kamu isi',
                    style: GoogleFonts.poppins(
                        color: warningColor,
                        fontSize: figmaFontsize(11),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 26),
                  TextFieldAddTarget(),
                ],
              ),
            ),
            Column(
              children: [
                Image.asset(footerTarget),
                Container(
                    height: 8,
                    width: MediaQuery.of(context).size.width / 4,
                    color: Color(0xFF00E7B1)),
                ButtonAddTargetPage()
              ],
            )
          ],
        ));
  }
}
