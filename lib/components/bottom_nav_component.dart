import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sakuku_app/components/bottom_sheet_content.dart';
import 'package:sakuku_app/helpers/themes.dart';
import 'package:sakuku_app/modules/home_page/controllers/home_page_controller.dart';

class BottomNavComponent extends StatelessWidget {
  BottomNavComponent({super.key});
  final controller = Get.put(HomePageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: generalBackgroundColor,
      floatingActionButton: Container(
        width: 186,
        height: 45,
        child: ElevatedButton(
          onPressed: () {
            Get.bottomSheet(
              BottomSheetComponent(),
              backgroundColor: generalBackgroundColor,
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
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: fourthColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
          ),
        ),
      ),
      body: Obx(
        () => controller.listPageValue[controller.currentIndexBottomNav.value],
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        height: sizeWidth * .160,
        color: generalBackgroundColor,
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
                      color: secondaryColor,
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
                          ? secondaryColor
                          : primaryColor,
                    )),
                SizedBox(height: sizeWidth * .03),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
