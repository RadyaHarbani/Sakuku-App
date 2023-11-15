import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/app/pages/home_page/views/components/navbar_component/bottom_sheet_content.dart';
import 'package:sakuku_app/helpers/themes/color_themes.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/app/pages/home_page/controllers/home_page_controller.dart';

class BottomNavComponent extends StatelessWidget {
  BottomNavComponent({super.key});
  final controller = Get.put(HomePageController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Obx(
        () => controller.listPageValue[controller.currentIndexBottomNav.value],
      ),
      floatingActionButton: Obx(
        () => controller.showButton.value
            ? Container()
            : Container(
                width: 188,
                height: 43,
                decoration: BoxDecoration(
                  boxShadow: defaultBoxShadow,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.bottomSheet(
                      BottomSheetComponent(),
                      backgroundColor: backgroundColor,
                      isScrollControlled: true,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.add_circle_rounded),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Catat Transaksi",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
      ),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        height: sizeWidth * .155,
        color: backgroundColor,
        child: ListView.builder(
          itemCount: 4,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          padding: EdgeInsets.symmetric(horizontal: sizeWidth * .024),
          itemBuilder: (context, index) => InkWell(
            onTap: () {
              controller.currentIndexBottomNav.value = index;
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => AnimatedContainer(
                    duration: Duration(milliseconds: 1500),
                    curve: Curves.fastLinearToSlowEaseIn,
                    margin: EdgeInsets.only(
                      bottom: index == controller.currentIndexBottomNav.value
                          ? 0
                          : sizeWidth * .029,
                      right: sizeWidth * .0422,
                      left: sizeWidth * .0422,
                    ),
                    width: sizeWidth * .128,
                    height: index == controller.currentIndexBottomNav.value
                        ? sizeWidth * .014
                        : 0,
                    decoration: BoxDecoration(
                      color: fourthColor,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Obx(() => Icon(
                      controller.listIconNav[index].icon,
                      size: sizeWidth * .076,
                      color: index == controller.currentIndexBottomNav.value
                          ? fourthColor
                          : primaryTextColorGrey.withOpacity(0.3),
                    )),
                SizedBox(height: sizeWidth * .02),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
