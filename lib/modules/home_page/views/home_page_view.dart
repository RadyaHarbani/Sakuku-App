import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/modules/home_page/controllers/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  bool _pinned = true;
  // const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          pinned: _pinned,
          backgroundColor: Color.fromRGBO(58, 71, 87, 1),
          expandedHeight: 200,
          flexibleSpace: Align(
              alignment: Alignment.topCenter,
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: figmaFontsize(24),
                            backgroundColor: Color.fromRGBO(217, 217, 217, 1),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 6),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Halo Bro,',
                                  style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Radya Harbani',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(13, 223, 162, 1),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            radius: figmaFontsize(24),
                            backgroundColor: Colors.black.withOpacity(0.19),
                            child: Icon(
                              Icons.notifications_none,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        )
      ],
    ));
  }
}
