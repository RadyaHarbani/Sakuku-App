import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sakuku_app/app/pages/add_target_page/controllers/add_target_page_controller.dart';
import 'package:sakuku_app/app/pages/add_target_page/views/widgets/item_kategori.dart';
import 'package:sakuku_app/helpers/themes/default_themes.dart';
import 'package:sakuku_app/helpers/themes/icon_themes.dart';

class ListKategori extends StatelessWidget {
  ListKategori({super.key});
  final controller = Get.put(AddTargetsPageController());

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: RxList<Widget>.generate(
        7,
        (int index) => InkWell(
          onTap: () {
            controller.selectedCategory.value = index;
          },
          child: Column(
            children: [
              Obx(
                () => ItemKategori(
                  widthContainer: index == 0
                      ? sizeWidth * 0.25
                      : index == 1
                          ? sizeWidth * 0.25
                          : index == 2
                              ? sizeWidth * 0.25
                              : index == 3
                                  ? sizeWidth * 0.25
                                  : index == 4
                                      ? sizeWidth * 0.25
                                      : index == 5
                                          ? sizeWidth * 0.25
                                          : sizeWidth * 0.84,
                  heightText: index == 0
                      ? sizeHeight * 0.013
                      : index == 1
                          ? sizeHeight * 0.013
                          : index == 2
                              ? sizeHeight * 0.013
                              : index == 3
                                  ? sizeHeight * 0.013
                                  : index == 4
                                      ? sizeHeight * 0.013
                                      : index == 5
                                          ? sizeHeight * 0.013
                                          : sizeHeight * 0.045,
                  widthText: index == 0
                      ? sizeWidth * 0.001
                      : index == 1
                          ? sizeWidth * 0.001
                          : index == 2
                              ? sizeWidth * 0.001
                              : index == 3
                                  ? sizeWidth * 0.001
                                  : index == 4
                                      ? sizeWidth * 0.001
                                      : index == 5
                                          ? sizeWidth * 0.001
                                          : sizeWidth * 0.3,
                  namaKategori: index == 0
                      ? 'Belanja'
                      : index == 1
                          ? 'Darurat'
                          : index == 2
                              ? 'Ibadah'
                              : index == 3
                                  ? 'Pendidikan'
                                  : index == 4
                                      ? 'Liburan'
                                      : index == 5
                                          ? 'Pinjaman'
                                          : 'Lainnya...',
                  isClicked:
                      controller.selectedCategory.value == index ? true : false,
                  isIcon: index == 0
                      ? true
                      : index == 1
                          ? true
                          : index == 2
                              ? true
                              : index == 3
                                  ? true
                                  : index == 4
                                      ? true
                                      : index == 5
                                          ? true
                                          : false,
                  iconKategori: index == 0
                      ? iconBelanja
                      : index == 1
                          ? iconDanaDarurat
                          : index == 2
                              ? iconIbadah
                              : index == 3
                                  ? iconPendidikan
                                  : index == 4
                                      ? iconLiburan
                                      : index == 5
                                          ? iconPinjaman
                                          : "",
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
