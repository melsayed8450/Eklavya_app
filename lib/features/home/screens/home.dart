// ignore_for_file: deprecated_member_use

import 'package:eklavya_app/common/utils/app_colors.dart';
import 'package:eklavya_app/common/utils/assets.dart';
import 'package:eklavya_app/features/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../common/widgets/tab_indictor.dart';
import 'portifolio.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homeController = Get.put(HomeController());
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 60.h,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15), topLeft: Radius.circular(15)),
              boxShadow: [
                BoxShadow(
                    color: Colors.black38, spreadRadius: 0, blurRadius: 5),
              ],
              color: Colors.white),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15.0),
              topRight: Radius.circular(15.0),
            ),
            child: Obx(() {
              return TabBar(
                indicator: TopIndicator(),
                tabs: <Tab>[
                  Tab(
                    icon: SvgPicture.asset(
                      AppAssets.homeIcon,
                      color: homeController.currentPge.value == 0
                          ? AppColors.primaryColor
                          : AppColors.greyColor,
                      height: 16.h,
                    ),
                    text: 'Home',
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      AppAssets.portfolioIcon,
                      color: homeController.currentPge.value == 1
                          ? AppColors.primaryColor
                          : AppColors.greyColor,
                      height: 16.h,
                    ),
                    text: 'Poftfolio',
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      AppAssets.inputIcon,
                      color: homeController.currentPge.value == 2
                          ? AppColors.primaryColor
                          : AppColors.greyColor,
                      height: 16.h,
                    ),
                    text: 'Input',
                  ),
                  Tab(
                    icon: SvgPicture.asset(
                      AppAssets.profileIcon,
                      color: homeController.currentPge.value == 3
                          ? AppColors.primaryColor
                          : AppColors.greyColor,
                      height: 16.h,
                    ),
                    text: 'Profile',
                  ),
                ],
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: AppColors.greyColor,
                labelStyle: GoogleFonts.roboto(
                  fontSize: 12.sp,
                ),
                unselectedLabelStyle: GoogleFonts.roboto(
                  fontSize: 12.sp,
                ),
                onTap: (value) => homeController.currentPge.value = value,
              );
            }),
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            const PoftifolioPage(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
